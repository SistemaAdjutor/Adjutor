object FrmChequeConsulta: TFrmChequeConsulta
  Left = 0
  Top = 81
  ActiveControl = Rad_Favorecido
  AutoSize = True
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Manuten'#231#227'o de Cheques'
  ClientHeight = 537
  ClientWidth = 792
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GrpCheques: TGroupBox
    Left = 0
    Top = 128
    Width = 792
    Height = 149
    Align = alTop
    Caption = 'Cheques impressos'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 0
    object DBGridCheques: TDBGrid
      Left = 2
      Top = 15
      Width = 788
      Height = 130
      TabStop = False
      Color = 16776176
      DataSource = Dscheque
      FixedColor = 12681984
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlue
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDrawColumnCell = DBGridChequesDrawColumnCell
      OnDblClick = DBGridChequesDblClick
      OnKeyPress = DBGridChequesKeyPress
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'CHQ_EMISSAO'
          Title.Alignment = taCenter
          Title.Caption = 'Emiss'#227'o'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 61
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BAN_APELIDO'
          Title.Alignment = taCenter
          Title.Caption = 'Conta'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 146
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CC_NUM_CHEQUE'
          Title.Alignment = taCenter
          Title.Caption = 'N'#186' Cheque'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 84
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CHQ_NOME_FAVORECIDO'
          Title.Alignment = taCenter
          Title.Caption = 'Favorecido'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 309
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CHQ_VALOR'
          Title.Alignment = taCenter
          Title.Caption = 'Valor'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 67
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CC_SITUACAO'
          Title.Alignment = taCenter
          Title.Caption = 'Situa'#231#227'o'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 83
          Visible = True
        end>
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 499
    Width = 792
    Height = 38
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    object Label18: TLabel
      Left = 16
      Top = 9
      Width = 42
      Height = 13
      Caption = 'Exclu'#237'do'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Panel6: TPanel
      Left = 336
      Top = 0
      Width = 456
      Height = 38
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      object Bit_Alterar: TBitBtn
        Left = 93
        Top = 9
        Width = 90
        Height = 25
        Cursor = crHandPoint
        Caption = '&Alterar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        NumGlyphs = 2
        ParentFont = False
        TabOrder = 0
        TabStop = False
        OnClick = Bit_AlterarClick
      end
      object Bit_Gravar: TBitBtn
        Left = 183
        Top = 9
        Width = 90
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
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333333333333333330000333333333333333333333333F33333333333
          00003333344333333333333333377F3333333333000033334224333333333333
          337337F3333333330000333422224333333333333733337F3333333300003342
          222224333333333373333337F3333333000034222A22224333333337F337F333
          7F33333300003222A3A2224333333337F3737F337F33333300003A2A333A2224
          33333337F73337F337F33333000033A33333A222433333337333337F337F3333
          0000333333333A222433333333333337F337F33300003333333333A222433333
          333333337F337F33000033333333333A222433333333333337F337F300003333
          33333333A222433333333333337F337F00003333333333333A22433333333333
          3337F37F000033333333333333A223333333333333337F730000333333333333
          333A333333333333333337330000333333333333333333333333333333333333
          0000}
        NumGlyphs = 2
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        TabStop = False
        OnClick = Bit_GravarClick
      end
      object Bit_Cancelar: TBitBtn
        Left = 273
        Top = 9
        Width = 90
        Height = 25
        Cancel = True
        Caption = '&Cancelar'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333333333333333333333000033338833333333333333333F333333333333
          0000333911833333983333333388F333333F3333000033391118333911833333
          38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
          911118111118333338F3338F833338F3000033333911111111833333338F3338
          3333F8330000333333911111183333333338F333333F83330000333333311111
          8333333333338F3333383333000033333339111183333333333338F333833333
          00003333339111118333333333333833338F3333000033333911181118333333
          33338333338F333300003333911183911183333333383338F338F33300003333
          9118333911183333338F33838F338F33000033333913333391113333338FF833
          38F338F300003333333333333919333333388333338FFF830000333333333333
          3333333333333333333888330000333333333333333333333333333333333333
          0000}
        NumGlyphs = 2
        ParentFont = False
        TabOrder = 2
        TabStop = False
        OnClick = Bit_CancelarClick
      end
      object Bit_Sair: TBitBtn
        Left = 363
        Top = 9
        Width = 90
        Height = 25
        Caption = '&Sair'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        TabStop = False
        OnClick = Bit_SairClick
      end
      object Bit_Relatorio: TBitBtn
        Left = 3
        Top = 9
        Width = 90
        Height = 25
        Cursor = crHandPoint
        Caption = '&Relat'#243'rios'
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
        TabOrder = 4
        TabStop = False
        OnClick = Bit_RelatorioClick
      end
    end
    object Panel4: TPanel
      Left = 0
      Top = 7
      Width = 14
      Height = 15
      BevelOuter = bvLowered
      Color = 47360
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 47360
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
  end
  object GrpDadosCheque: TGroupBox
    Left = 0
    Top = 277
    Width = 792
    Height = 181
    Align = alTop
    Color = clBtnFace
    Enabled = False
    ParentColor = False
    TabOrder = 1
    object Label1: TLabel
      Left = 140
      Top = 16
      Width = 31
      Height = 13
      Alignment = taRightJustify
      Caption = 'Conta:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 537
      Top = 108
      Width = 30
      Height = 13
      Alignment = taRightJustify
      Caption = 'Valor :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 100
      Top = 108
      Width = 71
      Height = 13
      Alignment = taRightJustify
      Caption = 'Data Emiss'#227'o :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 137
      Top = 39
      Width = 34
      Height = 13
      Alignment = taRightJustify
      Caption = 'Banco:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 328
      Top = 108
      Width = 49
      Height = 13
      Alignment = taRightJustify
      Caption = 'Bom Para:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label51: TLabel
      Left = 91
      Top = 85
      Width = 80
      Height = 13
      Alignment = taRightJustify
      Caption = 'N'#250'mero Cheque:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label79: TLabel
      Left = 324
      Top = 85
      Width = 54
      Height = 13
      Alignment = taRightJustify
      Caption = 'D'#237'gito-(C3):'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 110
      Top = 131
      Width = 61
      Height = 13
      Alignment = taRightJustify
      Caption = 'Observa'#231#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 485
      Top = 131
      Width = 82
      Height = 13
      Alignment = taRightJustify
      Caption = 'L'#237'quidar a Conta:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 114
      Top = 62
      Width = 56
      Height = 13
      Alignment = taRightJustify
      Caption = 'Favorecido:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 86
      Top = 155
      Width = 85
      Height = 13
      Alignment = taRightJustify
      Caption = 'Cheque Impresso:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 276
      Top = 155
      Width = 100
      Height = 13
      Alignment = taRightJustify
      Caption = 'Situa'#231#227'o do Cheque:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Grp_Liquidar: TGroupBox
      Left = 568
      Top = 122
      Width = 90
      Height = 28
      TabOrder = 12
      object Rad_Sim: TRadioButton
        Left = 2
        Top = 8
        Width = 39
        Height = 17
        Caption = '&Sim'
        TabOrder = 0
      end
      object Rad_Nao: TRadioButton
        Left = 47
        Top = 8
        Width = 41
        Height = 17
        Caption = '&N'#227'o'
        TabOrder = 1
      end
    end
    object CValor: TCurrencyEdit
      Left = 568
      Top = 105
      Width = 90
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 14145495
      DisplayFormat = ',0.00;-,0.00'
      TabOrder = 10
    end
    object Edt_Bco: TEdit
      Left = 221
      Top = 36
      Width = 437
      Height = 21
      TabStop = False
      Color = 14145495
      ReadOnly = True
      TabOrder = 3
    end
    object CCodBanco: TCurrencyEdit
      Left = 172
      Top = 36
      Width = 47
      Height = 21
      TabStop = False
      Alignment = taCenter
      AutoSize = False
      Color = 14145495
      DecimalPlaces = 0
      DisplayFormat = '0000'
      MaxLength = 4
      ReadOnly = True
      TabOrder = 2
      ZeroEmpty = False
    end
    object cNumCheque: TCurrencyEdit
      Left = 172
      Top = 82
      Width = 89
      Height = 21
      TabStop = False
      Alignment = taCenter
      AutoSize = False
      Color = 14145495
      DecimalPlaces = 0
      DisplayFormat = '0000000000'
      MaxLength = 10
      TabOrder = 6
      ZeroEmpty = False
    end
    object cDigito: TCurrencyEdit
      Left = 378
      Top = 82
      Width = 29
      Height = 21
      TabStop = False
      Alignment = taCenter
      AutoSize = False
      Color = 14145495
      DecimalPlaces = 0
      DisplayFormat = '0'
      MaxLength = 1
      TabOrder = 7
      ZeroEmpty = False
    end
    object Edt_Obs: TEdit
      Left = 172
      Top = 128
      Width = 295
      Height = 21
      TabStop = False
      AutoSize = False
      CharCase = ecUpperCase
      Color = 14145495
      MaxLength = 50
      TabOrder = 11
    end
    object cCodFavorecido: TCurrencyEdit
      Left = 172
      Top = 59
      Width = 47
      Height = 21
      TabStop = False
      Alignment = taCenter
      AutoSize = False
      Color = 14145495
      DecimalPlaces = 0
      DisplayFormat = '00000'
      MaxLength = 5
      TabOrder = 4
      ZeroEmpty = False
    end
    object Edt_Favorecido: TEdit
      Left = 221
      Top = 59
      Width = 437
      Height = 21
      TabStop = False
      AutoSize = False
      CharCase = ecUpperCase
      Color = 14145495
      MaxLength = 40
      TabOrder = 5
    end
    object CBancoCod: TCurrencyEdit
      Left = 172
      Top = 13
      Width = 47
      Height = 21
      TabStop = False
      Alignment = taCenter
      AutoSize = False
      Color = 14145495
      DecimalPlaces = 0
      DisplayFormat = '0000'
      MaxLength = 4
      ReadOnly = True
      TabOrder = 0
      ZeroEmpty = False
    end
    object Edt_Banco: TEdit
      Left = 221
      Top = 13
      Width = 437
      Height = 21
      TabStop = False
      Color = 14145495
      ReadOnly = True
      TabOrder = 1
    end
    object DtEmissao: TEdit
      Left = 172
      Top = 105
      Width = 89
      Height = 21
      TabStop = False
      Color = 14145495
      TabOrder = 8
    end
    object DtBomPara: TEdit
      Left = 378
      Top = 105
      Width = 89
      Height = 21
      TabStop = False
      Color = 14145495
      TabOrder = 9
    end
    object Cb_Imp: TComboBox
      Left = 172
      Top = 151
      Width = 44
      Height = 21
      Style = csDropDownList
      TabOrder = 13
      Items.Strings = (
        'Sim'
        'N'#227'o')
    end
    object CbSituacao: TComboBox
      Left = 377
      Top = 151
      Width = 90
      Height = 21
      Style = csDropDownList
      TabOrder = 14
      Items.Strings = (
        'Pendente'
        'Liquidado'
        'Cancelado'
        'Devolvido'
        'Repassado'
        'Reapresentado')
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 40
    Width = 792
    Height = 88
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 3
    object Grp_Filtrar: TGroupBox
      Left = 230
      Top = 40
      Width = 561
      Height = 48
      TabOrder = 2
      object Pan_Data: TPanel
        Left = 2
        Top = 15
        Width = 301
        Height = 31
        BevelOuter = bvNone
        TabOrder = 0
        object Label15: TLabel
          Left = 20
          Top = 11
          Width = 17
          Height = 13
          Caption = 'De:'
        end
        object Label16: TLabel
          Left = 151
          Top = 11
          Width = 19
          Height = 13
          Caption = 'At'#233':'
        end
        object DataI: TJvDateEdit
          Left = 38
          Top = 7
          Width = 89
          Height = 21
          Glyph.Data = {
            4E000000424D4E000000000000003E000000280000000A000000040000000100
            010000000000100000000000000000000000020000000200000000000000FFFF
            FF00FFC000003300000033000000FFC00000}
          ImageKind = ikCustom
          ButtonWidth = 16
          PopupColor = clBtnFace
          ShowNullDate = False
          YearDigits = dyFour
          TabOrder = 0
          OnEnter = DataIEnter
          OnExit = DataIExit
        end
        object DataF: TJvDateEdit
          Left = 195
          Top = 7
          Width = 89
          Height = 21
          Glyph.Data = {
            4E000000424D4E000000000000003E000000280000000A000000040000000100
            010000000000100000000000000000000000020000000200000000000000FFFF
            FF00FFC000003300000033000000FFC00000}
          ImageKind = ikCustom
          ButtonWidth = 16
          PopupColor = clBtnFace
          ShowNullDate = False
          YearDigits = dyFour
          TabOrder = 1
          OnExit = DataFExit
        end
      end
      object Pan_Favorecido: TPanel
        Left = 6
        Top = 13
        Width = 284
        Height = 31
        BevelOuter = bvNone
        TabOrder = 2
        object Label13: TLabel
          Left = 1
          Top = 10
          Width = 56
          Height = 13
          Caption = 'Favorecido:'
        end
        object Edt_Nome_Favorecido: TEdit
          Left = 59
          Top = 8
          Width = 222
          Height = 21
          AutoSize = False
          CharCase = ecUpperCase
          MaxLength = 50
          TabOrder = 0
          OnEnter = Edt_Nome_FavorecidoEnter
        end
      end
      object Pan_NCheque: TPanel
        Left = 2
        Top = 13
        Width = 286
        Height = 31
        BevelOuter = bvNone
        TabOrder = 1
        object Label12: TLabel
          Left = 7
          Top = 10
          Width = 55
          Height = 13
          Caption = 'N'#186' Cheque:'
        end
        object Label14: TLabel
          Left = 143
          Top = 11
          Width = 54
          Height = 13
          Alignment = taRightJustify
          Caption = 'D'#237'gito-(C3):'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object cNCheque: TCurrencyEdit
          Left = 63
          Top = 8
          Width = 73
          Height = 21
          Alignment = taCenter
          AutoSize = False
          DecimalPlaces = 0
          DisplayFormat = '0000000000'
          MaxLength = 10
          TabOrder = 0
          ZeroEmpty = False
          OnEnter = cNChequeEnter
        end
        object CDvCheque: TCurrencyEdit
          Left = 199
          Top = 8
          Width = 29
          Height = 21
          Alignment = taCenter
          AutoSize = False
          DecimalPlaces = 0
          DisplayFormat = '0'
          MaxLength = 1
          TabOrder = 1
          ZeroEmpty = False
        end
      end
      object BitPesquisar: TBitBtn
        Left = 459
        Top = 16
        Width = 90
        Height = 21
        Caption = '&Pesquisar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHighlight
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        OnClick = BitPesquisarClick
      end
    end
    object Grp01: TGroupBox
      Left = 230
      Top = 0
      Width = 561
      Height = 41
      TabOrder = 1
      object Label2: TLabel
        Left = 7
        Top = 16
        Width = 31
        Height = 13
        Alignment = taRightJustify
        Caption = 'Conta:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object CCodConta: TCurrencyEdit
        Left = 39
        Top = 13
        Width = 47
        Height = 21
        Alignment = taCenter
        AutoSize = False
        DecimalPlaces = 0
        DisplayFormat = '0000'
        MaxLength = 4
        TabOrder = 0
        Value = 9999.000000000000000000
        ZeroEmpty = False
        OnExit = CCodContaExit
      end
      object CbBanco: TComboBox
        Left = 87
        Top = 13
        Width = 466
        Height = 21
        CharCase = ecUpperCase
        ItemIndex = 0
        MaxLength = 50
        TabOrder = 1
        Text = 'TODAS AS CONTAS'
        OnClick = CbBancoClick
        OnExit = CbBancoClick
        Items.Strings = (
          'TODAS AS CONTAS')
      end
    end
    object Grp02: TGroupBox
      Left = 0
      Top = 0
      Width = 230
      Height = 88
      Caption = 'Filtrar por'
      TabOrder = 0
      object Rad_Emissao: TRadioButton
        Left = 4
        Top = 18
        Width = 86
        Height = 17
        Caption = '&Data Emiss'#227'o'
        Checked = True
        TabOrder = 0
        TabStop = True
        OnClick = Rad_EmissaoClick
      end
      object Rad_NCheque: TRadioButton
        Left = 4
        Top = 40
        Width = 74
        Height = 17
        Caption = '&N'#186' Cheque'
        TabOrder = 1
        OnClick = Rad_EmissaoClick
      end
      object Rad_Favorecido: TRadioButton
        Left = 4
        Top = 62
        Width = 74
        Height = 17
        Caption = '&Favorecido'
        TabOrder = 2
        OnClick = Rad_EmissaoClick
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 792
    Height = 40
    Align = alTop
    BevelOuter = bvNone
    Color = 8404992
    TabOrder = 4
    object Label17: TLabel
      Left = 16
      Top = 8
      Width = 201
      Height = 20
      Caption = 'Manuten'#231#227'o de Cheques'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object GrpExclusao: TGroupBox
    Left = 0
    Top = 458
    Width = 792
    Height = 41
    Align = alTop
    Caption = 'Registro Exclu'#237'do'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    Visible = False
    object Label34: TLabel
      Left = 5
      Top = 19
      Width = 32
      Height = 13
      Caption = 'Data:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 47360
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label35: TLabel
      Left = 241
      Top = 19
      Width = 48
      Height = 13
      Caption = 'Usu'#225'rio:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 47360
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label36: TLabel
      Left = 462
      Top = 19
      Width = 43
      Height = 13
      Caption = 'Motivo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 47360
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label19: TLabel
      Left = 128
      Top = 19
      Width = 32
      Height = 13
      Caption = 'Hora:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 47360
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Edt_Data_Exclusao: TEdit
      Left = 37
      Top = 16
      Width = 67
      Height = 21
      TabStop = False
      Color = 14145495
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object CCodUsu_Exclusao: TCurrencyEdit
      Left = 288
      Top = 16
      Width = 29
      Height = 21
      TabStop = False
      Alignment = taCenter
      AutoSize = False
      Color = 14145495
      DecimalPlaces = 0
      DisplayFormat = '000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 3
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      ZeroEmpty = False
    end
    object Edt_Login_Exclusao: TEdit
      Left = 318
      Top = 16
      Width = 112
      Height = 21
      TabStop = False
      AutoSize = False
      CharCase = ecUpperCase
      Color = 14145495
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 50
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object Edt_Motivo_Exclusao: TEdit
      Left = 504
      Top = 16
      Width = 218
      Height = 21
      TabStop = False
      AutoSize = False
      CharCase = ecUpperCase
      Color = 14145495
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 50
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
    object Edt_Hora_Exclusao: TEdit
      Left = 160
      Top = 16
      Width = 50
      Height = 21
      TabStop = False
      Color = 14145495
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
  end
  object SqlCdsCheque: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT'#13#10'T1.*,'#13#10'T2.BAN_APELIDO,'#13#10'T2.BAN_COD_APELIDO,'#13#10'T3.BCO_DESC' +
      'RICAO'#13#10'FROM CHQ0000 T1'#13#10'LEFT JOIN BAN0000 T2 ON (T2.BAN_CODIGO =' +
      ' T1.BAN_CODIGO)'#13#10'LEFT JOIN BANCOS T3 ON (T3.BCO_CODIGO = T2.BAN_' +
      'COD_APELIDO)'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    BeforeScroll = SqlCdsChequeAfterScroll
    AfterScroll = SqlCdsChequeAfterScroll
    OnCalcFields = SqlCdsChequeCalcFields
    CommandText = 
      'SELECT'#13#10'T1.*,'#13#10'T2.BAN_APELIDO,'#13#10'T2.BAN_COD_APELIDO,'#13#10'T3.BCO_DESC' +
      'RICAO'#13#10'FROM CHQ0000 T1'#13#10'LEFT JOIN BAN0000 T2 ON (T2.BAN_CODIGO =' +
      ' T1.BAN_CODIGO)'#13#10'LEFT JOIN BANCOS T3 ON (T3.BCO_CODIGO = T2.BAN_' +
      'COD_APELIDO)'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 240
    Top = 217
    object SqlCdsChequeCHQ_REGISTRO: TIntegerField
      FieldName = 'CHQ_REGISTRO'
      Required = True
    end
    object SqlCdsChequeEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlCdsChequeBAN_CODIGO: TStringField
      FieldName = 'BAN_CODIGO'
      Size = 4
    end
    object SqlCdsChequeCHQ_EMISSAO: TDateField
      FieldName = 'CHQ_EMISSAO'
    end
    object SqlCdsChequeCHQ_BOMPARA: TDateField
      FieldName = 'CHQ_BOMPARA'
    end
    object SqlCdsChequeCHQ_NUMERO: TStringField
      FieldName = 'CHQ_NUMERO'
      Size = 10
    end
    object SqlCdsChequeCHQ_NUMERO_DV: TStringField
      FieldName = 'CHQ_NUMERO_DV'
      Size = 1
    end
    object SqlCdsChequeCHQ_VALOR: TFMTBCDField
      FieldName = 'CHQ_VALOR'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 4
    end
    object SqlCdsChequeCHQ_SITUACAO: TStringField
      FieldName = 'CHQ_SITUACAO'
      Size = 1
    end
    object SqlCdsChequeCHQ_IMP: TStringField
      FieldName = 'CHQ_IMP'
      Size = 1
    end
    object SqlCdsChequeCHQ_TIPO_FAVORECIDO: TStringField
      FieldName = 'CHQ_TIPO_FAVORECIDO'
      Size = 1
    end
    object SqlCdsChequeCHQ_CODIGO_FAVORECIDO: TStringField
      FieldName = 'CHQ_CODIGO_FAVORECIDO'
      Size = 5
    end
    object SqlCdsChequeCHQ_NOME_FAVORECIDO: TStringField
      FieldName = 'CHQ_NOME_FAVORECIDO'
      Size = 50
    end
    object SqlCdsChequeCHQ_LIQUIDAR: TStringField
      FieldName = 'CHQ_LIQUIDAR'
      Size = 1
    end
    object SqlCdsChequeUSU_CODIGO: TIntegerField
      FieldName = 'USU_CODIGO'
    end
    object SqlCdsChequeUSU_LOGIN: TStringField
      FieldName = 'USU_LOGIN'
      Size = 15
    end
    object SqlCdsChequeBAN_APELIDO: TStringField
      FieldName = 'BAN_APELIDO'
      Size = 25
    end
    object SqlCdsChequeCC_NUM_CHEQUE: TStringField
      FieldKind = fkCalculated
      FieldName = 'CC_NUM_CHEQUE'
      Size = 12
      Calculated = True
    end
    object SqlCdsChequeCHQ_PAG_REGISTRO: TIntegerField
      FieldName = 'CHQ_PAG_REGISTRO'
    end
    object SqlCdsChequeCHQ_OBSERVACAO: TStringField
      FieldName = 'CHQ_OBSERVACAO'
      Size = 50
    end
    object SqlCdsChequeBAN_COD_APELIDO: TIntegerField
      FieldName = 'BAN_COD_APELIDO'
    end
    object SqlCdsChequeBCO_DESCRICAO: TStringField
      FieldName = 'BCO_DESCRICAO'
      Size = 35
    end
    object SqlCdsChequeCHQ_EXCLUSAO: TStringField
      FieldName = 'CHQ_EXCLUSAO'
      Size = 1
    end
    object SqlCdsChequeCHQ_MOTIVO_EXCLUSAO: TStringField
      FieldName = 'CHQ_MOTIVO_EXCLUSAO'
      Size = 30
    end
    object SqlCdsChequeCHQ_DATA_EXCLUSAO: TDateField
      FieldName = 'CHQ_DATA_EXCLUSAO'
    end
    object SqlCdsChequeCHQ_HORA_EXCLUSAO: TTimeField
      FieldName = 'CHQ_HORA_EXCLUSAO'
    end
    object SqlCdsChequeUSU_CODIGO_EXCLUSAO: TIntegerField
      FieldName = 'USU_CODIGO_EXCLUSAO'
    end
    object SqlCdsChequeUSU_LOGIN_EXCLUSAO: TStringField
      FieldName = 'USU_LOGIN_EXCLUSAO'
      Size = 15
    end
    object SqlCdsChequeCC_EXCLUSAO: TStringField
      FieldKind = fkCalculated
      FieldName = 'CC_EXCLUSAO'
      Size = 3
      Calculated = True
    end
    object SqlCdsChequeCC_SITUACAO: TStringField
      FieldKind = fkCalculated
      FieldName = 'CC_SITUACAO'
      Size = 15
      Calculated = True
    end
  end
  object Dscheque: TDataSource
    DataSet = SqlCdsCheque
    Left = 271
    Top = 217
  end
  object SqlcdsContas: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 'SELECT'#13#10'T1.BAN_CODIGO,'#13#10'T1.BAN_APELIDO'#13#10'FROM BAN0000 T1'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'SELECT'#13#10'T1.BAN_CODIGO,'#13#10'T1.BAN_APELIDO'#13#10'FROM BAN0000 T1'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 416
    Top = 88
    object SqlcdsContasBAN_CODIGO: TStringField
      FieldName = 'BAN_CODIGO'
      Required = True
      Size = 4
    end
    object SqlcdsContasBAN_APELIDO: TStringField
      FieldName = 'BAN_APELIDO'
      Size = 25
    end
  end
end
