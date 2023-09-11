object FormImpCheque: TFormImpCheque
  Left = 0
  Top = 0
  AutoSize = True
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Impress'#227'o de cheque'
  ClientHeight = 541
  ClientWidth = 728
  Color = clBtnFace
  Constraints.MaxHeight = 569
  Constraints.MaxWidth = 736
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
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GrpDadosCheque: TGroupBox
    Left = 0
    Top = 188
    Width = 728
    Height = 155
    Align = alTop
    Color = clBtnFace
    Enabled = False
    ParentColor = False
    TabOrder = 1
    object Label2: TLabel
      Left = 111
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
      Left = 508
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
      Left = 71
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
      Left = 108
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
      Left = 299
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
      Left = 62
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
      Left = 295
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
      Left = 81
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
      Left = 456
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
      Left = 85
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
    object Grp_Liquidar: TGroupBox
      Left = 539
      Top = 122
      Width = 90
      Height = 28
      TabOrder = 10
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
    object CCodConta: TCurrencyEdit
      Left = 143
      Top = 13
      Width = 47
      Height = 21
      Alignment = taCenter
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '0000'
      MaxLength = 4
      TabOrder = 0
      ZeroEmpty = False
      OnExit = CCodContaExit
    end
    object CbBanco: TComboBox
      Left = 192
      Top = 13
      Width = 437
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 50
      TabOrder = 1
      OnClick = CbBancoClick
      OnExit = CbBancoExit
    end
    object CValor: TCurrencyEdit
      Left = 539
      Top = 105
      Width = 90
      Height = 21
      AutoSize = False
      DisplayFormat = ',0.00;-,0.00'
      TabOrder = 8
    end
    object Edt_Bco: TEdit
      Left = 192
      Top = 36
      Width = 437
      Height = 21
      TabStop = False
      Color = 14145495
      ReadOnly = True
      TabOrder = 3
    end
    object CCodBanco: TCurrencyEdit
      Left = 143
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
      Left = 143
      Top = 82
      Width = 89
      Height = 21
      Alignment = taCenter
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '0000000000'
      MaxLength = 10
      TabOrder = 4
      ZeroEmpty = False
      OnExit = cNumChequeExit
    end
    object cDigito: TCurrencyEdit
      Left = 349
      Top = 82
      Width = 29
      Height = 21
      Alignment = taCenter
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '0'
      MaxLength = 1
      TabOrder = 5
      ZeroEmpty = False
    end
    object Edt_Obs: TEdit
      Left = 143
      Top = 128
      Width = 295
      Height = 21
      AutoSize = False
      CharCase = ecUpperCase
      MaxLength = 50
      TabOrder = 9
    end
    object cCodFavorecido: TCurrencyEdit
      Left = 143
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
      TabOrder = 11
      ZeroEmpty = False
    end
    object Edt_Favorecido: TEdit
      Left = 192
      Top = 59
      Width = 437
      Height = 21
      TabStop = False
      AutoSize = False
      CharCase = ecUpperCase
      Color = 14145495
      MaxLength = 40
      TabOrder = 12
    end
    object DtEmissao: TJvDateEdit
      Left = 143
      Top = 105
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
      TabOrder = 6
      OnExit = DtEmissaoExit
    end
    object DtBomPara: TJvDateEdit
      Left = 349
      Top = 105
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
      TabOrder = 7
      OnExit = DtBomParaExit
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 728
    Height = 40
    Align = alTop
    BevelOuter = bvNone
    Color = 8404992
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 183
      Height = 20
      Caption = 'Impress'#227'o de cheques'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object GrpCheques: TGroupBox
    Left = 0
    Top = 343
    Width = 728
    Height = 170
    Align = alTop
    Caption = 'Cheques prontos para impress'#227'o'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 2
    object DBGridCheques: TDBGrid
      Left = 2
      Top = 15
      Width = 724
      Height = 151
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
      OnEnter = DBGridChequesEnter
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
          Width = 157
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
          Width = 305
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
          Width = 66
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IC_SELECAO'
          Title.Alignment = taCenter
          Title.Caption = '*'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 21
          Visible = True
        end>
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 513
    Width = 728
    Height = 28
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 3
    object Panel6: TPanel
      Left = 179
      Top = 0
      Width = 549
      Height = 28
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      object Bit_Alterar: TBitBtn
        Left = 5
        Top = 2
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
      object Bit_Excluir: TBitBtn
        Left = 95
        Top = 2
        Width = 90
        Height = 25
        Cursor = crHandPoint
        Caption = '&Excluir'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        NumGlyphs = 2
        ParentFont = False
        TabOrder = 1
        TabStop = False
        OnClick = Bit_ExcluirClick
      end
      object Bit_Gravar: TBitBtn
        Left = 185
        Top = 2
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
        TabOrder = 2
        TabStop = False
        OnClick = Bit_GravarClick
      end
      object Bit_Cancelar: TBitBtn
        Left = 275
        Top = 2
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
        TabOrder = 3
        TabStop = False
        OnClick = Bit_CancelarClick
      end
      object Bit_Imprimir: TBitBtn
        Left = 365
        Top = 2
        Width = 90
        Height = 25
        Caption = '&Imprimir'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        TabStop = False
        OnClick = Bit_ImprimirClick
      end
      object Bit_Sair: TBitBtn
        Left = 455
        Top = 2
        Width = 90
        Height = 25
        Caption = '&Sair'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        TabStop = False
        OnClick = Bit_SairClick
      end
    end
  end
  object Panel7: TPanel
    Left = 0
    Top = 40
    Width = 728
    Height = 148
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 4
    object GrpFavorecido: TGroupBox
      Left = 177
      Top = 51
      Width = 550
      Height = 92
      Caption = 'Fornecedor'
      TabOrder = 1
      object LBL_Nome_Favorecido: TLabel
        Left = 13
        Top = 45
        Width = 56
        Height = 13
        Alignment = taRightJustify
        Caption = 'Favorecido:'
      end
      object DBGridCliente: TDBGrid
        Left = 2
        Top = 15
        Width = 546
        Height = 75
        Align = alClient
        Color = 16776176
        DataSource = DsClientes
        FixedColor = 12681984
        Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDrawColumnCell = DBGridClienteDrawColumnCell
        OnDblClick = DBGridClienteDblClick
        OnKeyPress = DBGridClienteKeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'CLI_CODIGO'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLI_RAZAO'
            Title.Alignment = taCenter
            Title.Caption = 'Clientes'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 240
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLI_FANTASIA'
            Title.Alignment = taCenter
            Title.Caption = 'Nome Fantasia'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 240
            Visible = True
          end>
      end
      object DBGridFornecedor: TDBGrid
        Left = 2
        Top = 15
        Width = 546
        Height = 75
        Align = alClient
        Color = 16776176
        DataSource = DsFornecedor
        FixedColor = 12681984
        Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDrawColumnCell = DBGridFornecedorDrawColumnCell
        OnDblClick = DBGridClienteDblClick
        OnKeyPress = DBGridClienteKeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'FOR_CODIGO'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FOR_RAZAO'
            Title.Alignment = taCenter
            Title.Caption = 'Fornecedor'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 481
            Visible = True
          end>
      end
      object DBGridFavorecido: TDBGrid
        Left = 2
        Top = 15
        Width = 546
        Height = 75
        Align = alClient
        Color = 16776176
        DataSource = DsPagar
        FixedColor = 12681984
        Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDrawColumnCell = DBGridFavorecidoDrawColumnCell
        OnDblClick = DBGridFavorecidoDblClick
        OnKeyPress = DBGridFavorecidoKeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'PAG_CODIGO'
            Title.Alignment = taCenter
            Title.Caption = 'Cod'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PPC_NUMER'
            Title.Alignment = taCenter
            Title.Caption = 'Pc'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FOR_RAZAO'
            Title.Alignment = taCenter
            Title.Caption = 'Favorecido'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 345
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PPC_VENCTO'
            Title.Alignment = taCenter
            Title.Caption = 'Vencto'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 63
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PPC_VLPARC'
            Title.Alignment = taCenter
            Title.Caption = 'Valor'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 59
            Visible = True
          end>
      end
      object Edt_Nome_Favorecido: TEdit
        Left = 72
        Top = 41
        Width = 449
        Height = 21
        CharCase = ecUpperCase
        MaxLength = 50
        TabOrder = 3
        OnExit = Edt_Nome_FavorecidoExit
      end
    end
    object GrpTipo: TGroupBox
      Left = 0
      Top = 2
      Width = 92
      Height = 141
      Caption = 'Tipo Favorecido'
      TabOrder = 0
      TabStop = True
      object Rad_Clientes: TRadioButton
        Left = 6
        Top = 77
        Width = 54
        Height = 17
        Caption = 'Clien&te'
        TabOrder = 1
        OnClick = Rad_FornecedorClick
      end
      object Rad_Fornecedor: TRadioButton
        Left = 6
        Top = 50
        Width = 75
        Height = 17
        Caption = '&Fornecedor'
        TabOrder = 0
        OnClick = Rad_FornecedorClick
      end
      object Rad_Outro: TRadioButton
        Left = 6
        Top = 104
        Width = 48
        Height = 17
        Caption = '&Outro'
        TabOrder = 2
        OnClick = Rad_FornecedorClick
      end
      object Rad_Pagar: TRadioButton
        Left = 6
        Top = 24
        Width = 82
        Height = 17
        Caption = 'Ctas '#224' &Pagar'
        Checked = True
        TabOrder = 3
        TabStop = True
        OnClick = Rad_FornecedorClick
      end
    end
    object GrpPesquisar: TGroupBox
      Left = 92
      Top = 2
      Width = 85
      Height = 141
      Caption = 'Pesquisar'
      TabOrder = 2
      object Rad_Codigo: TRadioButton
        Left = 3
        Top = 24
        Width = 54
        Height = 17
        Caption = 'C'#243'digo'
        TabOrder = 0
        OnClick = Rad_CodigoClick
      end
      object Rad_Razao: TRadioButton
        Left = 3
        Top = 44
        Width = 59
        Height = 17
        Caption = 'Raz'#227'o'
        TabOrder = 1
        OnClick = Rad_CodigoClick
      end
      object Rad_Fantasia: TRadioButton
        Left = 3
        Top = 62
        Width = 62
        Height = 19
        Caption = 'Fantasia'
        TabOrder = 2
        OnClick = Rad_CodigoClick
      end
      object Rad_Forne: TRadioButton
        Left = 3
        Top = 81
        Width = 77
        Height = 17
        Caption = 'Fornecedor'
        TabOrder = 3
        OnClick = Rad_CodigoClick
      end
      object Rad_Favorecido: TRadioButton
        Left = 3
        Top = 99
        Width = 75
        Height = 17
        Caption = 'Favorecido'
        TabOrder = 4
        OnClick = Rad_CodigoClick
      end
      object Rad_Vencto: TRadioButton
        Left = 3
        Top = 119
        Width = 75
        Height = 17
        Caption = 'Vencimento'
        TabOrder = 5
        OnClick = Rad_CodigoClick
      end
    end
    object Grp_Filtrar: TGroupBox
      Left = 177
      Top = 2
      Width = 550
      Height = 48
      TabOrder = 3
      object Pan_Pan_Todos: TPanel
        Left = 2
        Top = 15
        Width = 454
        Height = 31
        BevelOuter = bvNone
        TabOrder = 0
        object Label12: TLabel
          Left = 5
          Top = 11
          Width = 36
          Height = 13
          Caption = 'C'#243'digo:'
        end
        object Cb_Fantasia: TComboBox
          Left = 104
          Top = 7
          Width = 345
          Height = 21
          CharCase = ecUpperCase
          MaxLength = 50
          TabOrder = 4
          OnClick = Cb_FantasiaClick
        end
        object Cb_Favorecido: TComboBox
          Left = 104
          Top = 7
          Width = 345
          Height = 21
          CharCase = ecUpperCase
          MaxLength = 50
          TabOrder = 1
          OnClick = Cb_FavorecidoClick
        end
        object Cb_Fornecedor: TComboBox
          Left = 104
          Top = 7
          Width = 345
          Height = 21
          CharCase = ecUpperCase
          MaxLength = 50
          TabOrder = 2
          OnClick = Cb_FornecedorClick
        end
        object Cb_Razao: TComboBox
          Left = 104
          Top = 7
          Width = 345
          Height = 21
          CharCase = ecUpperCase
          MaxLength = 50
          TabOrder = 3
          OnClick = Cb_RazaoClick
        end
        object CbFant: TComboBox
          Left = 104
          Top = 7
          Width = 63
          Height = 21
          Style = csSimple
          MaxLength = 5
          TabOrder = 7
          Visible = False
        end
        object CbCliCod: TComboBox
          Left = 103
          Top = 7
          Width = 63
          Height = 21
          Style = csSimple
          MaxLength = 5
          TabOrder = 6
          Visible = False
        end
        object CbFor_Fav: TComboBox
          Left = 104
          Top = 7
          Width = 63
          Height = 21
          Style = csSimple
          MaxLength = 5
          TabOrder = 5
          Visible = False
        end
        object cCod_Pesquisa: TCurrencyEdit
          Left = 42
          Top = 7
          Width = 61
          Height = 21
          Alignment = taCenter
          AutoSize = False
          DecimalPlaces = 0
          DisplayFormat = '00000'
          MaxLength = 5
          TabOrder = 0
          Value = 99999.000000000000000000
          OnExit = cCod_PesquisaExit
        end
      end
      object Pan_Pagar_Codigo: TPanel
        Left = 2
        Top = 15
        Width = 454
        Height = 31
        BevelOuter = bvNone
        TabOrder = 1
        object Label6: TLabel
          Left = 5
          Top = 11
          Width = 36
          Height = 13
          Caption = 'C'#243'digo:'
        end
        object Label11: TLabel
          Left = 112
          Top = 11
          Width = 54
          Height = 13
          Caption = 'N'#186' Parcela:'
        end
        object cNumLancto: TCurrencyEdit
          Left = 42
          Top = 7
          Width = 61
          Height = 21
          Alignment = taCenter
          AutoSize = False
          DecimalPlaces = 0
          DisplayFormat = '00000'
          MaxLength = 5
          TabOrder = 0
        end
        object cNumParc: TCurrencyEdit
          Left = 168
          Top = 7
          Width = 25
          Height = 21
          Alignment = taCenter
          AutoSize = False
          DecimalPlaces = 0
          DisplayFormat = '00'
          MaxLength = 2
          TabOrder = 1
        end
      end
      object Pan_Pagar_Vencto: TPanel
        Left = 2
        Top = 15
        Width = 454
        Height = 31
        BevelOuter = bvNone
        TabOrder = 2
        object Label13: TLabel
          Left = 32
          Top = 11
          Width = 17
          Height = 13
          Caption = 'De:'
        end
        object Label14: TLabel
          Left = 163
          Top = 11
          Width = 19
          Height = 13
          Caption = 'At'#233':'
        end
        object DataI: TJvDateEdit
          Left = 50
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
          OnExit = DataIExit
        end
        object DataF: TJvDateEdit
          Left = 207
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
      object BitPesquisar: TBitBtn
        Left = 457
        Top = 21
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
  end
  object Dscheque: TDataSource
    DataSet = SqlCdsCheque
    Left = 271
    Top = 417
  end
  object SqlcdsContas: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT'#13#10'T1.BAN_CODIGO,'#13#10'T1.BAN_RAZAO,'#13#10'T1.BAN_SEQ_CHEQUE,'#13#10'T1.BA' +
      'N_COD_APELIDO,'#13#10'T2.BCO_DESCRICAO'#13#10'FROM BAN0000 T1'#13#10'JOIN BANCOS T' +
      '2 ON (T2.BCO_CODIGO = T1.BAN_COD_APELIDO)'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'SELECT'#13#10'T1.BAN_CODIGO,'#13#10'T1.BAN_RAZAO,'#13#10'T1.BAN_SEQ_CHEQUE,'#13#10'T1.BA' +
      'N_COD_APELIDO,'#13#10'T2.BCO_DESCRICAO'#13#10'FROM BAN0000 T1'#13#10'JOIN BANCOS T' +
      '2 ON (T2.BCO_CODIGO = T1.BAN_COD_APELIDO)'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 456
    Top = 232
    object SqlcdsContasBAN_CODIGO: TStringField
      FieldName = 'BAN_CODIGO'
      Required = True
      Size = 4
    end
    object SqlcdsContasBAN_RAZAO: TStringField
      FieldName = 'BAN_RAZAO'
      Size = 45
    end
    object SqlcdsContasBAN_SEQ_CHEQUE: TIntegerField
      FieldName = 'BAN_SEQ_CHEQUE'
    end
    object SqlcdsContasBAN_COD_APELIDO: TIntegerField
      FieldName = 'BAN_COD_APELIDO'
    end
    object SqlcdsContasBCO_DESCRICAO: TStringField
      FieldName = 'BCO_DESCRICAO'
      Size = 35
    end
  end
  object SqlCfeCheque: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 'select * from SYS_CHEQUE'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'select * from SYS_CHEQUE'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 199
    Top = 417
    object SqlCfeChequeSCH_REGISTRO: TIntegerField
      FieldName = 'SCH_REGISTRO'
      Required = True
    end
    object SqlCfeChequeEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlCfeChequeBAN_CODIGO: TStringField
      FieldName = 'BAN_CODIGO'
      Size = 4
    end
    object SqlCfeChequeSCH_FONTE: TIntegerField
      FieldName = 'SCH_FONTE'
    end
    object SqlCfeChequeSCH_ENTRE_LINHAS: TIntegerField
      FieldName = 'SCH_ENTRE_LINHAS'
    end
    object SqlCfeChequeSCH_QTDE_LINHAS: TIntegerField
      FieldName = 'SCH_QTDE_LINHAS'
    end
    object SqlCfeChequeSCH_VALOR: TStringField
      FieldName = 'SCH_VALOR'
      Size = 7
    end
    object SqlCfeChequeSCH_LINHA1_EXT: TStringField
      FieldName = 'SCH_LINHA1_EXT'
      Size = 7
    end
    object SqlCfeChequeSCH_LINHA2_EXT: TStringField
      FieldName = 'SCH_LINHA2_EXT'
      Size = 7
    end
    object SqlCfeChequeSCH_QTDE_CARACTERES: TIntegerField
      FieldName = 'SCH_QTDE_CARACTERES'
    end
    object SqlCfeChequeSCH_FAVORECIDO: TStringField
      FieldName = 'SCH_FAVORECIDO'
      Size = 7
    end
    object SqlCfeChequeSCH_CIDADE: TStringField
      FieldName = 'SCH_CIDADE'
      Size = 7
    end
    object SqlCfeChequeSCH_DIA: TStringField
      FieldName = 'SCH_DIA'
      Size = 7
    end
    object SqlCfeChequeSCH_MES: TStringField
      FieldName = 'SCH_MES'
      Size = 7
    end
    object SqlCfeChequeSCH_ANO: TStringField
      FieldName = 'SCH_ANO'
      Size = 7
    end
    object SqlCfeChequeSCH_TAM_ANO: TIntegerField
      FieldName = 'SCH_TAM_ANO'
    end
    object SqlCfeChequeSCH_BOM_PARA: TStringField
      FieldName = 'SCH_BOM_PARA'
      Size = 7
    end
  end
  object SqlCdsFornecedor: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT'#13#10'T1.FOR_CODIGO,'#13#10'T1.FOR_RAZAO,'#13#10'T1.CCT_CODIGO'#13#10'FROM FOR00' +
      '00 T1'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'SELECT'#13#10'T1.FOR_CODIGO,'#13#10'T1.FOR_RAZAO,'#13#10'T1.CCT_CODIGO'#13#10'FROM FOR00' +
      '00 T1'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 412
    Top = 160
    object SqlCdsFornecedorFOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      Required = True
      Size = 4
    end
    object SqlCdsFornecedorFOR_RAZAO: TStringField
      FieldName = 'FOR_RAZAO'
      Size = 40
    end
    object SqlCdsFornecedorCCT_CODIGO: TStringField
      FieldName = 'CCT_CODIGO'
      Size = 3
    end
  end
  object SqlCdsClientes: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT'#13#10'T1.CLI_CODIGO,'#13#10'T1.CLI_RAZAO,'#13#10'T1.CLI_FANTASIA'#13#10'FROM CLI' +
      '0000 T1'#13#10'ORDER BY'#13#10'T1.CLI_RAZAO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'SELECT'#13#10'T1.CLI_CODIGO,'#13#10'T1.CLI_RAZAO,'#13#10'T1.CLI_FANTASIA'#13#10'FROM CLI' +
      '0000 T1'#13#10'ORDER BY'#13#10'T1.CLI_RAZAO'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 469
    Top = 160
    object SqlCdsClientesCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Required = True
      Size = 5
    end
    object SqlCdsClientesCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Size = 55
    end
    object SqlCdsClientesCLI_FANTASIA: TStringField
      FieldName = 'CLI_FANTASIA'
      Size = 55
    end
  end
  object DsFornecedor: TDataSource
    DataSet = SqlCdsFornecedor
    Left = 440
    Top = 160
  end
  object DsClientes: TDataSource
    DataSet = SqlCdsClientes
    Left = 497
    Top = 160
  end
  object SqlCdsPagar: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT'#13#10'T1.PAG_REGISTRO,'#13#10'T1.PAG_CODIGO,'#13#10'T1.PPC_NUMER,'#13#10'T1.PPC_' +
      'VLPARC,'#13#10'T1.PPC_VENCTO,'#13#10'T2.FOR_RAZAO'#13#10'FROM PAG_PC01 T1'#13#10'JOIN FO' +
      'R0000 T2 ON (T2.FOR_CODIGO = T1.FOR_CODIGO)'#13#10'WHERE T1.PPC_SITPAG' +
      ' = '#39'P'#39
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'SELECT'#13#10'T1.PAG_REGISTRO,'#13#10'T1.PAG_CODIGO,'#13#10'T1.PPC_NUMER,'#13#10'T1.PPC_' +
      'VLPARC,'#13#10'T1.PPC_VENCTO,'#13#10'T2.FOR_RAZAO'#13#10'FROM PAG_PC01 T1'#13#10'JOIN FO' +
      'R0000 T2 ON (T2.FOR_CODIGO = T1.FOR_CODIGO)'#13#10'WHERE T1.PPC_SITPAG' +
      ' = '#39'P'#39
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 526
    Top = 160
    object SqlCdsPagarPAG_REGISTRO: TIntegerField
      FieldName = 'PAG_REGISTRO'
      Required = True
    end
    object SqlCdsPagarPAG_CODIGO: TStringField
      FieldName = 'PAG_CODIGO'
      Required = True
      Size = 5
    end
    object SqlCdsPagarPPC_NUMER: TStringField
      FieldName = 'PPC_NUMER'
      Size = 2
    end
    object SqlCdsPagarPPC_VLPARC: TFMTBCDField
      FieldName = 'PPC_VLPARC'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 4
    end
    object SqlCdsPagarPPC_VENCTO: TSQLTimeStampField
      FieldName = 'PPC_VENCTO'
    end
    object SqlCdsPagarFOR_RAZAO: TStringField
      FieldName = 'FOR_RAZAO'
      Size = 40
    end
  end
  object DsPagar: TDataSource
    DataSet = SqlCdsPagar
    Left = 554
    Top = 160
  end
  object SqlCds_Cb_Clientes: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT'#13#10'T1.CLI_CODIGO,'#13#10'T1.CLI_RAZAO,'#13#10'T1.CLI_FANTASIA'#13#10'FROM CLI' +
      '0000 T1'#13#10'ORDER BY'#13#10'T1.CLI_RAZAO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'SELECT'#13#10'T1.CLI_CODIGO,'#13#10'T1.CLI_RAZAO,'#13#10'T1.CLI_FANTASIA'#13#10'FROM CLI' +
      '0000 T1'#13#10'ORDER BY'#13#10'T1.CLI_RAZAO'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 231
    Top = 161
    object SqlCds_Cb_ClientesCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Required = True
      Size = 5
    end
    object SqlCds_Cb_ClientesCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Size = 55
    end
    object SqlCds_Cb_ClientesCLI_FANTASIA: TStringField
      FieldName = 'CLI_FANTASIA'
      Size = 55
    end
  end
  object SqlCds_Cb_For_Favo: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 'SELECT'#13#10'T1.FOR_CODIGO,'#13#10'T1.FOR_RAZAO'#13#10'FROM FOR0000 T1'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'SELECT'#13#10'T1.FOR_CODIGO,'#13#10'T1.FOR_RAZAO'#13#10'FROM FOR0000 T1'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 260
    Top = 161
    object SqlCds_Cb_For_FavoFOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      Required = True
      Size = 4
    end
    object SqlCds_Cb_For_FavoFOR_RAZAO: TStringField
      FieldName = 'FOR_RAZAO'
      Size = 40
    end
  end
  object SqlCdsCheque: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT'#13#10'T1.*,'#13#10'T2.BAN_APELIDO'#13#10'FROM CHQ0000 T1'#13#10'LEFT JOIN BAN000' +
      '0 T2 ON (T2.BAN_CODIGO = T1.BAN_CODIGO)'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    BeforeScroll = SqlCdsChequeAfterScroll
    AfterScroll = SqlCdsChequeAfterScroll
    OnCalcFields = SqlCdsChequeCalcFields
    CommandText = 
      'SELECT'#13#10'T1.*,'#13#10'T2.BAN_APELIDO'#13#10'FROM CHQ0000 T1'#13#10'LEFT JOIN BAN000' +
      '0 T2 ON (T2.BAN_CODIGO = T1.BAN_CODIGO)'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 240
    Top = 417
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
    object SqlCdsChequeIC_SELECAO: TBooleanField
      FieldKind = fkCalculated
      FieldName = 'IC_SELECAO'
      Calculated = True
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
  end
  object ImageList1: TImageList
    Height = 15
    Left = 306
    Top = 418
    Bitmap = {
      494C010103000500040010000F00FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000000F0000000100200000000000000F
      000000000000000000000000000000000000E7EFF700E7EFF700E7EFF700E7EF
      F700E7EFF700E7EFF700E7EFF700E7EFF700E7EFF700E7EFF700E7EFF700E7EF
      F700E7EFF700E7EFF700E7EFF700FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000636B7300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000636B7300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000008484840000000000000000000000000084848400848484000000
      000000000000000000000000000000000000000000000000000000FF00000084
      0000008400008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000636B7300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      8400000084008484840084848400000000000000FF0000000000848484008484
      8400000000000000000000000000000000000000000000000000008400000084
      0000008400000084000084000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000636B7300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      8400000084000000000084848400848484000000840000008400000000008484
      8400000000000000000000000000000000000000000000000000008400000084
      0000008400000084000000840000840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000636B7300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      FF00000084000000840000000000000084000000840000008400000084000000
      0000000000000000000000000000000000000000000000000000008400000084
      00000084000000FF000000840000008400008400000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000636B7300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000FF000000840000008400000084000000840000008400000000000000
      0000000000000000000000000000000000000000000000000000008400000084
      0000840000000000000000FF0000008400000084000084000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000636B7300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000FF0000008400000084000000840084848400848484000000
      000000000000000000000000000000000000000000000000000000FF00000084
      000084000000000000000000000000FF00000084000000840000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000636B7300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000FF0000008400000084000000840000000000848484008484
      8400000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FF000000840000008400008400
      0000848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000636B7300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000008400000084000000FF000000840000008400000000008484
      8400848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FF0000008400000084
      0000840000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000636B7300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000008484
      84000000FF000000840000000000848484000000FF0000008400000084000000
      0000848484000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FF00000084
      0000008400008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000636B7300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000008400000084008484840000000000000000000000FF00000084000000
      8400000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      0000008400008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000636B7300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000FF0000000000000000000000000000000000000000000000FF000000
      8400C6C6C6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000636B7300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000636B7300636B7300636B7300636B
      7300636B7300636B7300636B7300636B7300636B7300636B7300636B7300636B
      7300636B7300636B7300636B7300FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      28000000400000000F0000000100010000000000780000000000000000000000
      000000000000000000000000FFFFFF000000FFFFFFFF00000000FFFFE7FF0000
      0000F39FC3FF00000000E10FC1FF00000000E00FC0FF00000000E01FC07F0000
      0000F03FC43F00000000F81FC61F00000000F80FFF0700000000F807FF830000
      0000E007FFC300000000F187FFE300000000F7C7FFFF00000000FFFFFFFF0000
      0000FFFFFFFF000000000000000000000000000000000000000000000000}
  end
  object RDCheque: TRDprint
    ImpressoraPersonalizada.NomeImpressora = 'Modelo Personalizado - (Epson)'
    ImpressoraPersonalizada.AvancaOitavos = '27 48'
    ImpressoraPersonalizada.AvancaSextos = '27 50'
    ImpressoraPersonalizada.SaltoPagina = '12'
    ImpressoraPersonalizada.TamanhoPagina = '27 67 66'
    ImpressoraPersonalizada.Negrito = '27 69'
    ImpressoraPersonalizada.Italico = '27 52'
    ImpressoraPersonalizada.Sublinhado = '27 45 49'
    ImpressoraPersonalizada.Expandido = '27 14'
    ImpressoraPersonalizada.Normal10 = '18 27 80'
    ImpressoraPersonalizada.Comprimir12 = '18 27 77'
    ImpressoraPersonalizada.Comprimir17 = '27 80 27 15'
    ImpressoraPersonalizada.Comprimir20 = '27 77 27 15'
    ImpressoraPersonalizada.Reset = '27 80 18 20 27 53 27 70 27 45 48'
    ImpressoraPersonalizada.Inicializar = '27 64'
    OpcoesPreview.PaginaZebrada = False
    OpcoesPreview.Remalina = False
    OpcoesPreview.CaptionPreview = 'Rdprint Preview'
    OpcoesPreview.PreviewZoom = 100
    OpcoesPreview.CorPapelPreview = clWhite
    OpcoesPreview.CorLetraPreview = clBlack
    OpcoesPreview.Preview = False
    OpcoesPreview.BotaoSetup = Ativo
    OpcoesPreview.BotaoImprimir = Ativo
    OpcoesPreview.BotaoGravar = Ativo
    OpcoesPreview.BotaoLer = Ativo
    OpcoesPreview.BotaoProcurar = Ativo
    OpcoesPreview.BotaoPDF = Ativo
    OpcoesPreview.BotaoEMAIL = Ativo
    Margens.Left = 10
    Margens.Right = 10
    Margens.Top = 10
    Margens.Bottom = 10
    Autor = Deltress
    RegistroUsuario.NomeRegistro = 'POINT INFORMATICA LTDA'
    RegistroUsuario.SerieProduto = 'SINGLE-0615/01649'
    RegistroUsuario.AutorizacaoKey = '5E33-1QQQ-385V-ASCD-RRJM'
    About = 'RDprint 5.0 - Registrado'
    Acentuacao = SemAcento
    CaptionSetup = 'Rdprint Setup'
    TitulodoRelatorio = 'Gerado por RDprint'
    UsaGerenciadorImpr = True
    CorForm = clBtnFace
    CorFonte = clBlack
    Impressora = Epson
    Mapeamento.Strings = (
      '//--- Grafico Compativel com Windows/USB ---//'
      '//'
      'GRAFICO=GRAFICO'
      'HP=GRAFICO'
      'DESKJET=GRAFICO'
      'LASERJET=GRAFICO'
      'INKJET=GRAFICO'
      'STYLUS=GRAFICO'
      'EPL=GRAFICO'
      'USB=GRAFICO'
      '//'
      '//--- Linha Epson Matricial 9 e 24 agulhas ---//'
      '//'
      'EPSON=EPSON'
      'GENERIC=EPSON'
      'TEXT=EPSON'
      'LX-300=EPSON'
      'LX-810=EPSON'
      'FX-2170=EPSON'
      'FX-1170=EPSON'
      'LQ-1170=EPSON'
      'LQ-2170=EPSON'
      'OKIDATA=EPSON'
      '//'
      '//--- Rima e Emilia ---//'
      '//'
      'RIMA=RIMA'
      'EMILIA=RIMA'
      '//'
      '//--- Linha HP/Xerox padr'#227'o PCL ---//'
      '//'
      'PCL=HP'
      '//'
      '//--- Impressoras 40 Colunas ---//'
      '//'
      'DARUMA=BOBINA'
      'SIGTRON=BOBINA'
      'SWEDA=BOBINA'
      'BEMATECH=BOBINA')
    PortaComunicacao = 'LPT1'
    MostrarProgresso = True
    TamanhoQteLinhas = 66
    TamanhoQteColunas = 80
    TamanhoQteLPP = Seis
    NumerodeCopias = 1
    FonteTamanhoPadrao = S10cpp
    FonteEstiloPadrao = []
    Orientacao = poPortrait
    Left = 350
    Top = 417
  end
end
