object FrmEtiquetasProdutos: TFrmEtiquetasProdutos
  Left = 0
  Top = 0
  Caption = 'FrmEtiquetasProdutos'
  ClientHeight = 382
  ClientWidth = 800
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 480
    Top = 32
    Width = 46
    Height = 16
    Caption = 'Modelo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 554
    Top = 72
    Width = 160
    Height = 16
    Caption = 'N'#186' de etiquetas a imprimir: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object cbbBuscaDireta: TComboBox
    Left = 532
    Top = 31
    Width = 260
    Height = 22
    Style = csOwnerDrawFixed
    ItemIndex = 0
    TabOrder = 0
    Text = '12,70 x 44,45 ARGOX'
    Items.Strings = (
      '12,70 x 44,45 ARGOX')
  end
  object edtBuscaDireta: TEdit
    Left = 720
    Top = 71
    Width = 72
    Height = 21
    CharCase = ecUpperCase
    MaxLength = 30
    TabOrder = 1
  end
  object RadDescricaoAdicional: TRadioGroup
    Left = 480
    Top = 104
    Width = 312
    Height = 113
    Caption = 'Descri'#231#227'o Adicional'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object EdiDescricao1: TEdit
    Left = 488
    Top = 132
    Width = 297
    Height = 21
    CharCase = ecUpperCase
    MaxLength = 40
    TabOrder = 3
  end
  object EdiDescricao2: TEdit
    Left = 488
    Top = 177
    Width = 297
    Height = 21
    CharCase = ecUpperCase
    MaxLength = 40
    TabOrder = 4
  end
  object GpBFiltrarEtiquetasProdutos: TGroupBox
    Left = 8
    Top = 225
    Width = 662
    Height = 152
    Caption = 'Filtrar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    object Label3: TLabel
      Left = 11
      Top = 23
      Width = 53
      Height = 14
      Caption = 'Refer'#234'ncia'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Layout = tlBottom
    end
    object SpeedProduto: TSpeedButton
      Left = 627
      Top = 28
      Width = 24
      Height = 21
      Hint = 'Busca Material'
      Flat = True
      Glyph.Data = {
        42020000424D4202000000000000420000002800000010000000100000000100
        1000030000000002000000000000000000000000000000000000007C0000E003
        00001F0000001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C8C311F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7CCE39734E08211F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7C2C7F8665734E08211F7C1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C2C7F8665734E08211F7C1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C2C7F8665734E1F7C1042CE398C311F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C2C7F104210423E53FF67BF6710422925
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C794EBF67FF67FF67FF7FFF7F524A
        8C311F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C3E53BF67FF67FF67FF7FFF7FFF67
        29251F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7CBF673F4FBF67FF67FF7FFF67FF67
        4A291F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7CBF67BF673F4FFF67FF67FF67FF67
        4A291F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C794EFF7FBF67BF673F4FBF67794E
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C794EFF67FF67FF673E531F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C}
      ParentShowHint = False
      ShowHint = True
    end
    object Label4: TLabel
      Left = 11
      Top = 55
      Width = 20
      Height = 14
      Caption = 'Tipo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Layout = tlBottom
    end
    object Label5: TLabel
      Left = 11
      Top = 89
      Width = 30
      Height = 14
      Caption = 'Grupo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Layout = tlBottom
    end
    object Label6: TLabel
      Left = 11
      Top = 122
      Width = 26
      Height = 14
      Caption = 'Linha'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Layout = tlBottom
    end
    object EdtReferencia: TEdit
      Left = 78
      Top = 20
      Width = 100
      Height = 22
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      MaxLength = 11
      ParentFont = False
      TabOrder = 0
    end
    object EdtDescricao: TEdit
      Left = 200
      Top = 20
      Width = 417
      Height = 22
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      MaxLength = 11
      ParentFont = False
      TabOrder = 1
    end
    object CbTipo: TComboBox
      Left = 78
      Top = 50
      Width = 315
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 2
    end
    object CbGrupo: TComboBox
      Left = 78
      Top = 84
      Width = 314
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 3
    end
    object CbLinha: TComboBox
      Left = 78
      Top = 117
      Width = 314
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 4
    end
  end
  object GpbEtiquetasProdutos: TGroupBox
    Left = 8
    Top = 8
    Width = 466
    Height = 211
    Caption = 'Etiquetas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
  end
  object Bit_Sair: TBitBtn
    Left = 707
    Top = 349
    Width = 85
    Height = 25
    Cursor = crHandPoint
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
    TabOrder = 7
    TabStop = False
    OnClick = Bit_SairClick
  end
  object ButVisualizar: TButton
    Left = 676
    Top = 272
    Width = 116
    Height = 25
    Caption = 'Visualizar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
  end
  object ButImprimir: TButton
    Left = 676
    Top = 303
    Width = 116
    Height = 25
    Caption = 'Imprimir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
  end
end
