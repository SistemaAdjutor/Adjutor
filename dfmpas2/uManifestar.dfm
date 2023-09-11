object FrmManifestar: TFrmManifestar
  Left = 0
  Top = 0
  Caption = 'Manifestar'
  ClientHeight = 261
  ClientWidth = 594
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object rgTipoManifesto: TRadioGroup
    Left = 8
    Top = 8
    Width = 185
    Height = 177
    Caption = 'Tipo manifesta'#231#227'o'
    Items.Strings = (
      'Confirma'#231#227'o'
      'Desconhecimento'
      'Opera'#231#227'o n'#227'o realizada'
      'Ci'#234'ncia')
    TabOrder = 0
    OnClick = rgTipoManifestoClick
  end
  object btnConfirmar: TButton
    Left = 34
    Top = 216
    Width = 75
    Height = 25
    Caption = 'Confirmar'
    TabOrder = 1
    OnClick = btnConfirmarClick
  end
  object Button2: TButton
    Left = 115
    Top = 216
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 2
    OnClick = Button2Click
  end
  object gbJustificativa: TGroupBox
    Left = 199
    Top = 0
    Width = 386
    Height = 185
    Align = alCustom
    Caption = 
      'Justificativa (Campo Obrigat'#243'rio m'#237'nimo de 15 e m'#225'ximo de 255 Ca' +
      'racteres)'
    TabOrder = 3
    Visible = False
    object MJustificativa: TMemo
      Left = 2
      Top = 15
      Width = 382
      Height = 168
      Align = alClient
      MaxLength = 255
      TabOrder = 0
    end
  end
end
