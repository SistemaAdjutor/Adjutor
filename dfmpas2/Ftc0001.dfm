object FormFichaTecnica: TFormFichaTecnica
  Left = 31
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Ficha T'#233'cnica'
  ClientHeight = 545
  ClientWidth = 687
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = True
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label4: TLabel
    Left = 25
    Top = 7
    Width = 67
    Height = 13
    Caption = 'Refer'#234'ncia:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object SpPesquisa: TSpeedButton
    Left = 191
    Top = 2
    Width = 24
    Height = 21
    Hint = 'Busca Produto'
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
    OnClick = SpPesquisaClick
  end
  object GrpMateriaPrima: TGroupBox
    Left = 0
    Top = 422
    Width = 685
    Height = 88
    Caption = 'Materia-Prima'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    object Label5: TLabel
      Left = 5
      Top = 12
      Width = 37
      Height = 13
      Caption = 'Material'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object SpProduto: TSpeedButton
      Left = 364
      Top = 25
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
      OnClick = SpProdutoClick
    end
    object Label14: TLabel
      Left = 394
      Top = 12
      Width = 44
      Height = 13
      Caption = 'Consumo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label15: TLabel
      Left = 585
      Top = 12
      Width = 84
      Height = 13
      Caption = 'Data Modifica'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label16: TLabel
      Left = 489
      Top = 12
      Width = 83
      Height = 13
      Caption = 'Consumo Anterior'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label17: TLabel
      Left = 82
      Top = 12
      Width = 106
      Height = 13
      Caption = 'Descri'#231#227'o do Material:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object EdtRefer: TEdit
      Left = 5
      Top = 25
      Width = 74
      Height = 21
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 11
      ParentFont = False
      TabOrder = 0
      OnChange = EdtReferChange
      OnClick = EdtReferClick
      OnEnter = EdtReferEnter
      OnExit = EdtReferExit
    end
    object EdtProduto: TEdit
      Left = 80
      Top = 25
      Width = 280
      Height = 21
      TabStop = False
      AutoSelect = False
      CharCase = ecUpperCase
      Color = 14145495
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 50
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object CurrConsumo: TCurrencyEdit
      Left = 393
      Top = 25
      Width = 95
      Height = 21
      AutoSize = False
      DecimalPlaces = 4
      DisplayFormat = ',0.0000;-,0.0000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 15
      ParentFont = False
      TabOrder = 2
      OnEnter = CurrConsumoEnter
      OnExit = CurrConsumoExit
    end
    object CurrAnterior: TCurrencyEdit
      Left = 489
      Top = 25
      Width = 95
      Height = 21
      AutoSelect = False
      AutoSize = False
      DecimalPlaces = 4
      DisplayFormat = ',0.0000;-,0.0000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 15
      ParentFont = False
      TabOrder = 3
      OnClick = CurrAnteriorEnter
      OnEnter = CurrAnteriorEnter
    end
    object DateModif: TDateEdit
      Left = 585
      Top = 25
      Width = 95
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      GlyphKind = gkEllipsis
      NumGlyphs = 1
      ParentFont = False
      YearDigits = dyFour
      TabOrder = 4
      OnClick = DateModifEnter
      OnEnter = DateModifEnter
    end
    object Bit_GravarMateria: TBitBtn
      Left = 489
      Top = 57
      Width = 95
      Height = 25
      Cursor = crHandPoint
      Hint = '|Grava o Item da Ficha T'#233'cnica...'
      Caption = 'Con&firma'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000CE0E0000D80E00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        555555555555555555555555555555555555555555FF55555555555550055555
        55555555577FF5555555555500005555555555557777F5555555555500005555
        555555557777FF5555555550000005555555555777777F555555550000000555
        5555557777777FF5555557000500005555555777757777F55555700555500055
        55557775555777FF5555555555500005555555555557777F5555555555550005
        555555555555777FF5555555555550005555555555555777FF55555555555570
        05555555555555777FF5555555555557005555555555555777FF555555555555
        5000555555555555577755555555555555555555555555555555}
      NumGlyphs = 2
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      OnClick = Bit_GravarMateriaClick
    end
    object Bit_CancelarMateria: TBitBtn
      Left = 585
      Top = 57
      Width = 95
      Height = 25
      Cursor = crHandPoint
      Hint = '|Cancela o Item da Ficha T'#233'cninca...'
      Caption = '&Cancelar'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        04000000000068010000CE0E0000D80E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033333333333333333333333F333333333333
        0000333333333333333333333388F333333F3333000033300333333300033333
        38F38F333F88F33300003330003333300033333338F338F3F8338F3300003333
        000333000333333338F3338F833338F3000033333000300033333333338F3338
        3333F8330000333333000003333333333338F333333F83330000333333300033
        3333333333338F3333383333000033333300000333333333333338F333833333
        00003333300030003333333333333833338F3333000033330003330003333333
        33338333338F333300003330003333300033333333383338F338F33300003330
        0333333300033333338333838F338F3300003333333333333003333333833833
        38F338F300003333333333333333333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
      OnClick = Bit_CancelarMateriaClick
    end
    object GrpVarConsumo: TGroupBox
      Left = 5
      Top = 46
      Width = 355
      Height = 38
      Caption = 'Consumo Varia'#231#245'es'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      object ChkV1: TCheckBox
        Left = 4
        Top = 16
        Width = 36
        Height = 17
        Caption = 'V&1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object ChkV2: TCheckBox
        Left = 44
        Top = 16
        Width = 36
        Height = 17
        Caption = 'V&2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object ChkV3: TCheckBox
        Left = 85
        Top = 16
        Width = 35
        Height = 17
        Caption = 'V&3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object ChkV4: TCheckBox
        Left = 126
        Top = 16
        Width = 34
        Height = 17
        Caption = 'V&4'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
      end
      object ChkV5: TCheckBox
        Left = 166
        Top = 16
        Width = 36
        Height = 17
        Caption = 'V&5'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
      end
      object ChkV6: TCheckBox
        Left = 207
        Top = 16
        Width = 36
        Height = 17
        Caption = 'V&6'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
      end
      object ChkV7: TCheckBox
        Left = 248
        Top = 16
        Width = 35
        Height = 17
        Caption = 'V&7'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
      end
      object ChkV8: TCheckBox
        Left = 289
        Top = 16
        Width = 35
        Height = 17
        Caption = 'V&8'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
      end
    end
    object Bit_ExcluirMateria: TBitBtn
      Left = 393
      Top = 57
      Width = 95
      Height = 25
      Cursor = crHandPoint
      Hint = '|Exclui o item da Ficha T'#233'cnica...'
      Caption = '&Excluir Material'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Glyph.Data = {
        E6000000424DE60000000000000076000000280000000E0000000E0000000100
        04000000000070000000CE0E0000D80E00001000000000000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3300333333333333330033333333333333003333333333333300333333333333
        3300333333333333330033000000000033003300000000003300330000000000
        3300333333333333330033333333333333003333333333333300333333333333
        33003333333333333300}
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      TabStop = False
      OnClick = Bit_ExcluirMateriaClick
    end
  end
  object GrpVariacoes: TGroupBox
    Left = 0
    Top = 84
    Width = 685
    Height = 53
    Caption = 'Varia'#231#245'es:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object Label2: TLabel
      Left = 5
      Top = 14
      Width = 16
      Height = 13
      Caption = 'V1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 83
      Top = 14
      Width = 16
      Height = 13
      Caption = 'V2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 162
      Top = 14
      Width = 16
      Height = 13
      Caption = 'V3'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 241
      Top = 14
      Width = 16
      Height = 13
      Caption = 'V4'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 319
      Top = 14
      Width = 16
      Height = 13
      Caption = 'V5'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 399
      Top = 14
      Width = 16
      Height = 13
      Caption = 'V6'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 478
      Top = 14
      Width = 16
      Height = 13
      Caption = 'V7'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label13: TLabel
      Left = 556
      Top = 14
      Width = 16
      Height = 13
      Caption = 'V8'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBEdit1: TDBEdit
      Left = 3
      Top = 27
      Width = 78
      Height = 21
      TabStop = False
      AutoSelect = False
      Color = 14145495
      Ctl3D = True
      DataField = 'PRD_DCVAR1'
      DataSource = DmProducao.DsFichaTec
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ReadOnly = True
      ShowHint = False
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 82
      Top = 27
      Width = 78
      Height = 21
      TabStop = False
      AutoSelect = False
      Color = 14145495
      Ctl3D = True
      DataField = 'PRD_DCVAR2'
      DataSource = DmProducao.DsFichaTec
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ReadOnly = True
      ShowHint = False
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 161
      Top = 27
      Width = 78
      Height = 21
      TabStop = False
      AutoSelect = False
      Color = 14145495
      Ctl3D = True
      DataField = 'PRD_DCVAR3'
      DataSource = DmProducao.DsFichaTec
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ReadOnly = True
      ShowHint = False
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 240
      Top = 27
      Width = 78
      Height = 21
      TabStop = False
      AutoSelect = False
      Color = 14145495
      Ctl3D = True
      DataField = 'PRD_DCVAR4'
      DataSource = DmProducao.DsFichaTec
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ReadOnly = True
      ShowHint = False
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 319
      Top = 27
      Width = 78
      Height = 21
      TabStop = False
      AutoSelect = False
      Color = 14145495
      Ctl3D = True
      DataField = 'PRD_DCVAR5'
      DataSource = DmProducao.DsFichaTec
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ReadOnly = True
      ShowHint = False
      TabOrder = 4
    end
    object DBEdit6: TDBEdit
      Left = 398
      Top = 27
      Width = 78
      Height = 21
      TabStop = False
      AutoSelect = False
      Color = 14145495
      Ctl3D = True
      DataField = 'PRD_DCVAR6'
      DataSource = DmProducao.DsFichaTec
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ReadOnly = True
      ShowHint = False
      TabOrder = 5
    end
    object DBEdit7: TDBEdit
      Left = 477
      Top = 27
      Width = 78
      Height = 21
      TabStop = False
      AutoSelect = False
      Color = 14145495
      Ctl3D = True
      DataField = 'PRD_DCVAR7'
      DataSource = DmProducao.DsFichaTec
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ReadOnly = True
      ShowHint = False
      TabOrder = 6
    end
    object DBEdit8: TDBEdit
      Left = 556
      Top = 27
      Width = 78
      Height = 21
      TabStop = False
      AutoSelect = False
      Color = 14145495
      Ctl3D = True
      DataField = 'PRD_DCVAR8'
      DataSource = DmProducao.DsFichaTec
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ReadOnly = True
      ShowHint = False
      TabOrder = 7
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 25
    Width = 685
    Height = 4
    Color = clHighlight
    TabOrder = 7
  end
  object EdtPRD_REFER: TEdit
    Left = 92
    Top = 2
    Width = 98
    Height = 21
    CharCase = ecUpperCase
    MaxLength = 11
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    OnClick = EdtPRD_REFERClick
    OnEnter = EdtPRD_REFEREnter
    OnExit = EdtPRD_REFERExit
  end
  object Panel2: TPanel
    Left = 202
    Top = 512
    Width = 483
    Height = 33
    Cursor = crHandPoint
    BevelInner = bvLowered
    BevelOuter = bvLowered
    Color = 12681984
    TabOrder = 5
    object Bit_Cancelar: TBitBtn
      Left = 384
      Top = 4
      Width = 95
      Height = 25
      Cursor = crHandPoint
      Hint = '|Cancela registro atual...'
      Caption = '&Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        04000000000068010000CE0E0000D80E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033333333333333333333333F333333333333
        0000333333333333333333333388F333333F3333000033300333333300033333
        38F38F333F88F33300003330003333300033333338F338F3F8338F3300003333
        000333000333333338F3338F833338F3000033333000300033333333338F3338
        3333F8330000333333000003333333333338F333333F83330000333333300033
        3333333333338F3333383333000033333300000333333333333338F333833333
        00003333300030003333333333333833338F3333000033330003330003333333
        33338333338F333300003330003333300033333333383338F338F33300003330
        0333333300033333338333838F338F3300003333333333333003333333833833
        38F338F300003333333333333333333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      TabStop = False
      OnClick = Bit_CancelarClick
    end
    object Bit_Sair: TBitBtn
      Left = 384
      Top = 4
      Width = 95
      Height = 25
      Cursor = crHandPoint
      Caption = '&Sair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
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
      ParentFont = False
      TabOrder = 4
      TabStop = False
      OnClick = Bit_SairClick
    end
    object Bit_Excluir: TBitBtn
      Left = 194
      Top = 4
      Width = 95
      Height = 25
      Cursor = crHandPoint
      Hint = '|Exclui registro atual..'
      Caption = '&Excluir Ficha'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Glyph.Data = {
        E6000000424DE60000000000000076000000280000000E0000000E0000000100
        04000000000070000000CE0E0000D80E00001000000000000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3300333333333333330033333333333333003333333333333300333333333333
        3300333333333333330033000000000033003300000000003300330000000000
        3300333333333333330033333333333333003333333333333300333333333333
        33003333333333333300}
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      TabStop = False
      OnClick = Bit_ExcluirClick
    end
    object Bit_Gravar: TBitBtn
      Left = 289
      Top = 4
      Width = 95
      Height = 25
      Cursor = crHandPoint
      Hint = '|Grava registro...'
      Caption = '&Gravar'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000CE0E0000D80E00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        555555555555555555555555555555555555555555FF55555555555550055555
        55555555577FF5555555555500005555555555557777F5555555555500005555
        555555557777FF5555555550000005555555555777777F555555550000000555
        5555557777777FF5555557000500005555555777757777F55555700555500055
        55557775555777FF5555555555500005555555555557777F5555555555550005
        555555555555777FF5555555555550005555555555555777FF55555555555570
        05555555555555777FF5555555555557005555555555555777FF555555555555
        5000555555555555577755555555555555555555555555555555}
      NumGlyphs = 2
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      TabStop = False
      OnClick = Bit_GravarClick
    end
    object Bit_novo: TBitBtn
      Left = 4
      Top = 4
      Width = 95
      Height = 25
      Cursor = crHandPoint
      Caption = '&Criar Ficha'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Glyph.Data = {
        E6000000424DE60000000000000076000000280000000E0000000E0000000100
        04000000000070000000CE0E0000D80E00001000000000000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3300333333333333330033333333333333003333300033333300333330003333
        3300333330003333330033000000000333003300000000033300330000000003
        3300333330003333330033333000333333003333300033333300333333333333
        33003333333333333300}
      ParentFont = False
      TabOrder = 0
      TabStop = False
      OnClick = Bit_novoClick
    end
    object Bit_Copiar: TBitBtn
      Left = 99
      Top = 4
      Width = 95
      Height = 25
      Cursor = crHandPoint
      Caption = 'Copiar &Ficha'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Glyph.Data = {
        E6000000424DE60000000000000076000000280000000E0000000E0000000100
        04000000000070000000CE0E0000D80E00001000000000000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3300333333333333330033333333333333003333300033333300333330003333
        3300333330003333330033000000000333003300000000033300330000000003
        3300333330003333330033333000333333003333300033333300333333333333
        33003333333333333300}
      ParentFont = False
      TabOrder = 1
      TabStop = False
      OnClick = Bit_CopiarClick
    end
  end
  object Panel3: TPanel
    Left = 1
    Top = 512
    Width = 191
    Height = 33
    Cursor = crHandPoint
    BevelInner = bvLowered
    BevelOuter = bvLowered
    Caption = '11'
    Color = 12681984
    TabOrder = 6
    object Bit_Lista: TBitBtn
      Left = 4
      Top = 4
      Width = 90
      Height = 25
      Cursor = crHandPoint
      Caption = '&Consulta'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Glyph.Data = {
        CA010000424DCA01000000000000760000002800000027000000110000000100
        04000000000054010000CE0E0000D80E00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888888888888888888888888880887777777777777777888888888888888888
        8880800000000000000007888888888888888888888080888888888888880788
        8888888888888888888080FF8FF8FF8FF8FF0788888888888888888888808088
        88888888888807888888888888888888888080FF8FF8FF8FF8FF078888888888
        888888888880808888888888888807888888888888888888888080FF8FF8FF8F
        F8FF078888888888888888888880808888888888888807888888888888888888
        888080FF8FF8FF8FF8FF07888888888888888888888080000000000000000788
        8888888888888888888080FF7FF7FF7FF7FF0788888888888888888888808000
        0000000000000788888888888888888888808080CCCCCCCCCCCC078888888888
        8888888888808000000000000000088888888888888888888880888888888888
        8888888888888888888888888880}
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 0
      TabStop = False
      OnClick = Bit_ListaClick
    end
    object Bit_Relatorio: TBitBtn
      Left = 96
      Top = 4
      Width = 90
      Height = 25
      Caption = '&Relat'#243'rio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
        8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
        8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
        8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 1
      TabStop = False
      OnClick = Bit_RelatorioClick
    end
  end
  object GrpMateria: TGroupBox
    Left = 0
    Top = 138
    Width = 685
    Height = 200
    Caption = 'Mat'#233'rias-Primas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object DBGridFichaTecnicaItem: TDBGrid
      Left = 2
      Top = 13
      Width = 680
      Height = 183
      Hint = 'D'#234' duplo clique na grade p/fazer altera'#231#227'o do iten !'
      Color = 16776176
      DataSource = DsItensFicha
      FixedColor = 12681984
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit]
      ParentFont = False
      ParentShowHint = False
      PopupMenu = PopMenItens
      ReadOnly = True
      ShowHint = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      OnDblClick = DBGridFichaTecnicaItemDblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'PRD_REFER_ITENS'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'digo'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 71
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRD_DESCRI'
          Title.Alignment = taCenter
          Title.Caption = 'Descri'#231#227'o'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 314
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FTI_UC'
          Title.Alignment = taCenter
          Title.Caption = 'UC'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 68
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRD_UND'
          Title.Alignment = taCenter
          Title.Caption = 'UND'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'FTI_MODE1'
          Title.Alignment = taCenter
          Title.Caption = 'V1'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'FTI_MODE2'
          Title.Alignment = taCenter
          Title.Caption = 'V2'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'FTI_MODE3'
          Title.Alignment = taCenter
          Title.Caption = 'V3'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'FTI_MODE4'
          Title.Alignment = taCenter
          Title.Caption = 'V4'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'FTI_MODE5'
          Title.Alignment = taCenter
          Title.Caption = 'V5'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FTI_MODE6'
          Title.Caption = 'V6'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FTI_MODE7'
          Title.Caption = 'V7'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 19
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FTI_MODE8'
          Title.Caption = 'V8'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 19
          Visible = True
        end>
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 32
    Width = 685
    Height = 52
    BevelInner = bvLowered
    BevelOuter = bvNone
    TabOrder = 1
    object Label1: TLabel
      Left = 37
      Top = 8
      Width = 53
      Height = 13
      Caption = 'Produto :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 7
      Top = 31
      Width = 83
      Height = 13
      Caption = 'Data Cria'#231#227'o :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 396
      Top = 31
      Width = 42
      Height = 13
      Hint = 'Tempo Unit'#225'rio de Produ'#231#227'o'
      Caption = 'T.U.P.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
    end
    object DbeFTC_TUP: TDBEdit
      Left = 439
      Top = 27
      Width = 73
      Height = 21
      Hint = 'Tempo Unit'#225'rio de Produ'#231#227'o'
      DataField = 'FTC_TUP'
      DataSource = DmProducao.DsFichaTec
      MaxLength = 10
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnExit = DbeFTC_TUPExit
    end
    object EdtDescricao: TEdit
      Left = 91
      Top = 4
      Width = 421
      Height = 21
      TabStop = False
      AutoSelect = False
      CharCase = ecUpperCase
      Color = 14145495
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 50
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object DbDtFTC_CRIACAO: TJvDBDateEdit
      Left = 91
      Top = 27
      Width = 90
      Height = 21
      DataField = 'FTC_CRIACAO'
      DataSource = DmProducao.DsFichaTec
      Glyph.Data = {
        4E000000424D4E000000000000003E000000280000000F000000040000000100
        010000000000100000000000000000000000020000000200000000000000FFFF
        FF00FFFE00009CE600009CE60000FFFE0000}
      ImageKind = ikCustom
      PopupColor = clBtnFace
      ShowNullDate = False
      YearDigits = dyFour
      TabOrder = 0
      OnExit = DbDtFTC_CRIACAOExit
    end
  end
  object GrpProcesso: TGroupBox
    Left = 0
    Top = 340
    Width = 685
    Height = 83
    Caption = 'PROCESSO DE PRODU'#199#195'O:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    object ScrollBox1: TScrollBox
      Left = 4
      Top = 14
      Width = 677
      Height = 64
      TabOrder = 0
      object DbeFtc_proc1: TDBEdit
        Left = 2
        Top = 0
        Width = 655
        Height = 24
        BorderStyle = bsNone
        DataField = 'FTC_PROC1'
        DataSource = DmProducao.DsFichaTec
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object DbeFtc_proc2: TDBEdit
        Left = 2
        Top = 21
        Width = 655
        Height = 24
        BorderStyle = bsNone
        DataField = 'FTC_PROC2'
        DataSource = DmProducao.DsFichaTec
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object DbeFtc_proc3: TDBEdit
        Left = 2
        Top = 39
        Width = 655
        Height = 24
        BorderStyle = bsNone
        DataField = 'FTC_PROC3'
        DataSource = DmProducao.DsFichaTec
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object DBEFtc_proc4: TDBEdit
        Left = 2
        Top = 58
        Width = 655
        Height = 24
        BorderStyle = bsNone
        DataField = 'FTC_PROC4'
        DataSource = DmProducao.DsFichaTec
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object DBEFtc_proc5: TDBEdit
        Left = 2
        Top = 77
        Width = 655
        Height = 24
        BorderStyle = bsNone
        DataField = 'FTC_PROC5'
        DataSource = DmProducao.DsFichaTec
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object DBEFtc_proc6: TDBEdit
        Left = 2
        Top = 95
        Width = 655
        Height = 24
        BorderStyle = bsNone
        DataField = 'FTC_PROC6'
        DataSource = DmProducao.DsFichaTec
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object DBEFtc_Proc7: TDBEdit
        Left = 2
        Top = 113
        Width = 655
        Height = 24
        BorderStyle = bsNone
        DataField = 'FTC_PROC7'
        DataSource = DmProducao.DsFichaTec
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
      end
      object DBEFtc_Proc8: TDBEdit
        Left = 2
        Top = 131
        Width = 655
        Height = 24
        BorderStyle = bsNone
        DataField = 'FTC_PROC8'
        DataSource = DmProducao.DsFichaTec
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
      end
    end
  end
  object SqlCdsProduto: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'select '#13#10'P2.PRD_REFER, '#13#10'P2.PRD_DESCRI, '#13#10'P2.PRD_DCVAR1, '#13#10'P2.PR' +
      'D_DCVAR2, '#13#10'P2.PRD_DCVAR3, '#13#10'P2.PRD_DCVAR4, '#13#10'P2.PRD_DCVAR5, '#13#10'P' +
      '2.PRD_DCVAR6, '#13#10'P2.PRD_DCVAR7, '#13#10'P2.PRD_DCVAR8 '#13#10'from PRD0000 P2'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'select '#13#10'P2.PRD_REFER, '#13#10'P2.PRD_DESCRI, '#13#10'P2.PRD_DCVAR1, '#13#10'P2.PR' +
      'D_DCVAR2, '#13#10'P2.PRD_DCVAR3, '#13#10'P2.PRD_DCVAR4, '#13#10'P2.PRD_DCVAR5, '#13#10'P' +
      '2.PRD_DCVAR6, '#13#10'P2.PRD_DCVAR7, '#13#10'P2.PRD_DCVAR8 '#13#10'from PRD0000 P2'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 224
    object SqlCdsProdutoPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object SqlCdsProdutoPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 50
    end
    object SqlCdsProdutoPRD_DCVAR1: TStringField
      FieldName = 'PRD_DCVAR1'
      Size = 12
    end
    object SqlCdsProdutoPRD_DCVAR2: TStringField
      FieldName = 'PRD_DCVAR2'
      Size = 12
    end
    object SqlCdsProdutoPRD_DCVAR3: TStringField
      FieldName = 'PRD_DCVAR3'
      Size = 12
    end
    object SqlCdsProdutoPRD_DCVAR4: TStringField
      FieldName = 'PRD_DCVAR4'
      Size = 12
    end
    object SqlCdsProdutoPRD_DCVAR5: TStringField
      FieldName = 'PRD_DCVAR5'
      Size = 12
    end
    object SqlCdsProdutoPRD_DCVAR6: TStringField
      FieldName = 'PRD_DCVAR6'
      Size = 12
    end
    object SqlCdsProdutoPRD_DCVAR7: TStringField
      FieldName = 'PRD_DCVAR7'
      Size = 12
    end
    object SqlCdsProdutoPRD_DCVAR8: TStringField
      FieldName = 'PRD_DCVAR8'
      Size = 12
    end
  end
  object SqlCdsMaterial: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 'select '#13#10'P2.PRD_REFER, '#13#10'P2.PRD_DESCRI '#13#10'from PRD0000 P2'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'select '#13#10'P2.PRD_REFER, '#13#10'P2.PRD_DESCRI '#13#10'from PRD0000 P2'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 288
    Top = 440
    object SqlCdsMaterialPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object SqlCdsMaterialPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 50
    end
  end
  object SqlCdsItensFicha: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'select'#13#10'F2.*,'#13#10'P1.PRD_DESCRI,'#13#10'P1.PRD_UND'#13#10'from ftc_it01 F2'#13#10'lef' +
      't join prd0000 P1 on f2.prd_refer_itens = p1.prd_refer'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'select'#13#10'F2.*,'#13#10'P1.PRD_DESCRI,'#13#10'P1.PRD_UND'#13#10'from ftc_it01 F2'#13#10'lef' +
      't join prd0000 P1 on f2.prd_refer_itens = p1.prd_refer'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 264
    Top = 216
    object SqlCdsItensFichaFTI_REGISTRO: TIntegerField
      FieldName = 'FTI_REGISTRO'
      Required = True
    end
    object SqlCdsItensFichaPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object SqlCdsItensFichaPRD_REFER_ITENS: TStringField
      FieldName = 'PRD_REFER_ITENS'
      Size = 11
    end
    object SqlCdsItensFichaFTI_MODIFICADA: TSQLTimeStampField
      FieldName = 'FTI_MODIFICADA'
    end
    object SqlCdsItensFichaFTI_UC: TFMTBCDField
      FieldName = 'FTI_UC'
      DisplayFormat = '#,####0.0000'
      EditFormat = '#,####0.0000'
      Precision = 15
    end
    object SqlCdsItensFichaFTI_UCMODIFIC: TFMTBCDField
      FieldName = 'FTI_UCMODIFIC'
      Precision = 15
    end
    object SqlCdsItensFichaFTI_MODE1: TStringField
      FieldName = 'FTI_MODE1'
      Size = 1
    end
    object SqlCdsItensFichaFTI_MODE2: TStringField
      FieldName = 'FTI_MODE2'
      Size = 1
    end
    object SqlCdsItensFichaFTI_MODE3: TStringField
      FieldName = 'FTI_MODE3'
      Size = 1
    end
    object SqlCdsItensFichaFTI_MODE4: TStringField
      FieldName = 'FTI_MODE4'
      Size = 1
    end
    object SqlCdsItensFichaFTI_MODE5: TStringField
      FieldName = 'FTI_MODE5'
      Size = 1
    end
    object SqlCdsItensFichaFTI_MODE6: TStringField
      FieldName = 'FTI_MODE6'
      Size = 1
    end
    object SqlCdsItensFichaFTI_MODE7: TStringField
      FieldName = 'FTI_MODE7'
      Size = 12
    end
    object SqlCdsItensFichaFTI_MODE8: TStringField
      FieldName = 'FTI_MODE8'
      Size = 12
    end
    object SqlCdsItensFichaFTI_PRECOCUSTO: TFMTBCDField
      FieldName = 'FTI_PRECOCUSTO'
      Precision = 15
    end
    object SqlCdsItensFichaEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlCdsItensFichaPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 50
    end
    object SqlCdsItensFichaPRD_UND: TStringField
      FieldName = 'PRD_UND'
      Size = 3
    end
  end
  object DsItensFicha: TDataSource
    DataSet = SqlCdsItensFicha
    Left = 296
    Top = 216
  end
  object PopMenItens: TPopupMenu
    Left = 328
    Top = 216
    object AlterarItens1: TMenuItem
      Caption = 'Alterar Itens'
      OnClick = AlterarItens1Click
    end
    object ExcluirItens1: TMenuItem
      Caption = 'Excluir Itens'
      OnClick = ExcluirItens1Click
    end
  end
  object ppRelFichaTec: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline2
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 15000
    PrinterSetup.mmMarginLeft = 10000
    PrinterSetup.mmMarginRight = 10000
    PrinterSetup.mmMarginTop = 15000
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 1
    Template.FileName = 'C:\JobProgram\Developer\Adjutor\FontesRelatorios\RELFICHATEC.rtm'
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Portuguese (Brazil)'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 584
    Top = 264
    Version = '16.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline2'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 35454
      mmPrintPosition = 0
      object ppShape5: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape5'
        mmHeight = 8467
        mmLeft = 0
        mmTop = 16933
        mmWidth = 196321
        BandType = 0
        LayerName = Foreground
      end
      object ppShape1: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape1'
        mmHeight = 30427
        mmLeft = 0
        mmTop = 0
        mmWidth = 196321
        BandType = 0
        LayerName = Foreground
      end
      object ppShape14: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape14'
        mmHeight = 8467
        mmLeft = 174625
        mmTop = 21960
        mmWidth = 21696
        BandType = 0
        LayerName = Foreground
      end
      object ppShape13: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape13'
        mmHeight = 8467
        mmLeft = 153194
        mmTop = 21960
        mmWidth = 21696
        BandType = 0
        LayerName = Foreground
      end
      object ppShape12: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape12'
        mmHeight = 8467
        mmLeft = 131763
        mmTop = 21960
        mmWidth = 21696
        BandType = 0
        LayerName = Foreground
      end
      object ppShape11: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape101'
        mmHeight = 8467
        mmLeft = 110331
        mmTop = 21960
        mmWidth = 21696
        BandType = 0
        LayerName = Foreground
      end
      object ppShape10: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape10'
        mmHeight = 8467
        mmLeft = 88900
        mmTop = 21960
        mmWidth = 21696
        BandType = 0
        LayerName = Foreground
      end
      object ppShape9: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape9'
        mmHeight = 8467
        mmLeft = 67469
        mmTop = 21960
        mmWidth = 21696
        BandType = 0
        LayerName = Foreground
      end
      object ppShape8: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape8'
        mmHeight = 8467
        mmLeft = 46038
        mmTop = 21960
        mmWidth = 21696
        BandType = 0
        LayerName = Foreground
      end
      object ppShape7: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape7'
        mmHeight = 8467
        mmLeft = 0
        mmTop = 21960
        mmWidth = 24871
        BandType = 0
        LayerName = Foreground
      end
      object ppShape6: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape6'
        mmHeight = 8467
        mmLeft = 24606
        mmTop = 21960
        mmWidth = 21696
        BandType = 0
        LayerName = Foreground
      end
      object ppShape4: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape4'
        mmHeight = 5821
        mmLeft = 0
        mmTop = 11377
        mmWidth = 196321
        BandType = 0
        LayerName = Foreground
      end
      object ppShape3: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape3'
        mmHeight = 5292
        mmLeft = 0
        mmTop = 30162
        mmWidth = 196321
        BandType = 0
        LayerName = Foreground
      end
      object LBL_00_EMPRESA: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LBL_00_EMPRESA'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'LABEL_EMPRESA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 1323
        mmTop = 794
        mmWidth = 29210
        BandType = 0
        LayerName = Foreground
      end
      object LBL_00_LTITULO1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LBL_00_LTITULO1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'TITULO1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 1058
        mmTop = 6615
        mmWidth = 29633
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable11: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 167482
        mmTop = 794
        mmWidth = 28222
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable12: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 168011
        mmTop = 6615
        mmWidth = 27781
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'REFERENCIA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 1570
        mmTop = 12171
        mmWidth = 21731
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_REFER'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 24606
        mmTop = 12171
        mmWidth = 21696
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_DESCRI'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 46831
        mmTop = 12171
        mmWidth = 91811
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Mat'#233'ria-Prima'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 6085
        mmTop = 30692
        mmWidth = 23813
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Descri'#231#227'o da Mat'#233'ria-Prima'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 30956
        mmTop = 30692
        mmWidth = 91281
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Consumo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 123825
        mmTop = 30692
        mmWidth = 19844
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'UND'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 145786
        mmTop = 30692
        mmWidth = 7408
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'V1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 156369
        mmTop = 30692
        mmWidth = 4233
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'V2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 161396
        mmTop = 30692
        mmWidth = 4233
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label9'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'V3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 166423
        mmTop = 30692
        mmWidth = 4233
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label10'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'V4'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 171450
        mmTop = 30692
        mmWidth = 4233
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label101'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'V5'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 176477
        mmTop = 30692
        mmWidth = 4233
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label12'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'V6'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 181505
        mmTop = 30692
        mmWidth = 4233
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label13'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'V7'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 186532
        mmTop = 30692
        mmWidth = 4233
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel14: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label14'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'V8'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 191559
        mmTop = 30692
        mmWidth = 4233
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel23: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label11'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'T.U.P.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 140759
        mmTop = 12171
        mmWidth = 9737
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText23: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText23'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FTC_TUP'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 155311
        mmTop = 12171
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground
      end
      object ppLine10: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line12'
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 122767
        mmTop = 30427
        mmWidth = 3175
        BandType = 0
        LayerName = Foreground
      end
      object ppLine11: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line13'
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 144992
        mmTop = 30427
        mmWidth = 3175
        BandType = 0
        LayerName = Foreground
      end
      object ppLine12: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line14'
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 155840
        mmTop = 30427
        mmWidth = 1323
        BandType = 0
        LayerName = Foreground
      end
      object ppLine13: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line15'
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 160867
        mmTop = 30427
        mmWidth = 1058
        BandType = 0
        LayerName = Foreground
      end
      object ppLine15: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line16'
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 165894
        mmTop = 30427
        mmWidth = 1852
        BandType = 0
        LayerName = Foreground
      end
      object ppLine16: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line17'
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 170921
        mmTop = 30427
        mmWidth = 2381
        BandType = 0
        LayerName = Foreground
      end
      object ppLine17: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line18'
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 175948
        mmTop = 30427
        mmWidth = 1852
        BandType = 0
        LayerName = Foreground
      end
      object ppLine18: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line19'
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 180975
        mmTop = 30427
        mmWidth = 2381
        BandType = 0
        LayerName = Foreground
      end
      object ppLine19: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line20'
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 186002
        mmTop = 30427
        mmWidth = 2117
        BandType = 0
        LayerName = Foreground
      end
      object ppLine20: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line201'
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 191030
        mmTop = 30427
        mmWidth = 1588
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'VARIA'#199#213'ES'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 1323
        mmTop = 24077
        mmWidth = 20108
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel15: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label15'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'V1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3704
        mmLeft = 25400
        mmTop = 22490
        mmWidth = 3704
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_DCVAR1'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 25400
        mmTop = 25929
        mmWidth = 20108
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel16: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label16'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'V2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3704
        mmLeft = 46831
        mmTop = 22490
        mmWidth = 3704
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_DCVAR2'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 46831
        mmTop = 25929
        mmWidth = 20108
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel17: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label17'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'V3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3704
        mmLeft = 67998
        mmTop = 22490
        mmWidth = 3704
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_DCVAR3'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 67998
        mmTop = 25929
        mmWidth = 20108
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel18: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label102'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'V4'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3704
        mmLeft = 89694
        mmTop = 22490
        mmWidth = 3704
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_DCVAR4'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 89694
        mmTop = 25929
        mmWidth = 20108
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel19: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label19'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'V5'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3704
        mmLeft = 111125
        mmTop = 22490
        mmWidth = 3704
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_DCVAR5'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 111125
        mmTop = 25929
        mmWidth = 20108
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel20: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label20'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'V6'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3704
        mmLeft = 132557
        mmTop = 22490
        mmWidth = 3704
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText8'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_DCVAR6'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 132557
        mmTop = 25929
        mmWidth = 20108
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel21: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label21'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'V7'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3704
        mmLeft = 153988
        mmTop = 22490
        mmWidth = 3704
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText9'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_DCVAR7'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 153988
        mmTop = 25929
        mmWidth = 20108
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel22: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label22'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'V8'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3704
        mmLeft = 175419
        mmTop = 22490
        mmWidth = 3704
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText10'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_DCVAR8'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 175419
        mmTop = 25929
        mmWidth = 20108
        BandType = 0
        LayerName = Foreground
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5292
        mmLeft = 139700
        mmTop = 11642
        mmWidth = 265
        BandType = 0
        LayerName = Foreground
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5556
        mmLeft = 153194
        mmTop = 11377
        mmWidth = 265
        BandType = 0
        LayerName = Foreground
      end
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line4'
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5556
        mmLeft = 174625
        mmTop = 11377
        mmWidth = 265
        BandType = 0
        LayerName = Foreground
      end
      object ppLine7: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line5'
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5292
        mmLeft = 46038
        mmTop = 11642
        mmWidth = 265
        BandType = 0
        LayerName = Foreground
      end
      object ppLine14: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line6'
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5292
        mmLeft = 24606
        mmTop = 11642
        mmWidth = 265
        BandType = 0
        LayerName = Foreground
      end
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line7'
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5292
        mmLeft = 30163
        mmTop = 30162
        mmWidth = 3175
        BandType = 0
        LayerName = Foreground
      end
      object ppLine9: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line9'
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5292
        mmLeft = 5556
        mmTop = 30162
        mmWidth = 3175
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel25: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label23'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Item'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 7
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 529
        mmTop = 31221
        mmWidth = 4763
        BandType = 0
        LayerName = Foreground
      end
      object ppShape15: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape15'
        mmHeight = 5292
        mmLeft = 0
        mmTop = 16933
        mmWidth = 196321
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel26: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label26'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'TIPO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 529
        mmTop = 17463
        mmWidth = 8467
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText32: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText32'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PTI_CODIGO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 9790
        mmTop = 17463
        mmWidth = 5821
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText33: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText33'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PTI_DESCRI'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 15610
        mmTop = 17463
        mmWidth = 48683
        BandType = 0
        LayerName = Foreground
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line3'
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 9260
        mmTop = 16933
        mmWidth = 265
        BandType = 0
        LayerName = Foreground
      end
      object ppLine29: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line29'
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 64294
        mmTop = 16933
        mmWidth = 265
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel27: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label27'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'GRUPO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 64823
        mmTop = 17463
        mmWidth = 12700
        BandType = 0
        LayerName = Foreground
      end
      object ppLine35: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line35'
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 78052
        mmTop = 17198
        mmWidth = 265
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText34: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText34'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PGR_CODIGO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 78846
        mmTop = 17463
        mmWidth = 5821
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText35: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText35'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PGR_DESCRI'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 84931
        mmTop = 17463
        mmWidth = 37306
        BandType = 0
        LayerName = Foreground
      end
      object ppLine36: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line36'
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 124884
        mmTop = 16933
        mmWidth = 265
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel28: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label28'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'SEGMENTO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 125942
        mmTop = 17463
        mmWidth = 19844
        BandType = 0
        LayerName = Foreground
      end
      object ppLine37: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line37'
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 146315
        mmTop = 17198
        mmWidth = 265
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText36: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText36'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'LIN_CODIGO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 146844
        mmTop = 17463
        mmWidth = 5821
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText37: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText37'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'LIN_DESCRI'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 152929
        mmTop = 17463
        mmWidth = 37306
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand2: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 5556
      mmPrintPosition = 0
      object ppDBText11: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText11'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_REFER_ITENS'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3969
        mmLeft = 6085
        mmTop = 529
        mmWidth = 23813
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText12: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText12'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_DESCRI'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3969
        mmLeft = 30956
        mmTop = 529
        mmWidth = 91281
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText13: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText13'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FTI_UC'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3969
        mmLeft = 123825
        mmTop = 529
        mmWidth = 19844
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText14: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText14'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_UND'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3969
        mmLeft = 146050
        mmTop = 529
        mmWidth = 8731
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText15: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText15'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FTI_MODE1'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3969
        mmLeft = 156369
        mmTop = 529
        mmWidth = 4233
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText16: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText16'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FTI_MODE2'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3969
        mmLeft = 161396
        mmTop = 529
        mmWidth = 4233
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText17: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText17'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FTI_MODE3'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3969
        mmLeft = 166423
        mmTop = 529
        mmWidth = 4233
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText18: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText18'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FTI_MODE4'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3969
        mmLeft = 171450
        mmTop = 529
        mmWidth = 4233
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText19: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText19'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FTI_MODE5'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3969
        mmLeft = 176477
        mmTop = 529
        mmWidth = 4233
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText20: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText20'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FTI_MODE6'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3969
        mmLeft = 181505
        mmTop = 529
        mmWidth = 4233
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText21: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText21'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FTI_MODE7'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3969
        mmLeft = 186532
        mmTop = 529
        mmWidth = 4233
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText22: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText22'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FTI_MODE8'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3969
        mmLeft = 191559
        mmTop = 529
        mmWidth = 4233
        BandType = 4
        LayerName = Foreground
      end
      object ppLine6: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line8'
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 0
        mmTop = 0
        mmWidth = 265
        BandType = 4
        LayerName = Foreground
      end
      object ppLine8: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line10'
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 5556
        mmTop = 0
        mmWidth = 2910
        BandType = 4
        LayerName = Foreground
      end
      object ppLine22: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line101'
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 122767
        mmTop = 0
        mmWidth = 2910
        BandType = 4
        LayerName = Foreground
      end
      object ppLine23: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line23'
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5292
        mmLeft = 144727
        mmTop = 0
        mmWidth = 2910
        BandType = 4
        LayerName = Foreground
      end
      object ppLine24: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line24'
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 155840
        mmTop = 0
        mmWidth = 1058
        BandType = 4
        LayerName = Foreground
      end
      object ppLine25: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line25'
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 160867
        mmTop = 0
        mmWidth = 794
        BandType = 4
        LayerName = Foreground
      end
      object ppLine26: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line26'
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 165894
        mmTop = 0
        mmWidth = 1588
        BandType = 4
        LayerName = Foreground
      end
      object ppLine27: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line27'
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 170921
        mmTop = 0
        mmWidth = 2117
        BandType = 4
        LayerName = Foreground
      end
      object ppLine28: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line28'
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 175948
        mmTop = 0
        mmWidth = 1588
        BandType = 4
        LayerName = Foreground
      end
      object ppLine30: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line30'
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 180975
        mmTop = 0
        mmWidth = 2117
        BandType = 4
        LayerName = Foreground
      end
      object ppLine31: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line301'
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 186002
        mmTop = 0
        mmWidth = 1852
        BandType = 4
        LayerName = Foreground
      end
      object ppLine32: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line32'
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 191030
        mmTop = 0
        mmWidth = 1323
        BandType = 4
        LayerName = Foreground
      end
      object ppLine33: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line33'
        Border.Weight = 1.000000000000000000
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 193411
        mmTop = 0
        mmWidth = 2910
        BandType = 4
        LayerName = Foreground
      end
      object ppLine34: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line34'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 5292
        mmWidth = 196057
        BandType = 4
        LayerName = Foreground
      end
      object ppDBCalc1: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataPipeline = ppDBPipeline2
        DisplayFormat = '00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3704
        mmLeft = 794
        mmTop = 529
        mmWidth = 4233
        BandType = 4
        LayerName = Foreground
      end
      object ppLine21: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line102'
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 30163
        mmTop = 0
        mmWidth = 2910
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 41804
      mmPrintPosition = 0
      object ppLabel24: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label18'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'PROCESSO DE PRODU'#199#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 4374
        mmLeft = 5027
        mmTop = 529
        mmWidth = 47413
        BandType = 7
        LayerName = Foreground
      end
      object ppDBText24: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText24'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FTC_PROC1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        mmHeight = 3969
        mmLeft = 5027
        mmTop = 5821
        mmWidth = 183092
        BandType = 7
        LayerName = Foreground
      end
      object ppDBText25: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText25'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FTC_PROC2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        mmHeight = 3969
        mmLeft = 5027
        mmTop = 10319
        mmWidth = 183092
        BandType = 7
        LayerName = Foreground
      end
      object ppDBText26: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText26'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FTC_PROC3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        mmHeight = 3969
        mmLeft = 5027
        mmTop = 14817
        mmWidth = 183092
        BandType = 7
        LayerName = Foreground
      end
      object ppDBText27: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText27'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FTC_PROC4'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        mmHeight = 3969
        mmLeft = 5027
        mmTop = 19315
        mmWidth = 183092
        BandType = 7
        LayerName = Foreground
      end
      object ppDBText28: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText28'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FTC_PROC5'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        mmHeight = 3969
        mmLeft = 5027
        mmTop = 23813
        mmWidth = 183092
        BandType = 7
        LayerName = Foreground
      end
      object ppDBText29: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText29'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FTC_PROC6'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        mmHeight = 3969
        mmLeft = 5027
        mmTop = 28310
        mmWidth = 183092
        BandType = 7
        LayerName = Foreground
      end
      object ppDBText30: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText30'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FTC_PROC7'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        mmHeight = 3969
        mmLeft = 5027
        mmTop = 32808
        mmWidth = 183092
        BandType = 7
        LayerName = Foreground
      end
      object ppDBText31: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText31'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FTC_PROC8'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        mmHeight = 3969
        mmLeft = 5027
        mmTop = 37306
        mmWidth = 183092
        BandType = 7
        LayerName = Foreground
      end
      object ppLine38: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line38'
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 41275
        mmLeft = 0
        mmTop = 0
        mmWidth = 2646
        BandType = 7
        LayerName = Foreground
      end
      object ppLine39: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line39'
        Border.Weight = 1.000000000000000000
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 41275
        mmLeft = 193146
        mmTop = 0
        mmWidth = 3175
        BandType = 7
        LayerName = Foreground
      end
      object ppLine40: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line40'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 41540
        mmWidth = 196321
        BandType = 7
        LayerName = Foreground
      end
    end
    object ppDesignLayers1: TppDesignLayers
      object ppDesignLayer1: TppDesignLayer
        UserName = 'Foreground'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object DsRelProduto: TDataSource
    DataSet = SqlRelProdutos
    Left = 488
    Top = 192
  end
  object SqlRelProdutos: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'select'#13#10'F1.PRD_REFER,'#13#10'F1.ftc_tup,'#13#10'F1.ftc_criacao,'#13#10'F1.FTC_PROC' +
      '1,'#13#10'F1.FTC_PROC2,'#13#10'F1.FTC_PROC3,'#13#10'F1.FTC_PROC4,'#13#10'F1.FTC_PROC5,'#13#10 +
      'F1.FTC_PROC6,'#13#10'F1.FTC_PROC7,'#13#10'F1.FTC_PROC8,'#13#10'P1.PRD_DESCRI,'#13#10'P1.' +
      'prd_dcvar1,'#13#10'P1.prd_dcvar2,'#13#10'P1.prd_dcvar3,'#13#10'P1.prd_dcvar4,'#13#10'P1.' +
      'prd_dcvar5,'#13#10'P1.prd_dcvar6,'#13#10'P1.prd_dcvar7, '#13#10'P1.prd_dcvar8,'#13#10'P1' +
      '.pti_codigo,'#13#10'T1.pti_descri,'#13#10'P1.pgr_codigo,'#13#10'G1.pgr_descri,'#13#10'P1' +
      '.lin_codigo,'#13#10'L1.lin_descri'#13#10'from FTC0000 F1'#13#10'left join prd0000 ' +
      '  P1 on f1.prd_refer  = p1.prd_refer'#13#10'left join prd_tipo  T1 on ' +
      'P1.pti_codigo = T1.pti_codigo'#13#10'left join prd_grupo G1 on P1.pgr_' +
      'codigo = G1.pgr_codigo'#13#10'left join prd_linha L1 on P1.lin_codigo ' +
      '= L1.lin_codigo'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    BeforeOpen = SqlRelProdutosBeforeOpen
    CommandText = 
      'select'#13#10'F1.PRD_REFER,'#13#10'F1.ftc_tup,'#13#10'F1.ftc_criacao,'#13#10'F1.FTC_PROC' +
      '1,'#13#10'F1.FTC_PROC2,'#13#10'F1.FTC_PROC3,'#13#10'F1.FTC_PROC4,'#13#10'F1.FTC_PROC5,'#13#10 +
      'F1.FTC_PROC6,'#13#10'F1.FTC_PROC7,'#13#10'F1.FTC_PROC8,'#13#10'P1.PRD_DESCRI,'#13#10'P1.' +
      'prd_dcvar1,'#13#10'P1.prd_dcvar2,'#13#10'P1.prd_dcvar3,'#13#10'P1.prd_dcvar4,'#13#10'P1.' +
      'prd_dcvar5,'#13#10'P1.prd_dcvar6,'#13#10'P1.prd_dcvar7, '#13#10'P1.prd_dcvar8,'#13#10'P1' +
      '.pti_codigo,'#13#10'T1.pti_descri,'#13#10'P1.pgr_codigo,'#13#10'G1.pgr_descri,'#13#10'P1' +
      '.lin_codigo,'#13#10'L1.lin_descri'#13#10'from FTC0000 F1'#13#10'left join prd0000 ' +
      '  P1 on f1.prd_refer  = p1.prd_refer'#13#10'left join prd_tipo  T1 on ' +
      'P1.pti_codigo = T1.pti_codigo'#13#10'left join prd_grupo G1 on P1.pgr_' +
      'codigo = G1.pgr_codigo'#13#10'left join prd_linha L1 on P1.lin_codigo ' +
      '= L1.lin_codigo'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 418
    Top = 192
    object SqlRelProdutosPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Required = True
      Size = 11
    end
    object SqlRelProdutosPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 50
    end
    object SqlRelProdutosFTC_TUP: TFMTBCDField
      FieldName = 'FTC_TUP'
      Precision = 15
    end
    object SqlRelProdutosFTC_CRIACAO: TSQLTimeStampField
      FieldName = 'FTC_CRIACAO'
    end
    object SqlRelProdutosPRD_DCVAR1: TStringField
      FieldName = 'PRD_DCVAR1'
      Size = 12
    end
    object SqlRelProdutosPRD_DCVAR2: TStringField
      FieldName = 'PRD_DCVAR2'
      Size = 12
    end
    object SqlRelProdutosPRD_DCVAR3: TStringField
      FieldName = 'PRD_DCVAR3'
      Size = 12
    end
    object SqlRelProdutosPRD_DCVAR4: TStringField
      FieldName = 'PRD_DCVAR4'
      Size = 12
    end
    object SqlRelProdutosPRD_DCVAR5: TStringField
      FieldName = 'PRD_DCVAR5'
      Size = 12
    end
    object SqlRelProdutosPRD_DCVAR6: TStringField
      FieldName = 'PRD_DCVAR6'
      Size = 12
    end
    object SqlRelProdutosPRD_DCVAR7: TStringField
      FieldName = 'PRD_DCVAR7'
      Size = 12
    end
    object SqlRelProdutosPRD_DCVAR8: TStringField
      FieldName = 'PRD_DCVAR8'
      Size = 12
    end
    object SqlRelProdutosFTC_PROC1: TStringField
      FieldName = 'FTC_PROC1'
      Size = 75
    end
    object SqlRelProdutosFTC_PROC2: TStringField
      FieldName = 'FTC_PROC2'
      Size = 75
    end
    object SqlRelProdutosFTC_PROC3: TStringField
      FieldName = 'FTC_PROC3'
      Size = 75
    end
    object SqlRelProdutosFTC_PROC4: TStringField
      FieldName = 'FTC_PROC4'
      Size = 75
    end
    object SqlRelProdutosFTC_PROC5: TStringField
      FieldName = 'FTC_PROC5'
      Size = 75
    end
    object SqlRelProdutosFTC_PROC6: TStringField
      FieldName = 'FTC_PROC6'
      Size = 75
    end
    object SqlRelProdutosFTC_PROC7: TStringField
      FieldName = 'FTC_PROC7'
      Size = 75
    end
    object SqlRelProdutosFTC_PROC8: TStringField
      FieldName = 'FTC_PROC8'
      Size = 75
    end
    object SqlRelProdutosPTI_CODIGO: TStringField
      FieldName = 'PTI_CODIGO'
      Size = 3
    end
    object SqlRelProdutosPTI_DESCRI: TStringField
      DisplayWidth = 100
      FieldName = 'PTI_DESCRI'
      Size = 100
    end
    object SqlRelProdutosPGR_CODIGO: TStringField
      FieldName = 'PGR_CODIGO'
      Size = 3
    end
    object SqlRelProdutosPGR_DESCRI: TStringField
      FieldName = 'PGR_DESCRI'
      Size = 25
    end
    object SqlRelProdutosLIN_CODIGO: TStringField
      FieldName = 'LIN_CODIGO'
      Size = 2
    end
    object SqlRelProdutosLIN_DESCRI: TStringField
      FieldName = 'LIN_DESCRI'
      Size = 30
    end
  end
  object DsRelItens: TDataSource
    DataSet = SqlRelItens
    Left = 434
    Top = 264
  end
  object ppDBPipeline2: TppDBPipeline
    DataSource = DsRelItens
    UserName = 'DBPipeline2'
    Left = 496
    Top = 264
  end
  object SqlRelItens: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'select'#13#10'F2.*,'#13#10'P1.PRD_DESCRI,'#13#10'P1.PRD_UND'#13#10'from ftc_it01 F2'#13#10'lef' +
      't join prd0000 P1 on f2.prd_refer_itens = p1.prd_refer'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'select'#13#10'F2.*,'#13#10'P1.PRD_DESCRI,'#13#10'P1.PRD_UND'#13#10'from ftc_it01 F2'#13#10'lef' +
      't join prd0000 P1 on f2.prd_refer_itens = p1.prd_refer'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 380
    Top = 264
    object SqlRelItensFTI_REGISTRO: TIntegerField
      FieldName = 'FTI_REGISTRO'
      Required = True
    end
    object SqlRelItensPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object SqlRelItensPRD_REFER_ITENS: TStringField
      FieldName = 'PRD_REFER_ITENS'
      Size = 11
    end
    object SqlRelItensFTI_MODIFICADA: TSQLTimeStampField
      FieldName = 'FTI_MODIFICADA'
    end
    object SqlRelItensFTI_UC: TFMTBCDField
      FieldName = 'FTI_UC'
      Precision = 15
    end
    object SqlRelItensFTI_UCMODIFIC: TFMTBCDField
      FieldName = 'FTI_UCMODIFIC'
      Precision = 15
    end
    object SqlRelItensFTI_MODE1: TStringField
      FieldName = 'FTI_MODE1'
      Size = 1
    end
    object SqlRelItensFTI_MODE2: TStringField
      FieldName = 'FTI_MODE2'
      Size = 1
    end
    object SqlRelItensFTI_MODE3: TStringField
      FieldName = 'FTI_MODE3'
      Size = 1
    end
    object SqlRelItensFTI_MODE4: TStringField
      FieldName = 'FTI_MODE4'
      Size = 1
    end
    object SqlRelItensFTI_MODE5: TStringField
      FieldName = 'FTI_MODE5'
      Size = 1
    end
    object SqlRelItensFTI_MODE6: TStringField
      FieldName = 'FTI_MODE6'
      Size = 1
    end
    object SqlRelItensFTI_MODE7: TStringField
      FieldName = 'FTI_MODE7'
      Size = 12
    end
    object SqlRelItensFTI_MODE8: TStringField
      FieldName = 'FTI_MODE8'
      Size = 12
    end
    object SqlRelItensFTI_PRECOCUSTO: TFMTBCDField
      FieldName = 'FTI_PRECOCUSTO'
      Precision = 15
    end
    object SqlRelItensEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlRelItensPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 50
    end
    object SqlRelItensPRD_UND: TStringField
      FieldName = 'PRD_UND'
      Size = 3
    end
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = DsRelProduto
    UserName = 'DBPipeline1'
    Left = 560
    Top = 192
  end
end
