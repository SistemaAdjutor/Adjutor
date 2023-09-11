object FormGimpFichas: TFormGimpFichas
  Left = 380
  Top = 120
  Width = 344
  Height = 220
  BorderIcons = [biSystemMenu]
  Caption = 'Impressão de Histórico do Cliente'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object SpeedButton1: TSpeedButton
    Left = 143
    Top = 8
    Width = 185
    Height = 35
    Caption = '1 - Ficha &Cadastro/Financeira   '
    OnClick = SpeedButton1Click
  end
  object SpeedButton2: TSpeedButton
    Left = 143
    Top = 53
    Width = 185
    Height = 35
    Caption = '2 - Ficha de Produtos Vendidos'
    OnClick = SpeedButton2Click
  end
  object SpeedButton3: TSpeedButton
    Left = 143
    Top = 98
    Width = 185
    Height = 35
    Caption = 'Ambas (Fichas 1 e 2)'
    OnClick = SpeedButton3Click
  end
  object GroupBox3: TGroupBox
    Left = 7
    Top = 4
    Width = 123
    Height = 87
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
      Left = 13
      Top = 55
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
  object BitConfig: TBitBtn
    Left = 7
    Top = 98
    Width = 123
    Height = 35
    Cursor = crHandPoint
    Caption = '&Conf. de Impressão'
    TabOrder = 1
    OnClick = BitConfigClick
  end
  object Bit_Sair: TBitBtn
    Left = 228
    Top = 151
    Width = 100
    Height = 35
    Cursor = crHandPoint
    Caption = '&Sair'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = Bit_SairClick
    Glyph.Data = {
      CA010000424DCA01000000000000760000002800000026000000110000000100
      04000000000054010000CE0E0000D80E00001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
      8888888FFFFFFFFFFFFFFFFFFF008888888888880000078FFFFFFFFFFFFFFFFF
      FF00833333333000BB03078FFFFFFFFFFFFFFFFFFF00830000000BBBBB03078F
      FFFFFFFFFFFFFFFFFF00830000000BBBBB03078FFFFFFFFFFFFFFFFFFF008300
      00000BBBBB03078FFFFFFFFFFFFFFFFFFF00830000000BBBBB03078FFFFFFFFF
      FFFFFFFFFF00830000000BBBBB03078FFFFFFFFFFFFFFFFFFF00830000000BBB
      B003008FFFFFFFFFFFFFFFFFFF00830000000BBBBB03078FFFFFFFFFFFFFFFFF
      FF00830000000BBBBB03078FFFFFFFFFFFFFFFFFFF00830000000BBBBB03078F
      FFFFFFFFFFFFFFFFFF00830000000BBBBB03078FFFFFFFFFFFFFFFFFFF008300
      00000BBBBB03078FFFFFFFFFFFFFFFFFFF00833333333000BB03078FFFFFFFFF
      FFFFFFFFFF008888888888880000088FFFFFFFFFFFFFFFFFFF00888888888888
      8888888FFFFFFFFFFFFFFFFFFF00}
    NumGlyphs = 2
  end
  object PrinterSetupDialog1: TPrinterSetupDialog
    Left = 72
    Top = 144
  end
end
