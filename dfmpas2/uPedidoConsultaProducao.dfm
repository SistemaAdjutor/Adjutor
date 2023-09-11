object FrmPedidoConsultaProducao: TFrmPedidoConsultaProducao
  Left = 192
  Top = 113
  Caption = 'Consulta Pedido Produ'#231#227'o'
  ClientHeight = 214
  ClientWidth = 538
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 538
    Height = 41
    Align = alTop
    AutoSize = True
    TabOrder = 0
    DesignSize = (
      538
      41)
    object lblPedido: TLabel
      Left = 1
      Top = 1
      Width = 110
      Height = 39
      Align = alLeft
      Caption = 'lblPedido'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ExplicitHeight = 32
    end
    object Bit_Sair: TBitBtn
      Left = 445
      Top = 9
      Width = 85
      Height = 25
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Cancel = True
      Caption = '&Sair'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000C40E0000C40E00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333330
        0000333333333333777711111111000BB030377777777777337F1EEEEEEE0BBB
        B030373333333733337F1EEEEEEE0BBBB03037F333333733337F1EEEEEEE0BBB
        B03037F333333733337F1EEEEEEE0BBBB03037F333333733337F1EEEEEEE0BBB
        B03037F3333337F3337F1EEEEEEE0BBB003037F3333337F3377F1EEEEEEE0BBB
        B03037F3333337F3337F1EEEEEEE0BBBB03037F3333337F3337F1EEEEEEE0BBB
        B03037F3333337F3337F1EEEEEEE0BBBB03037F3333337F3337F1EEEEEEE0BBB
        B03037FFFFFF37FF337F11111111000BB030377777777777337F333333333330
        0000333333333333777733333333333333333333333333333333}
      NumGlyphs = 2
      TabOrder = 0
      TabStop = False
      OnClick = Bit_SairClick
    end
  end
  object WebBrowser1: TWebBrowser
    Left = 0
    Top = 41
    Width = 538
    Height = 173
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 758
    ExplicitHeight = 373
    ControlData = {
      4C0000009B370000E11100000000000000000000000000000000000000000000
      000000004C000000000000000000000001000000E0D057007335CF11AE690800
      2B2E126208000000000000004C0000000114020000000000C000000000000046
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000100000000000000000000000000000000000000}
  end
end
