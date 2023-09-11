inherited frmMemo: TfrmMemo
  Caption = 'Aviso'
  ClientHeight = 467
  ExplicitWidth = 615
  ExplicitHeight = 505
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo [0]
    Left = 0
    Top = 0
    Width = 599
    Height = 426
    Align = alClient
    BevelOuter = bvNone
    Lines.Strings = (
      'Memo1')
    TabOrder = 0
  end
  object Panel1: TPanel [1]
    Left = 0
    Top = 426
    Width = 599
    Height = 41
    Align = alBottom
    TabOrder = 1
    DesignSize = (
      599
      41)
    object btnCancelar: TSpeedButton
      Tag = 2
      Left = 436
      Top = 8
      Width = 147
      Height = 24
      Anchors = [akRight, akBottom]
      Caption = 'Sair(Esc)'
      NumGlyphs = 2
      OnClick = btnCancelarClick
    end
  end
end
