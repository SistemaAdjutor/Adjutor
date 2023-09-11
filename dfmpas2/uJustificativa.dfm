object frmjustificativa: Tfrmjustificativa
  Left = 0
  Top = 0
  Caption = 'Justi'
  ClientHeight = 185
  ClientWidth = 531
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
  object BitConfirmar: TJvNavPanelButton
    Left = 298
    Top = 143
    Width = 110
    Height = 32
    Alignment = taCenter
    Caption = '&Confirmar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    HotTrackFont.Charset = DEFAULT_CHARSET
    HotTrackFont.Color = clWindowText
    HotTrackFont.Height = -12
    HotTrackFont.Name = 'Segoe UI'
    HotTrackFont.Style = [fsBold]
    ParentFont = False
    Colors.ButtonColorFrom = clSilver
    Colors.ButtonColorTo = clWhite
    Colors.ButtonHotColorFrom = 8454016
    Colors.ButtonHotColorTo = clWhite
    Colors.ButtonSelectedColorFrom = 8454016
    Colors.ButtonSelectedColorTo = clWhite
    Colors.ButtonSeparatorColor = clBlack
    Colors.SplitterColorFrom = clBlack
    Colors.SplitterColorTo = 8484478
    Colors.DividerColorFrom = 16315380
    Colors.DividerColorTo = 15391451
    Colors.HeaderColorFrom = 12232890
    Colors.HeaderColorTo = 9532021
    Colors.FrameColor = 5406098
    Colors.ToolPanelHeaderColorFrom = clWhite
    Colors.ToolPanelHeaderColorTo = clWhite
    ParentStyleManager = False
    ImageIndex = 8
    OnClick = BitConfirmarClick
  end
  object BitCancelar: TJvNavPanelButton
    Left = 409
    Top = 143
    Width = 110
    Height = 32
    Alignment = taCenter
    Caption = 'Cancela&r'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    HotTrackFont.Charset = DEFAULT_CHARSET
    HotTrackFont.Color = clWindowText
    HotTrackFont.Height = -12
    HotTrackFont.Name = 'Segoe UI'
    HotTrackFont.Style = [fsBold]
    ParentFont = False
    Colors.ButtonColorFrom = clSilver
    Colors.ButtonColorTo = clWhite
    Colors.ButtonHotColorFrom = 8421631
    Colors.ButtonHotColorTo = clWhite
    Colors.ButtonSelectedColorFrom = 8421631
    Colors.ButtonSelectedColorTo = clWhite
    Colors.ButtonSeparatorColor = clBlack
    Colors.SplitterColorFrom = clBlack
    Colors.SplitterColorTo = 8484478
    Colors.DividerColorFrom = 16315380
    Colors.DividerColorTo = 15391451
    Colors.HeaderColorFrom = 12232890
    Colors.HeaderColorTo = 9532021
    Colors.FrameColor = 5406098
    Colors.ToolPanelHeaderColorFrom = clWhite
    Colors.ToolPanelHeaderColorTo = clWhite
    ParentStyleManager = False
    ImageIndex = 8
    OnClick = BitCancelarClick
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 531
    Height = 137
    Align = alTop
    Caption = 
      'Justificativa (Campo Obrigat'#243'rio m'#237'nimo de 15 e m'#225'ximo de 255 Ca' +
      'racteres)'
    TabOrder = 0
    object MJustificativa: TMemo
      Left = 2
      Top = 15
      Width = 527
      Height = 120
      Align = alClient
      MaxLength = 255
      TabOrder = 0
      OnChange = MJustificativaChange
      ExplicitLeft = 26
      ExplicitTop = 17
    end
  end
  object Panel1: TPanel
    Left = 460
    Top = 96
    Width = 57
    Height = 22
    Caption = 'Panel1'
    TabOrder = 1
    object edConta: TEdit
      Left = 1
      Top = 1
      Width = 55
      Height = 20
      Align = alClient
      ReadOnly = True
      TabOrder = 0
      ExplicitHeight = 21
    end
  end
end
