inherited FrmRespostasWebServices: TFrmRespostasWebServices
  Caption = 'FrmRespostasWebServices'
  ClientHeight = 282
  ClientWidth = 428
  ExplicitWidth = 436
  ExplicitHeight = 310
  PixelsPerInch = 96
  TextHeight = 13
  inherited lbHint: TPanel
    Top = 267
    Width = 428
    ExplicitTop = 267
    ExplicitWidth = 700
  end
  object Panel1: TPanel [1]
    Left = 0
    Top = 226
    Width = 428
    Height = 41
    Align = alBottom
    TabOrder = 1
    ExplicitWidth = 700
    DesignSize = (
      428
      41)
    object btSair: TSpeedButton
      Left = 269
      Top = 8
      Width = 127
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'Sair(ESC)'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000010000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
        03333377777777777F333301BBBBBBBB033333773F3333337F3333011BBBBBBB
        0333337F73F333337F33330111BBBBBB0333337F373F33337F333301110BBBBB
        0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
        0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
        0333337F337F33337F333301110BBBBB0333337F337FF3337F33330111B0BBBB
        0333337F337733337F333301110BBBBB0333337F337F33337F333301110BBBBB
        0333337F3F7F33337F333301E10BBBBB0333337F7F7F33337F333301EE0BBBBB
        0333337F777FFFFF7F3333000000000003333377777777777333}
      NumGlyphs = 2
      OnClick = btSairClick
    end
  end
  object PageControl2: TPageControl [2]
    Left = 0
    Top = 0
    Width = 428
    Height = 226
    ActivePage = TabSheet6
    Align = alClient
    TabOrder = 2
    ExplicitWidth = 700
    object TabSheet5: TTabSheet
      Caption = '&1-Resposta'
      object MemoResp: TMemo
        Left = 0
        Top = 0
        Width = 420
        Height = 198
        Align = alClient
        TabOrder = 0
      end
    end
    object TabSheet10: TTabSheet
      Caption = '&2-Retorno'
      ImageIndex = 4
      object memoRespWS: TMemo
        Left = 0
        Top = 0
        Width = 420
        Height = 198
        Align = alClient
        TabOrder = 0
      end
    end
    object TabSheet6: TTabSheet
      Caption = '&3-Resposta XML'
      ImageIndex = 1
      ExplicitWidth = 692
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 420
        Height = 198
        Align = alClient
        BevelInner = bvLowered
        BevelOuter = bvLowered
        TabOrder = 0
        ExplicitWidth = 692
        object WBResposta: TWebBrowser
          Left = 2
          Top = 2
          Width = 416
          Height = 194
          Align = alClient
          TabOrder = 0
          ExplicitWidth = 692
          ExplicitHeight = 198
          ControlData = {
            4C000000FF2A00000D1400000000000000000000000000000000000000000000
            000000004C000000000000000000000001000000E0D057007335CF11AE690800
            2B2E126208000000000000004C0000000114020000000000C000000000000046
            8000000000000000000000000000000000000000000000000000000000000000
            00000000000000000100000000000000000000000000000000000000}
        end
      end
    end
  end
end
