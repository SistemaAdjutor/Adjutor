object FormGImpRece: TFormGImpRece
  Left = 481
  Top = 163
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Gerenciador de Impress'#227'o (Contas '#224' Receber)'
  ClientHeight = 703
  ClientWidth = 1161
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 425
    Height = 703
    AutoSize = True
    BevelOuter = bvNone
    TabOrder = 0
    object Group01: TGroupBox
      Left = 0
      Top = 209
      Width = 425
      Height = 41
      Align = alTop
      Caption = '&Faturas no Per'#237'odo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object Label3: TLabel
        Left = 67
        Top = 19
        Width = 17
        Height = 13
        Caption = 'De:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 194
        Top = 19
        Width = 16
        Height = 13
        Caption = 'At'#233
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object EditDataI: TJvDateEdit
        Left = 86
        Top = 15
        Width = 100
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
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
        ParentFont = False
        PopupColor = clBtnFace
        ShowNullDate = False
        YearDigits = dyFour
        TabOrder = 0
        OnExit = EditDataIExit
      end
      object EditDataF: TJvDateEdit
        Left = 217
        Top = 15
        Width = 100
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
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
        ParentFont = False
        PopupColor = clBtnFace
        ShowNullDate = False
        YearDigits = dyFour
        TabOrder = 1
        OnExit = EditDataFExit
      end
    end
    object Group05: TGroupBox
      Left = 0
      Top = 250
      Width = 425
      Height = 63
      Align = alTop
      Caption = '&Sele'#231#227'o Clientes'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object LabelCliente: TLabel
        Left = 10
        Top = 37
        Width = 57
        Height = 13
        Alignment = taRightJustify
        Caption = 'C'#243'd.C&liente:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lbl2: TLabel
        Left = 21
        Top = 15
        Width = 46
        Height = 13
        Alignment = taRightJustify
        Caption = 'Filtrar por:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object CbCliente: TComboBox
        Left = 112
        Top = 33
        Width = 296
        Height = 21
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemIndex = 0
        ParentFont = False
        TabOrder = 3
        Text = 'TODOS'
        OnClick = CbClienteClick
        Items.Strings = (
          'TODOS')
      end
      object rb1: TRadioButton
        Left = 70
        Top = 14
        Width = 54
        Height = 17
        Caption = '&C'#243'&digo'
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TabStop = True
        OnClick = rb1Click
      end
      object rb2: TRadioButton
        Left = 134
        Top = 14
        Width = 83
        Height = 17
        Caption = 'C&NPJ/CPF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = rb2Click
      end
      object CCodigo: TEdit
        Left = 71
        Top = 33
        Width = 40
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        Text = '99999'
        OnEnter = CCodigoEnter
        OnExit = CCodigoExit
        OnKeyPress = CCodigoKeyPress
      end
    end
    object grContaBanco: TGroupBox
      Left = 0
      Top = 313
      Width = 425
      Height = 41
      Align = alTop
      Caption = '&Sele'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      object Label1: TLabel
        Left = 9
        Top = 18
        Width = 31
        Height = 13
        Caption = 'Conta:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object CbBancos: TComboBox
        Left = 84
        Top = 15
        Width = 320
        Height = 21
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemIndex = 0
        ParentFont = False
        TabOrder = 1
        Text = 'TODOS'
        OnClick = CbBancosClick
        Items.Strings = (
          'TODOS')
      end
      object Cconta: TEdit
        Left = 44
        Top = 15
        Width = 40
        Height = 21
        Alignment = taCenter
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 4
        ParentFont = False
        TabOrder = 0
        Text = '9999'
        OnEnter = CcontaEnter
        OnExit = CcontaExit
      end
    end
    object Group03: TGroupBox
      Left = 0
      Top = 354
      Width = 425
      Height = 41
      Align = alTop
      Caption = '&Sele'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      object Label2: TLabel
        Left = 32
        Top = 18
        Width = 49
        Height = 13
        Caption = 'Vendedor:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object CbRepre: TComboBox
        Left = 124
        Top = 15
        Width = 280
        Height = 21
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemIndex = 0
        ParentFont = False
        TabOrder = 1
        Text = 'TODOS'
        OnClick = CbRepreClick
        Items.Strings = (
          'TODOS')
      end
      object CCodRep: TEdit
        Left = 84
        Top = 15
        Width = 40
        Height = 21
        Alignment = taCenter
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 3
        ParentFont = False
        TabOrder = 0
        Text = '999'
        OnEnter = CCodRepEnter
        OnExit = CCodRepExit
      end
    end
    object Group06: TGroupBox
      Left = 0
      Top = 539
      Width = 425
      Height = 41
      Align = alTop
      Caption = 'Centro de Custo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      object CbCaixa: TComboBox
        Left = 48
        Top = 15
        Width = 358
        Height = 21
        CharCase = ecUpperCase
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemIndex = 0
        ParentFont = False
        TabOrder = 1
        Text = 'TODOS'
        OnClick = CbCaixaClick
        Items.Strings = (
          'TODOS')
      end
      object CCodProj: TEdit
        Left = 4
        Top = 15
        Width = 40
        Height = 21
        Alignment = taCenter
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 3
        ParentFont = False
        TabOrder = 0
        Text = '999'
        OnEnter = CCodProjEnter
        OnExit = CCodProjExit
      end
    end
    object grBanco: TGroupBox
      Left = 0
      Top = 498
      Width = 425
      Height = 41
      Align = alTop
      Caption = '&Banco'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      object CbBcoCheque: TComboBox
        Left = 45
        Top = 15
        Width = 364
        Height = 21
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemIndex = 0
        MaxLength = 35
        ParentFont = False
        TabOrder = 1
        Text = 'TODOS OS BANCOS'
        OnClick = CbBcoChequeClick
        OnExit = CbBcoChequeClick
        Items.Strings = (
          'TODOS OS BANCOS')
      end
      object CurrBcoCheque: TEdit
        Left = 4
        Top = 15
        Width = 40
        Height = 21
        Alignment = taCenter
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 4
        ParentFont = False
        TabOrder = 0
        Text = '9999'
        OnEnter = CurrBcoChequeEnter
        OnExit = CurrBcoChequeExit
      end
    end
    object Group09: TGroupBox
      Left = 0
      Top = 457
      Width = 425
      Height = 41
      Align = alTop
      Caption = '&Filtro'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      object Label5: TLabel
        Left = 7
        Top = 19
        Width = 49
        Height = 13
        Caption = 'Cobran'#231'a:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lblDoc: TLabel
        Left = 235
        Top = 19
        Width = 47
        Height = 13
        Caption = 'Tipo Doc:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object CbxCarteira: TComboBox
        Left = 57
        Top = 15
        Width = 171
        Height = 21
        Style = csDropDownList
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemIndex = 0
        ParentFont = False
        TabOrder = 0
        Text = 'TODOS'
        Items.Strings = (
          'TODOS'
          'CARTEIRA'
          'COBRAN'#199'A SIMPLES'
          'COBRAN'#199'A CAUCIONADA'
          'COBRAN'#199'A DESCONTADA'
          'COBRAN'#199'A SEM REGISTRO'
          'COBRAN'#199'A RAPIDA'
          'CUSTODIA DE CHEQUE'
          'CHEQUE DESCONTADO')
      end
      object CbxTipoDoc: TComboBox
        Left = 283
        Top = 15
        Width = 127
        Height = 21
        Style = csDropDownList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemIndex = 0
        ParentFont = False
        TabOrder = 1
        Text = 'TODOS'
        Items.Strings = (
          'TODOS'
          'DUPLICATA'
          'BOLETO'
          'RECIBO'
          'CHEQUE'
          'DINHEIRO'
          'OUTROS'
          'CREDITO CONTA')
      end
    end
    object Group11: TGroupBox
      Left = 0
      Top = 580
      Width = 425
      Height = 41
      Align = alTop
      Caption = 'Filtrar Cheques'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      object RadTodos: TRadioButton
        Left = 6
        Top = 18
        Width = 54
        Height = 17
        Caption = '&Todos'
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TabStop = True
      end
      object RadDescontados: TRadioButton
        Left = 79
        Top = 18
        Width = 85
        Height = 17
        Caption = 'Desco&ntados'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object RadaDescontar: TRadioButton
        Left = 201
        Top = 18
        Width = 81
        Height = 17
        Caption = #192' D&escontar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object RadDevolvidos: TRadioButton
        Left = 323
        Top = 18
        Width = 74
        Height = 17
        Caption = 'Devo&lvidos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
    end
    object Group07: TGroupBox
      Left = 0
      Top = 662
      Width = 425
      Height = 41
      Align = alBottom
      TabOrder = 10
      object BitConfig: TBitBtn
        Left = 15
        Top = 11
        Width = 185
        Height = 25
        Cursor = crHandPoint
        Caption = 'Config&ura'#231#227'o de Impress'#227'o'
        TabOrder = 2
        TabStop = False
        OnClick = BitConfigClick
      end
      object BitOk: TBitBtn
        Left = 244
        Top = 11
        Width = 75
        Height = 25
        Cursor = crHandPoint
        Caption = '&OK'
        TabOrder = 0
        TabStop = False
        OnClick = BitOkClick
      end
      object BitCancelar: TBitBtn
        Left = 325
        Top = 11
        Width = 75
        Height = 25
        Cursor = crHandPoint
        Caption = '&Cancelar'
        TabOrder = 1
        TabStop = False
        OnClick = BitCancelarClick
      end
    end
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 425
      Height = 209
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 11
      object GroupBox6: TGroupBox
        Left = 0
        Top = 0
        Width = 299
        Height = 209
        Align = alLeft
        Caption = 'Relat'#243'rios'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object LTBoxRelatorio: TListBox
          Left = 2
          Top = 15
          Width = 295
          Height = 192
          Style = lbOwnerDrawVariable
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = bsNone
          Color = 11599871
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = LTBoxRelatorioClick
          OnDblClick = LTBoxRelatorioDblClick
        end
      end
      object GroupBox3: TGroupBox
        Left = 299
        Top = 0
        Width = 126
        Height = 209
        Align = alClient
        Caption = 'Dispositivo de sa'#237'da'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object RadVideo: TRadioButton
          Left = 14
          Top = 23
          Width = 65
          Height = 17
          Caption = '&V'#237'deo'
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          TabStop = True
        end
        object RadImpressora: TRadioButton
          Left = 14
          Top = 51
          Width = 81
          Height = 17
          Caption = '&Impressora'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object RadText: TRadioButton
          Left = 14
          Top = 78
          Width = 90
          Height = 20
          Caption = '&Arquivo Texto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
      end
    end
    object pnStatus: TPanel
      Left = 0
      Top = 395
      Width = 425
      Height = 62
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 4
      object Group04: TGroupBox
        Left = 0
        Top = 0
        Width = 259
        Height = 62
        Align = alClient
        Caption = 'Filtrar contas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object RadTodas: TRadioButton
          Left = 11
          Top = 18
          Width = 60
          Height = 13
          Caption = '&Todas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = RadTodasClick
        end
        object RadPagas: TRadioButton
          Left = 116
          Top = 38
          Width = 70
          Height = 13
          Caption = '&Recebidas'
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          TabStop = True
          OnClick = RadTodasClick
        end
        object RadPendente: TRadioButton
          Left = 116
          Top = 18
          Width = 73
          Height = 13
          Caption = '&Pendentes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = RadTodasClick
        end
        object RadParcial: TRadioButton
          Left = 12
          Top = 38
          Width = 70
          Height = 13
          Caption = '&Parcial'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = RadTodasClick
        end
      end
      object Group08: TGroupBox
        Left = 259
        Top = 0
        Width = 166
        Height = 62
        Align = alRight
        Caption = 'Contas Recebidas por'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object Rad_Vencto: TRadioButton
          Left = 8
          Top = 17
          Width = 77
          Height = 17
          Caption = '&Vencimento'
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          TabStop = True
        end
        object Rad_Pagto: TRadioButton
          Left = 8
          Top = 36
          Width = 84
          Height = 17
          Caption = 'Rece&bimento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
      end
    end
    object Panel3: TPanel
      Left = 0
      Top = 621
      Width = 425
      Height = 41
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 9
      object Group12: TGroupBox
        Left = 0
        Top = 0
        Width = 259
        Height = 41
        Align = alClient
        Caption = 'Filtrar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Rad_Todas: TRadioButton
          Left = 165
          Top = 18
          Width = 60
          Height = 13
          Caption = '&Todas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = RadTodasClick
        end
        object Rad_Cheques: TRadioButton
          Left = 91
          Top = 18
          Width = 70
          Height = 13
          Caption = 'C&heques'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = RadTodasClick
        end
        object Rad_Duplicata: TRadioButton
          Left = 13
          Top = 18
          Width = 73
          Height = 13
          Caption = '&Duplicatas'
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          TabStop = True
          OnClick = RadTodasClick
        end
      end
      object Group13: TGroupBox
        Left = 259
        Top = 0
        Width = 166
        Height = 41
        Align = alRight
        Caption = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object Rad_Data_Vencto: TRadioButton
          Left = 83
          Top = 18
          Width = 77
          Height = 17
          Caption = 'Venci&mento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object Rad_Data_Descto: TRadioButton
          Left = 8
          Top = 18
          Width = 68
          Height = 17
          Caption = 'D&esconto'
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          TabStop = True
        end
      end
    end
  end
  object SqlCdsRelReceber: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT'#13#10'F1.EMP_CODIGO,'#13#10'F1.FAT_CODIGO,'#13#10'F1.FAT_DTEMIS,'#13#10'F1.FAT_V' +
      'L_LIQ,'#13#10'F1.FAT_VLFAT,'#13#10'F1.FAT_QTDITEM,'#13#10'F1.FAT_BASEICMS,'#13#10'F1.FAT' +
      '_ALIQUOTA,'#13#10'F1.PCX_CODIGO,'#13#10'F1.FAT_VL_IPI,'#13#10'F1.FAT_BASESUB,'#13#10'F1.' +
      'FAT_ICMSRET,'#13#10'F1.FAT_COMIS1,'#13#10'F1.CLI_CODIGO,'#13#10'C1.CLI_RAZAO,'#13#10'C1.' +
      'CLI_FONE,'#13#10'C1.CLI_UF,'#13#10'F1.REP_CODIGO,'#13#10'R1.REP_NOME,'#13#10'F1.PED_CODI' +
      'GO,'#13#10'F2.FPC_NUMER,'#13#10'F2.FPC_VENCTO,'#13#10'F2.FPC_COBNUM,'#13#10'F2.FPC_STATU' +
      'S,'#13#10'F2.FPC_VLPARC,'#13#10'F2.FPC_VLPAGO,'#13#10'F2.FPC_DTEMIS,'#13#10'F2.FPC_PAGTO' +
      ','#13#10'F2.FPC_JUROS,'#13#10'F2.FPC_MULTA,'#13#10'F2.FPC_DESCTO,'#13#10'F2.FPC_COBTIPO,' +
      #13#10'F2.BAN_CODIGO,'#13#10'F2.FPC_JUROS_DESCTO,'#13#10'F2.FPC_DESCONTADO,'#13#10'B1.B' +
      'AN_APELIDO,'#13#10'B1.BAN_JUROMES'#13#10'FROM FAT0000 F1'#13#10'JOIN      FAT_PC01' +
      ' F2 ON F1.fat_codigo = F2.fat_codigo'#13#10'LEFT JOIN CLI0000  C1 ON F' +
      '1.cli_codigo = C1.cli_codigo'#13#10'LEFT JOIN REP0000  R1 ON F1.rep_co' +
      'digo = R1.rep_codigo'#13#10'LEFT JOIN BAN0000  B1 ON F2.ban_codigo = B' +
      '1.ban_codigo'#13#10#13#10'where F2.FPC_VENCTO BETWEEN '#39'01/01/2006'#39' AND '#39'04' +
      '/28/2006'#39' AND F2.fpc_cobtipo = '#39'CH'#39#13#10#13#10'order by'#13#10'F2.BAN_CODIGO,F' +
      '2.FPC_COBTIPO,F2.FPC_VENCTO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    BeforeOpen = SqlCdsRelReceberBeforeOpen
    OnCalcFields = SqlCdsRelReceberCalcFields
    CommandText = 
      'SELECT'#13#10'F1.EMP_CODIGO,'#13#10'F1.FAT_CODIGO,'#13#10'F1.FAT_DTEMIS,'#13#10'F1.FAT_V' +
      'L_LIQ,'#13#10'F1.FAT_VLFAT,'#13#10'F1.FAT_QTDITEM,'#13#10'F1.FAT_BASEICMS,'#13#10'F1.FAT' +
      '_ALIQUOTA,'#13#10'F1.PCX_CODIGO,'#13#10'F1.FAT_VL_IPI,'#13#10'F1.FAT_BASESUB,'#13#10'F1.' +
      'FAT_ICMSRET,'#13#10'F1.FAT_COMIS1,'#13#10'F1.CLI_CODIGO,'#13#10'C1.CLI_RAZAO,'#13#10'C1.' +
      'CLI_FONE,'#13#10'C1.CLI_UF,'#13#10'F1.REP_CODIGO,'#13#10'R1.REP_NOME,'#13#10'F1.PED_CODI' +
      'GO,'#13#10'F2.FPC_NUMER,'#13#10'F2.FPC_VENCTO,'#13#10'F2.FPC_COBNUM,'#13#10'F2.FPC_STATU' +
      'S,'#13#10'F2.FPC_VLPARC,'#13#10'F2.FPC_VLPAGO,'#13#10'F2.FPC_DTEMIS,'#13#10'F2.FPC_PAGTO' +
      ','#13#10'F2.FPC_JUROS,'#13#10'F2.FPC_MULTA,'#13#10'F2.FPC_DESCTO,'#13#10'F2.FPC_COBTIPO,' +
      #13#10'F2.BAN_CODIGO,'#13#10'F2.FPC_JUROS_DESCTO,'#13#10'F2.FPC_DESCONTADO,'#13#10'B1.B' +
      'AN_APELIDO,'#13#10'B1.BAN_JUROMES'#13#10'FROM FAT0000 F1'#13#10'JOIN      FAT_PC01' +
      ' F2 ON F1.fat_codigo = F2.fat_codigo'#13#10'LEFT JOIN CLI0000  C1 ON F' +
      '1.cli_codigo = C1.cli_codigo'#13#10'LEFT JOIN REP0000  R1 ON F1.rep_co' +
      'digo = R1.rep_codigo'#13#10'LEFT JOIN BAN0000  B1 ON F2.ban_codigo = B' +
      '1.ban_codigo'#13#10#13#10'where F2.FPC_VENCTO BETWEEN '#39'01/01/2006'#39' AND '#39'04' +
      '/28/2006'#39' AND F2.fpc_cobtipo = '#39'CH'#39#13#10#13#10'order by'#13#10'F2.BAN_CODIGO,F' +
      '2.FPC_COBTIPO,F2.FPC_VENCTO'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 568
    Top = 32
    object SqlCdsRelReceberFAT_CODIGO: TStringField
      FieldName = 'FAT_CODIGO'
      Required = True
      Size = 6
    end
    object SqlCdsRelReceberFAT_DTEMIS: TSQLTimeStampField
      FieldName = 'FAT_DTEMIS'
    end
    object SqlCdsRelReceberFAT_VL_LIQ: TFMTBCDField
      FieldName = 'FAT_VL_LIQ'
      Precision = 15
    end
    object SqlCdsRelReceberFAT_VLFAT: TFMTBCDField
      FieldName = 'FAT_VLFAT'
      Precision = 15
    end
    object SqlCdsRelReceberFAT_QTDITEM: TFMTBCDField
      FieldName = 'FAT_QTDITEM'
      Precision = 15
    end
    object SqlCdsRelReceberFAT_BASEICMS: TFMTBCDField
      FieldName = 'FAT_BASEICMS'
      Precision = 15
    end
    object SqlCdsRelReceberFAT_ALIQUOTA: TFMTBCDField
      FieldName = 'FAT_ALIQUOTA'
      Precision = 15
    end
    object SqlCdsRelReceberFAT_VL_IPI: TFMTBCDField
      FieldName = 'FAT_VL_IPI'
      Precision = 15
    end
    object SqlCdsRelReceberFAT_BASESUB: TFMTBCDField
      FieldName = 'FAT_BASESUB'
      Precision = 15
    end
    object SqlCdsRelReceberFAT_ICMSRET: TFMTBCDField
      FieldName = 'FAT_ICMSRET'
      Precision = 15
    end
    object SqlCdsRelReceberFAT_COMIS1: TFMTBCDField
      FieldName = 'FAT_COMIS1'
      Precision = 15
    end
    object SqlCdsRelReceberCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Required = True
      Size = 5
    end
    object SqlCdsRelReceberCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Size = 45
    end
    object SqlCdsRelReceberCLI_FONE: TStringField
      FieldName = 'CLI_FONE'
      Size = 11
    end
    object SqlCdsRelReceberCLI_UF: TStringField
      FieldName = 'CLI_UF'
      Size = 2
    end
    object SqlCdsRelReceberREP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      Required = True
      Size = 3
    end
    object SqlCdsRelReceberREP_NOME: TStringField
      FieldName = 'REP_NOME'
      Size = 35
    end
    object SqlCdsRelReceberPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Size = 6
    end
    object SqlCdsRelReceberFPC_NUMER: TStringField
      FieldName = 'FPC_NUMER'
      Size = 2
    end
    object SqlCdsRelReceberFPC_VENCTO: TSQLTimeStampField
      FieldName = 'FPC_VENCTO'
    end
    object SqlCdsRelReceberFPC_COBNUM: TStringField
      FieldName = 'FPC_COBNUM'
      Size = 13
    end
    object SqlCdsRelReceberFPC_STATUS: TStringField
      FieldName = 'FPC_STATUS'
      Size = 12
    end
    object SqlCdsRelReceberFPC_VLPARC: TFMTBCDField
      FieldName = 'FPC_VLPARC'
      Precision = 15
    end
    object SqlCdsRelReceberFPC_VLPAGO: TFMTBCDField
      FieldName = 'FPC_VLPAGO'
      Precision = 15
    end
    object SqlCdsRelReceberFPC_DTEMIS: TSQLTimeStampField
      FieldName = 'FPC_DTEMIS'
    end
    object SqlCdsRelReceberBAN_CODIGO: TStringField
      FieldName = 'BAN_CODIGO'
      Required = True
      Size = 4
    end
    object SqlCdsRelReceberBAN_APELIDO: TStringField
      FieldName = 'BAN_APELIDO'
      Size = 14
    end
    object SqlCdsRelReceberFPC_MES_CC: TStringField
      FieldKind = fkCalculated
      FieldName = 'FPC_MES_CC'
      Size = 2
      Calculated = True
    end
    object SqlCdsRelReceberFPC_RECEBER_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'FPC_RECEBER_CC'
      Calculated = True
    end
    object SqlCdsRelReceberFPC_DIA_CC: TStringField
      FieldKind = fkCalculated
      FieldName = 'FPC_DIA_CC'
      Size = 3
      Calculated = True
    end
    object SqlCdsRelReceberFAT_ICMS_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'FAT_ICMS_CC'
      Calculated = True
    end
    object SqlCdsRelReceberPCX_CODIGO: TStringField
      FieldName = 'PCX_CODIGO'
      Size = 3
    end
    object SqlCdsRelReceberFPC_MES_PAGTO_CC: TStringField
      FieldKind = fkCalculated
      FieldName = 'FPC_MES_PAGTO_CC'
      Size = 2
      Calculated = True
    end
    object SqlCdsRelReceberEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlCdsRelReceberFPC_PAGTO: TSQLTimeStampField
      FieldName = 'FPC_PAGTO'
    end
    object SqlCdsRelReceberFPC_COBTIPO: TStringField
      FieldName = 'FPC_COBTIPO'
      Size = 2
    end
    object SqlCdsRelReceberDESCR_COBRANCA_CC: TStringField
      FieldKind = fkCalculated
      FieldName = 'DESCR_COBRANCA_CC'
      Size = 30
      Calculated = True
    end
    object SqlCdsRelReceberVL_DESCTO_LIQ_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'VL_DESCTO_LIQ_CC'
      Calculated = True
    end
    object SqlCdsRelReceberFPC_JUROS_DESCTO: TFMTBCDField
      FieldName = 'FPC_JUROS_DESCTO'
      Precision = 15
    end
    object SqlCdsRelReceberFPC_DESCONTADO: TStringField
      FieldName = 'FPC_DESCONTADO'
      Size = 1
    end
    object SqlCdsRelReceberFPC_JUROS: TFMTBCDField
      FieldName = 'FPC_JUROS'
      Precision = 20
      Size = 5
    end
    object SqlCdsRelReceberFPC_MULTA: TFMTBCDField
      FieldName = 'FPC_MULTA'
      Precision = 20
      Size = 5
    end
    object SqlCdsRelReceberFPC_DESCTO: TFMTBCDField
      FieldName = 'FPC_DESCTO'
      Precision = 20
      Size = 5
    end
    object SqlCdsRelReceberBAN_JUROMES: TFMTBCDField
      FieldName = 'BAN_JUROMES'
      Precision = 20
      Size = 5
    end
    object SqlCdsRelReceberJurosDia: TFloatField
      FieldKind = fkCalculated
      FieldName = 'JurosDia'
      Calculated = True
    end
    object SqlCdsRelReceberJurosTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'JurosTotal'
      Calculated = True
    end
    object SqlCdsRelReceberFPG_DESCRICAO: TStringField
      FieldName = 'FPG_DESCRICAO'
      Size = 100
    end
    object SqlCdsRelReceberFPG_REGISTRO: TIntegerField
      FieldName = 'FPG_REGISTRO'
    end
  end
  object DsRelReceber: TDataSource
    DataSet = SqlCdsRelReceber
    Left = 688
    Top = 40
  end
  object ppRPRelConReceber01: TppReport
    AutoStop = False
    DataPipeline = ppDBReceber
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
    Template.FileName = 
      'C:\JobProgram\Developer\Adjutor\FontesRelatorios\RELCONRECEBER01' +
      '.rtm'
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    BeforePrint = ppRPRelConReceber00BeforePrint
    CachePages = True
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
    Left = 856
    Top = 104
    Version = '16.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBReceber'
    object pp01HeaderBand1: TppHeaderBand
      BeforePrint = pp01HeaderBand1BeforePrint
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 22225
      mmPrintPosition = 0
      object ppLine8: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 196000
        BandType = 0
        LayerName = Foreground
      end
      object LBL_01_EMPRESA: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LBL_00_EMPRESA'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'LABEL_EMPRESA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3969
        mmLeft = 0
        mmTop = 794
        mmWidth = 160073
        BandType = 0
        LayerName = Foreground
      end
      object LBL_01_LTITULO1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LBL_00_LTITULO1'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'TITULO1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3260
        mmLeft = 0
        mmTop = 6350
        mmWidth = 160073
        BandType = 0
        LayerName = Foreground
      end
      object LBL_01_LTITULO2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LBL_00_LTITULO2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'TITULO2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3260
        mmLeft = 0
        mmTop = 9790
        mmWidth = 11642
        BandType = 0
        LayerName = Foreground
      end
      object ppLine9: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 14288
        mmWidth = 196000
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        VarType = vtDateTime
        DisplayFormat = 'dd/mm/yy h:nn'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 174096
        mmTop = 794
        mmWidth = 22754
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable2: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        OnGetText = TrocandoPaginasGetText
        Border.Weight = 1.000000000000000000
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4163
        mmLeft = 174114
        mmTop = 7938
        mmWidth = 21943
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel21: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'FATURA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3246
        mmLeft = 0
        mmTop = 18521
        mmWidth = 16669
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel23: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'VALOR DO TITULO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 6879
        mmLeft = 113506
        mmTop = 14817
        mmWidth = 16140
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel24: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'VALOR RECEBIDO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 6879
        mmLeft = 133350
        mmTop = 14817
        mmWidth = 16404
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel25: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        CharWrap = True
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'DATA DE RECBTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 6879
        mmLeft = 97631
        mmTop = 14817
        mmWidth = 14552
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel26: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'BANCO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        WordWrap = True
        mmHeight = 3175
        mmLeft = 150813
        mmTop = 18521
        mmWidth = 32279
        BandType = 0
        LayerName = Foreground
      end
      object ppLine10: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line3'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 21960
        mmWidth = 196000
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel28: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'STATUS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3246
        mmLeft = 183621
        mmTop = 18521
        mmWidth = 12700
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel29: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label13'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'CLIENTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3246
        mmLeft = 37571
        mmTop = 18521
        mmWidth = 58738
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel22: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label22'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'DATA DE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 19844
        mmTop = 14817
        mmWidth = 14817
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel101: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label101'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'VENCTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 19844
        mmTop = 18521
        mmWidth = 14817
        BandType = 0
        LayerName = Foreground
      end
    end
    object pp01DetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 3175
      mmPrintPosition = 0
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FAT_CODIGO'
        DataPipeline = ppDBReceber
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBReceber'
        mmHeight = 3246
        mmLeft = 0
        mmTop = 0
        mmWidth = 10583
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText13: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FPC_NUMER'
        DataPipeline = ppDBReceber
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBReceber'
        mmHeight = 3246
        mmLeft = 11377
        mmTop = 0
        mmWidth = 5292
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText14: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FPC_VENCTO'
        DataPipeline = ppDBReceber
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBReceber'
        mmHeight = 3246
        mmLeft = 19844
        mmTop = 0
        mmWidth = 14817
        BandType = 4
        LayerName = Foreground
      end
      object ppDBCliente: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBCliente'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_RAZAO'
        DataPipeline = ppDBReceber
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBReceber'
        mmHeight = 3246
        mmLeft = 37571
        mmTop = 0
        mmWidth = 58738
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText16: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText8'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FPC_VLPAGO'
        DataPipeline = ppDBReceber
        DisplayFormat = '#0.,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBReceber'
        mmHeight = 3246
        mmLeft = 133350
        mmTop = 0
        mmWidth = 16404
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText17: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText9'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FPC_PAGTO'
        DataPipeline = ppDBReceber
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBReceber'
        mmHeight = 3246
        mmLeft = 97631
        mmTop = 0
        mmWidth = 14552
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText18: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText10'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'BAN_APELIDO'
        DataPipeline = ppDBReceber
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBReceber'
        mmHeight = 3175
        mmLeft = 150813
        mmTop = 0
        mmWidth = 32279
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText20: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText12'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FPC_STATUS'
        DataPipeline = ppDBReceber
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBReceber'
        mmHeight = 3246
        mmLeft = 183621
        mmTop = 0
        mmWidth = 12700
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText19: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText19'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FPC_RECEBER_CC'
        DataPipeline = ppDBReceber
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBReceber'
        mmHeight = 3246
        mmLeft = 113506
        mmTop = 0
        mmWidth = 16140
        BandType = 4
        LayerName = Foreground
      end
    end
    object pp01SummaryBand2: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 4763
      mmPrintPosition = 0
      object ppLabel30: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label14'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'TOTAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3316
        mmLeft = 47184
        mmTop = 794
        mmWidth = 9172
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc10: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc3'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FPC_VLPARC'
        DataPipeline = ppDBReceber
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBReceber'
        mmHeight = 3316
        mmLeft = 109009
        mmTop = 794
        mmWidth = 20638
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc12: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc9'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FPC_VLPAGO'
        DataPipeline = ppDBReceber
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBReceber'
        mmHeight = 3316
        mmLeft = 130969
        mmTop = 794
        mmWidth = 19050
        BandType = 7
        LayerName = Foreground
      end
      object ppLine11: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line6'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 31750
        mmTop = 265
        mmWidth = 116946
        BandType = 7
        LayerName = Foreground
      end
      object ppLine12: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line7'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 31750
        mmTop = 4498
        mmWidth = 116946
        BandType = 7
        LayerName = Foreground
      end
    end
    object raCodeModule1: TraCodeModule
      ProgramStream = {
        01060F5472614576656E7448616E646C65720B50726F6772616D4E616D650610
        444254657874344F6E476574546578740B50726F6772616D54797065070B7474
        50726F63656475726506536F7572636506B070726F6365647572652044425465
        7874344F6E476574546578742876617220546578743A20537472696E67293B0D
        0A626567696E0D0A202020206966204442526563656265725B274650435F4E55
        4D4552275D3C3E2727207468656E0D0A2020202020202054657874203A3D2027
        2F272B204442526563656265725B274650435F4E554D4552275D0D0A20202020
        656C73650D0A2020202020202054657874203A3D2027273B0D0A0D0A656E643B
        0D0A0D436F6D706F6E656E744E616D65060744425465787434094576656E744E
        616D6506094F6E47657454657874074576656E7449440235084361726574506F
        730102000200000001060F5472614576656E7448616E646C65720B50726F6772
        616D4E616D6506124442436C69656E74654F6E476574546578740B50726F6772
        616D54797065070B747450726F63656475726506536F75726365067070726F63
        6564757265204442436C69656E74654F6E476574546578742876617220546578
        743A20537472696E67293B0D0A626567696E0D0A0D0A202054657874203A3D20
        436F7079284442526563656265725B27434C495F52415A414F275D2C312C3330
        293B0D0A0D0A656E643B0D0A0D436F6D706F6E656E744E616D6506094442436C
        69656E7465094576656E744E616D6506094F6E47657454657874074576656E74
        49440235084361726574506F730102000200000000}
    end
    object ppDesignLayers1: TppDesignLayers
      object ppDesignLayer1: TppDesignLayer
        UserName = 'Foreground'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList4: TppParameterList
    end
  end
  object ppRPRelConReceber02: TppReport
    AutoStop = False
    DataPipeline = ppDBReceber
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
    Template.FileName = 'X:\adjutor\fontesrelatorios\RELCONRECEBER02'
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    BeforePrint = ppRPRelConReceber00BeforePrint
    CachePages = True
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Portuguese (Brazil)'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = False
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
    Left = 856
    Top = 152
    Version = '16.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBReceber'
    object pp02HeaderBand1: TppHeaderBand
      BeforePrint = pp02HeaderBand1BeforePrint
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 22225
      mmPrintPosition = 0
      object ppLine13: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line1'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 205000
        BandType = 0
        LayerName = Foreground1
      end
      object LBL_02_EMPRESA: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'LBL_00_EMPRESA'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'LABEL_EMPRESA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3969
        mmLeft = 0
        mmTop = 794
        mmWidth = 160073
        BandType = 0
        LayerName = Foreground1
      end
      object LBL_02_LTITULO1: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'LBL_00_LTITULO1'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'TITULO1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3260
        mmLeft = 0
        mmTop = 6350
        mmWidth = 160073
        BandType = 0
        LayerName = Foreground1
      end
      object LBL_02_LTITULO2: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'LBL_00_LTITULO2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'TITULO2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3260
        mmLeft = 0
        mmTop = 9790
        mmWidth = 11642
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine14: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line2'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 14288
        mmWidth = 196000
        BandType = 0
        LayerName = Foreground1
      end
      object ppSystemVariable5: TppSystemVariable
        DesignLayer = ppDesignLayer2
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        VarType = vtDateTime
        DisplayFormat = 'dd/mm/yy h:nn'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 173302
        mmTop = 794
        mmWidth = 22755
        BandType = 0
        LayerName = Foreground1
      end
      object ppSystemVariable6: TppSystemVariable
        DesignLayer = ppDesignLayer2
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        OnGetText = TrocandoPaginasGetText
        Border.Weight = 1.000000000000000000
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4163
        mmLeft = 174114
        mmTop = 7938
        mmWidth = 21943
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel27: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'DUPLICATA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3246
        mmLeft = 0
        mmTop = 18521
        mmWidth = 15804
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel31: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'VENCTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3246
        mmLeft = 18256
        mmTop = 18521
        mmWidth = 11783
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel32: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label3'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'VALOR DO TITULO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 6350
        mmLeft = 111919
        mmTop = 15169
        mmWidth = 14605
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel33: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label4'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'TOTAL RECEBIDO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 6350
        mmLeft = 150407
        mmTop = 15169
        mmWidth = 15028
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel34: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label5'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'EMISS'#227'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 3246
        mmLeft = 165629
        mmTop = 18521
        mmWidth = 12488
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel35: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label6'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'N.BANCO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 3246
        mmLeft = 34290
        mmTop = 18521
        mmWidth = 12912
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine15: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line3'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 21960
        mmWidth = 196000
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel36: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label8'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'STATUS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3246
        mmLeft = 182016
        mmTop = 18521
        mmWidth = 11148
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel37: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label13'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'CLIENTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3246
        mmLeft = 59002
        mmTop = 18521
        mmWidth = 11853
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel140: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label140'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'VALOR DESCTADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 6879
        mmLeft = 130175
        mmTop = 15169
        mmWidth = 16140
        BandType = 0
        LayerName = Foreground1
      end
    end
    object pp02DetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 3440
      mmPrintPosition = 0
      object ppDBText21: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FAT_CODIGO'
        DataPipeline = ppDBReceber
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBReceber'
        mmHeight = 3246
        mmLeft = 0
        mmTop = 0
        mmWidth = 10054
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText22: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText4'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FPC_NUMER'
        DataPipeline = ppDBReceber
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBReceber'
        mmHeight = 3246
        mmLeft = 10319
        mmTop = 0
        mmWidth = 4233
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText23: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText5'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FPC_VENCTO'
        DataPipeline = ppDBReceber
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBReceber'
        mmHeight = 3246
        mmLeft = 17463
        mmTop = 0
        mmWidth = 14817
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBTCliente: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBTCliente'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_RAZAO'
        DataPipeline = ppDBReceber
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBReceber'
        mmHeight = 3175
        mmLeft = 59267
        mmTop = 0
        mmWidth = 48948
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText25: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText8'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FPC_VLPAGO'
        DataPipeline = ppDBReceber
        DisplayFormat = '#0.,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBReceber'
        mmHeight = 3246
        mmLeft = 148696
        mmTop = 0
        mmWidth = 16404
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText26: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText9'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FAT_DTEMIS'
        DataPipeline = ppDBReceber
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBReceber'
        mmHeight = 3246
        mmLeft = 166159
        mmTop = 0
        mmWidth = 14552
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText27: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText10'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FPC_COBNUM'
        DataPipeline = ppDBReceber
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBReceber'
        mmHeight = 3175
        mmLeft = 34131
        mmTop = 0
        mmWidth = 23283
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText28: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText12'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FPC_STATUS'
        DataPipeline = ppDBReceber
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBReceber'
        mmHeight = 3246
        mmLeft = 181505
        mmTop = 0
        mmWidth = 14023
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText29: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText19'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FPC_VLPARC'
        DataPipeline = ppDBReceber
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBReceber'
        mmHeight = 3246
        mmLeft = 110861
        mmTop = 0
        mmWidth = 16140
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText15: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText15'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'VL_DESCTO_LIQ_CC'
        DataPipeline = ppDBReceber
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBReceber'
        mmHeight = 3175
        mmLeft = 129117
        mmTop = 0
        mmWidth = 16140
        BandType = 4
        LayerName = Foreground1
      end
    end
    object pp02SummaryBand2: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 5027
      mmPrintPosition = 0
      object ppLabel38: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label14'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'TOTAL GERAL:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 40428
        mmTop = 794
        mmWidth = 20955
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBCalc11: TppDBCalc
        DesignLayer = ppDesignLayer2
        UserName = 'DBCalc3'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FPC_VLPARC'
        DataPipeline = ppDBReceber
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBReceber'
        mmHeight = 3316
        mmLeft = 106098
        mmTop = 794
        mmWidth = 20638
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBCalc13: TppDBCalc
        DesignLayer = ppDesignLayer2
        UserName = 'DBCalc9'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FPC_VLPAGO'
        DataPipeline = ppDBReceber
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBReceber'
        mmHeight = 3316
        mmLeft = 146050
        mmTop = 794
        mmWidth = 19050
        BandType = 7
        LayerName = Foreground1
      end
      object ppLine18: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line18'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 4762
        mmWidth = 196000
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBCalc69: TppDBCalc
        DesignLayer = ppDesignLayer2
        UserName = 'DBCalc69'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'VL_DESCTO_LIQ_CC'
        DataPipeline = ppDBReceber
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBReceber'
        mmHeight = 3440
        mmLeft = 129117
        mmTop = 794
        mmWidth = 16140
        BandType = 7
        LayerName = Foreground1
      end
    end
    object ppGroup3: TppGroup
      BreakName = 'BAN_CODIGO'
      DataPipeline = ppDBReceber
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group3'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBReceber'
      NewFile = False
      object ppGroupHeaderBand3: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 3969
        mmPrintPosition = 0
        object ppLabel19: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label19'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'Banco.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          FormField = False
          Transparent = True
          mmHeight = 3316
          mmLeft = 0
          mmTop = 0
          mmWidth = 10231
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText30: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText30'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'BAN_CODIGO'
          DataPipeline = ppDBReceber
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDBReceber'
          mmHeight = 3316
          mmLeft = 10583
          mmTop = 0
          mmWidth = 7144
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText31: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText31'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'BAN_APELIDO'
          DataPipeline = ppDBReceber
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDBReceber'
          mmHeight = 3457
          mmLeft = 17992
          mmTop = 0
          mmWidth = 47361
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLine61: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line61'
          Border.Weight = 1.000000000000000000
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 3704
          mmWidth = 196057
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
      end
      object ppGroupFooterBand3: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 4498
        mmPrintPosition = 0
        object ppLabel18: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label18'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'TOTAL DO BANCO:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          FormField = False
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3175
          mmLeft = 34660
          mmTop = 529
          mmWidth = 26723
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBCalc14: TppDBCalc
          DesignLayer = ppDesignLayer2
          UserName = 'DBCalc14'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'FPC_VLPARC'
          DataPipeline = ppDBReceber
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBReceber'
          mmHeight = 3316
          mmLeft = 106363
          mmTop = 529
          mmWidth = 20638
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBCalc15: TppDBCalc
          DesignLayer = ppDesignLayer2
          UserName = 'DBCalc15'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'FPC_VLPAGO'
          DataPipeline = ppDBReceber
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBReceber'
          mmHeight = 3316
          mmLeft = 145786
          mmTop = 529
          mmWidth = 19050
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLine21: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line21'
          Border.Weight = 1.000000000000000000
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 4233
          mmWidth = 196000
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBCalc68: TppDBCalc
          DesignLayer = ppDesignLayer2
          UserName = 'DBCalc68'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'VL_DESCTO_LIQ_CC'
          DataPipeline = ppDBReceber
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBReceber'
          mmHeight = 3440
          mmLeft = 129117
          mmTop = 529
          mmWidth = 16140
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
      end
    end
    object ppGroup10: TppGroup
      BreakName = 'FPC_COBTIPO'
      DataPipeline = ppDBReceber
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group10'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBReceber'
      NewFile = False
      object ppGroupHeaderBand9: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 3969
        mmPrintPosition = 0
        object ppLabel138: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label138'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'Tipo de cobran'#231'a:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          FormField = False
          Transparent = True
          mmHeight = 3440
          mmLeft = 49742
          mmTop = 0
          mmWidth = 25929
          BandType = 3
          GroupNo = 1
          LayerName = Foreground1
        end
        object ppDBText113: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText301'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'DESCR_COBRANCA_CC'
          DataPipeline = ppDBReceber
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDBReceber'
          mmHeight = 3440
          mmLeft = 76200
          mmTop = 0
          mmWidth = 67469
          BandType = 3
          GroupNo = 1
          LayerName = Foreground1
        end
        object ppLine63: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line63'
          Border.Weight = 1.000000000000000000
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 3704
          mmWidth = 196057
          BandType = 3
          GroupNo = 1
          LayerName = Foreground1
        end
      end
      object ppGroupFooterBand9: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 4498
        mmPrintPosition = 0
        object ppLine64: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line64'
          Border.Weight = 1.000000000000000000
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 0
          mmWidth = 196057
          BandType = 5
          GroupNo = 1
          LayerName = Foreground1
        end
        object ppDBCalc65: TppDBCalc
          DesignLayer = ppDesignLayer2
          UserName = 'DBCalc65'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'FPC_VLPARC'
          DataPipeline = ppDBReceber
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup10
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBReceber'
          mmHeight = 3440
          mmLeft = 106363
          mmTop = 529
          mmWidth = 20638
          BandType = 5
          GroupNo = 1
          LayerName = Foreground1
        end
        object ppDBCalc66: TppDBCalc
          DesignLayer = ppDesignLayer2
          UserName = 'DBCalc66'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'FPC_VLPAGO'
          DataPipeline = ppDBReceber
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup10
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBReceber'
          mmHeight = 3440
          mmLeft = 145786
          mmTop = 529
          mmWidth = 19050
          BandType = 5
          GroupNo = 1
          LayerName = Foreground1
        end
        object ppLine65: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line65'
          Border.Weight = 1.000000000000000000
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 4233
          mmWidth = 196057
          BandType = 5
          GroupNo = 1
          LayerName = Foreground1
        end
        object ppLabel139: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label139'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'Sub-Total do Tipo de Cobran'#231'a:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          FormField = False
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3175
          mmLeft = 15610
          mmTop = 529
          mmWidth = 45773
          BandType = 5
          GroupNo = 1
          LayerName = Foreground1
        end
        object ppDBCalc67: TppDBCalc
          DesignLayer = ppDesignLayer2
          UserName = 'DBCalc67'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'VL_DESCTO_LIQ_CC'
          DataPipeline = ppDBReceber
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup10
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBReceber'
          mmHeight = 3440
          mmLeft = 129117
          mmTop = 529
          mmWidth = 16140
          BandType = 5
          GroupNo = 1
          LayerName = Foreground1
        end
      end
    end
    object raCodeModule3: TraCodeModule
      ProgramStream = {
        01060F5472614576656E7448616E646C65720B50726F6772616D4E616D650610
        444254657874344F6E476574546578740B50726F6772616D54797065070B7474
        50726F63656475726506536F7572636506B070726F6365647572652044425465
        7874344F6E476574546578742876617220546578743A20537472696E67293B0D
        0A626567696E0D0A202020206966204442526563656265725B274650435F4E55
        4D4552275D3C3E2727207468656E0D0A2020202020202054657874203A3D2027
        2F272B204442526563656265725B274650435F4E554D4552275D0D0A20202020
        656C73650D0A2020202020202054657874203A3D2027273B0D0A0D0A656E643B
        0D0A0D436F6D706F6E656E744E616D65060744425465787434094576656E744E
        616D6506094F6E47657454657874074576656E7449440235084361726574506F
        730102000200000001060F5472614576656E7448616E646C65720B50726F6772
        616D4E616D650613444254436C69656E74654F6E476574546578740B50726F67
        72616D54797065070B747450726F63656475726506536F75726365067170726F
        63656475726520444254436C69656E74654F6E47657454657874287661722054
        6578743A20537472696E67293B0D0A626567696E0D0A0D0A202054657874203A
        3D20636F7079284442526563656265725B27434C495F52415A414F275D2C312C
        3330293B0D0A0D0A656E643B0D0A0D436F6D706F6E656E744E616D65060A4442
        54436C69656E7465094576656E744E616D6506094F6E47657454657874074576
        656E7449440235084361726574506F730102000200000000}
    end
    object ppDesignLayers2: TppDesignLayers
      object ppDesignLayer2: TppDesignLayer
        UserName = 'Foreground1'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList5: TppParameterList
    end
  end
  object ppRPRelConReceber03: TppReport
    AutoStop = False
    DataPipeline = ppDBReceber
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
    Template.FileName = 'C:\Developer\adjutor\fontesrelatorios\RELCONRECEBER03.rtm'
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    BeforePrint = ppRPRelConReceber00BeforePrint
    CachePages = True
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
    Left = 856
    Top = 200
    Version = '16.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBReceber'
    object pp03HeaderBand1: TppHeaderBand
      BeforePrint = pp03HeaderBand1BeforePrint
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 22490
      mmPrintPosition = 0
      object ppLine19: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line1'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 196000
        BandType = 0
        LayerName = Foreground2
      end
      object LBL_03_EMPRESA: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'LBL_00_EMPRESA'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'LABEL_EMPRESA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3969
        mmLeft = 0
        mmTop = 794
        mmWidth = 160073
        BandType = 0
        LayerName = Foreground2
      end
      object LBL_03_LTITULO1: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'LBL_00_LTITULO1'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'TITULO1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3260
        mmLeft = 0
        mmTop = 6350
        mmWidth = 160073
        BandType = 0
        LayerName = Foreground2
      end
      object LBL_03_LTITULO2: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'LBL_00_LTITULO2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'TITULO2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3260
        mmLeft = 0
        mmTop = 9790
        mmWidth = 11642
        BandType = 0
        LayerName = Foreground2
      end
      object ppLine22: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line2'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 14288
        mmWidth = 196000
        BandType = 0
        LayerName = Foreground2
      end
      object ppSystemVariable7: TppSystemVariable
        DesignLayer = ppDesignLayer3
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        VarType = vtDateTime
        DisplayFormat = 'dd/mm/yy h:nn'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 173302
        mmTop = 794
        mmWidth = 22755
        BandType = 0
        LayerName = Foreground2
      end
      object ppSystemVariable8: TppSystemVariable
        DesignLayer = ppDesignLayer3
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        OnGetText = TrocandoPaginasGetText
        Border.Weight = 1.000000000000000000
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4163
        mmLeft = 174114
        mmTop = 7938
        mmWidth = 21943
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel41: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'DUPLICATA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3246
        mmLeft = 0
        mmTop = 18521
        mmWidth = 15804
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel42: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'VENCTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3246
        mmLeft = 76200
        mmTop = 18521
        mmWidth = 11783
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel43: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label3'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'VALOR DO TITULO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 6491
        mmLeft = 92340
        mmTop = 14817
        mmWidth = 14605
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel46: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label6'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'BANCO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 3246
        mmLeft = 107950
        mmTop = 18521
        mmWidth = 10089
        BandType = 0
        LayerName = Foreground2
      end
      object ppLine23: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line3'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 22225
        mmWidth = 196000
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel47: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label8'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'STATUS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3246
        mmLeft = 182280
        mmTop = 18521
        mmWidth = 11148
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel48: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label13'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'CLIENTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3246
        mmLeft = 16404
        mmTop = 18521
        mmWidth = 11853
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel44: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label44'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'DIAS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3246
        mmLeft = 119327
        mmTop = 18521
        mmWidth = 6562
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel45: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label45'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'FONE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 159279
        mmTop = 18521
        mmWidth = 7938
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel165: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label165'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Juros'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 3260
        mmLeft = 127763
        mmTop = 18521
        mmWidth = 6943
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel167: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label167'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'VALOR COM JUROS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 9790
        mmLeft = 138377
        mmTop = 14817
        mmWidth = 20373
        BandType = 0
        LayerName = Foreground2
      end
    end
    object pp03DetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 3175
      mmPrintPosition = 0
      object ppDBText32: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FAT_CODIGO'
        DataPipeline = ppDBReceber
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBReceber'
        mmHeight = 3246
        mmLeft = 0
        mmTop = 0
        mmWidth = 10054
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText33: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText4'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FPC_NUMER'
        DataPipeline = ppDBReceber
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBReceber'
        mmHeight = 3246
        mmLeft = 10319
        mmTop = 0
        mmWidth = 4233
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText34: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText5'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FPC_VENCTO'
        DataPipeline = ppDBReceber
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBReceber'
        mmHeight = 3246
        mmLeft = 76200
        mmTop = 0
        mmWidth = 14817
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText35: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText6'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_RAZAO'
        DataPipeline = ppDBReceber
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBReceber'
        mmHeight = 3246
        mmLeft = 16404
        mmTop = 0
        mmWidth = 59267
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText38: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText10'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'BAN_CODIGO'
        DataPipeline = ppDBReceber
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBReceber'
        mmHeight = 3260
        mmLeft = 107950
        mmTop = 0
        mmWidth = 10848
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText39: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText12'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FPC_STATUS'
        DataPipeline = ppDBReceber
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBReceber'
        mmHeight = 3246
        mmLeft = 181769
        mmTop = 0
        mmWidth = 14023
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText40: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText19'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FPC_VLPARC'
        DataPipeline = ppDBReceber
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBReceber'
        mmHeight = 3246
        mmLeft = 91546
        mmTop = 0
        mmWidth = 16140
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText36: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText36'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_FONE'
        DataPipeline = ppDBReceber
        DisplayFormat = '\(999\)9999\-9999;0;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBReceber'
        mmHeight = 3175
        mmLeft = 159015
        mmTop = 0
        mmWidth = 22490
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText37: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText37'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FPC_DIA_CC'
        DataPipeline = ppDBReceber
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBReceber'
        mmHeight = 3260
        mmLeft = 119327
        mmTop = 0
        mmWidth = 6350
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText111: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText1010'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'JurosDia'
        DataPipeline = ppDBReceber
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBReceber'
        mmHeight = 3175
        mmLeft = 126207
        mmTop = 0
        mmWidth = 10848
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText119: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText119'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'JurosTotal'
        DataPipeline = ppDBReceber
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBReceber'
        mmHeight = 3175
        mmLeft = 138113
        mmTop = 0
        mmWidth = 20373
        BandType = 4
        LayerName = Foreground2
      end
    end
    object pp03SummaryBand2: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 4763
      mmPrintPosition = 0
      object ppLabel49: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label14'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'TOTAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3316
        mmLeft = 47184
        mmTop = 794
        mmWidth = 9172
        BandType = 7
        LayerName = Foreground2
      end
      object ppDBCalc16: TppDBCalc
        DesignLayer = ppDesignLayer3
        UserName = 'DBCalc3'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FPC_VLPARC'
        DataPipeline = ppDBReceber
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBReceber'
        mmHeight = 3440
        mmLeft = 87313
        mmTop = 529
        mmWidth = 20638
        BandType = 7
        LayerName = Foreground2
      end
      object ppLine24: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line6'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 265
        mmWidth = 196057
        BandType = 7
        LayerName = Foreground2
      end
      object ppLine25: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line7'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 3969
        mmWidth = 196057
        BandType = 7
        LayerName = Foreground2
      end
      object ppDBCalc64: TppDBCalc
        DesignLayer = ppDesignLayer3
        UserName = 'DBCalc64'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'JurosDia'
        DataPipeline = ppDBReceber
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBReceber'
        mmHeight = 3440
        mmLeft = 116417
        mmTop = 529
        mmWidth = 20638
        BandType = 7
        LayerName = Foreground2
      end
      object ppDBCalc70: TppDBCalc
        DesignLayer = ppDesignLayer3
        UserName = 'DBCalc70'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'JurosTotal'
        DataPipeline = ppDBReceber
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBReceber'
        mmHeight = 3440
        mmLeft = 137848
        mmTop = 529
        mmWidth = 20638
        BandType = 7
        LayerName = Foreground2
      end
    end
    object raCodeModule4: TraCodeModule
      ProgramStream = {
        01060F5472614576656E7448616E646C65720B50726F6772616D4E616D650610
        444254657874344F6E476574546578740B50726F6772616D54797065070B7474
        50726F63656475726506536F7572636506B070726F6365647572652044425465
        7874344F6E476574546578742876617220546578743A20537472696E67293B0D
        0A626567696E0D0A202020206966204442526563656265725B274650435F4E55
        4D4552275D3C3E2727207468656E0D0A2020202020202054657874203A3D2027
        2F272B204442526563656265725B274650435F4E554D4552275D0D0A20202020
        656C73650D0A2020202020202054657874203A3D2027273B0D0A0D0A656E643B
        0D0A0D436F6D706F6E656E744E616D65060744425465787434094576656E744E
        616D6506094F6E47657454657874074576656E7449440235084361726574506F
        730102000200000000}
    end
    object ppDesignLayers3: TppDesignLayers
      object ppDesignLayer3: TppDesignLayer
        UserName = 'Foreground2'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList6: TppParameterList
    end
  end
  object ppDBNotas: TppDBPipeline
    DataSource = DsNotas
    UserName = 'DBNotas'
    Left = 760
    Top = 248
    object ppDBNotasppField1: TppField
      FieldAlias = 'FAT_ICMS_CC'
      FieldName = 'FAT_ICMS_CC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBNotasppField2: TppField
      FieldAlias = 'FAT_CODIGO'
      FieldName = 'FAT_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBNotasppField3: TppField
      FieldAlias = 'FAT_DTEMIS'
      FieldName = 'FAT_DTEMIS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBNotasppField4: TppField
      FieldAlias = 'FAT_VL_LIQ'
      FieldName = 'FAT_VL_LIQ'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBNotasppField5: TppField
      FieldAlias = 'FAT_VLFAT'
      FieldName = 'FAT_VLFAT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBNotasppField6: TppField
      FieldAlias = 'FAT_QTDITEM'
      FieldName = 'FAT_QTDITEM'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBNotasppField7: TppField
      FieldAlias = 'FAT_BASEICMS'
      FieldName = 'FAT_BASEICMS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBNotasppField8: TppField
      FieldAlias = 'FAT_ALIQUOTA'
      FieldName = 'FAT_ALIQUOTA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBNotasppField9: TppField
      FieldAlias = 'FAT_VL_IPI'
      FieldName = 'FAT_VL_IPI'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBNotasppField10: TppField
      FieldAlias = 'FAT_BASESUB'
      FieldName = 'FAT_BASESUB'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBNotasppField11: TppField
      FieldAlias = 'FAT_ICMSRET'
      FieldName = 'FAT_ICMSRET'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBNotasppField12: TppField
      FieldAlias = 'CLI_CODIGO'
      FieldName = 'CLI_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDBNotasppField13: TppField
      FieldAlias = 'CLI_RAZAO'
      FieldName = 'CLI_RAZAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDBNotasppField14: TppField
      FieldAlias = 'CLI_UF'
      FieldName = 'CLI_UF'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppDBNotasppField15: TppField
      FieldAlias = 'REP_CODIGO'
      FieldName = 'REP_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppDBNotasppField16: TppField
      FieldAlias = 'REP_NOME'
      FieldName = 'REP_NOME'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppDBNotasppField17: TppField
      FieldAlias = 'EMP_CODIGO'
      FieldName = 'EMP_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppDBNotasppField18: TppField
      FieldAlias = 'PCX_CODIGO'
      FieldName = 'PCX_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppDBNotasppField19: TppField
      FieldAlias = 'PCL_CODIGO'
      FieldName = 'PCL_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object ppDBNotasppField20: TppField
      FieldAlias = 'PCL_NOME'
      FieldName = 'PCL_NOME'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object ppDBNotasppField21: TppField
      FieldAlias = 'FPC_VLPARC'
      FieldName = 'FPC_VLPARC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object ppDBNotasppField22: TppField
      FieldAlias = 'ban_codigo'
      FieldName = 'ban_codigo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object ppDBNotasppField23: TppField
      FieldAlias = 'ban_apelido'
      FieldName = 'ban_apelido'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
  end
  object DsNotas: TDataSource
    DataSet = SqlCdsNotas
    Left = 698
    Top = 248
  end
  object SqlCdsNotas: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT'#13#10'F1.FAT_CODIGO,'#13#10'F1.FAT_DTEMIS,'#13#10'F1.FAT_VL_LIQ,'#13#10'F1.FAT_V' +
      'LFAT,'#13#10'F1.FAT_QTDITEM,'#13#10'F1.FAT_BASEICMS,'#13#10'F1.FAT_BASESUB,'#13#10'F1.FA' +
      'T_ALIQUOTA,'#13#10'F1.FAT_ICMSRET,'#13#10'F1.FAT_VL_IPI,'#13#10'F1.PCX_CODIGO,'#13#10'F1' +
      '.CLI_CODIGO,'#13#10'C1.CLI_RAZAO,'#13#10'C1.CLI_UF,'#13#10'F1.REP_CODIGO,'#13#10'R1.REP_' +
      'NOME,'#13#10'F1.FAT_CANCELADA,'#13#10'F1.PCL_CODIGO,'#13#10'P3.pcl_nome,'#13#10'F1.EMP_C' +
      'ODIGO'#13#10'FROM FAT0000 F1'#13#10'JOIN CLI0000 C1 ON F1.cli_codigo = C1.cl' +
      'i_codigo'#13#10'JOIN REP0000 R1 ON F1.rep_codigo = R1.rep_codigo'#13#10'JOIN' +
      ' PCL0000 P3 ON F1.PCL_CODIGO = P3.PCL_CODIGO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    OnCalcFields = SqlCdsNotasCalcFields
    CommandText = 
      'SELECT'#13#10'F1.FAT_CODIGO,'#13#10'F1.FAT_DTEMIS,'#13#10'F1.FAT_VL_LIQ,'#13#10'F1.FAT_V' +
      'LFAT,'#13#10'F1.FAT_QTDITEM,'#13#10'F1.FAT_BASEICMS,'#13#10'F1.FAT_BASESUB,'#13#10'F1.FA' +
      'T_ALIQUOTA,'#13#10'F1.FAT_ICMSRET,'#13#10'F1.FAT_VL_IPI,'#13#10'F1.PCX_CODIGO,'#13#10'F1' +
      '.CLI_CODIGO,'#13#10'C1.CLI_RAZAO,'#13#10'C1.CLI_UF,'#13#10'F1.REP_CODIGO,'#13#10'R1.REP_' +
      'NOME,'#13#10'F1.FAT_CANCELADA,'#13#10'F1.PCL_CODIGO,'#13#10'P3.pcl_nome,'#13#10'F1.EMP_C' +
      'ODIGO'#13#10'FROM FAT0000 F1'#13#10'JOIN CLI0000 C1 ON F1.cli_codigo = C1.cl' +
      'i_codigo'#13#10'JOIN REP0000 R1 ON F1.rep_codigo = R1.rep_codigo'#13#10'JOIN' +
      ' PCL0000 P3 ON F1.PCL_CODIGO = P3.PCL_CODIGO'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 636
    Top = 232
    object SqlCdsNotasFAT_ICMS_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'FAT_ICMS_CC'
      Calculated = True
    end
    object SqlCdsNotasFAT_CODIGO: TStringField
      FieldName = 'FAT_CODIGO'
      Required = True
      Size = 6
    end
    object SqlCdsNotasFAT_DTEMIS: TSQLTimeStampField
      FieldName = 'FAT_DTEMIS'
    end
    object SqlCdsNotasFAT_VL_LIQ: TFMTBCDField
      FieldName = 'FAT_VL_LIQ'
      Precision = 15
      Size = 2
    end
    object SqlCdsNotasFAT_VLFAT: TFMTBCDField
      FieldName = 'FAT_VLFAT'
      Precision = 15
      Size = 2
    end
    object SqlCdsNotasFAT_QTDITEM: TFMTBCDField
      FieldName = 'FAT_QTDITEM'
      Precision = 15
      Size = 2
    end
    object SqlCdsNotasFAT_BASEICMS: TFMTBCDField
      FieldName = 'FAT_BASEICMS'
      Precision = 15
      Size = 2
    end
    object SqlCdsNotasFAT_ALIQUOTA: TFMTBCDField
      FieldName = 'FAT_ALIQUOTA'
      Precision = 15
      Size = 2
    end
    object SqlCdsNotasFAT_VL_IPI: TFMTBCDField
      FieldName = 'FAT_VL_IPI'
      Precision = 15
      Size = 2
    end
    object SqlCdsNotasFAT_BASESUB: TFMTBCDField
      FieldName = 'FAT_BASESUB'
      Precision = 15
      Size = 2
    end
    object SqlCdsNotasFAT_ICMSRET: TFMTBCDField
      FieldName = 'FAT_ICMSRET'
      Precision = 15
      Size = 2
    end
    object SqlCdsNotasCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Required = True
      Size = 5
    end
    object SqlCdsNotasCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Size = 45
    end
    object SqlCdsNotasCLI_UF: TStringField
      FieldName = 'CLI_UF'
      Size = 2
    end
    object SqlCdsNotasREP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      Required = True
      Size = 3
    end
    object SqlCdsNotasREP_NOME: TStringField
      FieldName = 'REP_NOME'
      Size = 35
    end
    object SqlCdsNotasEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlCdsNotasPCX_CODIGO: TStringField
      FieldName = 'PCX_CODIGO'
      Size = 3
    end
    object SqlCdsNotasPCL_CODIGO: TStringField
      FieldName = 'PCL_CODIGO'
      Size = 3
    end
    object SqlCdsNotasPCL_NOME: TStringField
      FieldName = 'PCL_NOME'
      Size = 35
    end
    object SqlCdsNotasFPC_VLPARC: TFMTBCDField
      FieldName = 'FPC_VLPARC'
      Precision = 15
      Size = 2
    end
    object SqlCdsNotasban_codigo: TStringField
      FieldName = 'ban_codigo'
      Size = 4
    end
    object SqlCdsNotasban_apelido: TStringField
      FieldName = 'ban_apelido'
      Size = 25
    end
  end
  object ppRPRelConReceber04: TppReport
    AutoStop = False
    DataPipeline = ppDBNotas
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
    Template.FileName = 
      'C:\JobProgram\Developer\Adjutor\FontesRelatorios\RELCONRECEBER04' +
      '.rtm'
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    BeforePrint = ppRPRelConReceber00BeforePrint
    CachePages = True
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
    Left = 856
    Top = 247
    Version = '16.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBNotas'
    object pp04HeaderBand2: TppHeaderBand
      BeforePrint = pp04HeaderBand2BeforePrint
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 23019
      mmPrintPosition = 0
      object ppLine16: TppLine
        DesignLayer = ppDesignLayer4
        UserName = 'Line1'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 196000
        BandType = 0
        LayerName = Foreground3
      end
      object LBL_04_EMPRESA: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'LBL_00_EMPRESA'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'LABEL_EMPRESA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3969
        mmLeft = 265
        mmTop = 794
        mmWidth = 159809
        BandType = 0
        LayerName = Foreground3
      end
      object LBL_04_LTITULO1: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'LBL_00_LTITULO1'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'TITULO1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3260
        mmLeft = 0
        mmTop = 6615
        mmWidth = 160073
        BandType = 0
        LayerName = Foreground3
      end
      object LBL_04_LTITULO2: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'LBL_00_LTITULO2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'TITULO2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3260
        mmLeft = 0
        mmTop = 9790
        mmWidth = 11642
        BandType = 0
        LayerName = Foreground3
      end
      object ppLine17: TppLine
        DesignLayer = ppDesignLayer4
        UserName = 'Line2'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 14288
        mmWidth = 196000
        BandType = 0
        LayerName = Foreground3
      end
      object ppSystemVariable9: TppSystemVariable
        DesignLayer = ppDesignLayer4
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        VarType = vtDateTime
        DisplayFormat = 'dd/mm/yy h:nn'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 173302
        mmTop = 794
        mmWidth = 22755
        BandType = 0
        LayerName = Foreground3
      end
      object ppSystemVariable10: TppSystemVariable
        DesignLayer = ppDesignLayer4
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        OnGetText = TrocandoPaginasGetText
        Border.Weight = 1.000000000000000000
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4163
        mmLeft = 174114
        mmTop = 7938
        mmWidth = 21943
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel50: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'N.F.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3246
        mmLeft = 21431
        mmTop = 19050
        mmWidth = 5292
        BandType = 0
        LayerName = Foreground3
      end
      object ppLine26: TppLine
        DesignLayer = ppDesignLayer4
        UserName = 'Line3'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 22754
        mmWidth = 196000
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel55: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label13'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'CLIENTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3246
        mmLeft = 33338
        mmTop = 19050
        mmWidth = 11853
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel51: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label51'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'UF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3246
        mmLeft = 98690
        mmTop = 19050
        mmWidth = 3739
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel52: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label52'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'REPRESENTANTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3246
        mmLeft = 104511
        mmTop = 19050
        mmWidth = 24906
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel53: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label53'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'TOTAL LIQUIDO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7408
        mmLeft = 134144
        mmTop = 15081
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel54: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label54'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'TOTAL FATURADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7673
        mmLeft = 158221
        mmTop = 14817
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel56: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label56'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'QTDE DE ITENS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7408
        mmLeft = 182104
        mmTop = 14817
        mmWidth = 12559
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel64: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label64'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'EMISS'#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3246
        mmLeft = 265
        mmTop = 19050
        mmWidth = 12841
        BandType = 0
        LayerName = Foreground3
      end
    end
    object pp04DetailBand2: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 3175
      mmPrintPosition = 0
      object ppDBText41: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FAT_CODIGO'
        DataPipeline = ppDBNotas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBNotas'
        mmHeight = 3246
        mmLeft = 21431
        mmTop = 0
        mmWidth = 10054
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText44: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText6'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_RAZAO'
        DataPipeline = ppDBNotas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBNotas'
        mmHeight = 3246
        mmLeft = 33338
        mmTop = 0
        mmWidth = 61913
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText43: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText43'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_UF'
        DataPipeline = ppDBNotas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBNotas'
        mmHeight = 3246
        mmLeft = 98690
        mmTop = 0
        mmWidth = 4763
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText45: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText45'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'REP_NOME'
        DataPipeline = ppDBNotas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBNotas'
        mmHeight = 3246
        mmLeft = 104511
        mmTop = 0
        mmWidth = 25929
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText42: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText42'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FAT_VL_LIQ'
        DataPipeline = ppDBNotas
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBNotas'
        mmHeight = 3246
        mmLeft = 134144
        mmTop = 0
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText46: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText46'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FAT_VLFAT'
        DataPipeline = ppDBNotas
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBNotas'
        mmHeight = 3246
        mmLeft = 158221
        mmTop = 0
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText47: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText47'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FAT_QTDITEM'
        DataPipeline = ppDBNotas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBNotas'
        mmHeight = 3246
        mmLeft = 183092
        mmTop = 0
        mmWidth = 12965
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText66: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText66'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FAT_DTEMIS'
        DataPipeline = ppDBNotas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBNotas'
        mmHeight = 3246
        mmLeft = 0
        mmTop = 0
        mmWidth = 16669
        BandType = 4
        LayerName = Foreground3
      end
    end
    object pp04SummaryBand3: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 3440
      mmPrintPosition = 0
      object ppLabel57: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label57'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'TOTAL GERAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 3316
        mmLeft = 0
        mmTop = 0
        mmWidth = 19685
        BandType = 7
        LayerName = Foreground3
      end
      object ppLabel58: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label401'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'ICMS:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3246
        mmLeft = 27517
        mmTop = 0
        mmWidth = 7761
        BandType = 7
        LayerName = Foreground3
      end
      object ppDBCalc23: TppDBCalc
        DesignLayer = ppDesignLayer4
        UserName = 'DBCalc201'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FAT_ICMS_CC'
        DataPipeline = ppDBNotas
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBNotas'
        mmHeight = 3316
        mmLeft = 37042
        mmTop = 0
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground3
      end
      object ppLabel61: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label61'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'ICMS. Sub.Trib.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3246
        mmLeft = 58473
        mmTop = 0
        mmWidth = 20532
        BandType = 7
        LayerName = Foreground3
      end
      object ppDBCalc24: TppDBCalc
        DesignLayer = ppDesignLayer4
        UserName = 'DBCalc24'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FAT_ICMSRET'
        DataPipeline = ppDBNotas
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBNotas'
        mmHeight = 3316
        mmLeft = 79375
        mmTop = 0
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground3
      end
      object ppLabel62: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label601'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'IPI:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3246
        mmLeft = 103188
        mmTop = 0
        mmWidth = 4092
        BandType = 7
        LayerName = Foreground3
      end
      object ppDBCalc25: TppDBCalc
        DesignLayer = ppDesignLayer4
        UserName = 'DBCalc25'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FAT_VL_IPI'
        DataPipeline = ppDBNotas
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBNotas'
        mmHeight = 3316
        mmLeft = 108744
        mmTop = 0
        mmWidth = 16933
        BandType = 7
        LayerName = Foreground3
      end
      object ppDBCalc26: TppDBCalc
        DesignLayer = ppDesignLayer4
        UserName = 'DBCalc26'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FAT_VL_LIQ'
        DataPipeline = ppDBNotas
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBNotas'
        mmHeight = 3316
        mmLeft = 134144
        mmTop = 0
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground3
      end
      object ppDBCalc27: TppDBCalc
        DesignLayer = ppDesignLayer4
        UserName = 'DBCalc27'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FAT_VLFAT'
        DataPipeline = ppDBNotas
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBNotas'
        mmHeight = 3316
        mmLeft = 158221
        mmTop = 0
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground3
      end
      object ppDBCalc28: TppDBCalc
        DesignLayer = ppDesignLayer4
        UserName = 'DBCalc28'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FAT_QTDITEM'
        DataPipeline = ppDBNotas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBNotas'
        mmHeight = 3316
        mmLeft = 183092
        mmTop = 0
        mmWidth = 12965
        BandType = 7
        LayerName = Foreground3
      end
    end
    object ppGroup4: TppGroup
      BreakName = 'CLI_UF'
      DataPipeline = ppDBNotas
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group4'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBNotas'
      NewFile = False
      object ppGroupHeaderBand4: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 3175
        mmPrintPosition = 0
        object ppLabel20: TppLabel
          DesignLayer = ppDesignLayer4
          UserName = 'Label20'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'UF.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          FormField = False
          Transparent = True
          mmHeight = 3316
          mmLeft = 0
          mmTop = 0
          mmWidth = 5503
          BandType = 3
          GroupNo = 0
          LayerName = Foreground3
        end
        object ppDBText50: TppDBText
          DesignLayer = ppDesignLayer4
          UserName = 'DBText50'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'CLI_UF'
          DataPipeline = ppDBNotas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDBNotas'
          mmHeight = 3316
          mmLeft = 5556
          mmTop = 0
          mmWidth = 11377
          BandType = 3
          GroupNo = 0
          LayerName = Foreground3
        end
      end
      object ppGroupFooterBand4: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 4498
        mmPrintPosition = 0
        object ppLabel39: TppLabel
          DesignLayer = ppDesignLayer4
          UserName = 'Label39'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'TOTAL.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          FormField = False
          Transparent = True
          mmHeight = 3316
          mmLeft = 0
          mmTop = 529
          mmWidth = 10936
          BandType = 5
          GroupNo = 0
          LayerName = Foreground3
        end
        object ppDBText51: TppDBText
          DesignLayer = ppDesignLayer4
          UserName = 'DBText51'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'CLI_UF'
          DataPipeline = ppDBNotas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDBNotas'
          mmHeight = 3316
          mmLeft = 12700
          mmTop = 529
          mmWidth = 5292
          BandType = 5
          GroupNo = 0
          LayerName = Foreground3
        end
        object ppLabel40: TppLabel
          DesignLayer = ppDesignLayer4
          UserName = 'Label40'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'ICMS:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormField = False
          Transparent = True
          mmHeight = 3246
          mmLeft = 27517
          mmTop = 529
          mmWidth = 7761
          BandType = 5
          GroupNo = 0
          LayerName = Foreground3
        end
        object ppLabel59: TppLabel
          DesignLayer = ppDesignLayer4
          UserName = 'Label59'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'ICMS. Sub.Trib.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormField = False
          Transparent = True
          mmHeight = 3246
          mmLeft = 58473
          mmTop = 529
          mmWidth = 20532
          BandType = 5
          GroupNo = 0
          LayerName = Foreground3
        end
        object ppLabel60: TppLabel
          DesignLayer = ppDesignLayer4
          UserName = 'Label60'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'IPI:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormField = False
          Transparent = True
          mmHeight = 3246
          mmLeft = 103188
          mmTop = 529
          mmWidth = 4092
          BandType = 5
          GroupNo = 0
          LayerName = Foreground3
        end
        object ppDBCalc17: TppDBCalc
          DesignLayer = ppDesignLayer4
          UserName = 'DBCalc17'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'FAT_VL_LIQ'
          DataPipeline = ppDBNotas
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup4
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBNotas'
          mmHeight = 3316
          mmLeft = 134144
          mmTop = 529
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
          LayerName = Foreground3
        end
        object ppDBCalc18: TppDBCalc
          DesignLayer = ppDesignLayer4
          UserName = 'DBCalc18'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'FAT_VLFAT'
          DataPipeline = ppDBNotas
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup4
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBNotas'
          mmHeight = 3316
          mmLeft = 158221
          mmTop = 529
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
          LayerName = Foreground3
        end
        object ppDBCalc19: TppDBCalc
          DesignLayer = ppDesignLayer4
          UserName = 'DBCalc19'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'FAT_QTDITEM'
          DataPipeline = ppDBNotas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup4
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBNotas'
          mmHeight = 3316
          mmLeft = 183092
          mmTop = 529
          mmWidth = 12965
          BandType = 5
          GroupNo = 0
          LayerName = Foreground3
        end
        object ppDBCalc20: TppDBCalc
          DesignLayer = ppDesignLayer4
          UserName = 'DBCalc20'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'FAT_ICMS_CC'
          DataPipeline = ppDBNotas
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup4
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBNotas'
          mmHeight = 3316
          mmLeft = 37042
          mmTop = 529
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
          LayerName = Foreground3
        end
        object ppDBCalc21: TppDBCalc
          DesignLayer = ppDesignLayer4
          UserName = 'DBCalc21'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'FAT_ICMSRET'
          DataPipeline = ppDBNotas
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup4
          Transparent = True
          DataPipelineName = 'ppDBNotas'
          mmHeight = 3316
          mmLeft = 79375
          mmTop = 529
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
          LayerName = Foreground3
        end
        object ppDBCalc22: TppDBCalc
          DesignLayer = ppDesignLayer4
          UserName = 'DBCalc22'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'FAT_VL_IPI'
          DataPipeline = ppDBNotas
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup4
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBNotas'
          mmHeight = 3316
          mmLeft = 108744
          mmTop = 529
          mmWidth = 16933
          BandType = 5
          GroupNo = 0
          LayerName = Foreground3
        end
        object ppLine33: TppLine
          DesignLayer = ppDesignLayer4
          UserName = 'Line33'
          Border.Weight = 1.000000000000000000
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 0
          mmWidth = 196000
          BandType = 5
          GroupNo = 0
          LayerName = Foreground3
        end
        object ppLine46: TppLine
          DesignLayer = ppDesignLayer4
          UserName = 'Line46'
          Border.Weight = 1.000000000000000000
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 4233
          mmWidth = 196000
          BandType = 5
          GroupNo = 0
          LayerName = Foreground3
        end
      end
    end
    object ppDesignLayers4: TppDesignLayers
      object ppDesignLayer4: TppDesignLayer
        UserName = 'Foreground3'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList7: TppParameterList
    end
  end
  object ppRPRelConReceber06: TppReport
    AutoStop = False
    DataPipeline = ppDBRel06
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
    Template.FileName = 
      'C:\JobProgram\Developer\Adjutor\FontesRelatorios\RELCONRECEBER06' +
      '.rtm'
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    BeforePrint = ppRPRelConReceber00BeforePrint
    CachePages = True
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
    Left = 856
    Top = 360
    Version = '16.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBRel06'
    object pp06HeaderBand2: TppHeaderBand
      BeforePrint = pp06HeaderBand2BeforePrint
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 19050
      mmPrintPosition = 0
      object ppLine27: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line1'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 196000
        BandType = 0
        LayerName = Foreground4
      end
      object LBL_06_EMPRESA: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'LBL_00_EMPRESA'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'LABEL_EMPRESA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3969
        mmLeft = 0
        mmTop = 794
        mmWidth = 160073
        BandType = 0
        LayerName = Foreground4
      end
      object LBL_06_LTITULO1: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'LBL_00_LTITULO1'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'TITULO1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3260
        mmLeft = 0
        mmTop = 6350
        mmWidth = 160073
        BandType = 0
        LayerName = Foreground4
      end
      object LBL_06_LTITULO2: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'LBL_00_LTITULO2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'TITULO2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3260
        mmLeft = 0
        mmTop = 9790
        mmWidth = 11642
        BandType = 0
        LayerName = Foreground4
      end
      object ppLine28: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line2'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 14552
        mmWidth = 196000
        BandType = 0
        LayerName = Foreground4
      end
      object ppSystemVariable11: TppSystemVariable
        DesignLayer = ppDesignLayer5
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        VarType = vtDateTime
        DisplayFormat = 'dd/mm/yy h:nn'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 173302
        mmTop = 794
        mmWidth = 22755
        BandType = 0
        LayerName = Foreground4
      end
      object ppSystemVariable12: TppSystemVariable
        DesignLayer = ppDesignLayer5
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        OnGetText = TrocandoPaginasGetText
        Border.Weight = 1.000000000000000000
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4163
        mmLeft = 174114
        mmTop = 8202
        mmWidth = 21943
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel66: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'FATURA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3246
        mmLeft = 0
        mmTop = 15081
        mmWidth = 11289
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel67: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'VENCTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3246
        mmLeft = 15875
        mmTop = 15081
        mmWidth = 11783
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel68: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label3'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'VL. TITULO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        mmHeight = 3246
        mmLeft = 142012
        mmTop = 15081
        mmWidth = 14887
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel69: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label4'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'VL. RECEBIDO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        mmHeight = 3246
        mmLeft = 162013
        mmTop = 15081
        mmWidth = 19756
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel70: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label5'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'EMISSAO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 3246
        mmLeft = 110789
        mmTop = 15346
        mmWidth = 12841
        BandType = 0
        LayerName = Foreground4
      end
      object ppLine29: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line3'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 18785
        mmWidth = 196000
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel73: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label8'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'STATUS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3246
        mmLeft = 184132
        mmTop = 15081
        mmWidth = 11148
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel74: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label13'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'CLIENTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3246
        mmLeft = 32015
        mmTop = 15081
        mmWidth = 11853
        BandType = 0
        LayerName = Foreground4
      end
    end
    object pp06DetailBand2: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 3175
      mmPrintPosition = 0
      object ppDBText48: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FAT_CODIGO'
        DataPipeline = ppDBRel06
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRel06'
        mmHeight = 3246
        mmLeft = 0
        mmTop = 0
        mmWidth = 10054
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText49: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText4'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FPC_NUMER'
        DataPipeline = ppDBRel06
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRel06'
        mmHeight = 3246
        mmLeft = 10319
        mmTop = 0
        mmWidth = 4233
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText53: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText6'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_RAZAO'
        DataPipeline = ppDBRel06
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRel06'
        mmHeight = 3246
        mmLeft = 32015
        mmTop = 0
        mmWidth = 69586
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText58: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText12'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FPC_STATUS'
        DataPipeline = ppDBRel06
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRel06'
        mmHeight = 3246
        mmLeft = 183621
        mmTop = 0
        mmWidth = 12171
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText60: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText3'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FPC_VENCTO'
        DataPipeline = ppDBRel06
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRel06'
        mmHeight = 3246
        mmLeft = 15875
        mmTop = 0
        mmWidth = 15081
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText54: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText8'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FPC_VLPAGO'
        DataPipeline = ppDBRel06
        DisplayFormat = '#0.,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel06'
        mmHeight = 3246
        mmLeft = 161661
        mmTop = 0
        mmWidth = 20108
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText61: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText7'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FPC_VLPARC'
        DataPipeline = ppDBRel06
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel06'
        mmHeight = 3246
        mmLeft = 135732
        mmTop = 0
        mmWidth = 21167
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText52: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText5'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FPC_DTEMIS'
        DataPipeline = ppDBRel06
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRel06'
        mmHeight = 3246
        mmLeft = 110331
        mmTop = 0
        mmWidth = 14817
        BandType = 4
        LayerName = Foreground4
      end
    end
    object pp06SummaryBand3: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 5027
      mmPrintPosition = 0
      object ppLabel75: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label14'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'TOTAL GERAL.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 3316
        mmLeft = 32015
        mmTop = 794
        mmWidth = 21449
        BandType = 7
        LayerName = Foreground4
      end
      object ppDBCalc29: TppDBCalc
        DesignLayer = ppDesignLayer5
        UserName = 'DBCalc3'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FPC_VLPAGO'
        DataPipeline = ppDBRel06
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel06'
        mmHeight = 3316
        mmLeft = 161661
        mmTop = 794
        mmWidth = 19844
        BandType = 7
        LayerName = Foreground4
      end
      object ppDBCalc30: TppDBCalc
        DesignLayer = ppDesignLayer5
        UserName = 'DBCalc6'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FPC_VLPARC'
        DataPipeline = ppDBRel06
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel06'
        mmHeight = 3316
        mmLeft = 135732
        mmTop = 794
        mmWidth = 21696
        BandType = 7
        LayerName = Foreground4
      end
      object ppLine30: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line6'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 31750
        mmTop = 265
        mmWidth = 150813
        BandType = 7
        LayerName = Foreground4
      end
      object ppLine31: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line7'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 31750
        mmTop = 4498
        mmWidth = 150813
        BandType = 7
        LayerName = Foreground4
      end
    end
    object ppGroup5: TppGroup
      BreakName = 'FPC_MES_CC'
      DataPipeline = ppDBRel06
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBRel06'
      NewFile = False
      object pp06GroupHeaderBand5: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        PrintHeight = phDynamic
        mmBottomOffset = 0
        mmHeight = 3969
        mmPrintPosition = 0
        object ppDBText55: TppDBText
          DesignLayer = ppDesignLayer5
          UserName = 'DBText55'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'FPC_MES_CC'
          DataPipeline = ppDBRel06
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDBRel06'
          mmHeight = 3316
          mmLeft = 0
          mmTop = 265
          mmWidth = 34396
          BandType = 3
          GroupNo = 0
          LayerName = Foreground4
        end
      end
      object pp06GroupFooterBand5: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 4763
        mmPrintPosition = 0
        object ppLabel78: TppLabel
          DesignLayer = ppDesignLayer5
          UserName = 'Label11'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'TOTAL DO M'#234'S.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          FormField = False
          Transparent = True
          mmHeight = 3316
          mmLeft = 32015
          mmTop = 1058
          mmWidth = 22507
          BandType = 5
          GroupNo = 0
          LayerName = Foreground4
        end
        object ppDBCalc32: TppDBCalc
          DesignLayer = ppDesignLayer5
          UserName = 'DBCalc2'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'FPC_VLPAGO'
          DataPipeline = ppDBRel06
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup5
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBRel06'
          mmHeight = 3316
          mmLeft = 161661
          mmTop = 794
          mmWidth = 19579
          BandType = 5
          GroupNo = 0
          LayerName = Foreground4
        end
        object ppLine32: TppLine
          DesignLayer = ppDesignLayer5
          UserName = 'Line5'
          Border.Weight = 1.000000000000000000
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 31750
          mmTop = 265
          mmWidth = 150813
          BandType = 5
          GroupNo = 0
          LayerName = Foreground4
        end
        object ppDBCalc33: TppDBCalc
          DesignLayer = ppDesignLayer5
          UserName = 'DBCalc33'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'FPC_VLPARC'
          DataPipeline = ppDBRel06
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup5
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBRel06'
          mmHeight = 3316
          mmLeft = 135732
          mmTop = 794
          mmWidth = 21167
          BandType = 5
          GroupNo = 0
          LayerName = Foreground4
        end
      end
    end
    object raCodeModule5: TraCodeModule
      ProgramStream = {
        01060F5472614576656E7448616E646C65720B50726F6772616D4E616D650610
        444254657874344F6E476574546578740B50726F6772616D54797065070B7474
        50726F63656475726506536F7572636506B070726F6365647572652044425465
        7874344F6E476574546578742876617220546578743A20537472696E67293B0D
        0A626567696E0D0A202020206966204442526563656265725B274650435F4E55
        4D4552275D3C3E2727207468656E0D0A2020202020202054657874203A3D2027
        2F272B204442526563656265725B274650435F4E554D4552275D0D0A20202020
        656C73650D0A2020202020202054657874203A3D2027273B0D0A0D0A656E643B
        0D0A0D436F6D706F6E656E744E616D65060744425465787434094576656E744E
        616D6506094F6E47657454657874074576656E7449440235084361726574506F
        730102000200000001060F5472614576656E7448616E646C65720B50726F6772
        616D4E616D65061144425465787435354F6E476574546578740B50726F677261
        6D54797065070B747450726F63656475726506536F757263650CB10100007072
        6F6365647572652044425465787435354F6E4765745465787428766172205465
        78743A20537472696E67293B0D0A5661720D0A2020774650435F414E4F2C7746
        50435F4449413A537472696E673B0D0A2020774D65733A496E74656765723B0D
        0A626567696E0D0A20202020774650435F414E4F3A3D436F707928444252656C
        30365B274650435F56454E43544F275D2C372C34293B0D0A2020202077465043
        5F4449413A3D444252656C30365B274650435F4D45535F4343275D3B0D0A2020
        2020774D6573202020203A3D537472546F496E7428444252656C30365B274650
        435F4D45535F4343275D293B0D0A20202020546578743A3D205472696D526967
        687428436F707928274A414E4549524F20202046455645524549524F204D4152
        434F2020202020414252494C20202020204D41494F2020202020204A554E484F
        20202020204A554C484F202020202041474F53544F20202020534554454D4252
        4F20204F55545542524F2020204E4F56454D42524F202044455A454D42524F20
        272C2828774D65732D31292A3130292B312C313029292B2720646520272B7746
        50435F414E4F3B0D0A656E643B0D0A0D436F6D706F6E656E744E616D65060844
        42546578743535094576656E744E616D6506094F6E4765745465787407457665
        6E7449440235084361726574506F730102000200000000}
    end
    object ppDesignLayers5: TppDesignLayers
      object ppDesignLayer5: TppDesignLayer
        UserName = 'Foreground4'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList8: TppParameterList
    end
  end
  object SqlCdsRel06: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT'#13#10'F1.FAT_CODIGO,'#13#10'F1.REP_CODIGO,'#13#10'F1.FPC_DTEMIS,'#13#10'F1.FPC_N' +
      'UMER,'#13#10'F1.CCT_CODIGO,'#13#10'F1.PCX_CODIGO,'#13#10'F1.BAN_CODIGO,'#13#10'F1.FPC_CO' +
      'BNUM,'#13#10'F1.FPC_COBTIPO,'#13#10'F1.FPC_STATUS,'#13#10'F1.FPC_DESCTO,'#13#10'F1.FPC_D' +
      'TDESC,'#13#10'F1.FPC_VENCTO,'#13#10'F1.FPC_PAGTO,'#13#10'F1.FPC_VLPARC,'#13#10'F1.FPC_VL' +
      'PAGO,'#13#10'F1.FPC_OBS,'#13#10'F1.FPC_SITPAG,'#13#10'F1.FPC_IMPDUP,'#13#10'F1.CLI_CODIG' +
      'O,'#13#10'C1.CLI_RAZAO'#13#10'FROM fat_pc01 F1'#13#10'JOIN CLI0000  C1 ON F1.cli_c' +
      'odigo = C1.cli_codigo'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    OnCalcFields = SqlCdsRel06CalcFields
    CommandText = 
      'SELECT'#13#10'F1.FAT_CODIGO,'#13#10'F1.REP_CODIGO,'#13#10'F1.FPC_DTEMIS,'#13#10'F1.FPC_N' +
      'UMER,'#13#10'F1.CCT_CODIGO,'#13#10'F1.PCX_CODIGO,'#13#10'F1.BAN_CODIGO,'#13#10'F1.FPC_CO' +
      'BNUM,'#13#10'F1.FPC_COBTIPO,'#13#10'F1.FPC_STATUS,'#13#10'F1.FPC_DESCTO,'#13#10'F1.FPC_D' +
      'TDESC,'#13#10'F1.FPC_VENCTO,'#13#10'F1.FPC_PAGTO,'#13#10'F1.FPC_VLPARC,'#13#10'F1.FPC_VL' +
      'PAGO,'#13#10'F1.FPC_OBS,'#13#10'F1.FPC_SITPAG,'#13#10'F1.FPC_IMPDUP,'#13#10'F1.CLI_CODIG' +
      'O,'#13#10'C1.CLI_RAZAO'#13#10'FROM fat_pc01 F1'#13#10'JOIN CLI0000  C1 ON F1.cli_c' +
      'odigo = C1.cli_codigo'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 620
    Top = 288
    object SqlCdsRel06FAT_CODIGO: TStringField
      FieldName = 'FAT_CODIGO'
      Required = True
      Size = 6
    end
    object SqlCdsRel06REP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      Size = 3
    end
    object SqlCdsRel06FPC_DTEMIS: TSQLTimeStampField
      FieldName = 'FPC_DTEMIS'
    end
    object SqlCdsRel06FPC_NUMER: TStringField
      FieldName = 'FPC_NUMER'
      Size = 2
    end
    object SqlCdsRel06CCT_CODIGO: TStringField
      FieldName = 'CCT_CODIGO'
      Size = 3
    end
    object SqlCdsRel06PCX_CODIGO: TStringField
      FieldName = 'PCX_CODIGO'
      Size = 3
    end
    object SqlCdsRel06BAN_CODIGO: TStringField
      FieldName = 'BAN_CODIGO'
      Size = 4
    end
    object SqlCdsRel06FPC_COBNUM: TStringField
      FieldName = 'FPC_COBNUM'
      Size = 13
    end
    object SqlCdsRel06FPC_COBTIPO: TStringField
      FieldName = 'FPC_COBTIPO'
      Size = 2
    end
    object SqlCdsRel06FPC_STATUS: TStringField
      FieldName = 'FPC_STATUS'
      Size = 12
    end
    object SqlCdsRel06FPC_DESCTO: TFMTBCDField
      FieldName = 'FPC_DESCTO'
      Precision = 15
      Size = 2
    end
    object SqlCdsRel06FPC_DTDESC: TSQLTimeStampField
      FieldName = 'FPC_DTDESC'
    end
    object SqlCdsRel06FPC_VENCTO: TSQLTimeStampField
      FieldName = 'FPC_VENCTO'
    end
    object SqlCdsRel06FPC_PAGTO: TSQLTimeStampField
      FieldName = 'FPC_PAGTO'
    end
    object SqlCdsRel06FPC_VLPARC: TFMTBCDField
      FieldName = 'FPC_VLPARC'
      Precision = 15
      Size = 2
    end
    object SqlCdsRel06FPC_VLPAGO: TFMTBCDField
      FieldName = 'FPC_VLPAGO'
      Precision = 15
      Size = 2
    end
    object SqlCdsRel06FPC_OBS: TStringField
      FieldName = 'FPC_OBS'
      Size = 50
    end
    object SqlCdsRel06FPC_SITPAG: TStringField
      FieldName = 'FPC_SITPAG'
      Size = 1
    end
    object SqlCdsRel06CLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Required = True
      Size = 5
    end
    object SqlCdsRel06FPC_IMPDUP: TStringField
      FieldName = 'FPC_IMPDUP'
      Size = 1
    end
    object SqlCdsRel06CLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Size = 45
    end
    object SqlCdsRel06FPC_MES_CC: TStringField
      FieldKind = fkCalculated
      FieldName = 'FPC_MES_CC'
      Size = 2
      Calculated = True
    end
  end
  object DsRel06: TDataSource
    DataSet = SqlCdsRel06
    Left = 698
    Top = 360
  end
  object ppDBRel06: TppDBPipeline
    DataSource = DsRel06
    UserName = 'DBRel06'
    Left = 760
    Top = 360
  end
  object SqlCdsRel07: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT'#13#10'F1.FAT_CODIGO,'#13#10'F1.OPV_CODIGO,'#13#10'F1.CLI_CODIGO,'#13#10'C1.CLI_R' +
      'AZAO,'#13#10'F1.FAT_DTEMIS,'#13#10'F1.FAT_VLFAT,'#13#10'F1.FAT_VL_RET,'#13#10'F1.FAT_IRP' +
      'J_RET,'#13#10'F1.FAT_PIS_RET,'#13#10'F1.FAT_COFINS_RET,'#13#10'F1.FAT_INSS_RET,'#13#10'F' +
      '1.FAT_CONTSOCIAL_RET,'#13#10'F1.FAT_BASE_ISS,'#13#10'F1.FAT_ISS_RET,'#13#10'F1.FAT' +
      '_BASE_INSS'#13#10'FROM FAT0000 F1'#13#10'JOIN CLI0000 C1 ON F1.CLI_CODIGO = ' +
      'C1.CLI_CODIGO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    OnCalcFields = SqlCdsRel07CalcFields
    CommandText = 
      'SELECT'#13#10'F1.FAT_CODIGO,'#13#10'F1.OPV_CODIGO,'#13#10'F1.CLI_CODIGO,'#13#10'C1.CLI_R' +
      'AZAO,'#13#10'F1.FAT_DTEMIS,'#13#10'F1.FAT_VLFAT,'#13#10'F1.FAT_VL_RET,'#13#10'F1.FAT_IRP' +
      'J_RET,'#13#10'F1.FAT_PIS_RET,'#13#10'F1.FAT_COFINS_RET,'#13#10'F1.FAT_INSS_RET,'#13#10'F' +
      '1.FAT_CONTSOCIAL_RET,'#13#10'F1.FAT_BASE_ISS,'#13#10'F1.FAT_ISS_RET,'#13#10'F1.FAT' +
      '_BASE_INSS'#13#10'FROM FAT0000 F1'#13#10'JOIN CLI0000 C1 ON F1.CLI_CODIGO = ' +
      'C1.CLI_CODIGO'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 620
    Top = 352
    object SqlCdsRel07FAT_CODIGO: TStringField
      FieldName = 'FAT_CODIGO'
      Required = True
      Size = 6
    end
    object SqlCdsRel07OPV_CODIGO: TSmallintField
      FieldName = 'OPV_CODIGO'
    end
    object SqlCdsRel07CLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Required = True
      Size = 5
    end
    object SqlCdsRel07CLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Size = 52
    end
    object SqlCdsRel07FAT_DTEMIS: TSQLTimeStampField
      FieldName = 'FAT_DTEMIS'
    end
    object SqlCdsRel07FAT_VLFAT: TFMTBCDField
      FieldName = 'FAT_VLFAT'
      DisplayFormat = '#,##0.00'
      Precision = 15
    end
    object SqlCdsRel07FAT_VL_RET: TFMTBCDField
      FieldName = 'FAT_VL_RET'
      DisplayFormat = '#,##0.00'
      Precision = 15
    end
    object SqlCdsRel07FAT_IRPJ_RET: TFMTBCDField
      FieldName = 'FAT_IRPJ_RET'
      DisplayFormat = '#,##0.00'
      Precision = 15
    end
    object SqlCdsRel07FAT_PIS_RET: TFMTBCDField
      FieldName = 'FAT_PIS_RET'
      DisplayFormat = '#,##0.00'
      Precision = 15
    end
    object SqlCdsRel07FAT_COFINS_RET: TFMTBCDField
      FieldName = 'FAT_COFINS_RET'
      DisplayFormat = '#,##0.00'
      Precision = 15
    end
    object SqlCdsRel07FAT_INSS_RET: TFMTBCDField
      FieldName = 'FAT_INSS_RET'
      DisplayFormat = '#,##0.00'
      Precision = 15
    end
    object SqlCdsRel07FAT_CONTSOCIAL_RET: TFMTBCDField
      FieldName = 'FAT_CONTSOCIAL_RET'
      DisplayFormat = '#,##0.00'
      Precision = 15
    end
    object SqlCdsRel07FAT_BASE_ISS: TFMTBCDField
      FieldName = 'FAT_BASE_ISS'
      Precision = 15
    end
    object SqlCdsRel07FAT_ISS_RET: TFMTBCDField
      FieldName = 'FAT_ISS_RET'
      Precision = 15
    end
    object SqlCdsRel07FAT_BASE_INSS: TFMTBCDField
      FieldName = 'FAT_BASE_INSS'
      Precision = 15
    end
    object SqlCdsRel07FAT_TLIQUIDO_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'FAT_TLIQUIDO_CC'
      Calculated = True
    end
  end
  object DsRel07: TDataSource
    DataSet = SqlCdsRel07
    Left = 698
    Top = 408
  end
  object ppDBRel07: TppDBPipeline
    DataSource = DsRel07
    UserName = 'DBRel07'
    Left = 760
    Top = 408
  end
  object ppRPRelConReceber07: TppReport
    AutoStop = False
    DataPipeline = ppDBRel07
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 10000
    PrinterSetup.mmMarginLeft = 5000
    PrinterSetup.mmMarginRight = 5000
    PrinterSetup.mmMarginTop = 10000
    PrinterSetup.mmPaperHeight = 210000
    PrinterSetup.mmPaperWidth = 297000
    PrinterSetup.PaperSize = 9
    Template.FileName = 
      'C:\JobProgram\Developer\Adjutor\FontesRelatorios\RELCONRECEBER07' +
      '.rtm'
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    BeforePrint = ppRPRelConReceber00BeforePrint
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
    Left = 856
    Top = 408
    Version = '16.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBRel07'
    object pp07HeaderBand1: TppHeaderBand
      BeforePrint = pp07HeaderBand1BeforePrint
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 19050
      mmPrintPosition = 0
      object ppLine38: TppLine
        DesignLayer = ppDesignLayer7
        UserName = 'Line1'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 268000
        BandType = 0
        LayerName = Foreground6
      end
      object LBL_07_EMPRESA: TppLabel
        DesignLayer = ppDesignLayer7
        UserName = 'LBL_07_EMPRESA'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'LABEL_EMPRESA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 794
        mmWidth = 160073
        BandType = 0
        LayerName = Foreground6
      end
      object LBL_07_LTITULO1: TppLabel
        DesignLayer = ppDesignLayer7
        UserName = 'LBL_07_LTITULO1'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'TITULO1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3260
        mmLeft = 0
        mmTop = 6350
        mmWidth = 160073
        BandType = 0
        LayerName = Foreground6
      end
      object LBL_07_LTITULO2: TppLabel
        DesignLayer = ppDesignLayer7
        UserName = 'LBL_07_LTITULO2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'TITULO2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3260
        mmLeft = 0
        mmTop = 9790
        mmWidth = 11642
        BandType = 0
        LayerName = Foreground6
      end
      object ppLine39: TppLine
        DesignLayer = ppDesignLayer7
        UserName = 'Line2'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 14288
        mmWidth = 268000
        BandType = 0
        LayerName = Foreground6
      end
      object ppSystemVariable15: TppSystemVariable
        DesignLayer = ppDesignLayer7
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4163
        mmLeft = 235427
        mmTop = 794
        mmWidth = 32597
        BandType = 0
        LayerName = Foreground6
      end
      object ppSystemVariable16: TppSystemVariable
        DesignLayer = ppDesignLayer7
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4163
        mmLeft = 246081
        mmTop = 8467
        mmWidth = 21943
        BandType = 0
        LayerName = Foreground6
      end
      object ppLine40: TppLine
        DesignLayer = ppDesignLayer7
        UserName = 'Line3'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 18785
        mmWidth = 268000
        BandType = 0
        LayerName = Foreground6
      end
      object ppLabel77: TppLabel
        DesignLayer = ppDesignLayer7
        UserName = 'Label77'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'N.Fiscal'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3246
        mmLeft = 106
        mmTop = 15081
        mmWidth = 9948
        BandType = 0
        LayerName = Foreground6
      end
      object ppLabel86: TppLabel
        DesignLayer = ppDesignLayer7
        UserName = 'Label86'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Emiss'#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3246
        mmLeft = 12929
        mmTop = 15081
        mmWidth = 10654
        BandType = 0
        LayerName = Foreground6
      end
      object ppLabel87: TppLabel
        DesignLayer = ppDesignLayer7
        UserName = 'Label87'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Raz'#227'o Social'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3246
        mmLeft = 26458
        mmTop = 15081
        mmWidth = 16439
        BandType = 0
        LayerName = Foreground6
      end
      object ppLabel88: TppLabel
        DesignLayer = ppDesignLayer7
        UserName = 'Label88'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Vl.Nota'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3246
        mmLeft = 112801
        mmTop = 15081
        mmWidth = 9172
        BandType = 0
        LayerName = Foreground6
      end
      object ppLabel89: TppLabel
        DesignLayer = ppDesignLayer7
        UserName = 'Label89'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Vl.Reten'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3246
        mmLeft = 124002
        mmTop = 15081
        mmWidth = 15169
        BandType = 0
        LayerName = Foreground6
      end
      object ppLabel90: TppLabel
        DesignLayer = ppDesignLayer7
        UserName = 'Label90'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'IRPJ'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3246
        mmLeft = 177118
        mmTop = 15081
        mmWidth = 6068
        BandType = 0
        LayerName = Foreground6
      end
      object ppLabel91: TppLabel
        DesignLayer = ppDesignLayer7
        UserName = 'Label91'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'PIS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3246
        mmLeft = 191540
        mmTop = 15081
        mmWidth = 4516
        BandType = 0
        LayerName = Foreground6
      end
      object ppLabel92: TppLabel
        DesignLayer = ppDesignLayer7
        UserName = 'Label92'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'COFINS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3246
        mmLeft = 198173
        mmTop = 15081
        mmWidth = 10583
        BandType = 0
        LayerName = Foreground6
      end
      object ppLabel93: TppLabel
        DesignLayer = ppDesignLayer7
        UserName = 'Label93'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'C.Social'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3246
        mmLeft = 210080
        mmTop = 15081
        mmWidth = 11906
        BandType = 0
        LayerName = Foreground6
      end
      object ppLabel94: TppLabel
        DesignLayer = ppDesignLayer7
        UserName = 'Label94'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'INSS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3246
        mmLeft = 234421
        mmTop = 15081
        mmWidth = 14288
        BandType = 0
        LayerName = Foreground6
      end
      object ppLabel65: TppLabel
        DesignLayer = ppDesignLayer7
        UserName = 'Label901'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'B.INSS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3246
        mmLeft = 145274
        mmTop = 15081
        mmWidth = 9243
        BandType = 0
        LayerName = Foreground6
      end
      object ppLabel95: TppLabel
        DesignLayer = ppDesignLayer7
        UserName = 'Label95'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'B.ISS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3246
        mmLeft = 162666
        mmTop = 15081
        mmWidth = 7197
        BandType = 0
        LayerName = Foreground6
      end
      object ppLabel96: TppLabel
        DesignLayer = ppDesignLayer7
        UserName = 'Label96'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'Total Liquido'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3246
        mmLeft = 249767
        mmTop = 15081
        mmWidth = 17727
        BandType = 0
        LayerName = Foreground6
      end
      object ppLabel98: TppLabel
        DesignLayer = ppDesignLayer7
        UserName = 'Label98'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'ISS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3246
        mmLeft = 222250
        mmTop = 15081
        mmWidth = 11906
        BandType = 0
        LayerName = Foreground6
      end
    end
    object pp07DetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 3175
      mmPrintPosition = 0
      object ppDBText67: TppDBText
        DesignLayer = ppDesignLayer7
        UserName = 'DBText67'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FAT_CODIGO'
        DataPipeline = ppDBRel07
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel07'
        mmHeight = 3246
        mmLeft = 0
        mmTop = 0
        mmWidth = 10054
        BandType = 4
        LayerName = Foreground6
      end
      object ppDBText68: TppDBText
        DesignLayer = ppDesignLayer7
        UserName = 'DBText68'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FAT_DTEMIS'
        DataPipeline = ppDBRel07
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRel07'
        mmHeight = 3246
        mmLeft = 10848
        mmTop = 0
        mmWidth = 14817
        BandType = 4
        LayerName = Foreground6
      end
      object ppDBText69: TppDBText
        DesignLayer = ppDesignLayer7
        UserName = 'DBText69'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_RAZAO'
        DataPipeline = ppDBRel07
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRel07'
        mmHeight = 3246
        mmLeft = 26458
        mmTop = 0
        mmWidth = 78317
        BandType = 4
        LayerName = Foreground6
      end
      object ppDBText70: TppDBText
        DesignLayer = ppDesignLayer7
        UserName = 'DBText70'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FAT_VLFAT'
        DataPipeline = ppDBRel07
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel07'
        mmHeight = 3246
        mmLeft = 106098
        mmTop = 0
        mmWidth = 15875
        BandType = 4
        LayerName = Foreground6
      end
      object ppDBText71: TppDBText
        DesignLayer = ppDesignLayer7
        UserName = 'DBText71'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FAT_VL_RET'
        DataPipeline = ppDBRel07
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel07'
        mmHeight = 3246
        mmLeft = 123296
        mmTop = 0
        mmWidth = 15875
        BandType = 4
        LayerName = Foreground6
      end
      object ppDBText72: TppDBText
        DesignLayer = ppDesignLayer7
        UserName = 'DBText72'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FAT_IRPJ_RET'
        DataPipeline = ppDBRel07
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel07'
        mmHeight = 3246
        mmLeft = 171186
        mmTop = 0
        mmWidth = 12000
        BandType = 4
        LayerName = Foreground6
      end
      object ppDBText73: TppDBText
        DesignLayer = ppDesignLayer7
        UserName = 'DBText73'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FAT_PIS_RET'
        DataPipeline = ppDBRel07
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel07'
        mmHeight = 3246
        mmLeft = 184150
        mmTop = 0
        mmWidth = 11906
        BandType = 4
        LayerName = Foreground6
      end
      object ppDBText74: TppDBText
        DesignLayer = ppDesignLayer7
        UserName = 'DBText74'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FAT_COFINS_RET'
        DataPipeline = ppDBRel07
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel07'
        mmHeight = 3246
        mmLeft = 196850
        mmTop = 0
        mmWidth = 11906
        BandType = 4
        LayerName = Foreground6
      end
      object ppDBText75: TppDBText
        DesignLayer = ppDesignLayer7
        UserName = 'DBText75'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FAT_CONTSOCIAL_RET'
        DataPipeline = ppDBRel07
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel07'
        mmHeight = 3246
        mmLeft = 210344
        mmTop = 0
        mmWidth = 11906
        BandType = 4
        LayerName = Foreground6
      end
      object ppDBText76: TppDBText
        DesignLayer = ppDesignLayer7
        UserName = 'DBText76'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FAT_INSS_RET'
        DataPipeline = ppDBRel07
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel07'
        mmHeight = 3246
        mmLeft = 234686
        mmTop = 0
        mmWidth = 14288
        BandType = 4
        LayerName = Foreground6
      end
      object ppDBText77: TppDBText
        DesignLayer = ppDesignLayer7
        UserName = 'DBText77'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FAT_BASE_INSS'
        DataPipeline = ppDBRel07
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel07'
        mmHeight = 3246
        mmLeft = 140229
        mmTop = 0
        mmWidth = 14288
        BandType = 4
        LayerName = Foreground6
      end
      object ppDBText78: TppDBText
        DesignLayer = ppDesignLayer7
        UserName = 'DBText78'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FAT_BASE_ISS'
        DataPipeline = ppDBRel07
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel07'
        mmHeight = 3246
        mmLeft = 155575
        mmTop = 0
        mmWidth = 14288
        BandType = 4
        LayerName = Foreground6
      end
      object ppDBText79: TppDBText
        DesignLayer = ppDesignLayer7
        UserName = 'DBText79'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FAT_TLIQUIDO_CC'
        DataPipeline = ppDBRel07
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel07'
        mmHeight = 3246
        mmLeft = 253471
        mmTop = 0
        mmWidth = 14288
        BandType = 4
        LayerName = Foreground6
      end
      object ppDBText80: TppDBText
        DesignLayer = ppDesignLayer7
        UserName = 'DBText80'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FAT_ISS_RET'
        DataPipeline = ppDBRel07
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel07'
        mmHeight = 3246
        mmLeft = 222515
        mmTop = 0
        mmWidth = 11906
        BandType = 4
        LayerName = Foreground6
      end
    end
    object pp07SummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppLine41: TppLine
        DesignLayer = ppDesignLayer7
        UserName = 'Line4'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 268000
        BandType = 7
        LayerName = Foreground6
      end
      object ppDBCalc39: TppDBCalc
        DesignLayer = ppDesignLayer7
        UserName = 'DBCalc39'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FAT_VLFAT'
        DataPipeline = ppDBRel07
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel07'
        mmHeight = 3246
        mmLeft = 106098
        mmTop = 529
        mmWidth = 15875
        BandType = 7
        LayerName = Foreground6
      end
      object ppDBCalc40: TppDBCalc
        DesignLayer = ppDesignLayer7
        UserName = 'DBCalc40'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FAT_VL_RET'
        DataPipeline = ppDBRel07
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel07'
        mmHeight = 3246
        mmLeft = 123296
        mmTop = 529
        mmWidth = 15875
        BandType = 7
        LayerName = Foreground6
      end
      object ppDBCalc41: TppDBCalc
        DesignLayer = ppDesignLayer7
        UserName = 'DBCalc401'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FAT_IRPJ_RET'
        DataPipeline = ppDBRel07
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel07'
        mmHeight = 3246
        mmLeft = 171186
        mmTop = 529
        mmWidth = 12000
        BandType = 7
        LayerName = Foreground6
      end
      object ppDBCalc42: TppDBCalc
        DesignLayer = ppDesignLayer7
        UserName = 'DBCalc42'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FAT_PIS_RET'
        DataPipeline = ppDBRel07
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel07'
        mmHeight = 3246
        mmLeft = 184150
        mmTop = 529
        mmWidth = 11906
        BandType = 7
        LayerName = Foreground6
      end
      object ppDBCalc43: TppDBCalc
        DesignLayer = ppDesignLayer7
        UserName = 'DBCalc43'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FAT_COFINS_RET'
        DataPipeline = ppDBRel07
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel07'
        mmHeight = 3175
        mmLeft = 196850
        mmTop = 529
        mmWidth = 11906
        BandType = 7
        LayerName = Foreground6
      end
      object ppDBCalc44: TppDBCalc
        DesignLayer = ppDesignLayer7
        UserName = 'DBCalc44'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FAT_CONTSOCIAL_RET'
        DataPipeline = ppDBRel07
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel07'
        mmHeight = 3246
        mmLeft = 210344
        mmTop = 529
        mmWidth = 11906
        BandType = 7
        LayerName = Foreground6
      end
      object ppDBCalc45: TppDBCalc
        DesignLayer = ppDesignLayer7
        UserName = 'DBCalc45'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FAT_INSS_RET'
        DataPipeline = ppDBRel07
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel07'
        mmHeight = 3246
        mmLeft = 234686
        mmTop = 529
        mmWidth = 14288
        BandType = 7
        LayerName = Foreground6
      end
      object ppDBCalc46: TppDBCalc
        DesignLayer = ppDesignLayer7
        UserName = 'DBCalc46'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FAT_BASE_INSS'
        DataPipeline = ppDBRel07
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel07'
        mmHeight = 3246
        mmLeft = 140229
        mmTop = 529
        mmWidth = 14288
        BandType = 7
        LayerName = Foreground6
      end
      object ppDBCalc47: TppDBCalc
        DesignLayer = ppDesignLayer7
        UserName = 'DBCalc47'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FAT_BASE_ISS'
        DataPipeline = ppDBRel07
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel07'
        mmHeight = 3246
        mmLeft = 155575
        mmTop = 529
        mmWidth = 14288
        BandType = 7
        LayerName = Foreground6
      end
      object ppDBCalc48: TppDBCalc
        DesignLayer = ppDesignLayer7
        UserName = 'DBCalc48'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FAT_TLIQUIDO_CC'
        DataPipeline = ppDBRel07
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel07'
        mmHeight = 3246
        mmLeft = 253471
        mmTop = 529
        mmWidth = 14288
        BandType = 7
        LayerName = Foreground6
      end
      object ppLabel97: TppLabel
        DesignLayer = ppDesignLayer7
        UserName = 'Label97'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'TOTAIS:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3316
        mmLeft = 93804
        mmTop = 529
        mmWidth = 11077
        BandType = 7
        LayerName = Foreground6
      end
      object ppDBCalc49: TppDBCalc
        DesignLayer = ppDesignLayer7
        UserName = 'DBCalc49'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FAT_ISS_RET'
        DataPipeline = ppDBRel07
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel07'
        mmHeight = 3246
        mmLeft = 222515
        mmTop = 529
        mmWidth = 11906
        BandType = 7
        LayerName = Foreground6
      end
    end
    object raCodeModule6: TraCodeModule
      ProgramStream = {00}
    end
    object ppDesignLayers7: TppDesignLayers
      object ppDesignLayer7: TppDesignLayer
        UserName = 'Foreground6'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList10: TppParameterList
    end
  end
  object SqlCdsRel08: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT '#13#10'F1.FAT_CODIGO,'#13#10'F1.FPC_NUMER,'#13#10'F1.FPC_DTEMIS,'#13#10'F1.FPC_V' +
      'ENCTO,'#13#10'F1.FPC_VLPARC,'#13#10'F1.FPC_VLPAGO,'#13#10'F1.FPC_PAGTO,'#13#10'F1.FPC_SI' +
      'TPAG,'#13#10'F1.FPC_PREVISAO,'#13#10'F1.FPC_OBS,'#13#10'F1.CLI_CODIGO,'#13#10'C1.CLI_RAZ' +
      'AO'#13#10'FROM FAT_PC01 F1'#13#10'JOIN CLI0000  C1 ON F1.CLI_CODIGO = C1.CLI' +
      '_CODIGO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    OnCalcFields = SqlCdsRel07CalcFields
    CommandText = 
      'SELECT '#13#10'F1.FAT_CODIGO,'#13#10'F1.FPC_NUMER,'#13#10'F1.FPC_DTEMIS,'#13#10'F1.FPC_V' +
      'ENCTO,'#13#10'F1.FPC_VLPARC,'#13#10'F1.FPC_VLPAGO,'#13#10'F1.FPC_PAGTO,'#13#10'F1.FPC_SI' +
      'TPAG,'#13#10'F1.FPC_PREVISAO,'#13#10'F1.FPC_OBS,'#13#10'F1.CLI_CODIGO,'#13#10'C1.CLI_RAZ' +
      'AO'#13#10'FROM FAT_PC01 F1'#13#10'JOIN CLI0000  C1 ON F1.CLI_CODIGO = C1.CLI' +
      '_CODIGO'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 620
    Top = 400
    object SqlCdsRel08FAT_CODIGO: TStringField
      FieldName = 'FAT_CODIGO'
      Required = True
      Size = 6
    end
    object SqlCdsRel08FPC_NUMER: TStringField
      FieldName = 'FPC_NUMER'
      Size = 2
    end
    object SqlCdsRel08FPC_DTEMIS: TSQLTimeStampField
      FieldName = 'FPC_DTEMIS'
    end
    object SqlCdsRel08FPC_VENCTO: TSQLTimeStampField
      FieldName = 'FPC_VENCTO'
    end
    object SqlCdsRel08FPC_VLPARC: TFMTBCDField
      FieldName = 'FPC_VLPARC'
      Precision = 15
    end
    object SqlCdsRel08FPC_VLPAGO: TFMTBCDField
      FieldName = 'FPC_VLPAGO'
      Precision = 15
    end
    object SqlCdsRel08FPC_PAGTO: TSQLTimeStampField
      FieldName = 'FPC_PAGTO'
    end
    object SqlCdsRel08FPC_SITPAG: TStringField
      FieldName = 'FPC_SITPAG'
      Size = 1
    end
    object SqlCdsRel08FPC_OBS: TStringField
      FieldName = 'FPC_OBS'
      Size = 50
    end
    object SqlCdsRel08FPC_PREVISAO: TStringField
      FieldName = 'FPC_PREVISAO'
      Size = 1
    end
    object SqlCdsRel08CLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Required = True
      Size = 5
    end
    object SqlCdsRel08CLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Size = 50
    end
  end
  object DsRel08: TDataSource
    DataSet = SqlCdsRel08
    Left = 698
    Top = 456
  end
  object ppRPRelConReceber08: TppReport
    AutoStop = False
    DataPipeline = ppDBRel08
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 10000
    PrinterSetup.mmMarginLeft = 10000
    PrinterSetup.mmMarginRight = 10000
    PrinterSetup.mmMarginTop = 10000
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 1
    Template.FileName = 
      'C:\JobProgram\Developer\Adjutor\FontesRelatorios\RELCONRECEBER08' +
      '.rtm'
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    BeforePrint = ppRPRelConReceber00BeforePrint
    CachePages = True
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
    Left = 856
    Top = 456
    Version = '16.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBRel08'
    object ppHeaderBand1: TppHeaderBand
      BeforePrint = ppHeaderBand1BeforePrint
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 18521
      mmPrintPosition = 0
      object ppLine42: TppLine
        DesignLayer = ppDesignLayer8
        UserName = 'Line1'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 195000
        BandType = 0
        LayerName = Foreground7
      end
      object LBL_08_EMPRESA: TppLabel
        DesignLayer = ppDesignLayer8
        UserName = 'LBL_08_EMPRESA'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'LABEL_EMPRESA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3969
        mmLeft = 0
        mmTop = 794
        mmWidth = 160073
        BandType = 0
        LayerName = Foreground7
      end
      object LBL_08_LTITULO1: TppLabel
        DesignLayer = ppDesignLayer8
        UserName = 'LBL_08_LTITULO1'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'TITULO1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3969
        mmLeft = 0
        mmTop = 5292
        mmWidth = 159809
        BandType = 0
        LayerName = Foreground7
      end
      object LBL_08_LTITULO2: TppLabel
        DesignLayer = ppDesignLayer8
        UserName = 'LBL_08_LTITULO2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'TITULO2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3969
        mmLeft = 0
        mmTop = 9790
        mmWidth = 160073
        BandType = 0
        LayerName = Foreground7
      end
      object ppLine43: TppLine
        DesignLayer = ppDesignLayer8
        UserName = 'Line2'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 14288
        mmWidth = 195000
        BandType = 0
        LayerName = Foreground7
      end
      object ppSystemVariable17: TppSystemVariable
        DesignLayer = ppDesignLayer8
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        VarType = vtDateTime
        DisplayFormat = 'dd/mm/yy h:nn'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 171980
        mmTop = 794
        mmWidth = 22754
        BandType = 0
        LayerName = Foreground7
      end
      object ppSystemVariable18: TppSystemVariable
        DesignLayer = ppDesignLayer8
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4163
        mmLeft = 172791
        mmTop = 9790
        mmWidth = 21943
        BandType = 0
        LayerName = Foreground7
      end
      object ppLabel102: TppLabel
        DesignLayer = ppDesignLayer8
        UserName = 'Label1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'FATURA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3246
        mmLeft = 0
        mmTop = 14817
        mmWidth = 11289
        BandType = 0
        LayerName = Foreground7
      end
      object ppLabel103: TppLabel
        DesignLayer = ppDesignLayer8
        UserName = 'Label2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'EMISS'#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3246
        mmLeft = 21230
        mmTop = 14817
        mmWidth = 12841
        BandType = 0
        LayerName = Foreground7
      end
      object ppLabel105: TppLabel
        DesignLayer = ppDesignLayer8
        UserName = 'Label4'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'VL.RECEBER'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        mmHeight = 3246
        mmLeft = 140758
        mmTop = 14817
        mmWidth = 17992
        BandType = 0
        LayerName = Foreground7
      end
      object ppLine44: TppLine
        DesignLayer = ppDesignLayer8
        UserName = 'Line3'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 18256
        mmWidth = 195000
        BandType = 0
        LayerName = Foreground7
      end
      object ppLabel108: TppLabel
        DesignLayer = ppDesignLayer8
        UserName = 'Label13'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'CLIENTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3246
        mmLeft = 53181
        mmTop = 14817
        mmWidth = 83873
        BandType = 0
        LayerName = Foreground7
      end
      object ppLabel104: TppLabel
        DesignLayer = ppDesignLayer8
        UserName = 'Label104'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'OBSERVA'#199#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        WordWrap = True
        mmHeight = 3246
        mmLeft = 159279
        mmTop = 14817
        mmWidth = 19897
        BandType = 0
        LayerName = Foreground7
      end
      object ppLabel99: TppLabel
        DesignLayer = ppDesignLayer8
        UserName = 'Label99'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'PC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3246
        mmLeft = 14288
        mmTop = 14817
        mmWidth = 3951
        BandType = 0
        LayerName = Foreground7
      end
      object ppLabel100: TppLabel
        DesignLayer = ppDesignLayer8
        UserName = 'Label100'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'VENCTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3246
        mmLeft = 38426
        mmTop = 14817
        mmWidth = 11783
        BandType = 0
        LayerName = Foreground7
      end
    end
    object ppDetailBand2: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 3175
      mmPrintPosition = 0
      object ppDBText81: TppDBText
        DesignLayer = ppDesignLayer8
        UserName = 'DBText2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FAT_CODIGO'
        DataPipeline = ppDBRel08
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel08'
        mmHeight = 3246
        mmLeft = 0
        mmTop = 0
        mmWidth = 11906
        BandType = 4
        LayerName = Foreground7
      end
      object ppDBText82: TppDBText
        DesignLayer = ppDesignLayer8
        UserName = 'DBText4'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FPC_NUMER'
        DataPipeline = ppDBRel08
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRel08'
        mmHeight = 3246
        mmLeft = 14288
        mmTop = 0
        mmWidth = 4233
        BandType = 4
        LayerName = Foreground7
      end
      object ppDBText83: TppDBText
        DesignLayer = ppDesignLayer8
        UserName = 'DBText5'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FPC_DTEMIS'
        DataPipeline = ppDBRel08
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRel08'
        mmHeight = 3246
        mmLeft = 20373
        mmTop = 0
        mmWidth = 14817
        BandType = 4
        LayerName = Foreground7
      end
      object ppDBText84: TppDBText
        DesignLayer = ppDesignLayer8
        UserName = 'DBText6'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_RAZAO'
        DataPipeline = ppDBRel08
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRel08'
        mmHeight = 3246
        mmLeft = 62442
        mmTop = 0
        mmWidth = 74613
        BandType = 4
        LayerName = Foreground7
      end
      object ppDBText85: TppDBText
        DesignLayer = ppDesignLayer8
        UserName = 'DBText8'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FPC_VLPARC'
        DataPipeline = ppDBRel08
        DisplayFormat = '#0.,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel08'
        mmHeight = 3246
        mmLeft = 140494
        mmTop = 0
        mmWidth = 18256
        BandType = 4
        LayerName = Foreground7
      end
      object ppDBText91: TppDBText
        DesignLayer = ppDesignLayer8
        UserName = 'DBText69'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_CODIGO'
        DataPipeline = ppDBRel08
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel08'
        mmHeight = 3246
        mmLeft = 53181
        mmTop = 0
        mmWidth = 8202
        BandType = 4
        LayerName = Foreground7
      end
      object ppDBText86: TppDBText
        DesignLayer = ppDesignLayer8
        UserName = 'DBText86'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FPC_OBS'
        DataPipeline = ppDBRel08
        DisplayFormat = '#0.,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRel08'
        mmHeight = 3175
        mmLeft = 159279
        mmTop = 0
        mmWidth = 35719
        BandType = 4
        LayerName = Foreground7
      end
      object ppDBText87: TppDBText
        DesignLayer = ppDesignLayer8
        UserName = 'DBText87'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FPC_VENCTO'
        DataPipeline = ppDBRel08
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRel08'
        mmHeight = 3246
        mmLeft = 37042
        mmTop = 0
        mmWidth = 14817
        BandType = 4
        LayerName = Foreground7
      end
    end
    object ppSummaryBand3: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppLabel111: TppLabel
        DesignLayer = ppDesignLayer8
        UserName = 'Label14'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Total da Previs'#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3316
        mmLeft = 114318
        mmTop = 529
        mmWidth = 24059
        BandType = 7
        LayerName = Foreground7
      end
      object ppDBCalc51: TppDBCalc
        DesignLayer = ppDesignLayer8
        UserName = 'DBCalc9'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FPC_VLPARC'
        DataPipeline = ppDBRel08
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel08'
        mmHeight = 3316
        mmLeft = 140229
        mmTop = 529
        mmWidth = 18521
        BandType = 7
        LayerName = Foreground7
      end
      object ppLine45: TppLine
        DesignLayer = ppDesignLayer8
        UserName = 'Line6'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 195000
        BandType = 7
        LayerName = Foreground7
      end
    end
    object ppDesignLayers8: TppDesignLayers
      object ppDesignLayer8: TppDesignLayer
        UserName = 'Foreground7'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList11: TppParameterList
    end
  end
  object ppDBRel08: TppDBPipeline
    DataSource = DsRel08
    UserName = 'DBRel08'
    Left = 760
    Top = 456
  end
  object ppRPRelConReceber00A: TppReport
    AutoStop = False
    DataPipeline = ppDBReceber
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
    Template.FileName = 
      'C:\JobProgram\Developer\Adjutor\FontesRelatorios\RELCONRECEBER00' +
      '.rtm'
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    BeforePrint = ppRPRelConReceber00BeforePrint
    CachePages = True
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
    Left = 976
    Top = 48
    Version = '16.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBReceber'
    object ppHeaderBand2: TppHeaderBand
      BeforePrint = ppHeaderBand2BeforePrint
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 23283
      mmPrintPosition = 0
      object ppLine48: TppLine
        DesignLayer = ppDesignLayer9
        UserName = 'Line1'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 196000
        BandType = 0
        LayerName = Foreground8
      end
      object LBL_0A_EMPRESA: TppLabel
        DesignLayer = ppDesignLayer9
        UserName = 'LBL_0A_EMPRESA'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'LABEL_EMPRESA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3969
        mmLeft = 0
        mmTop = 794
        mmWidth = 160073
        BandType = 0
        LayerName = Foreground8
      end
      object LBL_0A_LTITULO1: TppLabel
        DesignLayer = ppDesignLayer9
        UserName = 'LBL_0A_LTITULO1'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'TITULO1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3260
        mmLeft = 0
        mmTop = 5292
        mmWidth = 160073
        BandType = 0
        LayerName = Foreground8
      end
      object LBL_0A_LTITULO2: TppLabel
        DesignLayer = ppDesignLayer9
        UserName = 'LBL_0A_LTITULO2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'TITULO2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3260
        mmLeft = 0
        mmTop = 9790
        mmWidth = 11642
        BandType = 0
        LayerName = Foreground8
      end
      object ppLine49: TppLine
        DesignLayer = ppDesignLayer9
        UserName = 'Line2'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 14288
        mmWidth = 196000
        BandType = 0
        LayerName = Foreground8
      end
      object ppSystemVariable19: TppSystemVariable
        DesignLayer = ppDesignLayer9
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4163
        mmLeft = 164254
        mmTop = 794
        mmWidth = 32597
        BandType = 0
        LayerName = Foreground8
      end
      object ppSystemVariable20: TppSystemVariable
        DesignLayer = ppDesignLayer9
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4163
        mmLeft = 174114
        mmTop = 8467
        mmWidth = 21943
        BandType = 0
        LayerName = Foreground8
      end
      object ppLabel109: TppLabel
        DesignLayer = ppDesignLayer9
        UserName = 'Label1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'FATURA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3246
        mmLeft = 0
        mmTop = 19315
        mmWidth = 11289
        BandType = 0
        LayerName = Foreground8
      end
      object ppLabel110: TppLabel
        DesignLayer = ppDesignLayer9
        UserName = 'Label2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'EMISS'#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3246
        mmLeft = 15875
        mmTop = 19315
        mmWidth = 12841
        BandType = 0
        LayerName = Foreground8
      end
      object ppLabel112: TppLabel
        DesignLayer = ppDesignLayer9
        UserName = 'Label3'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'VALOR A RECEBER'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 6491
        mmLeft = 98161
        mmTop = 15610
        mmWidth = 13758
        BandType = 0
        LayerName = Foreground8
      end
      object ppLabel113: TppLabel
        DesignLayer = ppDesignLayer9
        UserName = 'Label4'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'VALOR RECEBIDO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 6491
        mmLeft = 114300
        mmTop = 15610
        mmWidth = 14746
        BandType = 0
        LayerName = Foreground8
      end
      object ppLabel114: TppLabel
        DesignLayer = ppDesignLayer9
        UserName = 'Label5'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'PED.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 3246
        mmLeft = 145521
        mmTop = 19315
        mmWidth = 6632
        BandType = 0
        LayerName = Foreground8
      end
      object ppLabel115: TppLabel
        DesignLayer = ppDesignLayer9
        UserName = 'Label6'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'BANCO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 3246
        mmLeft = 156898
        mmTop = 19315
        mmWidth = 10089
        BandType = 0
        LayerName = Foreground8
      end
      object ppLine50: TppLine
        DesignLayer = ppDesignLayer9
        UserName = 'Line3'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 23018
        mmWidth = 196000
        BandType = 0
        LayerName = Foreground8
      end
      object ppLabel116: TppLabel
        DesignLayer = ppDesignLayer9
        UserName = 'Label7'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'No.COBR.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3246
        mmLeft = 167746
        mmTop = 19315
        mmWidth = 13494
        BandType = 0
        LayerName = Foreground8
      end
      object ppLabel117: TppLabel
        DesignLayer = ppDesignLayer9
        UserName = 'Label8'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'STATUS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3246
        mmLeft = 182298
        mmTop = 19315
        mmWidth = 14023
        BandType = 0
        LayerName = Foreground8
      end
      object ppLabel118: TppLabel
        DesignLayer = ppDesignLayer9
        UserName = 'Label13'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'CLIENTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3246
        mmLeft = 32015
        mmTop = 19315
        mmWidth = 11853
        BandType = 0
        LayerName = Foreground8
      end
      object ppLabel127: TppLabel
        DesignLayer = ppDesignLayer9
        UserName = 'Label127'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'DATA VENCTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7144
        mmLeft = 130175
        mmTop = 15346
        mmWidth = 14552
        BandType = 0
        LayerName = Foreground8
      end
    end
    object ppDetailBand3: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 3175
      mmPrintPosition = 0
      object ppDBText57: TppDBText
        DesignLayer = ppDesignLayer9
        UserName = 'DBText2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FAT_CODIGO'
        DataPipeline = ppDBReceber
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBReceber'
        mmHeight = 3246
        mmLeft = 0
        mmTop = 0
        mmWidth = 10054
        BandType = 4
        LayerName = Foreground8
      end
      object ppDBText89: TppDBText
        DesignLayer = ppDesignLayer9
        UserName = 'DBText4'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FPC_NUMER'
        DataPipeline = ppDBReceber
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBReceber'
        mmHeight = 3246
        mmLeft = 10319
        mmTop = 0
        mmWidth = 4233
        BandType = 4
        LayerName = Foreground8
      end
      object ppDBText90: TppDBText
        DesignLayer = ppDesignLayer9
        UserName = 'DBText5'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FAT_DTEMIS'
        DataPipeline = ppDBReceber
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBReceber'
        mmHeight = 3246
        mmLeft = 15875
        mmTop = 0
        mmWidth = 14817
        BandType = 4
        LayerName = Foreground8
      end
      object ppDBText92: TppDBText
        DesignLayer = ppDesignLayer9
        UserName = 'DBText6'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_RAZAO'
        DataPipeline = ppDBReceber
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBReceber'
        mmHeight = 3246
        mmLeft = 32015
        mmTop = 0
        mmWidth = 59531
        BandType = 4
        LayerName = Foreground8
      end
      object ppDBText93: TppDBText
        DesignLayer = ppDesignLayer9
        UserName = 'DBText8'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FPC_VLPAGO'
        DataPipeline = ppDBReceber
        DisplayFormat = '#0.,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBReceber'
        mmHeight = 3246
        mmLeft = 112448
        mmTop = 0
        mmWidth = 16404
        BandType = 4
        LayerName = Foreground8
      end
      object ppDBText94: TppDBText
        DesignLayer = ppDesignLayer9
        UserName = 'DBText9'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PED_CODIGO'
        DataPipeline = ppDBReceber
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBReceber'
        mmHeight = 3246
        mmLeft = 145521
        mmTop = 0
        mmWidth = 10848
        BandType = 4
        LayerName = Foreground8
      end
      object ppDBText95: TppDBText
        DesignLayer = ppDesignLayer9
        UserName = 'DBText10'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'BAN_CODIGO'
        DataPipeline = ppDBReceber
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBReceber'
        mmHeight = 3246
        mmLeft = 156898
        mmTop = 0
        mmWidth = 10319
        BandType = 4
        LayerName = Foreground8
      end
      object ppDBText96: TppDBText
        DesignLayer = ppDesignLayer9
        UserName = 'DBText11'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FPC_COBNUM'
        DataPipeline = ppDBReceber
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBReceber'
        mmHeight = 3175
        mmLeft = 167746
        mmTop = 0
        mmWidth = 13494
        BandType = 4
        LayerName = Foreground8
      end
      object ppDBText97: TppDBText
        DesignLayer = ppDesignLayer9
        UserName = 'DBText12'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FPC_STATUS'
        DataPipeline = ppDBReceber
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBReceber'
        mmHeight = 3246
        mmLeft = 182298
        mmTop = 0
        mmWidth = 14023
        BandType = 4
        LayerName = Foreground8
      end
      object ppDBText100: TppDBText
        DesignLayer = ppDesignLayer9
        UserName = 'DBText100'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FPC_VENCTO'
        DataPipeline = ppDBReceber
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBReceber'
        mmHeight = 3175
        mmLeft = 130175
        mmTop = 0
        mmWidth = 14552
        BandType = 4
        LayerName = Foreground8
      end
      object ppDBText105: TppDBText
        DesignLayer = ppDesignLayer9
        UserName = 'DBText105'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FPC_RECEBER_CC'
        DataPipeline = ppDBReceber
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBReceber'
        mmHeight = 3175
        mmLeft = 95515
        mmTop = 0
        mmWidth = 15875
        BandType = 4
        LayerName = Foreground8
      end
    end
    object ppSummaryBand4: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 5027
      mmPrintPosition = 0
      object ppLabel119: TppLabel
        DesignLayer = ppDesignLayer9
        UserName = 'Label14'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'TOTAL GERAL.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 3316
        mmLeft = 32015
        mmTop = 794
        mmWidth = 21449
        BandType = 7
        LayerName = Foreground8
      end
      object ppDBCalc38: TppDBCalc
        DesignLayer = ppDesignLayer9
        UserName = 'DBCalc3'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FPC_VLPAGO'
        DataPipeline = ppDBReceber
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBReceber'
        mmHeight = 2921
        mmLeft = 112448
        mmTop = 794
        mmWidth = 16404
        BandType = 7
        LayerName = Foreground8
      end
      object ppLabel120: TppLabel
        DesignLayer = ppDesignLayer9
        UserName = 'Label17'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'SOMA.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 140494
        mmTop = 794
        mmWidth = 10054
        BandType = 7
        LayerName = Foreground8
      end
      object ppDBCalc50: TppDBCalc
        DesignLayer = ppDesignLayer9
        UserName = 'DBCalc6'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FPC_RECEBER_CC'
        DataPipeline = ppDBReceber
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBReceber'
        mmHeight = 2921
        mmLeft = 91017
        mmTop = 794
        mmWidth = 20108
        BandType = 7
        LayerName = Foreground8
      end
      object ppDBCalc52: TppDBCalc
        DesignLayer = ppDesignLayer9
        UserName = 'DBCalc9'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FPC_VLPARC'
        DataPipeline = ppDBReceber
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBReceber'
        mmHeight = 2921
        mmLeft = 150813
        mmTop = 794
        mmWidth = 20902
        BandType = 7
        LayerName = Foreground8
      end
      object ppLine51: TppLine
        DesignLayer = ppDesignLayer9
        UserName = 'Line6'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 31750
        mmTop = 265
        mmWidth = 142082
        BandType = 7
        LayerName = Foreground8
      end
      object ppLine52: TppLine
        DesignLayer = ppDesignLayer9
        UserName = 'Line7'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 31750
        mmTop = 4498
        mmWidth = 142082
        BandType = 7
        LayerName = Foreground8
      end
    end
    object ppGroup6: TppGroup
      BreakName = 'FPC_MES_PAGTO_CC'
      DataPipeline = ppDBReceber
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBReceber'
      NewFile = False
      object ppGroupHeaderBand5: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        PrintHeight = phDynamic
        mmBottomOffset = 0
        mmHeight = 3440
        mmPrintPosition = 0
        object ppLabel121: TppLabel
          DesignLayer = ppDesignLayer9
          UserName = 'Label9'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'M'#234'S:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          FormField = False
          Transparent = True
          mmHeight = 3316
          mmLeft = 0
          mmTop = 0
          mmWidth = 6773
          BandType = 3
          GroupNo = 0
          LayerName = Foreground8
        end
        object ppDBText98: TppDBText
          DesignLayer = ppDesignLayer9
          UserName = 'DBText1'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'FPC_MES_PAGTO_CC'
          DataPipeline = ppDBReceber
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDBReceber'
          mmHeight = 3316
          mmLeft = 7673
          mmTop = 0
          mmWidth = 17198
          BandType = 3
          GroupNo = 0
          LayerName = Foreground8
        end
      end
      object ppGroupFooterBand5: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 4763
        mmPrintPosition = 0
        object ppLabel122: TppLabel
          DesignLayer = ppDesignLayer9
          UserName = 'Label11'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'TOTAL DO M'#234'S.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          FormField = False
          Transparent = True
          mmHeight = 3316
          mmLeft = 32015
          mmTop = 1058
          mmWidth = 22507
          BandType = 5
          GroupNo = 0
          LayerName = Foreground8
        end
        object ppDBCalc53: TppDBCalc
          DesignLayer = ppDesignLayer9
          UserName = 'DBCalc2'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'FPC_VLPAGO'
          DataPipeline = ppDBReceber
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = [fsBold]
          ResetGroup = ppGroup6
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBReceber'
          mmHeight = 2921
          mmLeft = 112448
          mmTop = 1058
          mmWidth = 16404
          BandType = 5
          GroupNo = 0
          LayerName = Foreground8
        end
        object ppLabel123: TppLabel
          DesignLayer = ppDesignLayer9
          UserName = 'Label16'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'SOMA.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          FormField = False
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 140494
          mmTop = 1058
          mmWidth = 10054
          BandType = 5
          GroupNo = 0
          LayerName = Foreground8
        end
        object ppDBCalc54: TppDBCalc
          DesignLayer = ppDesignLayer9
          UserName = 'DBCalc5'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'FPC_RECEBER_CC'
          DataPipeline = ppDBReceber
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = [fsBold]
          ResetGroup = ppGroup6
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBReceber'
          mmHeight = 2921
          mmLeft = 91017
          mmTop = 1058
          mmWidth = 20373
          BandType = 5
          GroupNo = 0
          LayerName = Foreground8
        end
        object ppDBCalc55: TppDBCalc
          DesignLayer = ppDesignLayer9
          UserName = 'DBCalc8'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'FPC_VLPARC'
          DataPipeline = ppDBReceber
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = [fsBold]
          ResetGroup = ppGroup6
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBReceber'
          mmHeight = 2921
          mmLeft = 151342
          mmTop = 1058
          mmWidth = 20373
          BandType = 5
          GroupNo = 0
          LayerName = Foreground8
        end
        object ppLine53: TppLine
          DesignLayer = ppDesignLayer9
          UserName = 'Line5'
          Border.Weight = 1.000000000000000000
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 31750
          mmTop = 265
          mmWidth = 142082
          BandType = 5
          GroupNo = 0
          LayerName = Foreground8
        end
      end
    end
    object ppGroup7: TppGroup
      BreakName = 'FPC_PAGTO'
      DataPipeline = ppDBReceber
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBReceber'
      NewFile = False
      object ppGroupHeaderBand6: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 3440
        mmPrintPosition = 0
        object ppLabel124: TppLabel
          DesignLayer = ppDesignLayer9
          UserName = 'Label10'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'Data Recebimento:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          FormField = False
          Transparent = True
          mmHeight = 3175
          mmLeft = 0
          mmTop = 0
          mmWidth = 27517
          BandType = 3
          GroupNo = 1
          LayerName = Foreground8
        end
        object ppDBText99: TppDBText
          DesignLayer = ppDesignLayer9
          UserName = 'DBText3'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'FPC_PAGTO'
          DataPipeline = ppDBReceber
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDBReceber'
          mmHeight = 3316
          mmLeft = 28310
          mmTop = 0
          mmWidth = 17198
          BandType = 3
          GroupNo = 1
          LayerName = Foreground8
        end
      end
      object ppGroupFooterBand6: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 4763
        mmPrintPosition = 0
        object ppLabel125: TppLabel
          DesignLayer = ppDesignLayer9
          UserName = 'Label12'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'TOTAL DO DIA.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          FormField = False
          Transparent = True
          mmHeight = 3316
          mmLeft = 32015
          mmTop = 794
          mmWidth = 21378
          BandType = 5
          GroupNo = 1
          LayerName = Foreground8
        end
        object ppDBCalc56: TppDBCalc
          DesignLayer = ppDesignLayer9
          UserName = 'DBCalc1'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'FPC_VLPAGO'
          DataPipeline = ppDBReceber
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = [fsBold]
          ResetGroup = ppGroup7
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBReceber'
          mmHeight = 2921
          mmLeft = 112448
          mmTop = 794
          mmWidth = 16404
          BandType = 5
          GroupNo = 1
          LayerName = Foreground8
        end
        object ppLabel126: TppLabel
          DesignLayer = ppDesignLayer9
          UserName = 'Label15'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'SOMA.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          FormField = False
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 140494
          mmTop = 794
          mmWidth = 10054
          BandType = 5
          GroupNo = 1
          LayerName = Foreground8
        end
        object ppDBCalc57: TppDBCalc
          DesignLayer = ppDesignLayer9
          UserName = 'DBCalc7'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'FPC_VLPARC'
          DataPipeline = ppDBReceber
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = [fsBold]
          ResetGroup = ppGroup7
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBReceber'
          mmHeight = 2921
          mmLeft = 151607
          mmTop = 794
          mmWidth = 20108
          BandType = 5
          GroupNo = 1
          LayerName = Foreground8
        end
        object ppLine54: TppLine
          DesignLayer = ppDesignLayer9
          UserName = 'Line4'
          Border.Weight = 1.000000000000000000
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 31750
          mmTop = 265
          mmWidth = 142082
          BandType = 5
          GroupNo = 1
          LayerName = Foreground8
        end
        object ppDBCalc58: TppDBCalc
          DesignLayer = ppDesignLayer9
          UserName = 'DBCalc4'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'FPC_RECEBER_CC'
          DataPipeline = ppDBReceber
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = [fsBold]
          ResetGroup = ppGroup7
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBReceber'
          mmHeight = 2921
          mmLeft = 90752
          mmTop = 794
          mmWidth = 20638
          BandType = 5
          GroupNo = 1
          LayerName = Foreground8
        end
      end
    end
    object raCodeModule8: TraCodeModule
      ProgramStream = {
        01060F5472614576656E7448616E646C65720B50726F6772616D4E616D650610
        444254657874344F6E476574546578740B50726F6772616D54797065070B7474
        50726F63656475726506536F7572636506B070726F6365647572652044425465
        7874344F6E476574546578742876617220546578743A20537472696E67293B0D
        0A626567696E0D0A202020206966204442526563656265725B274650435F4E55
        4D4552275D3C3E2727207468656E0D0A2020202020202054657874203A3D2027
        2F272B204442526563656265725B274650435F4E554D4552275D0D0A20202020
        656C73650D0A2020202020202054657874203A3D2027273B0D0A0D0A656E643B
        0D0A0D436F6D706F6E656E744E616D65060744425465787434094576656E744E
        616D6506094F6E47657454657874074576656E7449440235084361726574506F
        730102000200000000}
    end
    object ppDesignLayers9: TppDesignLayers
      object ppDesignLayer9: TppDesignLayer
        UserName = 'Foreground8'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList12: TppParameterList
    end
  end
  object ppDBReceber: TppDBPipeline
    DataSource = DsRelReceber
    UserName = 'DBReceber'
    Left = 760
    Top = 48
    object ppDBReceberppField1: TppField
      FieldAlias = 'FAT_CODIGO'
      FieldName = 'FAT_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBReceberppField2: TppField
      FieldAlias = 'FAT_DTEMIS'
      FieldName = 'FAT_DTEMIS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBReceberppField3: TppField
      FieldAlias = 'FAT_VL_LIQ'
      FieldName = 'FAT_VL_LIQ'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBReceberppField4: TppField
      FieldAlias = 'FAT_VLFAT'
      FieldName = 'FAT_VLFAT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBReceberppField5: TppField
      FieldAlias = 'FAT_QTDITEM'
      FieldName = 'FAT_QTDITEM'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBReceberppField6: TppField
      FieldAlias = 'FAT_BASEICMS'
      FieldName = 'FAT_BASEICMS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBReceberppField7: TppField
      FieldAlias = 'FAT_ALIQUOTA'
      FieldName = 'FAT_ALIQUOTA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBReceberppField8: TppField
      FieldAlias = 'FAT_VL_IPI'
      FieldName = 'FAT_VL_IPI'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBReceberppField9: TppField
      FieldAlias = 'FAT_BASESUB'
      FieldName = 'FAT_BASESUB'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBReceberppField10: TppField
      FieldAlias = 'FAT_ICMSRET'
      FieldName = 'FAT_ICMSRET'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBReceberppField11: TppField
      FieldAlias = 'FAT_COMIS1'
      FieldName = 'FAT_COMIS1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBReceberppField12: TppField
      FieldAlias = 'CLI_CODIGO'
      FieldName = 'CLI_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDBReceberppField13: TppField
      FieldAlias = 'CLI_RAZAO'
      FieldName = 'CLI_RAZAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDBReceberppField14: TppField
      FieldAlias = 'CLI_FONE'
      FieldName = 'CLI_FONE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppDBReceberppField15: TppField
      FieldAlias = 'CLI_UF'
      FieldName = 'CLI_UF'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppDBReceberppField16: TppField
      FieldAlias = 'REP_CODIGO'
      FieldName = 'REP_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppDBReceberppField17: TppField
      FieldAlias = 'REP_NOME'
      FieldName = 'REP_NOME'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppDBReceberppField18: TppField
      FieldAlias = 'PED_CODIGO'
      FieldName = 'PED_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppDBReceberppField19: TppField
      FieldAlias = 'FPC_NUMER'
      FieldName = 'FPC_NUMER'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object ppDBReceberppField20: TppField
      FieldAlias = 'FPC_VENCTO'
      FieldName = 'FPC_VENCTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object ppDBReceberppField21: TppField
      FieldAlias = 'FPC_COBNUM'
      FieldName = 'FPC_COBNUM'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object ppDBReceberppField22: TppField
      FieldAlias = 'FPC_STATUS'
      FieldName = 'FPC_STATUS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object ppDBReceberppField23: TppField
      FieldAlias = 'FPC_VLPARC'
      FieldName = 'FPC_VLPARC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object ppDBReceberppField24: TppField
      FieldAlias = 'FPC_VLPAGO'
      FieldName = 'FPC_VLPAGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object ppDBReceberppField25: TppField
      FieldAlias = 'FPC_DTEMIS'
      FieldName = 'FPC_DTEMIS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
    object ppDBReceberppField26: TppField
      FieldAlias = 'BAN_CODIGO'
      FieldName = 'BAN_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 25
      Searchable = False
      Sortable = False
    end
    object ppDBReceberppField27: TppField
      FieldAlias = 'BAN_APELIDO'
      FieldName = 'BAN_APELIDO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 26
      Searchable = False
      Sortable = False
    end
    object ppDBReceberppField28: TppField
      FieldAlias = 'FPC_MES_CC'
      FieldName = 'FPC_MES_CC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 27
      Searchable = False
      Sortable = False
    end
    object ppDBReceberppField29: TppField
      FieldAlias = 'FPC_RECEBER_CC'
      FieldName = 'FPC_RECEBER_CC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 28
      Searchable = False
      Sortable = False
    end
    object ppDBReceberppField30: TppField
      FieldAlias = 'FPC_DIA_CC'
      FieldName = 'FPC_DIA_CC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 29
      Searchable = False
      Sortable = False
    end
    object ppDBReceberppField31: TppField
      FieldAlias = 'FAT_ICMS_CC'
      FieldName = 'FAT_ICMS_CC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 30
      Searchable = False
      Sortable = False
    end
    object ppDBReceberppField32: TppField
      FieldAlias = 'PCX_CODIGO'
      FieldName = 'PCX_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 31
      Searchable = False
      Sortable = False
    end
    object ppDBReceberppField33: TppField
      FieldAlias = 'FPC_MES_PAGTO_CC'
      FieldName = 'FPC_MES_PAGTO_CC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 32
      Searchable = False
      Sortable = False
    end
    object ppDBReceberppField34: TppField
      FieldAlias = 'EMP_CODIGO'
      FieldName = 'EMP_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 33
      Searchable = False
      Sortable = False
    end
    object ppDBReceberppField35: TppField
      FieldAlias = 'FPC_PAGTO'
      FieldName = 'FPC_PAGTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 34
      Searchable = False
      Sortable = False
    end
    object ppDBReceberppField36: TppField
      FieldAlias = 'FPC_COBTIPO'
      FieldName = 'FPC_COBTIPO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 35
      Searchable = False
      Sortable = False
    end
    object ppDBReceberppField37: TppField
      FieldAlias = 'DESCR_COBRANCA_CC'
      FieldName = 'DESCR_COBRANCA_CC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 36
      Searchable = False
      Sortable = False
    end
    object ppDBReceberppField38: TppField
      FieldAlias = 'VL_DESCTO_LIQ_CC'
      FieldName = 'VL_DESCTO_LIQ_CC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 37
      Searchable = False
      Sortable = False
    end
    object ppDBReceberppField39: TppField
      FieldAlias = 'FPC_JUROS_DESCTO'
      FieldName = 'FPC_JUROS_DESCTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 38
      Searchable = False
      Sortable = False
    end
    object ppDBReceberppField40: TppField
      FieldAlias = 'FPC_DESCONTADO'
      FieldName = 'FPC_DESCONTADO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 39
      Searchable = False
      Sortable = False
    end
    object ppDBReceberppField41: TppField
      FieldAlias = 'FPC_JUROS'
      FieldName = 'FPC_JUROS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 40
      Searchable = False
      Sortable = False
    end
    object ppDBReceberppField42: TppField
      FieldAlias = 'FPC_MULTA'
      FieldName = 'FPC_MULTA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 41
      Searchable = False
      Sortable = False
    end
    object ppDBReceberppField43: TppField
      FieldAlias = 'FPC_DESCTO'
      FieldName = 'FPC_DESCTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 42
      Searchable = False
      Sortable = False
    end
    object ppDBReceberppField44: TppField
      FieldAlias = 'BAN_JUROMES'
      FieldName = 'BAN_JUROMES'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 43
      Searchable = False
      Sortable = False
    end
    object ppDBReceberppField45: TppField
      FieldAlias = 'JurosDia'
      FieldName = 'JurosDia'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 44
      Searchable = False
      Sortable = False
    end
    object ppDBReceberppField46: TppField
      FieldAlias = 'JurosTotal'
      FieldName = 'JurosTotal'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 45
      Searchable = False
      Sortable = False
    end
    object ppDBReceberppField47: TppField
      FieldAlias = 'FPG_DESCRICAO'
      FieldName = 'FPG_DESCRICAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 46
      Searchable = False
      Sortable = False
    end
    object ppDBReceberppField48: TppField
      FieldAlias = 'FPG_REGISTRO'
      FieldName = 'FPG_REGISTRO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 47
      Searchable = False
      Sortable = False
    end
  end
  object SqlCdsRel09: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT'#13#10'F1.FAT_CODIGO,'#13#10'F1.FPC_NUMER,'#13#10'F1.FPC_NPARCELAS,'#13#10'F1.FPC' +
      '_DTEMIS,'#13#10'F1.FPC_VENCTO,'#13#10'F1.FPC_DATADESCTO,'#13#10'F1.FPC_COBTIPO,'#13#10'F' +
      '1.FPC_STATUS,'#13#10'F1.FPC_SITPAG,'#13#10'F1.FPC_DESCONTADO,'#13#10'F1.FPC_VLPARC' +
      ','#13#10'F1.FPC_TIPODOC,'#13#10'F1.CLI_CODIGO,'#13#10'C1.CLI_RAZAO,'#13#10'F1.BAN_CODIGO' +
      ','#13#10'B1.BAN_APELIDO,'#13#10'B1.BAN_LIMITE_DESCTODUPL,'#13#10'B1.BAN_LIMITE_DES' +
      'CTOCHEQ,'#13#10'B1.BAN_LIMITE_UTILIZADO_DUPL,'#13#10'B1.BAN_LIMITE_UTILIZADO' +
      '_CHEQ,'#13#10'B1.BAN_JUROS_DESCTOCHEQ,'#13#10'B1.BAN_JUROS_DESCTODUPL,'#13#10'F1.F' +
      'PC_JUROS_DESCTO,'#13#10'F1.FPC_BANCO_CHEQUE,'#13#10'F1.FPC_NUM_CHEQUE,'#13#10'F1.F' +
      'PC_NUM_CHEQUE_DV,'#13#10'F1.FPC_SACADO_CHEQUE,'#13#10'T1.BCO_DESCRICAO'#13#10'FROM' +
      ' FAT_PC01 F1'#13#10'LEFT JOIN BAN0000 B1 on (F1.BAN_CODIGO = B1.BAN_CO' +
      'DIGO)'#13#10'LEFT JOIN BANCOS T1 ON (T1.BCO_CODIGO = F1.FPC_BANCO_CHEQ' +
      'UE)'#13#10'LEFT JOIN CLI0000 C1 ON (F1.CLI_CODIGO = C1.CLI_CODIGO)'#13#10'WH' +
      'ERE F1.FPC_DATADESCTO BETWEEN '#39'01.02.2006'#39' and '#39'01.02.2006'#39' AND ' +
      'F1.BAN_CODIGO = '#39'0003'#39' AND F1.EMP_CODIGO = '#39'001'#39#13#10'order by'#13#10'B1.B' +
      'AN_APELIDO,F1.FPC_VENCTO,F1.FPC_COBTIPO,C1.CLI_RAZAO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    OnCalcFields = SqlCdsRel09CalcFields
    CommandText = 
      'SELECT'#13#10'F1.FAT_CODIGO,'#13#10'F1.FPC_NUMER,'#13#10'F1.FPC_NPARCELAS,'#13#10'F1.FPC' +
      '_DTEMIS,'#13#10'F1.FPC_VENCTO,'#13#10'F1.FPC_DATADESCTO,'#13#10'F1.FPC_COBTIPO,'#13#10'F' +
      '1.FPC_STATUS,'#13#10'F1.FPC_SITPAG,'#13#10'F1.FPC_DESCONTADO,'#13#10'F1.FPC_VLPARC' +
      ','#13#10'F1.FPC_TIPODOC,'#13#10'F1.CLI_CODIGO,'#13#10'C1.CLI_RAZAO,'#13#10'F1.BAN_CODIGO' +
      ','#13#10'B1.BAN_APELIDO,'#13#10'B1.BAN_LIMITE_DESCTODUPL,'#13#10'B1.BAN_LIMITE_DES' +
      'CTOCHEQ,'#13#10'B1.BAN_LIMITE_UTILIZADO_DUPL,'#13#10'B1.BAN_LIMITE_UTILIZADO' +
      '_CHEQ,'#13#10'B1.BAN_JUROS_DESCTOCHEQ,'#13#10'B1.BAN_JUROS_DESCTODUPL,'#13#10'F1.F' +
      'PC_JUROS_DESCTO,'#13#10'F1.FPC_BANCO_CHEQUE,'#13#10'F1.FPC_NUM_CHEQUE,'#13#10'F1.F' +
      'PC_NUM_CHEQUE_DV,'#13#10'F1.FPC_SACADO_CHEQUE,'#13#10'T1.BCO_DESCRICAO'#13#10'FROM' +
      ' FAT_PC01 F1'#13#10'LEFT JOIN BAN0000 B1 on (F1.BAN_CODIGO = B1.BAN_CO' +
      'DIGO)'#13#10'LEFT JOIN BANCOS T1 ON (T1.BCO_CODIGO = F1.FPC_BANCO_CHEQ' +
      'UE)'#13#10'LEFT JOIN CLI0000 C1 ON (F1.CLI_CODIGO = C1.CLI_CODIGO)'#13#10'WH' +
      'ERE F1.FPC_DATADESCTO BETWEEN '#39'01.02.2006'#39' and '#39'01.02.2006'#39' AND ' +
      'F1.BAN_CODIGO = '#39'0003'#39' AND F1.EMP_CODIGO = '#39'001'#39#13#10'order by'#13#10'B1.B' +
      'AN_APELIDO,F1.FPC_VENCTO,F1.FPC_COBTIPO,C1.CLI_RAZAO'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 620
    Top = 448
    object SqlCdsRel09FAT_CODIGO: TStringField
      FieldName = 'FAT_CODIGO'
      Required = True
      Size = 6
    end
    object SqlCdsRel09FPC_NUMER: TStringField
      FieldName = 'FPC_NUMER'
      Size = 2
    end
    object SqlCdsRel09FPC_NPARCELAS: TSmallintField
      FieldName = 'FPC_NPARCELAS'
    end
    object SqlCdsRel09FPC_DTEMIS: TSQLTimeStampField
      FieldName = 'FPC_DTEMIS'
    end
    object SqlCdsRel09FPC_VENCTO: TSQLTimeStampField
      FieldName = 'FPC_VENCTO'
    end
    object SqlCdsRel09FPC_DATADESCTO: TDateField
      FieldName = 'FPC_DATADESCTO'
    end
    object SqlCdsRel09FPC_COBTIPO: TStringField
      FieldName = 'FPC_COBTIPO'
      Size = 2
    end
    object SqlCdsRel09FPC_STATUS: TStringField
      FieldName = 'FPC_STATUS'
      Size = 12
    end
    object SqlCdsRel09FPC_SITPAG: TStringField
      FieldName = 'FPC_SITPAG'
      Size = 1
    end
    object SqlCdsRel09FPC_DESCONTADO: TStringField
      FieldName = 'FPC_DESCONTADO'
      Size = 1
    end
    object SqlCdsRel09FPC_VLPARC: TFMTBCDField
      FieldName = 'FPC_VLPARC'
      Precision = 15
    end
    object SqlCdsRel09CLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Size = 5
    end
    object SqlCdsRel09CLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Size = 55
    end
    object SqlCdsRel09BAN_CODIGO: TStringField
      FieldName = 'BAN_CODIGO'
      Size = 4
    end
    object SqlCdsRel09BAN_APELIDO: TStringField
      FieldName = 'BAN_APELIDO'
      Size = 25
    end
    object SqlCdsRel09BAN_LIMITE_DESCTODUPL: TFMTBCDField
      FieldName = 'BAN_LIMITE_DESCTODUPL'
      Precision = 15
    end
    object SqlCdsRel09BAN_LIMITE_DESCTOCHEQ: TFMTBCDField
      FieldName = 'BAN_LIMITE_DESCTOCHEQ'
      Precision = 15
    end
    object SqlCdsRel09BAN_LIMITE_UTILIZADO_DUPL: TFMTBCDField
      FieldName = 'BAN_LIMITE_UTILIZADO_DUPL'
      Precision = 15
    end
    object SqlCdsRel09BAN_LIMITE_UTILIZADO_CHEQ: TFMTBCDField
      FieldName = 'BAN_LIMITE_UTILIZADO_CHEQ'
      Precision = 15
    end
    object SqlCdsRel09BAN_JUROS_DESCTOCHEQ: TFMTBCDField
      FieldName = 'BAN_JUROS_DESCTOCHEQ'
      Precision = 15
    end
    object SqlCdsRel09BAN_JUROS_DESCTODUPL: TFMTBCDField
      FieldName = 'BAN_JUROS_DESCTODUPL'
      Precision = 15
    end
    object SqlCdsRel09FATURA_CC: TStringField
      FieldKind = fkCalculated
      FieldName = 'FATURA_CC'
      Size = 12
      Calculated = True
    end
    object SqlCdsRel09CLIENTE_CC: TStringField
      FieldKind = fkCalculated
      FieldName = 'CLIENTE_CC'
      Size = 60
      Calculated = True
    end
    object SqlCdsRel09DOCUTO_CC: TStringField
      FieldKind = fkCalculated
      FieldName = 'DOCUTO_CC'
      Size = 10
      Calculated = True
    end
    object SqlCdsRel09LIMITE_01_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'LIMITE_01_CC'
      Calculated = True
    end
    object SqlCdsRel09LIMITE_02_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'LIMITE_02_CC'
      Calculated = True
    end
    object SqlCdsRel09N_DIAS_CC: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'N_DIAS_CC'
      Calculated = True
    end
    object SqlCdsRel09TOTAL_LIQUIDO_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'TOTAL_LIQUIDO_CC'
      Calculated = True
    end
    object SqlCdsRel09JURO_BANCO_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'JURO_BANCO_CC'
      Calculated = True
    end
    object SqlCdsRel09FPC_JUROS_DESCTO: TFMTBCDField
      FieldName = 'FPC_JUROS_DESCTO'
      Precision = 15
    end
    object SqlCdsRel09FPC_BANCO_CHEQUE: TIntegerField
      FieldName = 'FPC_BANCO_CHEQUE'
      DisplayFormat = '0000'
    end
    object SqlCdsRel09FPC_NUM_CHEQUE: TStringField
      FieldName = 'FPC_NUM_CHEQUE'
      Size = 10
    end
    object SqlCdsRel09FPC_NUM_CHEQUE_DV: TStringField
      FieldName = 'FPC_NUM_CHEQUE_DV'
      Size = 1
    end
    object SqlCdsRel09FPC_SACADO_CHEQUE: TStringField
      FieldName = 'FPC_SACADO_CHEQUE'
      Size = 55
    end
    object SqlCdsRel09CC_RAZAO: TStringField
      FieldKind = fkCalculated
      FieldName = 'CC_RAZAO'
      Size = 50
      Calculated = True
    end
    object SqlCdsRel09FPC_TIPODOC: TStringField
      FieldName = 'FPC_TIPODOC'
      Size = 2
    end
    object SqlCdsRel09BCO_DESCRICAO: TStringField
      FieldName = 'BCO_DESCRICAO'
      Size = 35
    end
  end
  object DsRel09: TDataSource
    DataSet = SqlCdsRel09
    Left = 699
    Top = 504
  end
  object ppDBRel09: TppDBPipeline
    DataSource = DsRel09
    UserName = 'DBRel09'
    Left = 760
    Top = 504
  end
  object ppRPRelConReceber09: TppReport
    AutoStop = False
    DataPipeline = ppDBRel09
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 10000
    PrinterSetup.mmMarginLeft = 10000
    PrinterSetup.mmMarginRight = 10000
    PrinterSetup.mmMarginTop = 10000
    PrinterSetup.mmPaperHeight = 216000
    PrinterSetup.mmPaperWidth = 279000
    PrinterSetup.PaperSize = 1
    Template.FileName = 'X:\developer\adjutor\fontesrelatorios\RELCONRECEBER09'
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    BeforePrint = ppRPRelConReceber00BeforePrint
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
    Left = 856
    Top = 504
    Version = '16.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBRel09'
    object ppHeaderBand5: TppHeaderBand
      Background.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 14552
      mmPrintPosition = 0
      object ppLine55: TppLine
        DesignLayer = ppDesignLayer10
        UserName = 'Line1'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 257440
        BandType = 0
        LayerName = Foreground9
      end
      object LBL_09_EMPRESA: TppLabel
        DesignLayer = ppDesignLayer10
        UserName = 'LBL_09_EMPRESA'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'LABEL_EMPRESA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 265
        mmTop = 794
        mmWidth = 159809
        BandType = 0
        LayerName = Foreground9
      end
      object LBL_09_LTITULO1: TppLabel
        DesignLayer = ppDesignLayer10
        UserName = 'LBL_09_LTITULO1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'TITULO1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 5292
        mmWidth = 160073
        BandType = 0
        LayerName = Foreground9
      end
      object LBL_09_LTITULO2: TppLabel
        DesignLayer = ppDesignLayer10
        UserName = 'LBL_09_LTITULO2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'TITULO2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 9790
        mmWidth = 160073
        BandType = 0
        LayerName = Foreground9
      end
      object ppSystemVariable21: TppSystemVariable
        DesignLayer = ppDesignLayer10
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4163
        mmLeft = 224896
        mmTop = 794
        mmWidth = 32597
        BandType = 0
        LayerName = Foreground9
      end
      object ppSystemVariable22: TppSystemVariable
        DesignLayer = ppDesignLayer10
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 224896
        mmTop = 9790
        mmWidth = 32544
        BandType = 0
        LayerName = Foreground9
      end
      object ppLine56: TppLine
        DesignLayer = ppDesignLayer10
        UserName = 'Line4'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 14287
        mmWidth = 257440
        BandType = 0
        LayerName = Foreground9
      end
    end
    object ppDetailBand6: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 3440
      mmPrintPosition = 0
      object ppDBTRazao: TppDBText
        DesignLayer = ppDesignLayer10
        UserName = 'ppDBTRazao'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CC_RAZAO'
        DataPipeline = ppDBRel09
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRel09'
        mmHeight = 3175
        mmLeft = 25929
        mmTop = 265
        mmWidth = 51329
        BandType = 4
        LayerName = Foreground9
      end
      object ppDBText106: TppDBText
        DesignLayer = ppDesignLayer10
        UserName = 'DBText106'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FPC_VENCTO'
        DataPipeline = ppDBRel09
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRel09'
        mmHeight = 3175
        mmLeft = 96044
        mmTop = 265
        mmWidth = 15610
        BandType = 4
        LayerName = Foreground9
      end
      object ppDBText107: TppDBText
        DesignLayer = ppDesignLayer10
        UserName = 'DBText107'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FPC_DATADESCTO'
        DataPipeline = ppDBRel09
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRel09'
        mmHeight = 3175
        mmLeft = 78846
        mmTop = 265
        mmWidth = 15610
        BandType = 4
        LayerName = Foreground9
      end
      object ppDBText108: TppDBText
        DesignLayer = ppDesignLayer10
        UserName = 'DBText108'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FPC_VLPARC'
        DataPipeline = ppDBRel09
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel09'
        mmHeight = 3175
        mmLeft = 119856
        mmTop = 265
        mmWidth = 17992
        BandType = 4
        LayerName = Foreground9
      end
      object ppDBText109: TppDBText
        DesignLayer = ppDesignLayer10
        UserName = 'DBText109'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FATURA_CC'
        DataPipeline = ppDBRel09
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRel09'
        mmHeight = 3175
        mmLeft = 11642
        mmTop = 265
        mmWidth = 8467
        BandType = 4
        LayerName = Foreground9
      end
      object ppDBText101: TppDBText
        DesignLayer = ppDesignLayer10
        UserName = 'DBText101'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'N_DIAS_CC'
        DataPipeline = ppDBRel09
        DisplayFormat = '000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRel09'
        mmHeight = 3175
        mmLeft = 112713
        mmTop = 265
        mmWidth = 6085
        BandType = 4
        LayerName = Foreground9
      end
      object ppDBText110: TppDBText
        DesignLayer = ppDesignLayer10
        UserName = 'DBText110'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FAT_CODIGO'
        DataPipeline = ppDBRel09
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRel09'
        mmHeight = 3175
        mmLeft = 0
        mmTop = 265
        mmWidth = 9790
        BandType = 4
        LayerName = Foreground9
      end
      object ppDBTNcheque: TppDBText
        DesignLayer = ppDesignLayer10
        UserName = 'ppDBTNcheque'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FPC_NUM_CHEQUE'
        DataPipeline = ppDBRel09
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRel09'
        mmHeight = 3175
        mmLeft = 138907
        mmTop = 265
        mmWidth = 20108
        BandType = 4
        LayerName = Foreground9
      end
      object ppDBText112: TppDBText
        DesignLayer = ppDesignLayer10
        UserName = 'DBText112'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'BCO_DESCRICAO'
        DataPipeline = ppDBRel09
        DisplayFormat = '0000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRel09'
        mmHeight = 3175
        mmLeft = 160073
        mmTop = 265
        mmWidth = 52123
        BandType = 4
        LayerName = Foreground9
      end
      object DBTSacado: TppDBText
        DesignLayer = ppDesignLayer10
        UserName = 'DBTSacado'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FPC_SACADO_CHEQUE'
        DataPipeline = ppDBRel09
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRel09'
        mmHeight = 3175
        mmLeft = 213784
        mmTop = 265
        mmWidth = 42863
        BandType = 4
        LayerName = Foreground9
      end
    end
    object ppSummaryBand5: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 5027
      mmPrintPosition = 0
      object ppLine62: TppLine
        DesignLayer = ppDesignLayer10
        UserName = 'Line601'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 3968
        mmWidth = 257440
        BandType = 7
        LayerName = Foreground9
      end
      object ppLabel136: TppLabel
        DesignLayer = ppDesignLayer10
        UserName = 'Label136'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Total Geral da Conta R$:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 87842
        mmTop = 529
        mmWidth = 30903
        BandType = 7
        LayerName = Foreground9
      end
      object ppDBCalc60: TppDBCalc
        DesignLayer = ppDesignLayer10
        UserName = 'DBCalc60'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FPC_VLPARC'
        DataPipeline = ppDBRel09
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel09'
        mmHeight = 3175
        mmLeft = 119856
        mmTop = 529
        mmWidth = 17992
        BandType = 7
        LayerName = Foreground9
      end
    end
    object ppGroup8: TppGroup
      BreakName = 'BAN_APELIDO'
      DataPipeline = ppDBRel09
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      NewPage = True
      StartOnOddPage = False
      UserName = 'Group8'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBRel09'
      NewFile = False
      object ppGroupHeaderBand7: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 4763
        mmPrintPosition = 0
        object ppLabel128: TppLabel
          DesignLayer = ppDesignLayer10
          UserName = 'Label128'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'Conta.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          FormField = False
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 0
          mmTop = 265
          mmWidth = 10848
          BandType = 3
          GroupNo = 0
          LayerName = Foreground9
        end
        object ppLine57: TppLine
          DesignLayer = ppDesignLayer10
          UserName = 'Line57'
          Border.Weight = 1.000000000000000000
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 4498
          mmWidth = 257440
          BandType = 3
          GroupNo = 0
          LayerName = Foreground9
        end
        object ppDBText102: TppDBText
          DesignLayer = ppDesignLayer10
          UserName = 'DBText102'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'BAN_CODIGO'
          DataPipeline = ppDBRel09
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBRel09'
          mmHeight = 3704
          mmLeft = 10583
          mmTop = 265
          mmWidth = 7938
          BandType = 3
          GroupNo = 0
          LayerName = Foreground9
        end
        object ppDBText104: TppDBText
          DesignLayer = ppDesignLayer10
          UserName = 'DBText104'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'BAN_APELIDO'
          DataPipeline = ppDBRel09
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBRel09'
          mmHeight = 3704
          mmLeft = 19050
          mmTop = 265
          mmWidth = 51065
          BandType = 3
          GroupNo = 0
          LayerName = Foreground9
        end
        object LBL_LIMITE1: TppLabel
          DesignLayer = ppDesignLayer10
          UserName = 'LBL_LIMITE1'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'Limite.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          FormField = False
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 120650
          mmTop = 265
          mmWidth = 11113
          BandType = 3
          GroupNo = 0
          LayerName = Foreground9
        end
        object DbLimite1: TppDBText
          DesignLayer = ppDesignLayer10
          UserName = 'DbLimite1'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'LIMITE_01_CC'
          DataPipeline = ppDBRel09
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBRel09'
          mmHeight = 3704
          mmLeft = 132292
          mmTop = 265
          mmWidth = 17727
          BandType = 3
          GroupNo = 0
          LayerName = Foreground9
        end
        object LBL_LIMITE2: TppLabel
          DesignLayer = ppDesignLayer10
          UserName = 'LBL_LIMITE2'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'Limite Utilizado:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          FormField = False
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 152136
          mmTop = 265
          mmWidth = 24077
          BandType = 3
          GroupNo = 0
          LayerName = Foreground9
        end
        object DbLimite2: TppDBText
          DesignLayer = ppDesignLayer10
          UserName = 'DbLimite2'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'LIMITE_02_CC'
          DataPipeline = ppDBRel09
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBRel09'
          mmHeight = 3704
          mmLeft = 176742
          mmTop = 265
          mmWidth = 17727
          BandType = 3
          GroupNo = 0
          LayerName = Foreground9
        end
      end
      object ppGroupFooterBand7: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 4763
        mmPrintPosition = 0
        object ppLabel166: TppLabel
          DesignLayer = ppDesignLayer10
          UserName = 'Label166'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'Total da Conta R$:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormField = False
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3175
          mmLeft = 95250
          mmTop = 529
          mmWidth = 23548
          BandType = 5
          GroupNo = 0
          LayerName = Foreground9
        end
        object ppDBCalc62: TppDBCalc
          DesignLayer = ppDesignLayer10
          UserName = 'DBCalc62'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'FPC_VLPARC'
          DataPipeline = ppDBRel09
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup8
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBRel09'
          mmHeight = 3175
          mmLeft = 119856
          mmTop = 529
          mmWidth = 17992
          BandType = 5
          GroupNo = 0
          LayerName = Foreground9
        end
        object ppLine70: TppLine
          DesignLayer = ppDesignLayer10
          UserName = 'Line602'
          Border.Weight = 1.000000000000000000
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 4498
          mmWidth = 257440
          BandType = 5
          GroupNo = 0
          LayerName = Foreground9
        end
      end
    end
    object ppGroup9: TppGroup
      BreakName = 'FPC_COBTIPO'
      DataPipeline = ppDBRel09
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group9'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBRel09'
      NewFile = False
      object ppGroupHeaderBand8: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 4498
        mmPrintPosition = 0
        object ppLine69: TppLine
          DesignLayer = ppDesignLayer10
          UserName = 'Line69'
          Border.Weight = 1.000000000000000000
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 4233
          mmWidth = 257440
          BandType = 3
          GroupNo = 1
          LayerName = Foreground9
        end
        object LBL_TIPO_COBRANCA: TppLabel
          DesignLayer = ppDesignLayer10
          UserName = 'LBL_TIPO_COBRANCA'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'COBRAN'#199'A:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          FormField = False
          Transparent = True
          mmHeight = 3704
          mmLeft = 0
          mmTop = 0
          mmWidth = 19844
          BandType = 3
          GroupNo = 1
          LayerName = Foreground9
        end
      end
      object ppGroupFooterBand8: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 4233
        mmPrintPosition = 0
        object ppDBCalc59: TppDBCalc
          DesignLayer = ppDesignLayer10
          UserName = 'DBCalc59'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'FPC_VLPARC'
          DataPipeline = ppDBRel09
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup9
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBRel09'
          mmHeight = 3175
          mmLeft = 119856
          mmTop = 529
          mmWidth = 17992
          BandType = 5
          GroupNo = 1
          LayerName = Foreground9
        end
        object ppLabel131: TppLabel
          DesignLayer = ppDesignLayer10
          UserName = 'Label131'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'Sub-Total da Cobran'#231'a R$:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormField = False
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3175
          mmLeft = 81492
          mmTop = 529
          mmWidth = 37306
          BandType = 5
          GroupNo = 1
          LayerName = Foreground9
        end
        object ppLine60: TppLine
          DesignLayer = ppDesignLayer10
          UserName = 'Line60'
          Border.Weight = 1.000000000000000000
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 3968
          mmWidth = 257440
          BandType = 5
          GroupNo = 1
          LayerName = Foreground9
        end
      end
    end
    object ppGroup11: TppGroup
      BreakName = 'FPC_DATADESCTO'
      DataPipeline = ppDBRel09
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group11'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBRel09'
      NewFile = False
      object ppGroupHeaderBand10: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 4233
        mmPrintPosition = 0
        object ppLine58: TppLine
          DesignLayer = ppDesignLayer10
          UserName = 'Line58'
          Border.Weight = 1.000000000000000000
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 3968
          mmWidth = 257440
          BandType = 3
          GroupNo = 2
          LayerName = Foreground9
        end
        object ppLabel129: TppLabel
          DesignLayer = ppDesignLayer10
          UserName = 'Label129'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'Fatura'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormField = False
          Transparent = True
          mmHeight = 3175
          mmLeft = 265
          mmTop = 265
          mmWidth = 9790
          BandType = 3
          GroupNo = 2
          LayerName = Foreground9
        end
        object ppLabel130: TppLabel
          DesignLayer = ppDesignLayer10
          UserName = 'Label130'
          HyperlinkEnabled = False
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Caption = 'Cliente/Sacado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormField = False
          Transparent = True
          mmHeight = 3175
          mmLeft = 25929
          mmTop = 265
          mmWidth = 51329
          BandType = 3
          GroupNo = 2
          LayerName = Foreground9
        end
        object ppLabel132: TppLabel
          DesignLayer = ppDesignLayer10
          UserName = 'Label132'
          HyperlinkEnabled = False
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Caption = 'Vencto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormField = False
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3175
          mmLeft = 96044
          mmTop = 265
          mmWidth = 15610
          BandType = 3
          GroupNo = 2
          LayerName = Foreground9
        end
        object ppLabel133: TppLabel
          DesignLayer = ppDesignLayer10
          UserName = 'Label133'
          HyperlinkEnabled = False
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Caption = 'Dt.Descto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormField = False
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3175
          mmLeft = 78846
          mmTop = 265
          mmWidth = 15610
          BandType = 3
          GroupNo = 2
          LayerName = Foreground9
        end
        object ppLabel135: TppLabel
          DesignLayer = ppDesignLayer10
          UserName = 'Label135'
          HyperlinkEnabled = False
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Caption = 'Vl.Fatura'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormField = False
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3175
          mmLeft = 119856
          mmTop = 265
          mmWidth = 17992
          BandType = 3
          GroupNo = 2
          LayerName = Foreground9
        end
        object ppLabel137: TppLabel
          DesignLayer = ppDesignLayer10
          UserName = 'Label137'
          HyperlinkEnabled = False
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Caption = 'Dias'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormField = False
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3175
          mmLeft = 112713
          mmTop = 265
          mmWidth = 6085
          BandType = 3
          GroupNo = 2
          LayerName = Foreground9
        end
        object ppLabel134: TppLabel
          DesignLayer = ppDesignLayer10
          UserName = 'Label134'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'Parc.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormField = False
          Transparent = True
          mmHeight = 3175
          mmLeft = 11642
          mmTop = 265
          mmWidth = 8467
          BandType = 3
          GroupNo = 2
          LayerName = Foreground9
        end
        object ppLabel106: TppLabel
          DesignLayer = ppDesignLayer10
          UserName = 'Label106'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'N'#186' Cheque'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormField = False
          Transparent = True
          mmHeight = 3175
          mmLeft = 138907
          mmTop = 265
          mmWidth = 20108
          BandType = 3
          GroupNo = 2
          LayerName = Foreground9
        end
        object ppLabel107: TppLabel
          DesignLayer = ppDesignLayer10
          UserName = 'Label107'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'Banco do Sacado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormField = False
          Transparent = True
          mmHeight = 3175
          mmLeft = 160073
          mmTop = 265
          mmWidth = 51858
          BandType = 3
          GroupNo = 2
          LayerName = Foreground9
        end
        object ppLabel162: TppLabel
          DesignLayer = ppDesignLayer10
          UserName = 'Label162'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'Nome do Sacado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormField = False
          Transparent = True
          mmHeight = 3175
          mmLeft = 213784
          mmTop = 265
          mmWidth = 21431
          BandType = 3
          GroupNo = 2
          LayerName = Foreground9
        end
      end
      object ppGroupFooterBand10: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 4763
        mmPrintPosition = 0
        object ppLabel163: TppLabel
          DesignLayer = ppDesignLayer10
          UserName = 'Label163'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'Sub-Total do Dia R$:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormField = False
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3175
          mmLeft = 93134
          mmTop = 794
          mmWidth = 25576
          BandType = 5
          GroupNo = 2
          LayerName = Foreground9
        end
        object ppDBCalc63: TppDBCalc
          DesignLayer = ppDesignLayer10
          UserName = 'DBCalc63'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'FPC_VLPARC'
          DataPipeline = ppDBRel09
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup11
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBRel09'
          mmHeight = 3175
          mmLeft = 119856
          mmTop = 794
          mmWidth = 17992
          BandType = 5
          GroupNo = 2
          LayerName = Foreground9
        end
        object ppLine59: TppLine
          DesignLayer = ppDesignLayer10
          UserName = 'Line59'
          Border.Weight = 1.000000000000000000
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 0
          mmWidth = 257440
          BandType = 5
          GroupNo = 2
          LayerName = Foreground9
        end
        object ppLine71: TppLine
          DesignLayer = ppDesignLayer10
          UserName = 'Line71'
          Border.Weight = 1.000000000000000000
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 4498
          mmWidth = 257440
          BandType = 5
          GroupNo = 2
          LayerName = Foreground9
        end
      end
    end
    object raCodeModule10: TraCodeModule
      ProgramStream = {
        01060F5472614576656E7448616E646C65720B50726F6772616D4E616D650613
        707044425452617A616F4F6E476574546578740B50726F6772616D5479706507
        0B747450726F63656475726506536F75726365066E70726F6365647572652070
        7044425452617A616F4F6E476574546578742876617220546578743A20537472
        696E67293B0D0A626567696E0D0A0D0A202054657874203A3D20636F70792844
        4252656C30395B2743435F52415A414F275D2C312C3330293B0D0A0D0A656E64
        3B0D0A0D436F6D706F6E656E744E616D65060A707044425452617A616F094576
        656E744E616D6506094F6E47657454657874074576656E744944023508436172
        6574506F730102000200000001060F5472614576656E7448616E646C65720B50
        726F6772616D4E616D65061244425453616361646F4F6E476574546578740B50
        726F6772616D54797065070B747450726F63656475726506536F757263650676
        70726F6365647572652044425453616361646F4F6E4765745465787428766172
        20546578743A20537472696E67293B0D0A626567696E0D0A0D0A202054657874
        203A3D20636F707928444252656C30395B274650435F53414341444F5F434845
        515545275D2C312C3235293B0D0A0D0A656E643B0D0A0D436F6D706F6E656E74
        4E616D65060944425453616361646F094576656E744E616D6506094F6E476574
        54657874074576656E7449440235084361726574506F73010200020000000106
        0F5472614576656E7448616E646C65720B50726F6772616D4E616D6506157070
        4442544E6368657175654F6E476574546578740B50726F6772616D5479706507
        0B747450726F63656475726506536F7572636506D770726F6365647572652070
        704442544E6368657175654F6E476574546578742876617220546578743A2053
        7472696E67293B0D0A626567696E0D0A20202069662028444252656C30395B27
        4650435F4E554D5F434845515545275D203C3E20272729207468656E0D0A2020
        2020202054657874203A3D20444252656C30395B274650435F4E554D5F434845
        515545275D2B272D272B444252656C30395B274650435F4E554D5F4348455155
        455F4456275D0D0A202020656C7365202020200D0A2020200954657874203A3D
        2027273B0D0A656E643B0D0A0D436F6D706F6E656E744E616D65060C70704442
        544E636865717565094576656E744E616D6506094F6E47657454657874074576
        656E7449440235084361726574506F730102000200000001060F547261457665
        6E7448616E646C65720B50726F6772616D4E616D650612444254657874313132
        4F6E476574546578740B50726F6772616D54797065070B747450726F63656475
        726506536F75726365067170726F636564757265204442546578743131324F6E
        476574546578742876617220546578743A20537472696E67293B0D0A62656769
        6E0D0A0D0A202054657874203A3D20636F707928444252656C30395B2742434F
        5F44455343524943414F275D2C312C3235290D0A0D0A656E643B0D0A0D436F6D
        706F6E656E744E616D650609444254657874313132094576656E744E616D6506
        094F6E47657454657874074576656E7449440235084361726574506F73010200
        0200000000}
    end
    object ppDesignLayers10: TppDesignLayers
      object ppDesignLayer10: TppDesignLayer
        UserName = 'Foreground9'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList2: TppParameterList
    end
  end
  object SqlCdsRel10: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT'#13#10'T1.*,'#13#10'T2.CLI_RAZAO,'#13#10'T3.BAN_APELIDO,'#13#10'T4.BCO_DESCRICAO,' +
      #13#10'T5.PED_CODIGO'#13#10'FROM FAT_PC01 T1'#13#10'LEFT JOIN FAT0000 T5 ON (T5.F' +
      'AT_CODIGO = T1.FAT_CODIGO)'#13#10'LEFT JOIN CLI0000 T2 ON (T2.CLI_CODI' +
      'GO = T1.CLI_CODIGO)'#13#10'LEFT JOIN BAN0000 T3 ON (T3.BAN_CODIGO = T1' +
      '.BAN_CODIGO)'#13#10'LEFT JOIN BANCOS T4 ON (T4.BCO_CODIGO = T1.FPC_BAN' +
      'CO_CHEQUE)'#13#10'WHERE T1.FPC_DTEMIS BETWEEN '#39'01.06.2006'#39' AND '#39'30.06.' +
      '2006'#39' AND T1.FPC_TIPODOC = '#39'CH'#39
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    OnCalcFields = SqlCdsRel10CalcFields
    CommandText = 
      'SELECT'#13#10'T1.*,'#13#10'T2.CLI_RAZAO,'#13#10'T3.BAN_APELIDO,'#13#10'T4.BCO_DESCRICAO,' +
      #13#10'T5.PED_CODIGO'#13#10'FROM FAT_PC01 T1'#13#10'LEFT JOIN FAT0000 T5 ON (T5.F' +
      'AT_CODIGO = T1.FAT_CODIGO)'#13#10'LEFT JOIN CLI0000 T2 ON (T2.CLI_CODI' +
      'GO = T1.CLI_CODIGO)'#13#10'LEFT JOIN BAN0000 T3 ON (T3.BAN_CODIGO = T1' +
      '.BAN_CODIGO)'#13#10'LEFT JOIN BANCOS T4 ON (T4.BCO_CODIGO = T1.FPC_BAN' +
      'CO_CHEQUE)'#13#10'WHERE T1.FPC_DTEMIS BETWEEN '#39'01.06.2006'#39' AND '#39'30.06.' +
      '2006'#39' AND T1.FPC_TIPODOC = '#39'CH'#39
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 620
    Top = 504
    object SqlCdsRel10FAT_REGISTRO: TIntegerField
      FieldName = 'FAT_REGISTRO'
      Required = True
    end
    object SqlCdsRel10FAT_CODIGO: TStringField
      FieldName = 'FAT_CODIGO'
      Required = True
      Size = 6
    end
    object SqlCdsRel10FPC_NUMER: TStringField
      FieldName = 'FPC_NUMER'
      Size = 2
    end
    object SqlCdsRel10REP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      Size = 3
    end
    object SqlCdsRel10BAN_CODIGO: TStringField
      FieldName = 'BAN_CODIGO'
      Size = 4
    end
    object SqlCdsRel10CCT_CODIGO: TStringField
      FieldName = 'CCT_CODIGO'
      Size = 3
    end
    object SqlCdsRel10PCX_CODIGO: TStringField
      FieldName = 'PCX_CODIGO'
      Size = 3
    end
    object SqlCdsRel10FPC_DTEMIS: TSQLTimeStampField
      FieldName = 'FPC_DTEMIS'
    end
    object SqlCdsRel10FPC_NPARCELAS: TSmallintField
      FieldName = 'FPC_NPARCELAS'
    end
    object SqlCdsRel10FPC_COBNUM: TStringField
      FieldName = 'FPC_COBNUM'
      Size = 16
    end
    object SqlCdsRel10FPC_COBTIPO: TStringField
      FieldName = 'FPC_COBTIPO'
      Size = 2
    end
    object SqlCdsRel10FPC_TIPODOC: TStringField
      FieldName = 'FPC_TIPODOC'
      Size = 2
    end
    object SqlCdsRel10FPC_SITPAG: TStringField
      FieldName = 'FPC_SITPAG'
      Size = 1
    end
    object SqlCdsRel10FPC_STATUS: TStringField
      FieldName = 'FPC_STATUS'
      Size = 12
    end
    object SqlCdsRel10FPC_DESCTO: TFMTBCDField
      FieldName = 'FPC_DESCTO'
      Precision = 15
    end
    object SqlCdsRel10FPC_DTDESC: TSQLTimeStampField
      FieldName = 'FPC_DTDESC'
    end
    object SqlCdsRel10FPC_VENCTO: TSQLTimeStampField
      FieldName = 'FPC_VENCTO'
    end
    object SqlCdsRel10FPC_PAGTO: TSQLTimeStampField
      FieldName = 'FPC_PAGTO'
    end
    object SqlCdsRel10FPC_VLPARC: TFMTBCDField
      FieldName = 'FPC_VLPARC'
      Precision = 15
    end
    object SqlCdsRel10FPC_VLPAGO: TFMTBCDField
      FieldName = 'FPC_VLPAGO'
      Precision = 15
    end
    object SqlCdsRel10FPC_OBS: TStringField
      FieldName = 'FPC_OBS'
      Size = 50
    end
    object SqlCdsRel10CLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Size = 5
    end
    object SqlCdsRel10FPC_IMPDUP: TStringField
      FieldName = 'FPC_IMPDUP'
      Size = 1
    end
    object SqlCdsRel10FPC_JUROS: TFMTBCDField
      FieldName = 'FPC_JUROS'
      Precision = 15
    end
    object SqlCdsRel10FPC_MULTA: TFMTBCDField
      FieldName = 'FPC_MULTA'
      Precision = 15
    end
    object SqlCdsRel10FPC_VL_RET: TFMTBCDField
      FieldName = 'FPC_VL_RET'
      Precision = 15
    end
    object SqlCdsRel10EMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlCdsRel10CCT_NOVO: TStringField
      FieldName = 'CCT_NOVO'
      Size = 3
    end
    object SqlCdsRel10FPC_PREVISAO: TStringField
      FieldName = 'FPC_PREVISAO'
      Size = 1
    end
    object SqlCdsRel10FPC_STATUS_REMESSA: TStringField
      FieldName = 'FPC_STATUS_REMESSA'
      FixedChar = True
      Size = 1
    end
    object SqlCdsRel10FPC_DATA_REMESSA: TDateField
      FieldName = 'FPC_DATA_REMESSA'
    end
    object SqlCdsRel10BAN_COD_APELIDO: TIntegerField
      FieldName = 'BAN_COD_APELIDO'
    end
    object SqlCdsRel10FPC_STATUS_BAIXA: TStringField
      FieldName = 'FPC_STATUS_BAIXA'
      FixedChar = True
      Size = 1
    end
    object SqlCdsRel10FPC_FORMAPAGTO: TStringField
      FieldName = 'FPC_FORMAPAGTO'
      Size = 2
    end
    object SqlCdsRel10FPC_DESCONTADO: TStringField
      FieldName = 'FPC_DESCONTADO'
      Size = 1
    end
    object SqlCdsRel10FPC_DATADESCTO: TDateField
      FieldName = 'FPC_DATADESCTO'
    end
    object SqlCdsRel10FPC_CONFIRMADESCTO: TStringField
      FieldName = 'FPC_CONFIRMADESCTO'
      Size = 1
    end
    object SqlCdsRel10FPC_CONFIRMADEVOLUCAO: TStringField
      FieldName = 'FPC_CONFIRMADEVOLUCAO'
      Size = 1
    end
    object SqlCdsRel10FPC_DATADEVOLUCAO: TDateField
      FieldName = 'FPC_DATADEVOLUCAO'
    end
    object SqlCdsRel10FPC_OBS_DESCTO: TStringField
      FieldName = 'FPC_OBS_DESCTO'
      Size = 25
    end
    object SqlCdsRel10FPC_JUROS_DESCTO: TFMTBCDField
      FieldName = 'FPC_JUROS_DESCTO'
      Precision = 15
    end
    object SqlCdsRel10PAG_CODIGO: TStringField
      FieldName = 'PAG_CODIGO'
      Size = 5
    end
    object SqlCdsRel10FPC_BANCO_CHEQUE: TIntegerField
      FieldName = 'FPC_BANCO_CHEQUE'
    end
    object SqlCdsRel10FPC_NUM_CHEQUE: TStringField
      FieldName = 'FPC_NUM_CHEQUE'
      Size = 10
    end
    object SqlCdsRel10FPC_NUM_CHEQUE_DV: TStringField
      FieldName = 'FPC_NUM_CHEQUE_DV'
      Size = 1
    end
    object SqlCdsRel10BAN_APELIDO: TStringField
      FieldName = 'BAN_APELIDO'
      Size = 25
    end
    object SqlCdsRel10BCO_DESCRICAO: TStringField
      FieldName = 'BCO_DESCRICAO'
      Size = 35
    end
    object SqlCdsRel10FPC_CHEQUE_DATA: TDateField
      FieldName = 'FPC_CHEQUE_DATA'
    end
    object SqlCdsRel10PED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Size = 7
    end
    object SqlCdsRel10CC_OPERACAO: TStringField
      FieldKind = fkCalculated
      FieldName = 'CC_OPERACAO'
      Size = 21
      Calculated = True
    end
    object SqlCdsRel10FPC_SACADO_CHEQUE: TStringField
      FieldName = 'FPC_SACADO_CHEQUE'
      Size = 55
    end
    object SqlCdsRel10FPC_EXCLUSAO: TStringField
      FieldName = 'FPC_EXCLUSAO'
      Size = 1
    end
    object SqlCdsRel10FPC_DATA_EXCLUSAO: TDateField
      FieldName = 'FPC_DATA_EXCLUSAO'
    end
    object SqlCdsRel10FPC_HORA_EXCLUSAO: TTimeField
      FieldName = 'FPC_HORA_EXCLUSAO'
    end
    object SqlCdsRel10FPC_MOTIVO_EXCLUSAO: TStringField
      FieldName = 'FPC_MOTIVO_EXCLUSAO'
    end
    object SqlCdsRel10USU_CODIGO: TIntegerField
      FieldName = 'USU_CODIGO'
    end
    object SqlCdsRel10USU_LOGIN: TStringField
      FieldName = 'USU_LOGIN'
      Size = 15
    end
    object SqlCdsRel10CLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Size = 55
    end
    object SqlCdsRel10CC_RAZAO: TStringField
      FieldKind = fkCalculated
      FieldName = 'CC_RAZAO'
      Size = 50
      Calculated = True
    end
  end
  object DsRel10: TDataSource
    DataSet = SqlCdsRel10
    Left = 699
    Top = 568
  end
  object ppDBRel10: TppDBPipeline
    DataSource = DsRel10
    UserName = 'DBRel10'
    Left = 761
    Top = 568
  end
  object ppRPRelConReceber10: TppReport
    AutoStop = False
    DataPipeline = ppDBRel10
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 15000
    PrinterSetup.mmMarginLeft = 10000
    PrinterSetup.mmMarginRight = 10000
    PrinterSetup.mmMarginTop = 15000
    PrinterSetup.mmPaperHeight = 216000
    PrinterSetup.mmPaperWidth = 279000
    PrinterSetup.PaperSize = 1
    Template.FileName = 'X:\developer\adjutor\fontesrelatorios\RELCONRECEBER10.rtm'
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    BeforePrint = ppRPRelConReceber00BeforePrint
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
    Left = 856
    Top = 568
    Version = '16.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBRel10'
    object ppHeaderBand3: TppHeaderBand
      Background.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 22225
      mmPrintPosition = 0
      object ppLine20: TppLine
        DesignLayer = ppDesignLayer11
        UserName = 'Line1'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 0
        mmTop = 0
        mmWidth = 259028
        BandType = 0
        LayerName = Foreground10
      end
      object LBL_10_EMPRESA: TppLabel
        DesignLayer = ppDesignLayer11
        UserName = 'LBL_10_EMPRESA'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'LABEL_EMPRESA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 265
        mmTop = 794
        mmWidth = 159809
        BandType = 0
        LayerName = Foreground10
      end
      object LBL_10_LTITULO1: TppLabel
        DesignLayer = ppDesignLayer11
        UserName = 'LBL_10_LTITULO1'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'TITULO1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 5292
        mmWidth = 160073
        BandType = 0
        LayerName = Foreground10
      end
      object LBL_10_LTITULO2: TppLabel
        DesignLayer = ppDesignLayer11
        UserName = 'LBL_00_LTITULO2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'TITULO2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 9790
        mmWidth = 160073
        BandType = 0
        LayerName = Foreground10
      end
      object ppSystemVariable23: TppSystemVariable
        DesignLayer = ppDesignLayer11
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        VarType = vtDateTime
        DisplayFormat = 'dd/mm/yy h:nn'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 227895
        mmTop = 794
        mmWidth = 29810
        BandType = 0
        LayerName = Foreground10
      end
      object ppSystemVariable24: TppSystemVariable
        DesignLayer = ppDesignLayer11
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        OnGetText = TrocandoPaginasGetText
        Border.Weight = 1.000000000000000000
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 239448
        mmTop = 9790
        mmWidth = 18256
        BandType = 0
        LayerName = Foreground10
      end
      object ppLine66: TppLine
        DesignLayer = ppDesignLayer11
        UserName = 'Line4'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 14552
        mmWidth = 258498
        BandType = 0
        LayerName = Foreground10
      end
      object ppLabel141: TppLabel
        DesignLayer = ppDesignLayer11
        UserName = 'Label141'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'DATA DA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2963
        mmLeft = 0
        mmTop = 15081
        mmWidth = 13494
        BandType = 0
        LayerName = Foreground10
      end
      object ppLabel143: TppLabel
        DesignLayer = ppDesignLayer11
        UserName = 'Label143'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'FATURA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2963
        mmLeft = 0
        mmTop = 18785
        mmWidth = 13494
        BandType = 0
        LayerName = Foreground10
      end
      object ppLabel142: TppLabel
        DesignLayer = ppDesignLayer11
        UserName = 'Label142'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'CLIENTE/SACADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2963
        mmLeft = 14552
        mmTop = 18785
        mmWidth = 41540
        BandType = 0
        LayerName = Foreground10
      end
      object ppLabel144: TppLabel
        DesignLayer = ppDesignLayer11
        UserName = 'Label144'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'PEDIDO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2963
        mmLeft = 58473
        mmTop = 18785
        mmWidth = 12000
        BandType = 0
        LayerName = Foreground10
      end
      object ppLabel145: TppLabel
        DesignLayer = ppDesignLayer11
        UserName = 'Label145'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'N'#186' DO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2963
        mmLeft = 58473
        mmTop = 15081
        mmWidth = 12000
        BandType = 0
        LayerName = Foreground10
      end
      object ppLabel146: TppLabel
        DesignLayer = ppDesignLayer11
        UserName = 'Label146'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'N'#186' DA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2963
        mmLeft = 71967
        mmTop = 15081
        mmWidth = 12435
        BandType = 0
        LayerName = Foreground10
      end
      object ppLabel147: TppLabel
        DesignLayer = ppDesignLayer11
        UserName = 'Label147'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'CHEQUE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2963
        mmLeft = 85725
        mmTop = 18785
        mmWidth = 12965
        BandType = 0
        LayerName = Foreground10
      end
      object ppLabel148: TppLabel
        DesignLayer = ppDesignLayer11
        UserName = 'Label148'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'N'#186' DO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2963
        mmLeft = 85725
        mmTop = 15081
        mmWidth = 12965
        BandType = 0
        LayerName = Foreground10
      end
      object ppLabel149: TppLabel
        DesignLayer = ppDesignLayer11
        UserName = 'Label149'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'FATURA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2963
        mmLeft = 71967
        mmTop = 18785
        mmWidth = 12435
        BandType = 0
        LayerName = Foreground10
      end
      object ppLabel151: TppLabel
        DesignLayer = ppDesignLayer11
        UserName = 'Label151'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'BANCO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2963
        mmLeft = 100013
        mmTop = 18785
        mmWidth = 30000
        BandType = 0
        LayerName = Foreground10
      end
      object ppLabel153: TppLabel
        DesignLayer = ppDesignLayer11
        UserName = 'Label1501'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'DT.ENVIO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2963
        mmLeft = 160338
        mmTop = 15081
        mmWidth = 12171
        BandType = 0
        LayerName = Foreground10
      end
      object ppLabel154: TppLabel
        DesignLayer = ppDesignLayer11
        UserName = 'Label154'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'P/BANCO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2963
        mmLeft = 160338
        mmTop = 18785
        mmWidth = 12171
        BandType = 0
        LayerName = Foreground10
      end
      object ppLabel156: TppLabel
        DesignLayer = ppDesignLayer11
        UserName = 'Label156'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'COBRAN'#199'A'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2963
        mmLeft = 173302
        mmTop = 18785
        mmWidth = 25135
        BandType = 0
        LayerName = Foreground10
      end
      object ppLabel155: TppLabel
        DesignLayer = ppDesignLayer11
        UserName = 'Label155'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'O BANCO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2963
        mmLeft = 199761
        mmTop = 18785
        mmWidth = 40000
        BandType = 0
        LayerName = Foreground10
      end
      object ppLabel157: TppLabel
        DesignLayer = ppDesignLayer11
        UserName = 'Label157'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'ENVIADO PARA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2963
        mmLeft = 199761
        mmTop = 15346
        mmWidth = 40000
        BandType = 0
        LayerName = Foreground10
      end
      object ppLabel158: TppLabel
        DesignLayer = ppDesignLayer11
        UserName = 'Label158'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'DATA DA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2963
        mmLeft = 240242
        mmTop = 15081
        mmWidth = 17463
        BandType = 0
        LayerName = Foreground10
      end
      object ppLabel159: TppLabel
        DesignLayer = ppDesignLayer11
        UserName = 'Label159'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'DEVOLU'#199#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2963
        mmLeft = 240242
        mmTop = 18785
        mmWidth = 17463
        BandType = 0
        LayerName = Foreground10
      end
      object ppLine67: TppLine
        DesignLayer = ppDesignLayer11
        UserName = 'Line67'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 21960
        mmWidth = 258498
        BandType = 0
        LayerName = Foreground10
      end
      object ppLabel160: TppLabel
        DesignLayer = ppDesignLayer11
        UserName = 'Label1502'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'VALOR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2963
        mmLeft = 146050
        mmTop = 15081
        mmWidth = 13229
        BandType = 0
        LayerName = Foreground10
      end
      object ppLabel161: TppLabel
        DesignLayer = ppDesignLayer11
        UserName = 'Label161'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'CHEQUE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2963
        mmLeft = 146050
        mmTop = 18785
        mmWidth = 13229
        BandType = 0
        LayerName = Foreground10
      end
      object ppLabel150: TppLabel
        DesignLayer = ppDesignLayer11
        UserName = 'Label150'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'DATA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2963
        mmLeft = 131234
        mmTop = 15081
        mmWidth = 13229
        BandType = 0
        LayerName = Foreground10
      end
      object ppLabel152: TppLabel
        DesignLayer = ppDesignLayer11
        UserName = 'Label152'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'VENCTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2963
        mmLeft = 131234
        mmTop = 18785
        mmWidth = 13229
        BandType = 0
        LayerName = Foreground10
      end
    end
    object ppDetailBand4: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppDBText24: TppDBText
        DesignLayer = ppDesignLayer11
        UserName = 'DBText24'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FPC_DTEMIS'
        DataPipeline = ppDBRel10
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRel10'
        mmHeight = 2963
        mmLeft = 0
        mmTop = 529
        mmWidth = 14288
        BandType = 4
        LayerName = Foreground10
      end
      object ppDBFANTASIA: TppDBText
        DesignLayer = ppDesignLayer11
        UserName = 'DBFANTASIA'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CC_RAZAO'
        DataPipeline = ppDBRel10
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRel10'
        mmHeight = 2963
        mmLeft = 15610
        mmTop = 529
        mmWidth = 41540
        BandType = 4
        LayerName = Foreground10
      end
      object ppDBText115: TppDBText
        DesignLayer = ppDesignLayer11
        UserName = 'DBText115'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PED_CODIGO'
        DataPipeline = ppDBRel10
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRel10'
        mmHeight = 2963
        mmLeft = 58473
        mmTop = 529
        mmWidth = 12000
        BandType = 4
        LayerName = Foreground10
      end
      object ppDBFatura: TppDBText
        DesignLayer = ppDesignLayer11
        UserName = 'DBFatura'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FAT_CODIGO'
        DataPipeline = ppDBRel10
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRel10'
        mmHeight = 2963
        mmLeft = 71967
        mmTop = 529
        mmWidth = 12435
        BandType = 4
        LayerName = Foreground10
      end
      object ppDBText117: TppDBText
        DesignLayer = ppDesignLayer11
        UserName = 'DBText117'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FPC_NUM_CHEQUE'
        DataPipeline = ppDBRel10
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRel10'
        mmHeight = 3175
        mmLeft = 85725
        mmTop = 529
        mmWidth = 12965
        BandType = 4
        LayerName = Foreground10
      end
      object ppDBBanco1: TppDBText
        DesignLayer = ppDesignLayer11
        UserName = 'DBBanco1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'BCO_DESCRICAO'
        DataPipeline = ppDBRel10
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRel10'
        mmHeight = 3175
        mmLeft = 100013
        mmTop = 529
        mmWidth = 30000
        BandType = 4
        LayerName = Foreground10
      end
      object ppDBText121: TppDBText
        DesignLayer = ppDesignLayer11
        UserName = 'DBText1201'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FPC_DATADESCTO'
        DataPipeline = ppDBRel10
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBRel10'
        mmHeight = 2963
        mmLeft = 160338
        mmTop = 529
        mmWidth = 12171
        BandType = 4
        LayerName = Foreground10
      end
      object ppDBBancoCH: TppDBText
        DesignLayer = ppDesignLayer11
        UserName = 'DBBancoCH'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'BAN_APELIDO'
        DataPipeline = ppDBRel10
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRel10'
        mmHeight = 2963
        mmLeft = 199761
        mmTop = 529
        mmWidth = 40000
        BandType = 4
        LayerName = Foreground10
      end
      object ppDBText123: TppDBText
        DesignLayer = ppDesignLayer11
        UserName = 'DBText123'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FPC_DATADEVOLUCAO'
        DataPipeline = ppDBRel10
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRel10'
        mmHeight = 3175
        mmLeft = 240242
        mmTop = 529
        mmWidth = 17463
        BandType = 4
        LayerName = Foreground10
      end
      object ppDBText114: TppDBText
        DesignLayer = ppDesignLayer11
        UserName = 'DBText114'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CC_OPERACAO'
        DataPipeline = ppDBRel10
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRel10'
        mmHeight = 2963
        mmLeft = 173302
        mmTop = 529
        mmWidth = 25135
        BandType = 4
        LayerName = Foreground10
      end
      object ppDBText118: TppDBText
        DesignLayer = ppDesignLayer11
        UserName = 'DBText1202'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FPC_VLPARC'
        DataPipeline = ppDBRel10
        DisplayFormat = '#,###0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel10'
        mmHeight = 2963
        mmLeft = 146050
        mmTop = 529
        mmWidth = 13229
        BandType = 4
        LayerName = Foreground10
      end
      object ppDBText116: TppDBText
        DesignLayer = ppDesignLayer11
        UserName = 'DBText116'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FPC_VENCTO'
        DataPipeline = ppDBRel10
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRel10'
        mmHeight = 2910
        mmLeft = 131234
        mmTop = 794
        mmWidth = 14288
        BandType = 4
        LayerName = Foreground10
      end
    end
    object ppSummaryBand6: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppLine68: TppLine
        DesignLayer = ppDesignLayer11
        UserName = 'Line68'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 258498
        BandType = 7
        LayerName = Foreground10
      end
      object ppDBCalc61: TppDBCalc
        DesignLayer = ppDesignLayer11
        UserName = 'DBCalc61'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FPC_VLPARC'
        DataPipeline = ppDBRel10
        DisplayFormat = '#,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRel10'
        mmHeight = 2910
        mmLeft = 142611
        mmTop = 794
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground10
      end
      object ppLabel164: TppLabel
        DesignLayer = ppDesignLayer11
        UserName = 'Label164'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Valor Total de Cheques:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2963
        mmLeft = 114301
        mmTop = 741
        mmWidth = 27340
        BandType = 7
        LayerName = Foreground10
      end
    end
    object raCodeModule9: TraCodeModule
      ProgramStream = {
        01060F5472614576656E7448616E646C65720B50726F6772616D4E616D650613
        444246414E54415349414F6E476574546578740B50726F6772616D5479706507
        0B747450726F63656475726506536F75726365066D70726F6365647572652044
        4246414E54415349414F6E476574546578742876617220546578743A20537472
        696E67293B0D0A626567696E0D0A0D0A202054657874203A3D20434F50592844
        4252656C31305B2743435F52415A414F275D2C312C3235290D0A0D0A656E643B
        0D0A0D436F6D706F6E656E744E616D65060A444246414E544153494109457665
        6E744E616D6506094F6E47657454657874074576656E74494402350843617265
        74506F730102000200000001060F5472614576656E7448616E646C65720B5072
        6F6772616D4E616D650611444242616E636F314F6E476574546578740B50726F
        6772616D54797065070B747450726F63656475726506536F7572636506707072
        6F63656475726520444242616E636F314F6E4765745465787428766172205465
        78743A20537472696E67293B0D0A626567696E0D0A0D0A202054657874203A3D
        636F707928444252656C31305B2742434F5F44455343524943414F275D2C312C
        3230293B0D0A0D0A656E643B0D0A0D436F6D706F6E656E744E616D6506084442
        42616E636F31094576656E744E616D6506094F6E47657454657874074576656E
        7449440235084361726574506F730102000200000001060F5472614576656E74
        48616E646C65720B50726F6772616D4E616D650612444242616E636F43484F6E
        476574546578740B50726F6772616D54797065070B747450726F636564757265
        06536F75726365067070726F63656475726520444242616E636F43484F6E4765
        74546578742876617220546578743A20537472696E67293B0D0A626567696E0D
        0A0D0A202054657874203A3D20434F505928444252656C31305B2742414E5F41
        50454C49444F275D2C312C3430293B0D0A0D0A656E643B0D0A0D436F6D706F6E
        656E744E616D650609444242616E636F4348094576656E744E616D6506094F6E
        47657454657874074576656E7449440235084361726574506F73010200020000
        0001060F5472614576656E7448616E646C65720B50726F6772616D4E616D6506
        1144424661747572614F6E476574546578740B50726F6772616D54797065070B
        747450726F63656475726506536F7572636506DB70726F636564757265204442
        4661747572614F6E476574546578742876617220546578743A20537472696E67
        293B0D0A626567696E0D0A202020696620285452494D28444252656C31305B27
        4650435F4E554D4552275D293D272729207468656E0D0A202020202020546578
        74203A3D20444252656C31305B274641545F434F4449474F275D0D0A20202065
        6C73652020200D0A20202020202054657874203A3D20444252656C31305B2746
        41545F434F4449474F275D2B272F272B444252656C31305B274650435F4E554D
        4552275D3B0D0A0D0A656E643B0D0A0D436F6D706F6E656E744E616D65060844
        42466174757261094576656E744E616D6506094F6E4765745465787407457665
        6E7449440235084361726574506F730102000200000000}
    end
    object ppDesignLayers11: TppDesignLayers
      object ppDesignLayer11: TppDesignLayer
        UserName = 'Foreground10'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object SqlCdsCliente: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'select CLI_CODIGO, CLI_RAZAO, EMP_CODIGO, CLI_CGC from CLI0000 O' +
      'RDER BY CLI_RAZAO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'select CLI_CODIGO, CLI_RAZAO, EMP_CODIGO, CLI_CGC from CLI0000 O' +
      'RDER BY CLI_RAZAO'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 496
    Top = 86
    object SqlCdsClienteCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 5
    end
    object SqlCdsClienteCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Size = 45
    end
    object SqlCdsClienteEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlCdsClienteCLI_CGC: TStringField
      FieldName = 'CLI_CGC'
      Size = 14
    end
  end
  object SqlCdsBanco: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'select BAN_CODIGO, BAN_RAZAO, BAN_APELIDO, EMP_CODIGO from BAN00' +
      '00 ORDER BY BAN_APELIDO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'select BAN_CODIGO, BAN_RAZAO, BAN_APELIDO, EMP_CODIGO from BAN00' +
      '00 ORDER BY BAN_APELIDO'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 504
    Top = 177
    object SqlCdsBancoBAN_CODIGO: TStringField
      FieldName = 'BAN_CODIGO'
      Required = True
      Size = 4
    end
    object SqlCdsBancoBAN_RAZAO: TStringField
      FieldName = 'BAN_RAZAO'
      Size = 45
    end
    object SqlCdsBancoBAN_APELIDO: TStringField
      FieldName = 'BAN_APELIDO'
      Size = 14
    end
    object SqlCdsBancoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
  object SqlCdsRepresentante: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'select REP_CODIGO, REP_NOME, EMP_CODIGO from REP0000 ORDER BY RE' +
      'P_NOME'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'select REP_CODIGO, REP_NOME, EMP_CODIGO from REP0000 ORDER BY RE' +
      'P_NOME'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 512
    Top = 252
    object SqlCdsRepresentanteREP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      Required = True
      Size = 3
    end
    object SqlCdsRepresentanteREP_NOME: TStringField
      FieldName = 'REP_NOME'
      Size = 35
    end
    object SqlCdsRepresentanteEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
  object SqlCdsProjCx: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'select PCX_CODIGO, PCX_DESCRI, EMP_CODIGO from PCX0000 ORDER BY ' +
      'PCX_DESCRI'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'select PCX_CODIGO, PCX_DESCRI, EMP_CODIGO from PCX0000 ORDER BY ' +
      'PCX_DESCRI'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 500
    Top = 395
    object SqlCdsProjCxPCX_CODIGO: TStringField
      FieldName = 'PCX_CODIGO'
      Size = 3
    end
    object SqlCdsProjCxPCX_DESCRI: TStringField
      FieldName = 'PCX_DESCRI'
      Size = 25
    end
    object SqlCdsProjCxEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      FixedChar = True
      Size = 3
    end
  end
  object SqlBcoCheques: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 'select * from BANCOS'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'select * from BANCOS'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 520
    Top = 458
    object SqlBcoChequesBCO_CODIGO: TIntegerField
      FieldName = 'BCO_CODIGO'
      Required = True
    end
    object SqlBcoChequesBCO_DESCRICAO: TStringField
      FieldName = 'BCO_DESCRICAO'
      Size = 35
    end
    object SqlBcoChequesEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
  object PrinterSetupDialog1: TPrinterSetupDialog
    Left = 294
    Top = 530
  end
  object ppRPRelConReceber00: TppReport
    AutoStop = False
    DataPipeline = ppDBReceber
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 15000
    PrinterSetup.mmMarginLeft = 10000
    PrinterSetup.mmMarginRight = 10000
    PrinterSetup.mmMarginTop = 15000
    PrinterSetup.mmPaperHeight = 216000
    PrinterSetup.mmPaperWidth = 279000
    PrinterSetup.PaperSize = 1
    Template.FileName = 
      'C:\JobProgram\Developer\Adjutor\FontesRelatorios\RELCONRECEBER00' +
      '.rtm'
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    BeforePrint = ppRPRelConReceber00BeforePrint
    CachePages = True
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
    Left = 848
    Top = 24
    Version = '16.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBReceber'
    object pp00HeaderBand2: TppHeaderBand
      BeforePrint = pp00HeaderBand2BeforePrint
      Background.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 24342
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer12
        UserName = 'Label1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'FATURA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 0
        mmTop = 17817
        mmWidth = 11377
        BandType = 0
        LayerName = Foreground11
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer12
        UserName = 'Label2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'EMISS'#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 15875
        mmTop = 17817
        mmWidth = 12965
        BandType = 0
        LayerName = Foreground11
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer12
        UserName = 'Label3'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'VALOR A RECEBER'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 6615
        mmLeft = 106627
        mmTop = 16140
        mmWidth = 13758
        BandType = 0
        LayerName = Foreground11
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer12
        UserName = 'Label4'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'VALOR RECEBIDO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 6615
        mmLeft = 148263
        mmTop = 16140
        mmWidth = 14817
        BandType = 0
        LayerName = Foreground11
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer12
        UserName = 'Label5'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'PED.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 3175
        mmLeft = 166165
        mmTop = 17727
        mmWidth = 6615
        BandType = 0
        LayerName = Foreground11
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer12
        UserName = 'Label6'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'BANCO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 3175
        mmLeft = 181776
        mmTop = 17463
        mmWidth = 10054
        BandType = 0
        LayerName = Foreground11
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer12
        UserName = 'Line3'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 23548
        mmWidth = 258057
        BandType = 0
        LayerName = Foreground11
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer12
        UserName = 'Label7'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'No.COBR.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 208583
        mmTop = 17556
        mmWidth = 13229
        BandType = 0
        LayerName = Foreground11
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer12
        UserName = 'Label8'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'STATUS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 244211
        mmTop = 17463
        mmWidth = 11113
        BandType = 0
        LayerName = Foreground11
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer12
        UserName = 'Label13'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'CLIENTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 32015
        mmTop = 17817
        mmWidth = 11906
        BandType = 0
        LayerName = Foreground11
      end
      object LBL_00_EMPRESA: TppLabel
        DesignLayer = ppDesignLayer12
        UserName = 'LBL_00_EMPRESA'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'LABEL_EMPRESA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3969
        mmLeft = 265
        mmTop = 529
        mmWidth = 160073
        BandType = 0
        LayerName = Foreground11
      end
      object LBL_00_LTITULO1: TppLabel
        DesignLayer = ppDesignLayer12
        UserName = 'LBL_00_LTITULO1'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'TITULO1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3260
        mmLeft = 265
        mmTop = 5821
        mmWidth = 160073
        BandType = 0
        LayerName = Foreground11
      end
      object LBL_00_LTITULO2: TppLabel
        DesignLayer = ppDesignLayer12
        UserName = 'LBL_00_LTITULO2'
        CharWrap = True
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'TITULO2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 265
        mmTop = 9525
        mmWidth = 160073
        BandType = 0
        LayerName = Foreground11
      end
      object ppSystemVariable4: TppSystemVariable
        DesignLayer = ppDesignLayer12
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        OnGetText = TrocandoPaginasGetText
        Border.Weight = 1.000000000000000000
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 233628
        mmTop = 8202
        mmWidth = 21960
        BandType = 0
        LayerName = Foreground11
      end
      object ppSystemVariable3: TppSystemVariable
        DesignLayer = ppDesignLayer12
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        VarType = vtDateTime
        DisplayFormat = 'dd/mm/yy h:nn'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4234
        mmLeft = 233363
        mmTop = 529
        mmWidth = 22754
        BandType = 0
        LayerName = Foreground11
      end
      object ppLine6: TppLine
        DesignLayer = ppDesignLayer12
        UserName = 'Line2'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 265
        mmTop = 14817
        mmWidth = 257705
        BandType = 0
        LayerName = Foreground11
      end
      object ppLabel168: TppLabel
        DesignLayer = ppDesignLayer12
        UserName = 'Label168'
        AutoSize = False
        Caption = 'JUROS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3355
        mmLeft = 122422
        mmTop = 17727
        mmWidth = 9701
        BandType = 0
        LayerName = Foreground11
      end
      object ppLabel169: TppLabel
        DesignLayer = ppDesignLayer12
        UserName = 'Label169'
        AutoSize = False
        Caption = 'MULTA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3355
        mmLeft = 133713
        mmTop = 17727
        mmWidth = 10319
        BandType = 0
        LayerName = Foreground11
      end
      object ppLabel170: TppLabel
        DesignLayer = ppDesignLayer12
        UserName = 'Label170'
        AutoSize = False
        Caption = 'FORMA PGTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3440
        mmLeft = 222959
        mmTop = 17463
        mmWidth = 19931
        BandType = 0
        LayerName = Foreground11
      end
    end
    object pp00DetailBand2: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 3175
      mmPrintPosition = 0
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer12
        UserName = 'DBText2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FAT_CODIGO'
        DataPipeline = ppDBReceber
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBReceber'
        mmHeight = 3246
        mmLeft = 0
        mmTop = 0
        mmWidth = 10054
        BandType = 4
        LayerName = Foreground11
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer12
        UserName = 'DBText4'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FPC_NUMER'
        DataPipeline = ppDBReceber
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBReceber'
        mmHeight = 3246
        mmLeft = 10319
        mmTop = 0
        mmWidth = 4233
        BandType = 4
        LayerName = Foreground11
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer12
        UserName = 'DBText5'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FAT_DTEMIS'
        DataPipeline = ppDBReceber
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBReceber'
        mmHeight = 3246
        mmLeft = 15875
        mmTop = 0
        mmWidth = 14817
        BandType = 4
        LayerName = Foreground11
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer12
        UserName = 'DBText6'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_RAZAO'
        DataPipeline = ppDBReceber
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBReceber'
        mmHeight = 3246
        mmLeft = 32015
        mmTop = 0
        mmWidth = 69586
        BandType = 4
        LayerName = Foreground11
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer12
        UserName = 'DBText8'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FPC_VLPAGO'
        DataPipeline = ppDBReceber
        DisplayFormat = '#0.,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBReceber'
        mmHeight = 3175
        mmLeft = 146410
        mmTop = 0
        mmWidth = 17727
        BandType = 4
        LayerName = Foreground11
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer12
        UserName = 'DBText9'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PED_CODIGO'
        DataPipeline = ppDBReceber
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBReceber'
        mmHeight = 3175
        mmLeft = 166165
        mmTop = 0
        mmWidth = 10848
        BandType = 4
        LayerName = Foreground11
      end
      object ppDBText11: TppDBText
        DesignLayer = ppDesignLayer12
        UserName = 'DBText11'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FPC_COBNUM'
        DataPipeline = ppDBReceber
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBReceber'
        mmHeight = 3175
        mmLeft = 209112
        mmTop = 0
        mmWidth = 12171
        BandType = 4
        LayerName = Foreground11
      end
      object ppDBText12: TppDBText
        DesignLayer = ppDesignLayer12
        UserName = 'DBText12'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FPC_STATUS'
        DataPipeline = ppDBReceber
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBReceber'
        mmHeight = 3175
        mmLeft = 243946
        mmTop = 0
        mmWidth = 14023
        BandType = 4
        LayerName = Foreground11
      end
      object ppDBText103: TppDBText
        DesignLayer = ppDesignLayer12
        UserName = 'DBText103'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FPC_RECEBER_CC'
        DataPipeline = ppDBReceber
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBReceber'
        mmHeight = 3175
        mmLeft = 104000
        mmTop = 0
        mmWidth = 15875
        BandType = 4
        LayerName = Foreground11
      end
      object ppDBText120: TppDBText
        DesignLayer = ppDesignLayer12
        UserName = 'DBText120'
        DataField = 'FPC_JUROS'
        DataPipeline = ppDBReceber
        DisplayFormat = '#0.,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBReceber'
        mmHeight = 2910
        mmLeft = 121364
        mmTop = 0
        mmWidth = 10848
        BandType = 4
        LayerName = Foreground11
      end
      object ppDBText122: TppDBText
        DesignLayer = ppDesignLayer12
        UserName = 'DBText122'
        DataField = 'FPC_MULTA'
        DataPipeline = ppDBReceber
        DisplayFormat = '#0.,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBReceber'
        mmHeight = 3003
        mmLeft = 133272
        mmTop = 0
        mmWidth = 10760
        BandType = 4
        LayerName = Foreground11
      end
      object ppDBText124: TppDBText
        DesignLayer = ppDesignLayer12
        UserName = 'DBText124'
        DataField = 'BAN_APELIDO'
        DataPipeline = ppDBReceber
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBReceber'
        mmHeight = 3176
        mmLeft = 177807
        mmTop = 0
        mmWidth = 30339
        BandType = 4
        LayerName = Foreground11
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer12
        UserName = 'DBText7'
        DataField = 'FPG_DESCRICAO'
        DataPipeline = ppDBReceber
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBReceber'
        mmHeight = 3175
        mmLeft = 223042
        mmTop = 0
        mmWidth = 18785
        BandType = 4
        LayerName = Foreground11
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 5027
      mmPrintPosition = 0
      object ppLabel14: TppLabel
        DesignLayer = ppDesignLayer12
        UserName = 'Label14'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'TOTAL GERAL.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 3440
        mmLeft = 79640
        mmTop = 265
        mmWidth = 21431
        BandType = 7
        LayerName = Foreground11
      end
      object ppDBCalc3: TppDBCalc
        DesignLayer = ppDesignLayer12
        UserName = 'DBCalc3'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FPC_VLPAGO'
        DataPipeline = ppDBReceber
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBReceber'
        mmHeight = 2910
        mmLeft = 143593
        mmTop = 706
        mmWidth = 19579
        BandType = 7
        LayerName = Foreground11
      end
      object ppLabel17: TppLabel
        DesignLayer = ppDesignLayer12
        UserName = 'Label17'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'SOMA.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 228156
        mmTop = 265
        mmWidth = 10054
        BandType = 7
        LayerName = Foreground11
      end
      object ppDBCalc6: TppDBCalc
        DesignLayer = ppDesignLayer12
        UserName = 'DBCalc6'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FPC_RECEBER_CC'
        DataPipeline = ppDBReceber
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBReceber'
        mmHeight = 2910
        mmLeft = 101865
        mmTop = 265
        mmWidth = 18344
        BandType = 7
        LayerName = Foreground11
      end
      object ppDBCalc9: TppDBCalc
        DesignLayer = ppDesignLayer12
        UserName = 'DBCalc9'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FPC_VLPARC'
        DataPipeline = ppDBReceber
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBReceber'
        mmHeight = 2910
        mmLeft = 238740
        mmTop = 265
        mmWidth = 19579
        BandType = 7
        LayerName = Foreground11
      end
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer12
        UserName = 'Line6'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 882
        mmLeft = 101777
        mmTop = 0
        mmWidth = 157692
        BandType = 7
        LayerName = Foreground11
      end
      object ppLine7: TppLine
        DesignLayer = ppDesignLayer12
        UserName = 'Line7'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 882
        mmLeft = 101777
        mmTop = 3969
        mmWidth = 157692
        BandType = 7
        LayerName = Foreground11
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'FPC_MES_CC'
      DataPipeline = ppDBReceber
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBReceber'
      NewFile = False
      object ppGroupHeaderBand1: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        PrintHeight = phDynamic
        mmBottomOffset = 0
        mmHeight = 3440
        mmPrintPosition = 0
        object ppLabel9: TppLabel
          DesignLayer = ppDesignLayer12
          UserName = 'Label9'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'M'#234'S:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          FormField = False
          Transparent = True
          mmHeight = 3316
          mmLeft = 0
          mmTop = 0
          mmWidth = 6773
          BandType = 3
          GroupNo = 0
          LayerName = Foreground11
        end
        object ppDBText1: TppDBText
          DesignLayer = ppDesignLayer12
          UserName = 'DBText1'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'FPC_MES_CC'
          DataPipeline = ppDBReceber
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDBReceber'
          mmHeight = 3316
          mmLeft = 7673
          mmTop = 0
          mmWidth = 17198
          BandType = 3
          GroupNo = 0
          LayerName = Foreground11
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 4233
        mmPrintPosition = 0
        object ppLabel11: TppLabel
          DesignLayer = ppDesignLayer12
          UserName = 'Label11'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'TOTAL DO M'#234'S.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          FormField = False
          Transparent = True
          mmHeight = 3316
          mmLeft = 32015
          mmTop = 917
          mmWidth = 22507
          BandType = 5
          GroupNo = 0
          LayerName = Foreground11
        end
        object ppDBCalc2: TppDBCalc
          DesignLayer = ppDesignLayer12
          UserName = 'DBCalc2'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'FPC_VLPAGO'
          DataPipeline = ppDBReceber
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBReceber'
          mmHeight = 2910
          mmLeft = 143506
          mmTop = 708
          mmWidth = 19579
          BandType = 5
          GroupNo = 0
          LayerName = Foreground11
        end
        object ppLabel16: TppLabel
          DesignLayer = ppDesignLayer12
          UserName = 'Label16'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'SOMA.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          FormField = False
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 228336
          mmTop = 793
          mmWidth = 10054
          BandType = 5
          GroupNo = 0
          LayerName = Foreground11
        end
        object ppDBCalc5: TppDBCalc
          DesignLayer = ppDesignLayer12
          UserName = 'DBCalc5'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'FPC_RECEBER_CC'
          DataPipeline = ppDBReceber
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBReceber'
          mmHeight = 2910
          mmLeft = 102394
          mmTop = 794
          mmWidth = 17463
          BandType = 5
          GroupNo = 0
          LayerName = Foreground11
        end
        object ppDBCalc8: TppDBCalc
          DesignLayer = ppDesignLayer12
          UserName = 'DBCalc8'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'FPC_VLPARC'
          DataPipeline = ppDBReceber
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBReceber'
          mmHeight = 2910
          mmLeft = 238919
          mmTop = 794
          mmWidth = 19579
          BandType = 5
          GroupNo = 0
          LayerName = Foreground11
        end
        object ppLine3: TppLine
          DesignLayer = ppDesignLayer12
          UserName = 'Line5'
          Border.Weight = 1.000000000000000000
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 101777
          mmTop = 265
          mmWidth = 157339
          BandType = 5
          GroupNo = 0
          LayerName = Foreground11
        end
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'FPC_VENCTO'
      DataPipeline = ppDBReceber
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBReceber'
      NewFile = False
      object ppGroupHeaderBand2: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 3440
        mmPrintPosition = 0
        object ppLabel10: TppLabel
          DesignLayer = ppDesignLayer12
          UserName = 'Label10'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'Vencimento.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          FormField = False
          Transparent = True
          mmHeight = 3316
          mmLeft = 0
          mmTop = 0
          mmWidth = 19579
          BandType = 3
          GroupNo = 1
          LayerName = Foreground11
        end
        object ppDBText3: TppDBText
          DesignLayer = ppDesignLayer12
          UserName = 'DBText3'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'FPC_VENCTO'
          DataPipeline = ppDBReceber
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDBReceber'
          mmHeight = 3316
          mmLeft = 19844
          mmTop = 0
          mmWidth = 17198
          BandType = 3
          GroupNo = 1
          LayerName = Foreground11
        end
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 3969
        mmPrintPosition = 0
        object ppLabel13: TppLabel
          DesignLayer = ppDesignLayer12
          UserName = 'Label12'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'TOTAL DO DIA.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          FormField = False
          Transparent = True
          mmHeight = 3316
          mmLeft = 32015
          mmTop = 653
          mmWidth = 21378
          BandType = 5
          GroupNo = 1
          LayerName = Foreground11
        end
        object ppDBCalc1: TppDBCalc
          DesignLayer = ppDesignLayer12
          UserName = 'DBCalc1'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'FPC_VLPAGO'
          DataPipeline = ppDBReceber
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = [fsBold]
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBReceber'
          mmHeight = 2910
          mmLeft = 143506
          mmTop = 971
          mmWidth = 19579
          BandType = 5
          GroupNo = 1
          LayerName = Foreground11
        end
        object ppLabel15: TppLabel
          DesignLayer = ppDesignLayer12
          UserName = 'Label15'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'SOMA.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          FormField = False
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 228336
          mmTop = 529
          mmWidth = 10054
          BandType = 5
          GroupNo = 1
          LayerName = Foreground11
        end
        object ppDBCalc7: TppDBCalc
          DesignLayer = ppDesignLayer12
          UserName = 'DBCalc7'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'FPC_VLPARC'
          DataPipeline = ppDBReceber
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = [fsBold]
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBReceber'
          mmHeight = 2910
          mmLeft = 238919
          mmTop = 794
          mmWidth = 19579
          BandType = 5
          GroupNo = 1
          LayerName = Foreground11
        end
        object ppLine2: TppLine
          DesignLayer = ppDesignLayer12
          UserName = 'Line4'
          Border.Weight = 1.000000000000000000
          Weight = 0.750000000000000000
          mmHeight = 706
          mmLeft = 101777
          mmTop = 265
          mmWidth = 157339
          BandType = 5
          GroupNo = 1
          LayerName = Foreground11
        end
        object ppDBCalc4: TppDBCalc
          DesignLayer = ppDesignLayer12
          UserName = 'DBCalc4'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'FPC_RECEBER_CC'
          DataPipeline = ppDBReceber
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = [fsBold]
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBReceber'
          mmHeight = 2910
          mmLeft = 102394
          mmTop = 794
          mmWidth = 17815
          BandType = 5
          GroupNo = 1
          LayerName = Foreground11
        end
      end
    end
    object raCodeModule2: TraCodeModule
      ProgramStream = {
        01060F5472614576656E7448616E646C65720B50726F6772616D4E616D650610
        444254657874344F6E476574546578740B50726F6772616D54797065070B7474
        50726F63656475726506536F7572636506B070726F6365647572652044425465
        7874344F6E476574546578742876617220546578743A20537472696E67293B0D
        0A626567696E0D0A202020206966204442526563656265725B274650435F4E55
        4D4552275D3C3E2727207468656E0D0A2020202020202054657874203A3D2027
        2F272B204442526563656265725B274650435F4E554D4552275D0D0A20202020
        656C73650D0A2020202020202054657874203A3D2027273B0D0A0D0A656E643B
        0D0A0D436F6D706F6E656E744E616D65060744425465787434094576656E744E
        616D6506094F6E47657454657874074576656E7449440235084361726574506F
        730102000200000000}
    end
    object ppDesignLayers12: TppDesignLayers
      object ppDesignLayer12: TppDesignLayer
        UserName = 'Foreground11'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList3: TppParameterList
    end
  end
  object ppRPRelConReceber05: TppReport
    AutoStop = False
    DataPipeline = ppDBNotas
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
    Template.FileName = 'X:\developer\adjutor\fontesrelatorios\RELCONRECEBER05'
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    BeforePrint = ppRPRelConReceber00BeforePrint
    CachePages = True
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
    Left = 856
    Top = 296
    Version = '16.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBNotas'
    object pp05HeaderBand1: TppHeaderBand
      BeforePrint = pp05HeaderBand1BeforePrint
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 23019
      mmPrintPosition = 0
      object ppLine34: TppLine
        DesignLayer = ppDesignLayer6
        UserName = 'Line1'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 196000
        BandType = 0
        LayerName = Foreground5
      end
      object LBL_05_EMPRESA: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'LBL_00_EMPRESA'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'LABEL_EMPRESA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3969
        mmLeft = 0
        mmTop = 794
        mmWidth = 160073
        BandType = 0
        LayerName = Foreground5
      end
      object LBL_05_LTITULO1: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'LBL_00_LTITULO1'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'TITULO1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3260
        mmLeft = 0
        mmTop = 6350
        mmWidth = 160073
        BandType = 0
        LayerName = Foreground5
      end
      object LBL_05_LTITULO2: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'LBL_00_LTITULO2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'TITULO2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3260
        mmLeft = 0
        mmTop = 9790
        mmWidth = 11642
        BandType = 0
        LayerName = Foreground5
      end
      object ppLine35: TppLine
        DesignLayer = ppDesignLayer6
        UserName = 'Line2'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 14288
        mmWidth = 196000
        BandType = 0
        LayerName = Foreground5
      end
      object ppSystemVariable13: TppSystemVariable
        DesignLayer = ppDesignLayer6
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        VarType = vtDateTime
        DisplayFormat = 'dd/mm/yy h:nn'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 173302
        mmTop = 794
        mmWidth = 22755
        BandType = 0
        LayerName = Foreground5
      end
      object ppSystemVariable14: TppSystemVariable
        DesignLayer = ppDesignLayer6
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        OnGetText = TrocandoPaginasGetText
        Border.Weight = 1.000000000000000000
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 174114
        mmTop = 7938
        mmWidth = 21943
        BandType = 0
        LayerName = Foreground5
      end
      object ppLabel71: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'N.F.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3246
        mmLeft = 15346
        mmTop = 19050
        mmWidth = 5292
        BandType = 0
        LayerName = Foreground5
      end
      object ppLine36: TppLine
        DesignLayer = ppDesignLayer6
        UserName = 'Line3'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 22754
        mmWidth = 196000
        BandType = 0
        LayerName = Foreground5
      end
      object ppLabel72: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label13'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'CLIENTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3246
        mmLeft = 25665
        mmTop = 19050
        mmWidth = 11853
        BandType = 0
        LayerName = Foreground5
      end
      object ppLabel76: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label51'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'UF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 94986
        mmTop = 19315
        mmWidth = 3704
        BandType = 0
        LayerName = Foreground5
      end
      object ppLabel80: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label54'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'TOTAL FATURADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7673
        mmLeft = 120386
        mmTop = 14817
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground5
      end
      object ppLabel81: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label56'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'FORMA DE PAGTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        WordWrap = True
        mmHeight = 3704
        mmLeft = 139171
        mmTop = 18521
        mmWidth = 32808
        BandType = 0
        LayerName = Foreground5
      end
      object ppLabel63: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label63'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'EMISS'#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3246
        mmLeft = 0
        mmTop = 19050
        mmWidth = 12841
        BandType = 0
        LayerName = Foreground5
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 3175
      mmPrintPosition = 0
      object ppDBText56: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FAT_CODIGO'
        DataPipeline = ppDBNotas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBNotas'
        mmHeight = 3246
        mmLeft = 15346
        mmTop = 0
        mmWidth = 10054
        BandType = 4
        LayerName = Foreground5
      end
      object ppDBTextRazao: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBTextRazao'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_RAZAO'
        DataPipeline = ppDBNotas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBNotas'
        mmHeight = 3246
        mmLeft = 25665
        mmTop = 0
        mmWidth = 67998
        BandType = 4
        LayerName = Foreground5
      end
      object ppDBText59: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText43'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_UF'
        DataPipeline = ppDBNotas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBNotas'
        mmHeight = 3175
        mmLeft = 94986
        mmTop = 0
        mmWidth = 4763
        BandType = 4
        LayerName = Foreground5
      end
      object ppDBText64: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText46'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FPC_VLPARC'
        DataPipeline = ppDBNotas
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBNotas'
        mmHeight = 3175
        mmLeft = 120386
        mmTop = 0
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground5
      end
      object ppDBText62: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText62'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FAT_DTEMIS'
        DataPipeline = ppDBNotas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBNotas'
        mmHeight = 3246
        mmLeft = 0
        mmTop = 0
        mmWidth = 14552
        BandType = 4
        LayerName = Foreground5
      end
      object ppDBText65: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText65'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PCL_CODIGO'
        DataPipeline = ppDBNotas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBNotas'
        mmHeight = 3175
        mmLeft = 139700
        mmTop = 0
        mmWidth = 5027
        BandType = 4
        LayerName = Foreground5
      end
      object ppDBText88: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText88'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PCL_NOME'
        DataPipeline = ppDBNotas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBNotas'
        mmHeight = 3175
        mmLeft = 145257
        mmTop = 0
        mmWidth = 50800
        BandType = 4
        LayerName = Foreground5
      end
    end
    object ppSummaryBand2: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 8996
      mmPrintPosition = 0
      object ppLabel82: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label57'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'TOTAL GERAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 3316
        mmLeft = 0
        mmTop = 529
        mmWidth = 19685
        BandType = 7
        LayerName = Foreground5
      end
      object ppDBCalc37: TppDBCalc
        DesignLayer = ppDesignLayer6
        UserName = 'DBCalc27'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FPC_VLPARC'
        DataPipeline = ppDBNotas
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBNotas'
        mmHeight = 3440
        mmLeft = 120386
        mmTop = 529
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground5
      end
      object ppLine37: TppLine
        DesignLayer = ppDesignLayer6
        UserName = 'Line37'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 196000
        BandType = 7
        LayerName = Foreground5
      end
      object ppLine47: TppLine
        DesignLayer = ppDesignLayer6
        UserName = 'Line47'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 5387
        mmWidth = 196000
        BandType = 7
        LayerName = Foreground5
      end
    end
    object raCodeModule7: TraCodeModule
      ProgramStream = {
        01060F5472614576656E7448616E646C65720B50726F6772616D4E616D650614
        44425465787452617A616F4F6E476574546578740B50726F6772616D54797065
        070B747450726F63656475726506536F75726365067070726F63656475726520
        44425465787452617A616F4F6E476574546578742876617220546578743A2053
        7472696E67293B0D0A626567696E0D0A0D0A202054657874203A3D20436F7079
        2844424E6F7461735B27434C495F52415A414F275D2C312C3430293B0D0A0D0A
        656E643B0D0A0D436F6D706F6E656E744E616D65060B44425465787452617A61
        6F094576656E744E616D6506094F6E47657454657874074576656E7449440235
        084361726574506F730102000200000000}
    end
    object ppDesignLayers6: TppDesignLayers
      object ppDesignLayer6: TppDesignLayer
        UserName = 'Foreground5'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList9: TppParameterList
    end
  end
  object ppRPRelConReceber05Banco: TppReport
    AutoStop = False
    DataPipeline = ppDBNotas
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
    Template.FileName = 'X:\developer\adjutor\fontesrelatorios\RELCONRECEBER05'
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    BeforePrint = ppRPRelConReceber00BeforePrint
    CachePages = True
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
    Left = 1040
    Top = 256
    Version = '16.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBNotas'
    object ppHeaderBand4: TppHeaderBand
      BeforePrint = pp05HeaderBand1BeforePrint
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 23019
      mmPrintPosition = 0
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer13
        UserName = 'Line1'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 196000
        BandType = 0
        LayerName = BandLayer13
      end
      object LBL_51_EMPRESA: TppLabel
        DesignLayer = ppDesignLayer13
        UserName = 'LBL_00_EMPRESA'
        HyperlinkEnabled = False
        OnGetText = LBL_51_EMPRESAGetText
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'LABEL_EMPRESA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3969
        mmLeft = 0
        mmTop = 794
        mmWidth = 160073
        BandType = 0
        LayerName = BandLayer13
      end
      object LBL_051_LTITULO1: TppLabel
        DesignLayer = ppDesignLayer13
        UserName = 'LBL_00_LTITULO1'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'TITULO1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3260
        mmLeft = 0
        mmTop = 6350
        mmWidth = 160073
        BandType = 0
        LayerName = BandLayer13
      end
      object LBL_051_LTITULO2: TppLabel
        DesignLayer = ppDesignLayer13
        UserName = 'LBL_00_LTITULO2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'TITULO2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3260
        mmLeft = 0
        mmTop = 9790
        mmWidth = 11642
        BandType = 0
        LayerName = BandLayer13
      end
      object ppLine72: TppLine
        DesignLayer = ppDesignLayer13
        UserName = 'Line2'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 14288
        mmWidth = 196000
        BandType = 0
        LayerName = BandLayer13
      end
      object ppSystemVariable25: TppSystemVariable
        DesignLayer = ppDesignLayer13
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        VarType = vtDateTime
        DisplayFormat = 'dd/mm/yy h:nn'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 166335
        mmTop = 794
        mmWidth = 29633
        BandType = 0
        LayerName = BandLayer13
      end
      object ppSystemVariable26: TppSystemVariable
        DesignLayer = ppDesignLayer13
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        OnGetText = TrocandoPaginasGetText
        Border.Weight = 1.000000000000000000
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 163513
        mmTop = 7938
        mmWidth = 32456
        BandType = 0
        LayerName = BandLayer13
      end
      object ppLabel85: TppLabel
        DesignLayer = ppDesignLayer13
        UserName = 'Label1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'N.F.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3246
        mmLeft = 15346
        mmTop = 19050
        mmWidth = 5292
        BandType = 0
        LayerName = BandLayer13
      end
      object ppLine73: TppLine
        DesignLayer = ppDesignLayer13
        UserName = 'Line3'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 22754
        mmWidth = 196000
        BandType = 0
        LayerName = BandLayer13
      end
      object ppLabel171: TppLabel
        DesignLayer = ppDesignLayer13
        UserName = 'Label13'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'CLIENTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3246
        mmLeft = 25665
        mmTop = 19050
        mmWidth = 11853
        BandType = 0
        LayerName = BandLayer13
      end
      object ppLabel172: TppLabel
        DesignLayer = ppDesignLayer13
        UserName = 'Label51'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'UF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 94986
        mmTop = 19315
        mmWidth = 3704
        BandType = 0
        LayerName = BandLayer13
      end
      object ppLabel173: TppLabel
        DesignLayer = ppDesignLayer13
        UserName = 'Label54'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'TOTAL FATURADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7673
        mmLeft = 120386
        mmTop = 14817
        mmWidth = 17198
        BandType = 0
        LayerName = BandLayer13
      end
      object ppLabel175: TppLabel
        DesignLayer = ppDesignLayer13
        UserName = 'Label63'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'EMISS'#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3246
        mmLeft = 0
        mmTop = 19050
        mmWidth = 12841
        BandType = 0
        LayerName = BandLayer13
      end
    end
    object ppDetailBand5: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppDBText63: TppDBText
        DesignLayer = ppDesignLayer13
        UserName = 'DBText2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FAT_CODIGO'
        DataPipeline = ppDBNotas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBNotas'
        mmHeight = 3246
        mmLeft = 15346
        mmTop = 0
        mmWidth = 10054
        BandType = 4
        LayerName = BandLayer13
      end
      object ppDBText125: TppDBText
        DesignLayer = ppDesignLayer13
        UserName = 'DBTextRazao'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_RAZAO'
        DataPipeline = ppDBNotas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBNotas'
        mmHeight = 3246
        mmLeft = 25665
        mmTop = 0
        mmWidth = 67998
        BandType = 4
        LayerName = BandLayer13
      end
      object ppDBText126: TppDBText
        DesignLayer = ppDesignLayer13
        UserName = 'DBText43'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_UF'
        DataPipeline = ppDBNotas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBNotas'
        mmHeight = 3175
        mmLeft = 94986
        mmTop = 0
        mmWidth = 4763
        BandType = 4
        LayerName = BandLayer13
      end
      object ppDBText127: TppDBText
        DesignLayer = ppDesignLayer13
        UserName = 'DBText46'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FPC_VLPARC'
        DataPipeline = ppDBNotas
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBNotas'
        mmHeight = 3175
        mmLeft = 120386
        mmTop = 0
        mmWidth = 17198
        BandType = 4
        LayerName = BandLayer13
      end
      object ppDBText128: TppDBText
        DesignLayer = ppDesignLayer13
        UserName = 'DBText62'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FAT_DTEMIS'
        DataPipeline = ppDBNotas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBNotas'
        mmHeight = 3246
        mmLeft = 0
        mmTop = 0
        mmWidth = 14552
        BandType = 4
        LayerName = BandLayer13
      end
    end
    object ppSummaryBand7: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 8996
      mmPrintPosition = 0
      object ppLabel176: TppLabel
        DesignLayer = ppDesignLayer13
        UserName = 'Label57'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'TOTAL GERAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 3316
        mmLeft = 0
        mmTop = 529
        mmWidth = 19685
        BandType = 7
        LayerName = BandLayer13
      end
      object ppDBCalc31: TppDBCalc
        DesignLayer = ppDesignLayer13
        UserName = 'DBCalc27'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FPC_VLPARC'
        DataPipeline = ppDBNotas
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBNotas'
        mmHeight = 3440
        mmLeft = 120386
        mmTop = 529
        mmWidth = 17198
        BandType = 7
        LayerName = BandLayer13
      end
      object ppLine74: TppLine
        DesignLayer = ppDesignLayer13
        UserName = 'Line37'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 196000
        BandType = 7
        LayerName = BandLayer13
      end
      object ppLine75: TppLine
        DesignLayer = ppDesignLayer13
        UserName = 'Line47'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 5387
        mmWidth = 196000
        BandType = 7
        LayerName = BandLayer13
      end
    end
    object ppGroup12: TppGroup
      BreakName = 'ban_apelido'
      DataPipeline = ppDBNotas
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group12'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBNotas'
      NewFile = False
      object ppGroupHeaderBand11: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 5027
        mmPrintPosition = 0
        object ppDBText131: TppDBText
          DesignLayer = ppDesignLayer13
          UserName = 'DBText131'
          DataField = 'ban_apelido'
          DataPipeline = ppDBNotas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBNotas'
          mmHeight = 3704
          mmLeft = 36248
          mmTop = 265
          mmWidth = 15875
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer13
        end
        object ppDBText129: TppDBText
          DesignLayer = ppDesignLayer13
          UserName = 'DBText129'
          DataField = 'ban_codigo'
          DataPipeline = ppDBNotas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDBNotas'
          mmHeight = 3704
          mmLeft = 15346
          mmTop = 265
          mmWidth = 18343
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer13
        end
        object ppLabel178: TppLabel
          DesignLayer = ppDesignLayer13
          UserName = 'Label178'
          Caption = 'Banco '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          FormField = False
          Transparent = True
          mmHeight = 3969
          mmLeft = 2646
          mmTop = 265
          mmWidth = 10319
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer13
        end
      end
      object ppGroupFooterBand11: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 8731
        mmPrintPosition = 0
        object ppDBCalc34: TppDBCalc
          DesignLayer = ppDesignLayer13
          UserName = 'DBCalc34'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'FPC_VLPARC'
          DataPipeline = ppDBNotas
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup12
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBNotas'
          mmHeight = 3440
          mmLeft = 120386
          mmTop = 529
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
          LayerName = BandLayer13
        end
        object ppDBText130: TppDBText
          DesignLayer = ppDesignLayer13
          UserName = 'DBText130'
          DataField = 'ban_apelido'
          DataPipeline = ppDBNotas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDBNotas'
          mmHeight = 3704
          mmLeft = 97102
          mmTop = 529
          mmWidth = 17992
          BandType = 5
          GroupNo = 0
          LayerName = BandLayer13
        end
        object ppLabel177: TppLabel
          DesignLayer = ppDesignLayer13
          UserName = 'Label177'
          Caption = 'Subtotal :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          FormField = False
          Transparent = True
          mmHeight = 3704
          mmLeft = 79375
          mmTop = 529
          mmWidth = 13494
          BandType = 5
          GroupNo = 0
          LayerName = BandLayer13
        end
        object ppDBCalc35: TppDBCalc
          DesignLayer = ppDesignLayer13
          UserName = 'DBCalc35'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'FPC_VLPARC'
          DataPipeline = ppDBNotas
          DisplayFormat = '#0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup12
          TextAlignment = taRightJustified
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'ppDBNotas'
          mmHeight = 3440
          mmLeft = 120386
          mmTop = 5291
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
          LayerName = BandLayer13
        end
        object ppLabel79: TppLabel
          DesignLayer = ppDesignLayer13
          UserName = 'Label79'
          Caption = 'n'#250'mero t'#237'tulos:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          FormField = False
          Transparent = True
          mmHeight = 3704
          mmLeft = 93653
          mmTop = 5292
          mmWidth = 21343
          BandType = 5
          GroupNo = 0
          LayerName = BandLayer13
        end
      end
    end
    object raCodeModule11: TraCodeModule
      ProgramStream = {
        01060F5472614576656E7448616E646C65720B50726F6772616D4E616D650614
        44425465787452617A616F4F6E476574546578740B50726F6772616D54797065
        070B747450726F63656475726506536F75726365067070726F63656475726520
        44425465787452617A616F4F6E476574546578742876617220546578743A2053
        7472696E67293B0D0A626567696E0D0A0D0A202054657874203A3D20436F7079
        2844424E6F7461735B27434C495F52415A414F275D2C312C3430293B0D0A0D0A
        656E643B0D0A0D436F6D706F6E656E744E616D65060B44425465787452617A61
        6F094576656E744E616D6506094F6E47657454657874074576656E7449440235
        084361726574506F730102000200000000}
    end
    object ppDesignLayers13: TppDesignLayers
      object ppDesignLayer13: TppDesignLayer
        UserName = 'BandLayer13'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList13: TppParameterList
    end
  end
end
