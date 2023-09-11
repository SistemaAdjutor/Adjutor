object FormOrdServManut: TFormOrdServManut
  Left = 3
  Top = 0
  Width = 797
  Height = 521
  BorderIcons = [biSystemMenu]
  Caption = 'Detalhes da Ordem de Produ'#231#227'o'
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
  object Label1: TLabel
    Left = 14
    Top = 13
    Width = 54
    Height = 13
    Caption = 'Ordem No.:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 493
    Top = 53
    Width = 42
    Height = 13
    Caption = 'Emiss'#227'o:'
  end
  object Label3: TLabel
    Left = 11
    Top = 53
    Width = 55
    Height = 13
    Caption = 'Refer'#234'ncia:'
  end
  object Label4: TLabel
    Left = 637
    Top = 54
    Width = 36
    Height = 13
    Caption = 'Pedido:'
  end
  object Label6: TLabel
    Left = 224
    Top = 323
    Width = 4
    Height = 16
    Font.Charset = SYMBOL_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Monotype Sorts'
    Font.Style = []
    ParentFont = False
  end
  object DBGridOsvItem: TDBGrid
    Left = 0
    Top = 134
    Width = 785
    Height = 392
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ReadOnly = True
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        FieldName = 'PRD_REFER_ITENS'
        Title.Caption = 'Produto'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OSI_PRDDESCRI'
        Title.Caption = 'Material'
        Width = 261
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OSI_UC'
        Title.Caption = 'U.C.'
        Width = 54
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTDE1_CC'
        Title.Caption = 'Mod 1'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTDE2_CC'
        Title.Caption = 'Mod 2'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTDE3_CC'
        Title.Caption = 'Mod 3'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTDE4_CC'
        Title.Caption = 'Mod 4'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTDE5_CC'
        Title.Caption = 'Mod 5'
        Width = 59
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTDE6_CC'
        Title.Caption = 'Mod 6'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 59
        Visible = True
      end>
  end
  object BitBtn3: TBitBtn
    Left = 767
    Top = 82
    Width = 16
    Height = 18
    Cursor = crHandPoint
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 15
    TabStop = False
    Margin = 0
    Style = bsWin31
    Spacing = 0
  end
  object EdtOSV_CODIGO: TEdit
    Left = 71
    Top = 10
    Width = 58
    Height = 21
    MaxLength = 6
    TabOrder = 0
    OnExit = EdtOSV_CODIGOExit
  end
  object DbdOSV_EMISSAO: TDBDateEdit
    Left = 538
    Top = 50
    Width = 90
    Height = 21
    DataField = 'OSV_EMISSAO'
    Enabled = False
    GlyphKind = gkEllipsis
    NumGlyphs = 1
    TabOrder = 1
    YearDigits = dyFour
  end
  object DBNavigator1: TDBNavigator
    Left = 629
    Top = 9
    Width = 120
    Height = 25
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    TabOrder = 2
    OnClick = DBNavigator1Click
  end
  object DbePRD_REFER: TDBEdit
    Left = 69
    Top = 50
    Width = 90
    Height = 21
    DataField = 'PRD_REFER'
    Enabled = False
    MaxLength = 8
    TabOrder = 3
  end
  object DbePRD_DESCRI: TDBEdit
    Left = 162
    Top = 50
    Width = 319
    Height = 21
    DataField = 'OSV_PRDDESCRI'
    Enabled = False
    TabOrder = 4
  end
  object DbePED_CODIGO: TDBEdit
    Left = 676
    Top = 51
    Width = 58
    Height = 21
    DataField = 'PED_CODIGO'
    Enabled = False
    ImeMode = imHanguel
    TabOrder = 5
  end
  object Panel1: TPanel
    Left = 10
    Top = 40
    Width = 771
    Height = 4
    Color = clHighlight
    TabOrder = 6
  end
  object BitBtn1: TBitBtn
    Left = 13
    Top = 101
    Width = 390
    Height = 18
    Cursor = crHandPoint
    Caption = 'Quantidade'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    TabStop = False
    Style = bsWin31
  end
  object Panel4: TPanel
    Left = 463
    Top = 101
    Width = 61
    Height = 18
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
    object DBText2: TDBText
      Left = 1
      Top = 1
      Width = 58
      Height = 16
      Alignment = taCenter
      DataField = 'OSI_QTDE2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
  end
  object Panel5: TPanel
    Left = 524
    Top = 101
    Width = 61
    Height = 18
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 10
    object DBText3: TDBText
      Left = 1
      Top = 1
      Width = 58
      Height = 16
      Alignment = taCenter
      DataField = 'OSI_QTDE3'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
  end
  object Panel6: TPanel
    Left = 585
    Top = 101
    Width = 61
    Height = 18
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 11
    object DBText4: TDBText
      Left = -1
      Top = 1
      Width = 59
      Height = 16
      Alignment = taCenter
      DataField = 'OSI_QTDE4'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
  end
  object Panel7: TPanel
    Left = 646
    Top = 101
    Width = 60
    Height = 18
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 12
    object DBText5: TDBText
      Left = 0
      Top = 1
      Width = 58
      Height = 16
      Alignment = taCenter
      DataField = 'OSI_QTDE5'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
  end
  object Panel8: TPanel
    Left = 402
    Top = 101
    Width = 61
    Height = 18
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 13
    object DBText1: TDBText
      Left = 1
      Top = 1
      Width = 58
      Height = 16
      Alignment = taCenter
      DataField = 'OSI_QTDE1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
  end
  object Panel9: TPanel
    Left = 72
    Top = 103
    Width = 185
    Height = 14
    BevelOuter = bvNone
    Caption = 'Quantidade -->'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 14
  end
  object Panel3: TPanel
    Left = 706
    Top = 101
    Width = 60
    Height = 18
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 16
    object DBText6: TDBText
      Left = 0
      Top = 1
      Width = 58
      Height = 16
      Alignment = taCenter
      DataField = 'OSI_QTDE6'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
  end
  object Panel2: TPanel
    Left = 14
    Top = 82
    Width = 70
    Height = 18
    Caption = 'Produto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 17
  end
  object Panel10: TPanel
    Left = 85
    Top = 82
    Width = 261
    Height = 18
    Caption = 'Material'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 18
  end
  object Panel11: TPanel
    Left = 347
    Top = 82
    Width = 54
    Height = 18
    Caption = 'U.C.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 19
  end
  object Panel12: TPanel
    Left = 402
    Top = 82
    Width = 61
    Height = 18
    Caption = 'VAR1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 20
    object DBText7: TDBText
      Left = 0
      Top = 2
      Width = 58
      Height = 16
      Alignment = taCenter
      DataField = 'OSV_DCMOD1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
  end
  object Panel13: TPanel
    Left = 463
    Top = 82
    Width = 61
    Height = 18
    Caption = 'VAR2'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 21
    object DBText8: TDBText
      Left = 0
      Top = 2
      Width = 58
      Height = 16
      Alignment = taCenter
      DataField = 'OSV_DCMOD2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
  end
  object Panel14: TPanel
    Left = 524
    Top = 82
    Width = 61
    Height = 18
    Caption = 'VAR3'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 22
    object DBText9: TDBText
      Left = 0
      Top = 2
      Width = 58
      Height = 16
      Alignment = taCenter
      DataField = 'OSV_DCMOD3'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
  end
  object Panel15: TPanel
    Left = 585
    Top = 82
    Width = 61
    Height = 18
    Caption = 'VAR4'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 23
    object DBText10: TDBText
      Left = 0
      Top = 2
      Width = 58
      Height = 16
      Alignment = taCenter
      DataField = 'OSV_DCMOD4'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
  end
  object Panel16: TPanel
    Left = 646
    Top = 82
    Width = 60
    Height = 18
    Caption = 'VAR5'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 24
    object DBText11: TDBText
      Left = 0
      Top = 2
      Width = 58
      Height = 16
      Alignment = taCenter
      DataField = 'OSV_DCMOD5'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
  end
  object Panel17: TPanel
    Left = 706
    Top = 82
    Width = 60
    Height = 18
    Caption = 'VAR6'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 25
    object DBText12: TDBText
      Left = 0
      Top = 2
      Width = 58
      Height = 16
      Alignment = taCenter
      DataField = 'OSV_DCMOD6'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
  end
end
