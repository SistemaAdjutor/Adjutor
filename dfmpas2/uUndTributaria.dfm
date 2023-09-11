object frmUndTributaria: TfrmUndTributaria
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Unidade tribut'#225'ria'
  ClientHeight = 84
  ClientWidth = 231
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object Label140: TLabel
    Left = 8
    Top = 16
    Width = 78
    Height = 13
    Caption = 'UND. Tribut'#225'ria:'
  end
  object cxComboBox1: TcxComboBox
    Left = 99
    Top = 13
    Properties.Items.Strings = (
      '1000UN'
      'DUZIA'
      'G'
      'KG'
      'LT'
      'M2'
      'M3'
      'METRO'
      'MWHORA'
      'PARES'
      'QUILAT'
      'TON'
      'UN')
    TabOrder = 0
    Width = 121
  end
  object Button1: TButton
    Left = 24
    Top = 48
    Width = 75
    Height = 25
    Caption = 'OK'
    ModalResult = 1
    TabOrder = 1
  end
  object Button2: TButton
    Left = 112
    Top = 48
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    ModalResult = 2
    TabOrder = 2
  end
end
