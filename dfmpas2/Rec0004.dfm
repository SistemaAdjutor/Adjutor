object FormRetencoes: TFormRetencoes
  Left = 165
  Top = 168
  Width = 267
  Height = 329
  Caption = 'Retenc'#245'es'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox2: TGroupBox
    Left = 0
    Top = 0
    Width = 257
    Height = 238
    Caption = 'Valores Retidos:'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHotLight
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 0
    object Label22: TLabel
      Left = 70
      Top = 67
      Width = 39
      Height = 13
      Caption = 'Perc.(%)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clDefault
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label23: TLabel
      Left = 13
      Top = 47
      Width = 55
      Height = 13
      Caption = 'Base INSS:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clDefault
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label24: TLabel
      Left = 21
      Top = 24
      Width = 47
      Height = 13
      Caption = 'Base ISS:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clDefault
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label25: TLabel
      Left = 42
      Top = 86
      Width = 26
      Height = 13
      Caption = 'IRPJ:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clDefault
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label26: TLabel
      Left = 48
      Top = 111
      Width = 20
      Height = 13
      Caption = 'PIS:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clDefault
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label27: TLabel
      Left = 126
      Top = 67
      Width = 58
      Height = 13
      Caption = 'Valor Retido'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clDefault
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label28: TLabel
      Left = 26
      Top = 134
      Width = 42
      Height = 13
      Caption = 'COFINS:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clDefault
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label29: TLabel
      Left = 8
      Top = 159
      Width = 60
      Height = 13
      Caption = 'Contr.Social:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clDefault
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label31: TLabel
      Left = 40
      Top = 183
      Width = 28
      Height = 13
      Caption = 'INSS:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clDefault
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label30: TLabel
      Left = 32
      Top = 207
      Width = 92
      Height = 13
      Caption = 'Total de Reten'#231#227'o:'
    end
    object DBEdt_BASE_ISS: TDBEdit
      Left = 70
      Top = 20
      Width = 90
      Height = 21
      DataField = 'FAT_BASE_ISS'
      DataSource = DataMovimento.DsReceber
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clDefault
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DBedt_BASE_INSS: TDBEdit
      Left = 70
      Top = 42
      Width = 90
      Height = 21
      DataField = 'FAT_BASE_INSS'
      DataSource = DataMovimento.DsReceber
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clDefault
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object DBEdt_IRPJ_PERC: TDBEdit
      Left = 70
      Top = 83
      Width = 50
      Height = 21
      TabStop = False
      Color = 14145495
      DataField = 'FAT_IRPJ_PERC'
      DataSource = DataMovimento.DsReceber
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clDefault
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object DBEdt_PIS_PERC: TDBEdit
      Left = 70
      Top = 107
      Width = 50
      Height = 21
      TabStop = False
      Color = 14145495
      DataField = 'FAT_PIS_PERC'
      DataSource = DataMovimento.DsReceber
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clDefault
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
    object DBEdt_COFINS_PER: TDBEdit
      Left = 70
      Top = 131
      Width = 50
      Height = 21
      TabStop = False
      Color = 14145495
      DataField = 'FAT_COFINS_PERC'
      DataSource = DataMovimento.DsReceber
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clDefault
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
    object DBEdt_CONTSOCIAL_PERC: TDBEdit
      Left = 70
      Top = 155
      Width = 50
      Height = 21
      TabStop = False
      Color = 14145495
      DataField = 'FAT_CONTSOCIAL_PERC'
      DataSource = DataMovimento.DsReceber
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clDefault
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
    end
    object DBEdt_IRPJ_RET: TDBEdit
      Left = 126
      Top = 83
      Width = 90
      Height = 21
      Color = 14145495
      DataField = 'FAT_IRPJ_RET'
      DataSource = DataMovimento.DsReceber
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clDefault
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
    end
    object DBEdt_PIS_RET: TDBEdit
      Left = 126
      Top = 107
      Width = 90
      Height = 21
      Color = 14145495
      DataField = 'FAT_PIS_RET'
      DataSource = DataMovimento.DsReceber
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clDefault
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 7
    end
    object DBEdt_COFINS_RET: TDBEdit
      Left = 126
      Top = 131
      Width = 90
      Height = 21
      Color = 14145495
      DataField = 'FAT_COFINS_RET'
      DataSource = DataMovimento.DsReceber
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clDefault
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 8
    end
    object DBEdt_CONTSOCIAL_RET: TDBEdit
      Left = 126
      Top = 155
      Width = 90
      Height = 21
      Color = 14145495
      DataField = 'FAT_CONTSOCIAL_RET'
      DataSource = DataMovimento.DsReceber
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clDefault
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 9
    end
    object DBEdt_INSS_PERC: TDBEdit
      Left = 70
      Top = 179
      Width = 50
      Height = 21
      TabStop = False
      Color = 14145495
      DataField = 'FAT_INSS_PERC'
      DataSource = DataMovimento.DsReceber
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clDefault
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 10
    end
    object DBEdt_INSS_RET: TDBEdit
      Left = 126
      Top = 179
      Width = 90
      Height = 21
      Color = 14145495
      DataField = 'FAT_INSS_RET'
      DataSource = DataMovimento.DsReceber
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clDefault
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 11
    end
    object EdtTotalRetencao: TEdit
      Left = 126
      Top = 204
      Width = 91
      Height = 21
      TabStop = False
      Color = 14145495
      ReadOnly = True
      TabOrder = 12
    end
  end
  object SQLClientDataSet1: TSQLClientDataSet
    Aggregates = <>
    Options = [poAllowCommandText]
    ObjectView = True
    Params = <>
    Left = 8
    Top = 240
  end
  object DataSource1: TDataSource
    Left = 40
    Top = 240
  end
end
