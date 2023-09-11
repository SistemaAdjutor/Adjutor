object FormGimpOP: TFormGimpOP
  Left = 246
  Top = 137
  Width = 391
  Height = 375
  Caption = 'Ordem de Produção - Gerenciador de Impressão'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox2: TGroupBox
    Left = 9
    Top = 261
    Width = 129
    Height = 79
    Caption = 'Dispositivo de saída'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object RadVideo: TRadioButton
      Left = 14
      Top = 23
      Width = 65
      Height = 17
      Caption = '&Vídeo'
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
    object RadImpressora: TRadioButton
      Left = 14
      Top = 48
      Width = 81
      Height = 17
      Caption = '&Impressora'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
  end
  object GroupBox5: TGroupBox
    Left = 167
    Top = 261
    Width = 216
    Height = 79
    TabOrder = 1
    object BitConfig: TBitBtn
      Left = 16
      Top = 12
      Width = 185
      Height = 25
      Caption = '&Configuração de Impressão'
      TabOrder = 2
      OnClick = BitConfigClick
    end
    object BitOk: TBitBtn
      Left = 15
      Top = 46
      Width = 75
      Height = 25
      Caption = '&OK'
      TabOrder = 0
    end
    object BitCancelar: TBitBtn
      Left = 125
      Top = 46
      Width = 75
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 1
    end
  end
  object CBoxNomeRel: TComboBox
    Left = 7
    Top = 8
    Width = 376
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ItemHeight = 13
    ParentFont = False
    TabOrder = 2
    Text = 'CBoxNomeRel'
  end
  object Panel1: TPanel
    Left = -45
    Top = 37
    Width = 428
    Height = 4
    Color = clHighlight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object PrinterSetupDialog1: TPrinterSetupDialog
    Left = 344
    Top = 16
  end
end
