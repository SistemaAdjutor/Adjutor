object FormGerImp1G: TFormGerImp1G
  Left = 158
  Top = 176
  Width = 375
  Height = 240
  Caption = 'Gerenciador de Impressão'
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 242
    Top = 53
    Width = 78
    Height = 13
    Caption = 'Classificador Por'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object GroupBox2: TGroupBox
    Left = 142
    Top = 122
    Width = 217
    Height = 87
    TabOrder = 0
    object BitConfig: TBitBtn
      Left = 15
      Top = 12
      Width = 185
      Height = 25
      Caption = 'Configuração de Impressão'
      TabOrder = 0
      OnClick = BitConfigClick
    end
    object BitBtn1: TBitBtn
      Left = 18
      Top = 51
      Width = 75
      Height = 25
      Caption = '&OK'
      TabOrder = 1
    end
    object BitBtn2: TBitBtn
      Left = 124
      Top = 51
      Width = 75
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 2
      OnClick = BitBtn2Click
    end
  end
  object GroupBox1: TGroupBox
    Left = 6
    Top = 122
    Width = 129
    Height = 87
    Caption = 'Dispositivo de saída'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object RadioButton3: TRadioButton
      Left = 14
      Top = 23
      Width = 65
      Height = 17
      Caption = 'Vídeo'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TabStop = True
    end
    object RadioButton4: TRadioButton
      Left = 12
      Top = 51
      Width = 81
      Height = 17
      Caption = 'Impressora'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
  end
  object CboxNomeRel: TComboBox
    Left = 8
    Top = 8
    Width = 345
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ItemHeight = 13
    ParentFont = False
    TabOrder = 2
  end
  object LBoxClass: TListBox
    Left = 238
    Top = 67
    Width = 121
    Height = 50
    ItemHeight = 13
    TabOrder = 3
  end
  object PrinterSetupDialog1: TPrinterSetupDialog
    Left = 200
    Top = 64
  end
end
