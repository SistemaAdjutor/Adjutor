object FrmSplash: TFrmSplash
  Left = 164
  Top = 179
  BorderStyle = bsNone
  ClientHeight = 221
  ClientWidth = 414
  Color = 12615680
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 3
    Top = 4
    Width = 407
    Height = 214
    BevelWidth = 4
    BorderWidth = 2
    BorderStyle = bsSingle
    Color = clWhite
    TabOrder = 0
    object ImgLotipo1: TImage
      Left = 6
      Top = 6
      Width = 391
      Height = 174
      Align = alTop
      Center = True
      ParentShowHint = False
      ShowHint = False
    end
    object RxLabel2: TRxLabel
      Left = 6
      Top = 185
      Width = 115
      Height = 13
      Caption = 'Carregando Aplicativo...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ShadowColor = clSilver
      ShadowPos = spRightBottom
      Transparent = True
    end
    object RxLabel4: TRxLabel
      Left = 61
      Top = 161
      Width = 328
      Height = 14
       
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ShadowColor = clSilver
      ShadowPos = spRightBottom
      Transparent = True
    end
    object Panel2: TPanel
      Left = 123
      Top = 183
      Width = 273
      Height = 19
      Alignment = taLeftJustify
      BevelInner = bvLowered
      Caption = 'Panel2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object GaugeAbertura: TGauge
        Left = 2
        Top = 2
        Width = 269
        Height = 15
        Align = alClient
        BorderStyle = bsNone
        ForeColor = 12615680
        MaxValue = 5
        Progress = 0
      end
    end
  end
end
