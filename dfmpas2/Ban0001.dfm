object FormBanco: TFormBanco
  Left = 283
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Contas Bancos'
  ClientHeight = 602
  ClientWidth = 964
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  FormStyle = fsMDIChild
  Icon.Data = {
    0000010001002020100000000000E80200001600000028000000200000004000
    0000010004000000000080020000000000000000000000000000000000000000
    000000008000008000000080800080000000800080008080000080808000C0C0
    C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000330000000000000000000000033303303303300000000000000
    0003303330333003003300000000000000033003330330002333000000000000
    0030000033003033333000000000000033333330000003330003330000000803
    33333333333333300233330000000F033333333333333302333BB03000004F83
    33333333333333333BB003BB00004FF3333333333333B33BB0033BBB00004FF3
    33333333B3BB3BB0033BBBB000004FF83B333B3B3B3BBBB03BBBBB0300F04FFF
    33B3B3B3BBBBBBBBBBBB00330FF04FFF8B3B3333BBBBBBBBBB0033330FF044FF
    F8BBB03033BBBBB330333330FFF444FFF8BB0BB3003B330003333330FF44444F
    F88B3BBB300000033333B33FFF44444FFF3BB0BBB3000333B33BB38FF4444444
    FF003B0BB333333BBBBBB3FFF44444444FF00030BBBBBBBBBBBBBBFF44444444
    0000000303BBB3300000BFF444444400000000000000000000000FF444440000
    0000000000000000000000444444000000000000000000000000000044440000
    0000000000000000000000000444000000000000000000000000000000040000
    000000000000000000000000000000000000000000000000000000000000FFFF
    FFFFFFFFFFFFFFFF1FFFFF8003FFFC0000FFF800007FF800007FE000003F0000
    001F0000001F0000000F00000007000000070000000000000000000000000000
    00000000000000000000000000000000000000000000000000000000000000C0
    00000FE01F003FFFFF80FFFFFFC0FFFFFFF0FFFFFFF8FFFFFFFEFFFFFFFF}
  KeyPreview = True
  OldCreateOrder = True
  Position = poDesktopCenter
  Visible = True
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object DBText1: TDBText
    Left = 72
    Top = 8
    Width = 65
    Height = 19
    AutoSize = True
    DataField = 'BAN_APELIDO'
    DataSource = DataCadastros.DsBanco
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText2: TDBText
    Left = 8
    Top = 8
    Width = 65
    Height = 19
    AutoSize = True
    DataField = 'BAN_CODIGO'
    DataSource = DataCadastros.DsBanco
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label54: TLabel
    Left = 56
    Top = 8
    Width = 5
    Height = 19
    Caption = '-'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 38
    Width = 953
    Height = 525
    ActivePage = TabSheet1
    TabOrder = 0
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = '&Dados Cadastrais'
      ImageIndex = 1
      object Label1: TLabel
        Left = 63
        Top = 9
        Width = 36
        Height = 14
        Caption = 'C'#243'digo:'
      end
      object Label33: TLabel
        Left = 158
        Top = 9
        Width = 34
        Height = 14
        Caption = 'Banco:'
      end
      object Label39: TLabel
        Left = 708
        Top = 9
        Width = 4
        Height = 14
        Caption = '-'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label40: TLabel
        Left = 585
        Top = 33
        Width = 50
        Height = 14
        Caption = 'No.Conta :'
      end
      object Label41: TLabel
        Left = 708
        Top = 32
        Width = 4
        Height = 14
        Caption = '-'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 1
        Top = 33
        Width = 98
        Height = 14
        Caption = 'Descri'#231#227'o da Conta:'
      end
      object Label3: TLabel
        Left = 593
        Top = 10
        Width = 43
        Height = 14
        Alignment = taRightJustify
        Caption = 'Ag'#234'ncia:'
      end
      object Label5: TLabel
        Left = 51
        Top = 57
        Width = 49
        Height = 14
        Caption = 'Endere'#231'o:'
      end
      object TLabel
        Left = 476
        Top = 58
        Width = 22
        Height = 14
        Caption = 'CEP:'
      end
      object Label6: TLabel
        Left = 600
        Top = 58
        Width = 36
        Height = 14
        Alignment = taRightJustify
        Caption = 'Cidade:'
      end
      object Label7: TLabel
        Left = 902
        Top = 59
        Width = 16
        Height = 14
        Alignment = taRightJustify
        Caption = 'UF:'
      end
      object Label8: TLabel
        Left = 73
        Top = 82
        Width = 27
        Height = 14
        Caption = 'Fone:'
      end
      object Label9: TLabel
        Left = 200
        Top = 82
        Width = 21
        Height = 14
        Caption = 'Fax:'
      end
      object Label10: TLabel
        Left = 329
        Top = 83
        Width = 42
        Height = 14
        Caption = 'Gerente:'
      end
      object Label13: TLabel
        Left = 577
        Top = 80
        Width = 59
        Height = 14
        Alignment = taRightJustify
        Caption = 'Anivers'#225'rio:'
      end
      object Label14: TLabel
        Left = 68
        Top = 105
        Width = 31
        Height = 14
        Caption = 'E-Mail:'
      end
      object Label16: TLabel
        Left = 615
        Top = 106
        Width = 21
        Height = 14
        Alignment = taRightJustify
        Caption = 'Site:'
      end
      object Label12: TLabel
        Left = 36
        Top = 127
        Width = 63
        Height = 14
        Caption = 'Observa'#231#227'o:'
      end
      object Label36: TLabel
        Left = 565
        Top = 153
        Width = 71
        Height = 14
        Alignment = taRightJustify
        Caption = 'Gerar Cheque:'
      end
      object Label35: TLabel
        Left = 577
        Top = 130
        Width = 59
        Height = 14
        Alignment = taRightJustify
        Caption = 'Fluxo Caixa:'
        Visible = False
      end
      object Label46: TLabel
        Left = 771
        Top = 153
        Width = 109
        Height = 14
        Caption = 'Sequ'#234'ncia N'#186' Cheque:'
      end
      object EdtBan_Codigo: TEdit
        Left = 101
        Top = 6
        Width = 46
        Height = 22
        MaxLength = 4
        TabOrder = 0
        OnEnter = EdtBan_CodigoEnter
        OnExit = EdtBan_CodigoExit
        OnKeyPress = EdtBan_CodigoKeyPress
      end
      object CbBancos: TComboBox
        Left = 234
        Top = 6
        Width = 327
        Height = 22
        CharCase = ecUpperCase
        MaxLength = 35
        TabOrder = 2
        OnClick = CbBancosClick
        OnExit = CbBancosExit
        OnSelect = CbBancosExit
      end
      object DBeBan_apelido: TDBEdit
        Left = 101
        Top = 30
        Width = 460
        Height = 22
        CharCase = ecUpperCase
        DataField = 'BAN_APELIDO'
        DataSource = DataCadastros.DsBanco
        TabOrder = 5
      end
      object DBeBan_endere: TDBEdit
        Left = 101
        Top = 54
        Width = 347
        Height = 22
        CharCase = ecUpperCase
        DataField = 'BAN_ENDERE'
        DataSource = DataCadastros.DsBanco
        TabOrder = 8
      end
      object DBeBan_cep: TDBEdit
        Left = 501
        Top = 54
        Width = 60
        Height = 22
        CharCase = ecUpperCase
        DataField = 'BAN_CEP'
        DataSource = DataCadastros.DsBanco
        TabOrder = 9
      end
      object DBeBan_cidade: TDBEdit
        Left = 637
        Top = 54
        Width = 252
        Height = 22
        CharCase = ecUpperCase
        DataField = 'BAN_CIDADE'
        DataSource = DataCadastros.DsBanco
        TabOrder = 10
      end
      object DBeBan_UF: TDBEdit
        Left = 918
        Top = 54
        Width = 26
        Height = 22
        CharCase = ecUpperCase
        DataField = 'BAN_UF'
        DataSource = DataCadastros.DsBanco
        TabOrder = 11
      end
      object DBeBan_Fax: TDBEdit
        Left = 222
        Top = 77
        Width = 90
        Height = 22
        CharCase = ecUpperCase
        DataField = 'BAN_FAX'
        DataSource = DataCadastros.DsBanco
        TabOrder = 13
      end
      object DBeBan_fone: TDBEdit
        Left = 101
        Top = 78
        Width = 90
        Height = 22
        CharCase = ecUpperCase
        DataField = 'BAN_FONE'
        DataSource = DataCadastros.DsBanco
        TabOrder = 12
      end
      object DBeBan_contato: TDBEdit
        Left = 371
        Top = 78
        Width = 191
        Height = 22
        CharCase = ecUpperCase
        DataField = 'BAN_CONTATO'
        DataSource = DataCadastros.DsBanco
        TabOrder = 14
      end
      object DbeBAN_EMAIL: TDBEdit
        Left = 101
        Top = 102
        Width = 460
        Height = 22
        CharCase = ecLowerCase
        DataField = 'BAN_EMAIL'
        DataSource = DataCadastros.DsBanco
        TabOrder = 16
      end
      object DbeBAN_HOME: TDBEdit
        Left = 637
        Top = 102
        Width = 305
        Height = 22
        CharCase = ecLowerCase
        DataField = 'BAN_HOME'
        DataSource = DataCadastros.DsBanco
        TabOrder = 17
      end
      object DBmBan_obs: TDBMemo
        Left = 101
        Top = 126
        Width = 460
        Height = 47
        DataField = 'BAN_OBS'
        DataSource = DataCadastros.DsBanco
        MaxLength = 200
        TabOrder = 18
      end
      object DBEdit7: TDBEdit
        Left = 637
        Top = 6
        Width = 70
        Height = 22
        DataField = 'BAN_CODAGE'
        DataSource = DataCadastros.DsBanco
        TabOrder = 3
      end
      object DBEdit8: TDBEdit
        Left = 715
        Top = 6
        Width = 18
        Height = 22
        CharCase = ecUpperCase
        DataField = 'BAN_CODAGEDIG'
        DataSource = DataCadastros.DsBanco
        TabOrder = 4
      end
      object DBEdit9: TDBEdit
        Left = 637
        Top = 30
        Width = 70
        Height = 22
        DataField = 'BAN_CONTA'
        DataSource = DataCadastros.DsBanco
        TabOrder = 6
      end
      object DBEdit10: TDBEdit
        Left = 715
        Top = 30
        Width = 15
        Height = 22
        DataField = 'BAN_DIGCONTA'
        DataSource = DataCadastros.DsBanco
        TabOrder = 7
      end
      object CbxCheq: TComboBox
        Left = 637
        Top = 150
        Width = 48
        Height = 22
        Style = csDropDownList
        CharCase = ecUpperCase
        ItemIndex = 0
        TabOrder = 20
        Text = 'SIM'
        OnChange = CbxCheqChange
        OnExit = CbxCheqExit
        Items.Strings = (
          'SIM'
          'N'#195'O')
      end
      object CbxFluxo: TComboBox
        Left = 637
        Top = 126
        Width = 48
        Height = 22
        Style = csDropDownList
        CharCase = ecUpperCase
        ItemIndex = 0
        TabOrder = 19
        Text = 'SIM'
        Visible = False
        OnExit = CbxFluxoExit
        Items.Strings = (
          'SIM'
          'N'#195'O')
      end
      object cSeqNumCheque: TCurrencyEdit
        Left = 882
        Top = 150
        Width = 60
        Height = 21
        Alignment = taCenter
        AutoSize = False
        DecimalPlaces = 0
        DisplayFormat = '00000000'
        MaxLength = 8
        TabOrder = 21
        ZeroEmpty = False
        OnExit = cSeqNumChequeExit
      end
      object cBanco: TCurrencyEdit
        Left = 194
        Top = 6
        Width = 39
        Height = 21
        Alignment = taCenter
        AutoSize = False
        DecimalPlaces = 0
        DisplayFormat = '000'
        MaxLength = 3
        TabOrder = 1
        OnExit = cBancoExit
      end
      object GroupBox3: TGroupBox
        Left = 102
        Top = 250
        Width = 840
        Height = 71
        Caption = 'Desconto de Cheques'
        TabOrder = 23
        object Label44: TLabel
          Left = 21
          Top = 18
          Width = 143
          Height = 14
          Alignment = taRightJustify
          Caption = 'Limite do Descto de Cheques:'
        end
        object Label45: TLabel
          Left = 28
          Top = 42
          Width = 136
          Height = 14
          Alignment = taRightJustify
          Caption = 'N'#186' Dias m'#225'ximo p/Desconto:'
        end
        object Label48: TLabel
          Left = 604
          Top = 43
          Width = 143
          Height = 14
          Caption = 'Juros do Descto de Cheques:'
        end
        object Label50: TLabel
          Left = 611
          Top = 18
          Width = 133
          Height = 14
          Caption = 'Limite utilizado no Cheques:'
        end
        object DBEdit12: TDBEdit
          Left = 166
          Top = 16
          Width = 89
          Height = 22
          DataField = 'BAN_LIMITE_DESCTOCHEQ'
          DataSource = DataCadastros.DsBanco
          TabOrder = 0
        end
        object DBEdit14: TDBEdit
          Left = 166
          Top = 40
          Width = 89
          Height = 22
          DataField = 'BAN_NDIAS_MAXDESCTO'
          DataSource = DataCadastros.DsBanco
          TabOrder = 2
        end
        object DBEdit16: TDBEdit
          Left = 744
          Top = 40
          Width = 89
          Height = 22
          DataField = 'BAN_JUROS_DESCTOCHEQ'
          DataSource = DataCadastros.DsBanco
          TabOrder = 3
        end
        object DBEdit19: TDBEdit
          Left = 744
          Top = 16
          Width = 89
          Height = 22
          TabStop = False
          CharCase = ecUpperCase
          Color = 14145495
          DataField = 'BAN_LIMITE_UTILIZADO_CHEQ'
          DataSource = DataCadastros.DsBanco
          ReadOnly = True
          TabOrder = 1
        end
      end
      object Panel1: TPanel
        Left = 736
        Top = 5
        Width = 207
        Height = 46
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Caption = 'LOGO DO BANCO'
        Color = clWhite
        TabOrder = 25
        object ImgBanco: TImage
          Left = 2
          Top = 2
          Width = 203
          Height = 42
          Align = alClient
          Center = True
        end
      end
      object GroupBox4: TGroupBox
        Left = 102
        Top = 173
        Width = 840
        Height = 72
        Caption = 'Limites de Cr'#233'dito'
        TabOrder = 22
        object Label25: TLabel
          Left = 82
          Top = 19
          Width = 82
          Height = 14
          Alignment = taRightJustify
          Caption = 'Limite do Cr'#233'dito:'
        end
        object Label27: TLabel
          Left = 346
          Top = 19
          Width = 108
          Height = 14
          Caption = 'Dia do vecto do Limite:'
        end
        object Label34: TLabel
          Left = 596
          Top = 20
          Width = 201
          Height = 14
          Caption = 'N'#186' dias cr'#233'dito para boleto de cobran'#231'as:'
        end
        object Label47: TLabel
          Left = 27
          Top = 44
          Width = 137
          Height = 14
          Alignment = taRightJustify
          Caption = 'Outros Cr'#233'ditos/Empr'#233'stimo:'
        end
        object Label60: TLabel
          Left = 609
          Top = 44
          Width = 184
          Height = 14
          Caption = 'N'#186' dias cr'#233'dito para cart'#227'o de cr'#233'dito:'
        end
        object DBEdit2: TDBEdit
          Left = 166
          Top = 16
          Width = 89
          Height = 22
          DataField = 'BAN_LIMITECREDITO'
          DataSource = DataCadastros.DsBanco
          TabOrder = 0
        end
        object DBEdit5: TDBEdit
          Left = 456
          Top = 16
          Width = 33
          Height = 22
          DataField = 'BAN_VCTOLIMITE'
          DataSource = DataCadastros.DsBanco
          TabOrder = 1
        end
        object DBEdit6: TDBEdit
          Left = 799
          Top = 16
          Width = 33
          Height = 22
          Hint = 'funciona para formas : Boleto e Cart'#227'o de Cr'#233'dito'
          DataField = 'BAN_DIASCRED_COBRANCA'
          DataSource = DataCadastros.DsBanco
          ParentShowHint = False
          ShowHint = False
          TabOrder = 2
        end
        object DBEdit15: TDBEdit
          Left = 166
          Top = 41
          Width = 89
          Height = 22
          DataField = 'BAN_OUTROS_CREDITOS'
          DataSource = DataCadastros.DsBanco
          TabOrder = 3
        end
        object DBEdit3: TDBEdit
          Left = 799
          Top = 40
          Width = 33
          Height = 22
          Hint = 'funciona para formas : Boleto e Cart'#227'o de Cr'#233'dito'
          DataField = 'BAN_DIASCRED_CARTAO'
          DataSource = DataCadastros.DsBanco
          ParentShowHint = False
          ShowHint = False
          TabOrder = 4
        end
      end
      object GroupBox5: TGroupBox
        Left = 102
        Top = 327
        Width = 840
        Height = 49
        Caption = 'Desconto de Duplicatas'
        TabOrder = 24
        object Label42: TLabel
          Left = 592
          Top = 20
          Width = 150
          Height = 14
          Caption = 'Juros do Descto de Duplicatas:'
        end
        object Label49: TLabel
          Left = 292
          Top = 21
          Width = 162
          Height = 14
          Caption = 'Limite utilizado Descto Duplicatas:'
        end
        object Label43: TLabel
          Left = 14
          Top = 22
          Width = 150
          Height = 14
          Alignment = taRightJustify
          Caption = 'Limite do Descto de Duplicatas:'
        end
        object DBEdit18: TDBEdit
          Left = 456
          Top = 18
          Width = 89
          Height = 22
          TabStop = False
          CharCase = ecUpperCase
          Color = 14145495
          DataField = 'BAN_LIMITE_UTILIZADO_DUPL'
          DataSource = DataCadastros.DsBanco
          ReadOnly = True
          TabOrder = 1
        end
        object DBEdit11: TDBEdit
          Left = 744
          Top = 17
          Width = 89
          Height = 22
          DataField = 'BAN_JUROS_DESCTODUPL'
          DataSource = DataCadastros.DsBanco
          TabOrder = 2
        end
        object DBEdit13: TDBEdit
          Left = 166
          Top = 19
          Width = 89
          Height = 22
          DataField = 'BAN_LIMITE_DESCTODUPL'
          DataSource = DataCadastros.DsBanco
          TabOrder = 0
        end
      end
      object GroupBox6: TGroupBox
        Left = 102
        Top = 379
        Width = 840
        Height = 70
        Caption = 'Informa'#231#245'es da Concilia'#231#227'o Banc'#225'ria'
        TabOrder = 26
        object Label55: TLabel
          Left = 65
          Top = 24
          Width = 99
          Height = 14
          Alignment = taRightJustify
          Caption = 'Data do Saldo Inicial:'
        end
        object Label56: TLabel
          Left = 105
          Top = 48
          Width = 59
          Height = 14
          Alignment = taRightJustify
          Caption = 'Saldo Inicial:'
        end
        object DBEdit17: TDBEdit
          Left = 166
          Top = 45
          Width = 89
          Height = 22
          DataField = 'BAN_CONCILIACAO_SALDO'
          DataSource = DataCadastros.DsBanco
          TabOrder = 1
        end
        object DataConciliacao: TJvDBDateEdit
          Left = 166
          Top = 21
          Width = 90
          Height = 22
          DataField = 'BAN_CONCILIACAO_DATA'
          DataSource = DataCadastros.DsBanco
          Glyph.Data = {
            76050000424D760500000000000036000000280000001C0000000C0000000100
            2000000000004005000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF008080800080808000808080008080800080808000808080008080
            800080808000808080008080800080808000FF00FF00FF00FF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FF00FF00FF00FF000000000000000000800000000000
            0000800000008000000000000000800000000000000000000000800000008080
            8000FF00FF008080800080808000808080008080800080808000808080008080
            80008080800080808000808080008080800080808000FFFFFF00FF00FF00FF00
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
            FF00FFFFFF00FFFFFF00FFFFFF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FF00
            FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF0000000000000000000000
            0000FFFFFF00000000000000000000000000C0C0C000FFFFFF00800000008080
            8000FF00FF0080808000FFFFFF00808080008080800080808000FF00FF008080
            80008080800080808000FF00FF00FFFFFF0080808000FFFFFF00FF00FF00FF00
            FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00C0C0C000FFFFFF00C0C0
            C00000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
            FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFF
            FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF0000000000FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00800000008080
            8000FF00FF0080808000FFFFFF00FF00FF0080808000FFFFFF00FF00FF00FF00
            FF00FFFFFF00FFFFFF0080808000FF00FF0080808000FFFFFF00FF00FF00FF00
            FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
            0000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
            FF0080808000FFFFFF00FF00FF00808080008080800080808000FF00FF00FF00
            FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF000000000000000000FFFF
            FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
            8000FF00FF0080808000FFFFFF008080800080808000FFFFFF00FF00FF008080
            8000FFFFFF00FFFFFF00FFFFFF00FFFFFF0080808000FFFFFF00FF00FF00FF00
            FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
            000000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
            FF0080808000FF00FF00FF00FF0080808000808080008080800080808000FF00
            FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
            8000FF00FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFFFF00FF00FF00FF00
            FF00FFFFFF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
            C000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF0080808000FFFFFF00FF00FF00FF00FF000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF008080800080808000808080008080800080808000808080008080
            80008080800080808000808080008080800080808000FF00FF00}
          ImageKind = ikCustom
          NumGlyphs = 2
          PopupColor = clBtnFace
          ShowNullDate = False
          YearDigits = dyFour
          TabOrder = 0
          OnExit = DbeBAN_DNAS_CONTExit
        end
      end
      object DbeBAN_DNAS_CONT: TJvDBDateEdit
        Left = 637
        Top = 77
        Width = 90
        Height = 22
        DataField = 'BAN_DNAS_CONT'
        DataSource = DataCadastros.DsBanco
        Glyph.Data = {
          76050000424D760500000000000036000000280000001C0000000C0000000100
          2000000000004005000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF008080800080808000808080008080800080808000808080008080
          800080808000808080008080800080808000FF00FF00FF00FF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FF00FF00FF00FF000000000000000000800000000000
          0000800000008000000000000000800000000000000000000000800000008080
          8000FF00FF008080800080808000808080008080800080808000808080008080
          80008080800080808000808080008080800080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
          FF00FFFFFF00FFFFFF00FFFFFF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FF00
          FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF0000000000000000000000
          0000FFFFFF00000000000000000000000000C0C0C000FFFFFF00800000008080
          8000FF00FF0080808000FFFFFF00808080008080800080808000FF00FF008080
          80008080800080808000FF00FF00FFFFFF0080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00C0C0C000FFFFFF00C0C0
          C00000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
          FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFF
          FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF0000000000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00800000008080
          8000FF00FF0080808000FFFFFF00FF00FF0080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00FFFFFF0080808000FF00FF0080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
          0000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
          FF0080808000FFFFFF00FF00FF00808080008080800080808000FF00FF00FF00
          FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF000000000000000000FFFF
          FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
          8000FF00FF0080808000FFFFFF008080800080808000FFFFFF00FF00FF008080
          8000FFFFFF00FFFFFF00FFFFFF00FFFFFF0080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
          000000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
          FF0080808000FF00FF00FF00FF0080808000808080008080800080808000FF00
          FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
          8000FF00FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF0080808000FFFFFF00FF00FF00FF00FF000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF008080800080808000808080008080800080808000808080008080
          80008080800080808000808080008080800080808000FF00FF00}
        ImageKind = ikCustom
        NumGlyphs = 2
        PopupColor = clBtnFace
        ShowNullDate = False
        YearDigits = dyFour
        TabOrder = 15
        OnExit = DbeBAN_DNAS_CONTExit
      end
      object chkAtivo: TDBCheckBox
        Left = 104
        Top = 456
        Width = 137
        Height = 17
        Caption = 'Conta ativa'
        DataField = 'BAN_ATIVO'
        DataSource = DataCadastros.DsBanco
        TabOrder = 27
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object GroupBox7: TGroupBox
        Left = 655
        Top = 450
        Width = 287
        Height = 43
        Caption = 'Forma de pagamento padr'#227'o para baixa'
        TabOrder = 28
        object cbForma: TSgDbSearchCombo
          Left = 58
          Top = 15
          Width = 196
          Height = 22
          TabOrder = 0
          OnExit = cbFormaExit
          CharCase = ecUpperCase
          LookupSelect = 'FPG_REGISTRO, FPG_DESCRICAO'
          LookupOrderBy = 'FPG_DESCRICAO'
          LookupTable = 'FORMA_PAGAMENTO'
          LookupDispl = 'FPG_DESCRICAO'
          OnSelect = cbFormaSelect
          GridAutoSize = False
          LookupSource = qFormaPagamento
          LookupKeyField = 'FPG_REGISTRO'
          ShowButton = True
          LookupTableShare = 'TABELAS'
          AutoF8WinTitulo = 'Setores'
          AutoF8ColumnsTitulo = 'C'#243'digo, Descri'#231#227'o'
          GridLeft = 0
          GridWidth = 0
          GridHeight = 100
          GridShowWhenEnter = False
          SelectWithDoubleClick = False
        end
        object edFormaCodigo: TCurrencyEdit
          Left = 13
          Top = 16
          Width = 39
          Height = 21
          Alignment = taCenter
          AutoSize = False
          DecimalPlaces = 0
          DisplayFormat = '###'
          MaxLength = 3
          TabOrder = 1
          OnExit = edFormaCodigoExit
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = '&Cobran'#231'a Eletr'#244'nica'
      ImageIndex = 2
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 945
        Height = 407
        Align = alClient
        Caption = 
          'Dados para Envio de Remessa - Padr'#227'o CNAB 400 e Impress'#227'o de  Bo' +
          'leto'
        TabOrder = 0
        object Label4: TLabel
          Left = 68
          Top = 22
          Width = 78
          Height = 14
          Alignment = taRightJustify
          Caption = 'C'#243'digo Ag'#234'ncia:'
        end
        object Label11: TLabel
          Left = 61
          Top = 195
          Width = 85
          Height = 14
          Caption = 'Juros/M'#234's(mora):'
        end
        object Label15: TLabel
          Left = 522
          Top = 23
          Width = 86
          Height = 14
          Alignment = taRightJustify
          Caption = 'N'#250'mero da Conta:'
        end
        object Label17: TLabel
          Left = 54
          Top = 47
          Width = 92
          Height = 14
          Alignment = taRightJustify
          Caption = 'C'#243'digo da Carteira:'
        end
        object Label18: TLabel
          Left = 58
          Top = 73
          Width = 88
          Height = 14
          Alignment = taRightJustify
          Caption = 'Instru'#231#227'o Padr'#227'o :'
        end
        object Label19: TLabel
          Left = 548
          Top = 73
          Width = 60
          Height = 14
          Alignment = taRightJustify
          Caption = 'Instru'#231#227'o 2 :'
        end
        object Label20: TLabel
          Left = 391
          Top = 96
          Width = 217
          Height = 14
          Alignment = taRightJustify
          Caption = 'C'#243'digo do Cedente (Identifica'#231#227'o no banco) :'
        end
        object Label21: TLabel
          Left = 451
          Top = 147
          Width = 157
          Height = 14
          Alignment = taRightJustify
          Caption = 'No. de digitos do Nosso Numero:'
        end
        object Label22: TLabel
          Left = 530
          Top = 47
          Width = 78
          Height = 14
          Alignment = taRightJustify
          Caption = 'No. da Carteira :'
        end
        object Label23: TLabel
          Left = 210
          Top = 18
          Width = 6
          Height = 14
          Caption = '_'
        end
        object Label24: TLabel
          Left = 479
          Top = 191
          Width = 127
          Height = 14
          BiDiMode = bdLeftToRight
          Caption = 'Prazo para Protesto(dias):'
          ParentBiDiMode = False
        end
        object Label26: TLabel
          Left = 29
          Top = 220
          Width = 117
          Height = 14
          Caption = 'Seq'#252#234'ncia da Remessa:'
        end
        object Label37: TLabel
          Left = 105
          Top = 122
          Width = 41
          Height = 14
          Alignment = taRightJustify
          Caption = 'Esp'#233'cie:'
        end
        object Label38: TLabel
          Left = 112
          Top = 99
          Width = 34
          Height = 14
          Alignment = taRightJustify
          Caption = 'Aceite:'
        end
        object Label29: TLabel
          Left = 18
          Top = 147
          Width = 128
          Height = 14
          Alignment = taRightJustify
          Caption = 'Seq'#252#234'ncia Nosso N'#250'mero:'
        end
        object Label30: TLabel
          Left = 558
          Top = 122
          Width = 50
          Height = 14
          Alignment = taRightJustify
          Caption = 'Cobran'#231'a:'
        end
        object Label51: TLabel
          Left = 661
          Top = 20
          Width = 6
          Height = 14
          Caption = '_'
        end
        object Label53: TLabel
          Left = 666
          Top = 174
          Width = 190
          Height = 14
          Caption = 'Respons'#225'vel pela impress'#227'o do Boleto:'
        end
        object Label28: TLabel
          Left = 30
          Top = 170
          Width = 116
          Height = 14
          Alignment = taRightJustify
          Caption = 'C'#243'digo de Transmiss'#227'o:'
        end
        object Label52: TLabel
          Left = 10
          Top = 244
          Width = 136
          Height = 14
          Caption = 'Multa Ap'#243's Vencimento (%):'
        end
        object Label57: TLabel
          Left = 20
          Top = 269
          Width = 126
          Height = 14
          Caption = 'Aplicar Multa Ap'#243's n Dias:'
        end
        object Label58: TLabel
          Left = 699
          Top = 47
          Width = 66
          Height = 14
          Caption = 'Conv'#234'nio N'#186' :'
          FocusControl = cxDBTextConvenio
        end
        object Label59: TLabel
          Left = 879
          Top = 47
          Width = 57
          Height = 14
          Caption = '...sem digito'
          FocusControl = cxDBTextConvenio
        end
        object Label61: TLabel
          Left = 650
          Top = 71
          Width = 60
          Height = 14
          Alignment = taRightJustify
          Caption = 'Instru'#231#227'o 3 :'
        end
        object Label62: TLabel
          Left = 729
          Top = 99
          Width = 57
          Height = 14
          Caption = '...sem digito'
          FocusControl = cxDBTextConvenio
        end
        object DBeBan_codage: TDBEdit
          Left = 147
          Top = 19
          Width = 62
          Height = 22
          TabStop = False
          Color = 14145495
          DataField = 'BAN_CODAGE'
          DataSource = DataCadastros.DsBanco
          ReadOnly = True
          TabOrder = 0
        end
        object DBeBan_joromes: TDBEdit
          Left = 147
          Top = 191
          Width = 56
          Height = 22
          DataField = 'BAN_JUROMES'
          DataSource = DataCadastros.DsBanco
          MaxLength = 5
          TabOrder = 19
        end
        object DbeBan_conta: TDBEdit
          Left = 610
          Top = 19
          Width = 50
          Height = 22
          TabStop = False
          Color = 14145495
          DataField = 'BAN_CONTA'
          DataSource = DataCadastros.DsBanco
          ReadOnly = True
          TabOrder = 3
        end
        object DbeBan_Carteira: TDBEdit
          Left = 147
          Top = 45
          Width = 86
          Height = 22
          DataField = 'BAN_COD_CART'
          DataSource = DataCadastros.DsBanco
          TabOrder = 5
        end
        object DbeBan_Instrucao1: TDBEdit
          Left = 147
          Top = 69
          Width = 24
          Height = 22
          DataField = 'BAN_INSTRUCAO1'
          DataSource = DataCadastros.DsBanco
          TabOrder = 8
          OnKeyPress = DbeBan_Instrucao1KeyPress
        end
        object DbeBan_Instrucao2: TDBEdit
          Left = 610
          Top = 69
          Width = 24
          Height = 22
          DataField = 'BAN_INSTRUCAO2'
          DataSource = DataCadastros.DsBanco
          TabOrder = 9
        end
        object DbeBan_Codnobanco: TDBEdit
          Left = 610
          Top = 94
          Width = 113
          Height = 22
          CharCase = ecUpperCase
          DataField = 'BAN_CODNOBANCO'
          DataSource = DataCadastros.DsBanco
          TabOrder = 11
        end
        object DbeBan_Tam_Nonum: TDBEdit
          Left = 610
          Top = 143
          Width = 22
          Height = 22
          DataField = 'BAN_TAM_NONUM'
          DataSource = DataCadastros.DsBanco
          TabOrder = 15
        end
        object DBEdit1: TDBEdit
          Left = 610
          Top = 44
          Width = 73
          Height = 22
          DataField = 'BAN_N_CARTEIRA'
          DataSource = DataCadastros.DsBanco
          TabOrder = 6
        end
        object DbeBan_CODAGEDIG: TDBEdit
          Left = 217
          Top = 19
          Width = 24
          Height = 22
          TabStop = False
          CharCase = ecUpperCase
          Color = 14145495
          DataField = 'BAN_CODAGEDIG'
          DataSource = DataCadastros.DsBanco
          TabOrder = 1
        end
        object Dbe_Prazo: TDBEdit
          Left = 611
          Top = 189
          Width = 22
          Height = 22
          DataField = 'BAN_PROTPRAZO'
          DataSource = DataCadastros.DsBanco
          TabOrder = 21
        end
        object DBEdit4: TDBEdit
          Left = 147
          Top = 216
          Width = 56
          Height = 22
          CharCase = ecUpperCase
          DataField = 'BAN_SEQUENCIA_REMESSA'
          DataSource = DataCadastros.DsBanco
          TabOrder = 22
        end
        object CbEspecie: TComboBox
          Left = 147
          Top = 119
          Width = 217
          Height = 22
          Style = csDropDownList
          CharCase = ecUpperCase
          DropDownCount = 13
          TabOrder = 12
          OnClick = CbEspecieClick
          OnExit = CbEspecieExit
        end
        object CbAceite: TComboBox
          Left = 147
          Top = 94
          Width = 49
          Height = 22
          Style = csDropDownList
          TabOrder = 10
          OnClick = CbAceiteClick
          OnEnter = CbAceiteEnter
          OnExit = CbAceiteExit
          Items.Strings = (
            'SIM'
            'N'#195'O')
        end
        object DBeDigitoConta: TDBEdit
          Left = 668
          Top = 19
          Width = 15
          Height = 22
          Hint = 'Conta sem digito colocar zero.'
          TabStop = False
          Color = 14145495
          DataField = 'BAN_DIGCONTA'
          DataSource = DataCadastros.DsBanco
          ParentShowHint = False
          ReadOnly = True
          ShowHint = True
          TabOrder = 4
        end
        object DBEBAN_SEQ_NOSSONUMERO: TDBEdit
          Left = 147
          Top = 143
          Width = 215
          Height = 22
          CharCase = ecUpperCase
          DataField = 'BAN_SEQ_NOSSONUMERO'
          DataSource = DataCadastros.DsBanco
          MaxLength = 15
          TabOrder = 14
        end
        object CbxCarteira: TComboBox
          Left = 610
          Top = 119
          Width = 320
          Height = 22
          Style = csDropDownList
          CharCase = ecUpperCase
          TabOrder = 13
          OnClick = CbxCarteiraClick
          OnExit = CbxCarteiraExit
          Items.Strings = (
            ''
            'CARTEIRA'
            'COBRAN'#199'A SIMPLES'
            'COBRAN'#199'A CAUCIONADA'
            'COBRAN'#199'A DESCONTADA'
            'COBRAN'#199'A SEM REGISTRO'
            'COBRAN'#199'A RAPIDA')
        end
        object CbRespBoleto: TComboBox
          Left = 859
          Top = 170
          Width = 78
          Height = 22
          Style = csDropDownList
          TabOrder = 18
          OnEnter = CbAceiteEnter
          OnExit = CbRespBoletoExit
          Items.Strings = (
            'BANCO'
            'EMPRESA')
        end
        object DBEdit21: TDBEdit
          Left = 147
          Top = 167
          Width = 215
          Height = 22
          CharCase = ecUpperCase
          DataField = 'BAN_CODIGO_TRANSMISSAO'
          DataSource = DataCadastros.DsBanco
          TabOrder = 16
        end
        object DBCheckBox1: TDBCheckBox
          Left = 372
          Top = 168
          Width = 257
          Height = 17
          Alignment = taLeftJustify
          BiDiMode = bdLeftToRight
          Caption = 'A Carteira informada '#233' de Cobran'#231'a Registrada :'
          DataField = 'BAN_CARTEIRA_REGISTRO'
          DataSource = DataCadastros.DsBanco
          Enabled = False
          ParentBiDiMode = False
          ReadOnly = True
          TabOrder = 17
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBEdit20: TDBEdit
          Left = 147
          Top = 240
          Width = 56
          Height = 22
          DataField = 'BAN_MULTA'
          DataSource = DataCadastros.DsBanco
          MaxLength = 5
          TabOrder = 23
          OnKeyPress = DBEdit20KeyPress
        end
        object DBEdit22: TDBEdit
          Left = 147
          Top = 265
          Width = 56
          Height = 22
          CharCase = ecUpperCase
          DataField = 'BAN_MULTA_DIAS'
          DataSource = DataCadastros.DsBanco
          TabOrder = 24
          OnKeyPress = DBEdit22KeyPress
        end
        object cxDBTextConvenio: TcxDBTextEdit
          Left = 766
          Top = 44
          Hint = 'Nao digitar o digito verificardor do convenio'
          DataBinding.DataField = 'ban_convenio'
          DataBinding.DataSource = DataCadastros.DsBanco
          ParentShowHint = False
          ShowHint = True
          TabOrder = 7
          OnExit = cxDBTextConvenioExit
          Width = 113
        end
        object rgLeiaute: TDBRadioGroup
          Left = 258
          Top = 18
          Width = 185
          Height = 72
          Caption = 'Leaiute'
          DataField = 'BAN_LEIAUTE'
          DataSource = DataCadastros.DsBanco
          Items.Strings = (
            'CNAB 400'
            'CNAB 240')
          TabOrder = 2
          Values.Strings = (
            '1'
            '2')
        end
        object DBEdit23: TDBEdit
          Left = 712
          Top = 67
          Width = 24
          Height = 22
          DataField = 'BAN_INSTRUCAO3'
          DataSource = DataCadastros.DsBanco
          TabOrder = 25
        end
        object DBRadioGroup1: TDBRadioGroup
          Left = 215
          Top = 195
          Width = 185
          Height = 89
          Caption = 'C'#243'digo dos Juros de Mora'
          DataField = 'BAN_TIPO_JUROS'
          DataSource = DataCadastros.DsBanco
          Items.Strings = (
            '1 - Valor Por Dia'
            '2 - Taxa Mensal'
            '3 - Isento')
          TabOrder = 20
          Values.Strings = (
            '1'
            '2'
            '3')
        end
        object gbDiasParaBaixa: TGroupBox
          Left = 147
          Top = 293
          Width = 161
          Height = 41
          Caption = 'Informa'#231#245'es para Baixa'
          TabOrder = 26
          object lbDiasParaBaixa: TLabel
            Left = 71
            Top = 17
            Width = 75
            Height = 14
            Caption = 'Dias para baixa'
          end
          object edDiasParaBaixa: TcxDBSpinEdit
            Left = 6
            Top = 14
            DataBinding.DataField = 'BAN_DIAS_PARA_BAIXA'
            DataBinding.DataSource = DataCadastros.DsBanco
            TabOrder = 0
            Width = 57
          end
        end
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = 407
        Width = 945
        Height = 89
        Align = alBottom
        Caption = 'Caminho da Remessa e Retorno'
        TabOrder = 1
        object Label31: TLabel
          Left = 98
          Top = 26
          Width = 48
          Height = 14
          Alignment = taRightJustify
          Caption = 'Remessa:'
        end
        object Label32: TLabel
          Left = 105
          Top = 51
          Width = 41
          Height = 14
          Alignment = taRightJustify
          Caption = 'Retorno:'
        end
        object DiretorioRemessa: TDirectoryEdit
          Left = 147
          Top = 22
          Width = 790
          Height = 22
          OnButtonClick = DiretorioRemessaClick
          CharCase = ecUpperCase
          NumGlyphs = 1
          TabOrder = 0
          Text = ''
          OnClick = DiretorioRemessaClick
          OnKeyPress = DiretorioRemessaKeyPress
        end
        object DiretorioRetorno: TDirectoryEdit
          Left = 147
          Top = 47
          Width = 790
          Height = 22
          OnButtonClick = DiretorioRemessaClick
          CharCase = ecUpperCase
          NumGlyphs = 1
          TabOrder = 1
          Text = ''
          OnKeyPress = DiretorioRetornoKeyPress
        end
      end
    end
  end
  object DBNavigator1: TDBNavigator
    Left = 840
    Top = 2
    Width = 120
    Height = 22
    DataSource = DataCadastros.DsBanco
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    TabOrder = 1
    OnClick = DBNavigator1Click
  end
  object Bit_Sair: TBitBtn
    Left = 876
    Top = 572
    Width = 80
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
    TabOrder = 2
    TabStop = False
    OnClick = Bit_SairClick
  end
  object Bit_Gravar: TBitBtn
    Left = 796
    Top = 572
    Width = 80
    Height = 25
    Cursor = crHandPoint
    Hint = '|Grava registro...'
    Caption = '&Gravar'
    Enabled = False
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
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    TabStop = False
    OnClick = Bit_GravarClick
  end
  object Bit_Excluir: TBitBtn
    Left = 716
    Top = 572
    Width = 80
    Height = 25
    Cursor = crHandPoint
    Hint = '|Exclui registro atual..'
    Caption = '&Excluir'
    Glyph.Data = {
      E6000000424DE60000000000000076000000280000000E0000000E0000000100
      04000000000070000000CE0E0000D80E00001000000000000000000000000000
      BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3300333333333333330033333333333333003333333333333300333333333333
      3300333333333333330033000000000033003300000000003300330000000000
      3300333333333333330033333333333333003333333333333300333333333333
      33003333333333333300}
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    TabStop = False
    OnClick = Bit_ExcluirClick
  end
  object Bit_novo: TBitBtn
    Left = 636
    Top = 572
    Width = 80
    Height = 25
    Cursor = crHandPoint
    Caption = '&Novo'
    Glyph.Data = {
      E6000000424DE60000000000000076000000280000000E0000000E0000000100
      04000000000070000000CE0E0000D80E00001000000000000000000000000000
      BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3300333333333333330033333333333333003333300033333300333330003333
      3300333330003333330033000000000333003300000000033300330000000003
      3300333330003333330033333000333333003333300033333300333333333333
      33003333333333333300}
    TabOrder = 5
    TabStop = False
    OnClick = Bit_novoClick
  end
  object Bit_Cancelar: TBitBtn
    Left = 876
    Top = 572
    Width = 80
    Height = 25
    Cursor = crHandPoint
    Hint = '|Cancela registro atual...'
    Caption = '&Cancelar'
    Enabled = False
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
    ParentShowHint = False
    ShowHint = True
    TabOrder = 6
    TabStop = False
    OnClick = Bit_CancelarClick
  end
  object Bit_Lista: TBitBtn
    Left = 4
    Top = 572
    Width = 82
    Height = 25
    Cursor = crHandPoint
    Caption = '&Consulta'
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
    TabOrder = 7
    TabStop = False
    OnClick = Bit_ListaClick
  end
  object Bit_Relatorio: TBitBtn
    Left = 86
    Top = 572
    Width = 85
    Height = 25
    Cursor = crHandPoint
    Caption = '&Relat'#243'rio'
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
    TabOrder = 8
    TabStop = False
    Visible = False
    OnClick = Bit_RelatorioClick
  end
  object SqlCdsRelBancos: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 'select * from BAN0000'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'select * from BAN0000'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 840
    Top = 36
    object SqlCdsRelBancosBAN_CODIGO: TStringField
      FieldName = 'BAN_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 4
    end
    object SqlCdsRelBancosBAN_RAZAO: TStringField
      FieldName = 'BAN_RAZAO'
      Size = 45
    end
    object SqlCdsRelBancosBAN_APELIDO: TStringField
      FieldName = 'BAN_APELIDO'
      Size = 14
    end
    object SqlCdsRelBancosBAN_CODAGE: TStringField
      FieldName = 'BAN_CODAGE'
      Size = 5
    end
    object SqlCdsRelBancosBAN_ENDERE: TStringField
      FieldName = 'BAN_ENDERE'
      Size = 40
    end
    object SqlCdsRelBancosBAN_CIDADE: TStringField
      FieldName = 'BAN_CIDADE'
      Size = 30
    end
    object SqlCdsRelBancosBAN_UF: TStringField
      FieldName = 'BAN_UF'
      Size = 2
    end
    object SqlCdsRelBancosBAN_FONE: TStringField
      FieldName = 'BAN_FONE'
      Size = 11
    end
    object SqlCdsRelBancosBAN_FAX: TStringField
      FieldName = 'BAN_FAX'
      Size = 11
    end
    object SqlCdsRelBancosBAN_CEP: TStringField
      FieldName = 'BAN_CEP'
      Size = 8
    end
    object SqlCdsRelBancosBAN_CONTATO: TStringField
      FieldName = 'BAN_CONTATO'
      Size = 30
    end
    object SqlCdsRelBancosBAN_JUROMES: TFMTBCDField
      FieldName = 'BAN_JUROMES'
      Precision = 15
    end
    object SqlCdsRelBancosBAN_OBS: TStringField
      FieldName = 'BAN_OBS'
      Size = 200
    end
    object SqlCdsRelBancosEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlCdsRelBancosBAN_DNAS_CONT: TSQLTimeStampField
      FieldName = 'BAN_DNAS_CONT'
    end
    object SqlCdsRelBancosBAN_EMAIL: TStringField
      FieldName = 'BAN_EMAIL'
      Size = 35
    end
    object SqlCdsRelBancosBAN_HOME: TStringField
      FieldName = 'BAN_HOME'
      Size = 35
    end
    object SqlCdsRelBancosBAN_CONTA: TStringField
      FieldName = 'BAN_CONTA'
      Size = 7
    end
    object SqlCdsRelBancosBAN_DIGCONTA: TStringField
      FieldName = 'BAN_DIGCONTA'
      Size = 1
    end
    object SqlCdsRelBancosBAN_COD_CART: TStringField
      FieldName = 'BAN_COD_CART'
      Size = 2
    end
    object SqlCdsRelBancosBAN_N_CARTEIRA: TStringField
      FieldName = 'BAN_N_CARTEIRA'
      Size = 3
    end
    object SqlCdsRelBancosBAN_INSTRUCAO1: TStringField
      FieldName = 'BAN_INSTRUCAO1'
      Size = 2
    end
    object SqlCdsRelBancosBAN_INSTRUCAO2: TStringField
      FieldName = 'BAN_INSTRUCAO2'
      Size = 2
    end
    object SqlCdsRelBancosBAN_CODNOBANCO: TStringField
      FieldName = 'BAN_CODNOBANCO'
      Size = 12
    end
    object SqlCdsRelBancosBAN_TAM_NONUM: TStringField
      FieldName = 'BAN_TAM_NONUM'
      Size = 2
    end
    object SqlCdsRelBancosBAN_PROTPRAZO: TStringField
      FieldName = 'BAN_PROTPRAZO'
      Size = 2
    end
    object SqlCdsRelBancosBAN_INSTRUCAO3: TStringField
      FieldName = 'BAN_INSTRUCAO3'
      Size = 2
    end
  end
  object DsRelBancos: TDataSource
    DataSet = SqlCdsRelBancos
    OnDataChange = DsRelBancosDataChange
    Left = 360
    Top = 4
  end
  object ppDBRelBancos: TppDBPipeline
    DataSource = DsRelBancos
    AutoCreateFields = False
    UserName = 'DBRelBancos'
    Left = 608
    Top = 4
  end
  object ppRPRelBanco01: TppReport
    AutoStop = False
    DataPipeline = ppDBRelBancos
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 15000
    PrinterSetup.mmMarginLeft = 10000
    PrinterSetup.mmMarginRight = 10000
    PrinterSetup.mmMarginTop = 15000
    PrinterSetup.mmPaperHeight = 0
    PrinterSetup.mmPaperWidth = 0
    PrinterSetup.PaperSize = 119
    Template.FileName = 'C:\JobProgram\Developer\Adjutor\FontesRelatorios\RELBANCO01.rtm'
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
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
    TextSearchSettings.Enabled = False
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 488
    Top = 4
    Version = '16.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBRelBancos'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 4200269
      mmPrintPosition = 0
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'ppLabel3'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'C'#243'digo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 873656
        mmLeft = 100806
        mmTop = 3080285
        mmWidth = 2150538
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'ppLabel4'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Banco'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 873656
        mmLeft = 3381117
        mmTop = 3080285
        mmWidth = 1848118
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'ppLabel5'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Fone'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 873656
        mmLeft = 25108479
        mmTop = 3080285
        mmWidth = 1444892
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'ppLabel6'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Contato'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 873656
        mmLeft = 32198004
        mmTop = 3080285
        mmWidth = 2318548
        BandType = 0
        LayerName = Foreground
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'ppLine1'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 70115
        mmLeft = 0
        mmTop = 4130154
        mmWidth = 51858437
        BandType = 0
        LayerName = Foreground
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'ppLine2'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 70115
        mmLeft = 0
        mmTop = 2940320
        mmWidth = 51858437
        BandType = 0
        LayerName = Foreground
      end
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'ppLine5'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 70115
        mmLeft = 0
        mmTop = 0
        mmWidth = 51858437
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
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 873656
        mmLeft = 0
        mmTop = 139965
        mmWidth = 5947581
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
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 873656
        mmLeft = 0
        mmTop = 1050133
        mmWidth = 2956989
        BandType = 0
        LayerName = Foreground
      end
      object LBL_00_LTITULO2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LBL_00_LTITULO2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'TITULO2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 873656
        mmLeft = 0
        mmTop = 2030152
        mmWidth = 2956989
        BandType = 0
        LayerName = Foreground
      end
      object ppLine6: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'ppLine6'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 70115
        mmLeft = 0
        mmTop = 2940320
        mmWidth = 51858437
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable3: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'ppSystemVariable3'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 840054
        mmLeft = 44803043
        mmTop = 139965
        mmWidth = 7140589
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable4: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'ppSystemVariable4'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 840054
        mmLeft = 44872893
        mmTop = 2030152
        mmWidth = 7070474
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 840054
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'ppDBText1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataPipeline = ppDBRelBancos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRelBancos'
        mmHeight = 873656
        mmLeft = 0
        mmTop = 0
        mmWidth = 2660126
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'ppDBText2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataPipeline = ppDBRelBancos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRelBancos'
        mmHeight = 840054
        mmLeft = 3080285
        mmTop = 0
        mmWidth = 21351388
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'ppDBText3'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataPipeline = ppDBRelBancos
        DisplayFormat = '\(999\)9999\-9999;0;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRelBancos'
        mmHeight = 840054
        mmLeft = 24851568
        mmTop = 0
        mmWidth = 6510350
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'ppDBText4'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataPipeline = ppDBRelBancos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRelBancos'
        mmHeight = 840054
        mmLeft = 31852193
        mmTop = 0
        mmWidth = 15610977
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 980019
      mmPrintPosition = 0
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'ppLine3'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 70115
        mmLeft = 0
        mmTop = 0
        mmWidth = 51858437
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'ppLabel1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Total de Bancos Listado(s):'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 840054
        mmLeft = 0
        mmTop = 139965
        mmWidth = 8198925
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc1: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'ppDBCalc1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataPipeline = ppDBRelBancos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBRelBancos'
        mmHeight = 840054
        mmLeft = 11060664
        mmTop = 139965
        mmWidth = 4550313
        BandType = 7
        LayerName = Foreground
      end
    end
    object raCodeModule1: TraCodeModule
      ProgramStream = {00}
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
  object SqlCdsBancos: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 'select B1.* from BANCOS B1'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'select B1.* from BANCOS B1'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 719
    Top = 12
    object SqlCdsBancosBCO_CODIGO: TIntegerField
      FieldName = 'BCO_CODIGO'
      Required = True
    end
    object SqlCdsBancosBCO_DESCRICAO: TStringField
      FieldName = 'BCO_DESCRICAO'
      Size = 35
    end
  end
  object qFormaPagamento: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    Left = 600
    Top = 511
  end
end
