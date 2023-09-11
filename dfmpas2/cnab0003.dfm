inherited FrmRetornoCNAB_Novo: TFrmRetornoCNAB_Novo
  Left = 210
  Top = 111
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Retorno arquivo cobran'#231'a (CNAB400/240)'
  ClientHeight = 497
  ClientWidth = 963
  Font.Charset = ANSI_CHARSET
  Font.Name = 'Arial'
  FormStyle = fsMDIChild
  KeyPreview = True
  Position = poDesktopCenter
  Visible = True
  OnCloseQuery = FormCloseQuery
  ExplicitWidth = 969
  ExplicitHeight = 522
  PixelsPerInch = 96
  TextHeight = 14
  object PanProcessando: TPanel [0]
    Left = 990
    Top = 180
    Width = 375
    Height = 90
    BevelInner = bvLowered
    BevelWidth = 2
    TabOrder = 0
    Visible = False
    object LblProcesso: TLabel
      Left = 9
      Top = 53
      Width = 73
      Height = 14
      Caption = 'Processando...'
    end
    object LblMensagem1: TLabel
      Left = 9
      Top = 23
      Width = 58
      Height = 14
      Caption = 'Mensagem1'
    end
    object LblMensagem2: TLabel
      Left = 9
      Top = 38
      Width = 58
      Height = 14
      Caption = 'Mensagem1'
    end
    object Panel1: TPanel
      Left = 4
      Top = 4
      Width = 367
      Height = 16
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = ' Aguarde o processamento.'
      Color = 8404992
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object Button1: TButton
        Left = 686
        Top = 3
        Width = 15
        Height = 13
        Caption = 'X'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = ButFechaClick
      end
    end
    object ProgressBar: TProgressBar
      Left = 7
      Top = 66
      Width = 360
      Height = 19
      TabOrder = 1
    end
  end
  object PanTipo: TPanel [1]
    Left = 985
    Top = 3
    Width = 332
    Height = 148
    BevelInner = bvLowered
    BevelWidth = 2
    TabOrder = 1
    Visible = False
    object GroupBox3: TGroupBox
      Left = 5
      Top = 62
      Width = 321
      Height = 54
      Caption = 'Ordem Impress'#227'o'
      Color = clBtnFace
      ParentColor = False
      TabOrder = 0
      object RadNumFatura: TRadioButton
        Left = 13
        Top = 15
        Width = 100
        Height = 16
        Caption = '&N'#250'mero Fatura'
        Checked = True
        TabOrder = 0
        TabStop = True
      end
      object RadCodCliente: TRadioButton
        Left = 13
        Top = 33
        Width = 111
        Height = 15
        Caption = 'C'#243'digo Cl&iente'
        TabOrder = 1
      end
      object RadRazao: TRadioButton
        Left = 186
        Top = 15
        Width = 111
        Height = 16
        Caption = '&Raz'#227'o Cliente'
        TabOrder = 2
      end
    end
    object GroupBox6: TGroupBox
      Left = 5
      Top = 22
      Width = 321
      Height = 40
      Caption = 'Dispositivo de sa'#237'da'
      Color = clBtnFace
      ParentColor = False
      TabOrder = 1
      object RadVideo: TRadioButton
        Left = 13
        Top = 18
        Width = 68
        Height = 15
        Caption = '&Video'
        Checked = True
        TabOrder = 0
        TabStop = True
      end
      object RadImpressora: TRadioButton
        Left = 187
        Top = 18
        Width = 79
        Height = 15
        Caption = '&Impressora'
        TabOrder = 1
      end
    end
    object Panel2: TPanel
      Left = 4
      Top = 4
      Width = 324
      Height = 16
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = ' Impress'#227'o'
      Color = 8404992
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object Button2: TButton
      Left = 247
      Top = 119
      Width = 75
      Height = 21
      Caption = 'Fechar'
      TabOrder = 3
      OnClick = Button2Click
    end
  end
  object GbTotais: TGroupBox [2]
    Left = 976
    Top = 304
    Width = 951
    Height = 103
    Caption = 'Totais (n'#227'o implementado)'
    Color = clBtnFace
    ParentColor = False
    TabOrder = 2
    object Label2: TLabel
      Left = 797
      Top = 65
      Width = 54
      Height = 14
      Alignment = taRightJustify
      Caption = 'Total Geral:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label13: TLabel
      Left = 22
      Top = 22
      Width = 71
      Height = 14
      Alignment = taRightJustify
      Caption = 'Total Entradas:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label14: TLabel
      Left = 13
      Top = 43
      Width = 80
      Height = 14
      Alignment = taRightJustify
      Caption = 'Total Liquidadas:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label15: TLabel
      Left = 21
      Top = 65
      Width = 72
      Height = 14
      Alignment = taRightJustify
      Caption = 'Total Cartorios:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label17: TLabel
      Left = 288
      Top = 22
      Width = 75
      Height = 14
      Alignment = taRightJustify
      Caption = 'Total Rejei'#231#245'es:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label19: TLabel
      Left = 302
      Top = 43
      Width = 61
      Height = 14
      Alignment = taRightJustify
      Caption = 'Total Baixas:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label21: TLabel
      Left = 289
      Top = 65
      Width = 74
      Height = 14
      Alignment = taRightJustify
      Caption = 'Total Protestos:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label22: TLabel
      Left = 551
      Top = 22
      Width = 61
      Height = 14
      Alignment = taRightJustify
      Caption = 'Total Outros:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label27: TLabel
      Left = 557
      Top = 43
      Width = 55
      Height = 14
      Alignment = taRightJustify
      Caption = 'Total Juros:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label30: TLabel
      Left = 551
      Top = 65
      Width = 61
      Height = 14
      Alignment = taRightJustify
      Caption = 'Total Tarifas:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label31: TLabel
      Left = 797
      Top = 22
      Width = 54
      Height = 14
      Alignment = taRightJustify
      Caption = 'Sub - Total:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label32: TLabel
      Left = 795
      Top = 43
      Width = 56
      Height = 14
      Alignment = taRightJustify
      Caption = 'Total Desc.:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object CTotalTitulos: TCurrencyEdit
      Left = 852
      Top = 62
      Width = 90
      Height = 20
      TabStop = False
      AutoSize = False
      Color = 14145495
      DisplayFormat = '###,###,##0.00;-###,###,##0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object CEntradas: TCurrencyEdit
      Left = 93
      Top = 20
      Width = 90
      Height = 19
      TabStop = False
      AutoSize = False
      Color = 14145495
      DisplayFormat = '###,###,##0.00;-###,###,##0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object CLiquidacoes: TCurrencyEdit
      Left = 93
      Top = 41
      Width = 90
      Height = 20
      TabStop = False
      AutoSize = False
      Color = 14145495
      DisplayFormat = '###,###,##0.00;-###,###,##0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object CCartorio: TCurrencyEdit
      Left = 93
      Top = 62
      Width = 90
      Height = 20
      TabStop = False
      AutoSize = False
      Color = 14145495
      DisplayFormat = '###,###,##0.00;-###,###,##0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
    object CRejeicao: TCurrencyEdit
      Left = 368
      Top = 20
      Width = 90
      Height = 19
      TabStop = False
      AutoSize = False
      Color = 14145495
      DisplayFormat = '###,###,##0.00;-###,###,##0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
    object CBaixas: TCurrencyEdit
      Left = 368
      Top = 41
      Width = 90
      Height = 20
      TabStop = False
      AutoSize = False
      Color = 14145495
      DisplayFormat = '###,###,##0.00;-###,###,##0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
    end
    object CProtesto: TCurrencyEdit
      Left = 368
      Top = 62
      Width = 90
      Height = 20
      TabStop = False
      AutoSize = False
      Color = 14145495
      DisplayFormat = '###,###,##0.00;-###,###,##0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
    end
    object CTarifas: TCurrencyEdit
      Left = 612
      Top = 62
      Width = 90
      Height = 20
      TabStop = False
      AutoSize = False
      Color = 14145495
      DisplayFormat = '###,###,##0.00;-###,###,##0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 7
    end
    object CJuros: TCurrencyEdit
      Left = 612
      Top = 41
      Width = 90
      Height = 20
      TabStop = False
      AutoSize = False
      Color = 14145495
      DisplayFormat = '###,###,##0.00;-###,###,##0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 8
    end
    object COutros: TCurrencyEdit
      Left = 612
      Top = 20
      Width = 90
      Height = 19
      TabStop = False
      AutoSize = False
      Color = 14145495
      DisplayFormat = '###,###,##0.00;-###,###,##0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 9
    end
    object CSubTotal: TCurrencyEdit
      Left = 852
      Top = 20
      Width = 90
      Height = 19
      TabStop = False
      AutoSize = False
      Color = 14145495
      DisplayFormat = '###,###,##0.00;-###,###,##0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 10
    end
    object CDesconto: TCurrencyEdit
      Left = 852
      Top = 41
      Width = 90
      Height = 20
      TabStop = False
      AutoSize = False
      Color = 14145495
      DisplayFormat = '###,###,##0.00;-###,###,##0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 11
    end
  end
  object Panel3: TPanel [3]
    Left = 0
    Top = 0
    Width = 953
    Height = 497
    Align = alLeft
    AutoSize = True
    TabOrder = 3
    object GbRetorno: TGroupBox
      Left = 1
      Top = 1
      Width = 951
      Height = 951
      Align = alTop
      Caption = 'Processar retorno cobran'#231'a:'
      Color = clBtnFace
      ParentColor = False
      TabOrder = 0
      object Label18: TLabel
        Left = 12
        Top = 44
        Width = 203
        Height = 14
        Alignment = taRightJustify
        Caption = 'Caminho para importar retorno do arquivo:'
      end
      object Label4: TLabel
        Left = 133
        Top = 22
        Width = 82
        Height = 14
        Alignment = taRightJustify
        Caption = 'Informe o Banco:'
      end
      object Label7: TLabel
        Left = 172
        Top = 66
        Width = 43
        Height = 14
        Alignment = taRightJustify
        Caption = 'Ag'#234'ncia:'
      end
      object Label10: TLabel
        Left = 144
        Top = 87
        Width = 71
        Height = 14
        Alignment = taRightJustify
        Caption = 'D'#237'gito Ag'#234'ncia:'
      end
      object Label8: TLabel
        Left = 139
        Top = 109
        Width = 76
        Height = 14
        Alignment = taRightJustify
        Caption = 'Conta Corrente:'
      end
      object Label9: TLabel
        Left = 110
        Top = 131
        Width = 105
        Height = 14
        Alignment = taRightJustify
        Caption = 'D'#237'gito Conta Corrente:'
      end
      object Label5: TLabel
        Left = 138
        Top = 151
        Width = 77
        Height = 14
        Alignment = taRightJustify
        Caption = 'C'#243'digo Carteira:'
      end
      object Label16: TLabel
        Left = 86
        Top = 175
        Width = 129
        Height = 14
        Alignment = taRightJustify
        Caption = 'Ind. da Empresa no Banco:'
      end
      object LblSataus: TLabel
        Left = 7
        Top = 367
        Width = 133
        Height = 14
        Caption = 'Importando arquivo CNAB...'
      end
      object Gauge: TGauge
        Left = 7
        Top = 380
        Width = 944
        Height = 17
        ForeColor = clNavy
        Progress = 0
      end
      object FileArqImportar: TFilenameEdit
        Left = 217
        Top = 41
        Width = 328
        Height = 22
        OnAfterDialog = FileArqImportarAfterDialog
        DefaultExt = '*.*'
        Filter = 
          'Todos Arquivos (*.*)|*.*|Arquivos de retorno (*.ret)|*.ret|Arqui' +
          'vos de texto (*.txt)|*.txt'
        Enabled = False
        ButtonWidth = 20
        NumGlyphs = 1
        TabOrder = 2
        Text = ''
      end
      object GroupBox9: TGroupBox
        Left = 6
        Top = 267
        Width = 939
        Height = 93
        TabOrder = 3
        object Label20: TLabel
          Left = 7
          Top = 12
          Width = 44
          Height = 14
          Caption = 'Duplicata'
        end
        object Label23: TLabel
          Left = 120
          Top = 12
          Width = 51
          Height = 14
          Caption = 'Movimento'
        end
        object Label24: TLabel
          Left = 205
          Top = 12
          Width = 56
          Height = 14
          Caption = 'Vencimento'
        end
        object Label25: TLabel
          Left = 294
          Top = 12
          Width = 25
          Height = 14
          Caption = 'Valor'
        end
        object Label26: TLabel
          Left = 592
          Top = 12
          Width = 31
          Height = 14
          Caption = 'Banco'
        end
        object Label28: TLabel
          Left = 7
          Top = 49
          Width = 86
          Height = 14
          Caption = 'Total de Registros'
        end
        object Label29: TLabel
          Left = 828
          Top = 49
          Width = 50
          Height = 14
          Caption = 'Valor Total'
        end
        object Label11: TLabel
          Left = 391
          Top = 12
          Width = 120
          Height = 14
          Caption = 'Nosso N'#250'mero - (Banco)'
        end
        object PDisplayDup: TPanel
          Left = 7
          Top = 26
          Width = 106
          Height = 20
          Alignment = taLeftJustify
          BevelOuter = bvNone
          BorderStyle = bsSingle
          Color = 14145495
          TabOrder = 0
        end
        object PDisplayEmiss: TPanel
          Left = 120
          Top = 26
          Width = 81
          Height = 20
          BevelOuter = bvNone
          BorderStyle = bsSingle
          Caption = '  /  /    '
          Color = 14145495
          TabOrder = 1
        end
        object PDisplayVenc: TPanel
          Left = 205
          Top = 26
          Width = 84
          Height = 20
          BevelOuter = bvNone
          BorderStyle = bsSingle
          Caption = '  /  /    '
          Color = 14145495
          TabOrder = 2
        end
        object PDisplayBanco: TPanel
          Left = 594
          Top = 26
          Width = 335
          Height = 20
          Alignment = taLeftJustify
          BevelOuter = bvNone
          BorderStyle = bsSingle
          Color = 14145495
          TabOrder = 3
        end
        object CRegistro: TCurrencyEdit
          Left = 7
          Top = 63
          Width = 89
          Height = 20
          TabStop = False
          Alignment = taCenter
          AutoSize = False
          Color = 14145495
          DecimalPlaces = 0
          DisplayFormat = '000000'
          ReadOnly = True
          TabOrder = 4
          ZeroEmpty = False
        end
        object CValorTotal: TCurrencyEdit
          Left = 828
          Top = 63
          Width = 101
          Height = 20
          TabStop = False
          AutoSize = False
          Color = 14145495
          DisplayFormat = '###,###,##0.00;-###,###,##0.00'
          ReadOnly = True
          TabOrder = 5
          ZeroEmpty = False
        end
        object CDisplayValor: TCurrencyEdit
          Left = 294
          Top = 26
          Width = 91
          Height = 20
          TabStop = False
          AutoSize = False
          Color = 14145495
          DisplayFormat = '###,###,##0.00;-###,###,##0.00'
          ReadOnly = True
          TabOrder = 6
          ZeroEmpty = False
        end
        object PanNossoNumero: TPanel
          Left = 391
          Top = 26
          Width = 194
          Height = 20
          Alignment = taLeftJustify
          BevelOuter = bvNone
          BorderStyle = bsSingle
          Color = 14145495
          TabOrder = 7
        end
      end
      object BitProcessar: TBitBtn
        Left = 739
        Top = 412
        Width = 101
        Height = 24
        Caption = 'Impor&tar CNAB'
        Enabled = False
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333444444
          33333333333F8888883F33330000324334222222443333388F3833333388F333
          000032244222222222433338F8833FFFFF338F3300003222222AAAAA22243338
          F333F88888F338F30000322222A33333A2224338F33F8333338F338F00003222
          223333333A224338F33833333338F38F00003222222333333A444338FFFF8F33
          3338888300003AAAAAAA33333333333888888833333333330000333333333333
          333333333333333333FFFFFF000033333333333344444433FFFF333333888888
          00003A444333333A22222438888F333338F3333800003A2243333333A2222438
          F38F333333833338000033A224333334422224338338FFFFF8833338000033A2
          22444442222224338F3388888333FF380000333A2222222222AA243338FF3333
          33FF88F800003333AA222222AA33A3333388FFFFFF8833830000333333AAAAAA
          3333333333338888883333330000333333333333333333333333333333333333
          0000}
        NumGlyphs = 2
        TabOrder = 4
        OnClick = BitProcessarClick
      end
      object BitImprimir: TBitBtn
        Left = 626
        Top = 412
        Width = 93
        Height = 24
        Caption = '&Imprimir'
        Enabled = False
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
          888F8800000000000888808888888880808800000000000008080888888BBB88
          0008088888877788080800000000000008800888888888808080800000000008
          0800880FFFFFFFF080808880F00000F000088880FFFFFFFF088888880F00000F
          088888880FFFFFFFF08888888000000000888888888888888888}
        TabOrder = 5
        TabStop = False
        OnClick = BitImprimirClick
      end
      object CCodigoBco1: TCurrencyEdit
        Left = 217
        Top = 17
        Width = 42
        Height = 22
        Alignment = taCenter
        AutoSize = False
        DecimalPlaces = 0
        DisplayFormat = '0000'
        TabOrder = 0
        ZeroEmpty = False
        OnExit = CCodigoBco1Exit
        OnKeyPress = CCodigoBco1KeyPress
      end
      object CbBancos1: TComboBox
        Left = 260
        Top = 17
        Width = 284
        Height = 22
        CharCase = ecUpperCase
        TabOrder = 1
        OnClick = CbBancos1Click
      end
      object CDigitoC: TCurrencyEdit
        Left = 217
        Top = 126
        Width = 42
        Height = 20
        TabStop = False
        Alignment = taCenter
        AutoSize = False
        Color = 14145495
        DecimalPlaces = 0
        DisplayFormat = '00'
        ReadOnly = True
        TabOrder = 6
        ZeroEmpty = False
      end
      object CDigitoAge: TCurrencyEdit
        Left = 217
        Top = 84
        Width = 42
        Height = 19
        TabStop = False
        Alignment = taCenter
        AutoSize = False
        Color = 14145495
        DecimalPlaces = 0
        DisplayFormat = '00'
        ReadOnly = True
        TabOrder = 8
        ZeroEmpty = False
      end
      object PanAgencia: TPanel
        Left = 217
        Top = 62
        Width = 105
        Height = 20
        Alignment = taLeftJustify
        BevelOuter = bvNone
        BorderStyle = bsSingle
        Color = 14145495
        TabOrder = 9
      end
      object PanContaCorr: TPanel
        Left = 217
        Top = 105
        Width = 105
        Height = 19
        Alignment = taLeftJustify
        BevelOuter = bvNone
        BorderStyle = bsSingle
        Color = 14145495
        TabOrder = 10
      end
      object PanCodEmpresa: TPanel
        Left = 217
        Top = 171
        Width = 448
        Height = 20
        Alignment = taLeftJustify
        BevelOuter = bvNone
        BorderStyle = bsSingle
        Color = 14145495
        TabOrder = 11
      end
      object CCodCarteira: TEdit
        Left = 217
        Top = 148
        Width = 42
        Height = 22
        TabStop = False
        Color = 14145495
        ReadOnly = True
        TabOrder = 7
      end
      object BitTipoImpressao1: TBitBtn
        Left = 716
        Top = 412
        Width = 15
        Height = 24
        Hint = 'Ordem para Imprenss'#227'o do Relat'#243'rio'
        Enabled = False
        Glyph.Data = {
          76020000424D760200000000000036000000280000000C0000000C0000000100
          2000000000004002000000000000000000000000000000000000C8D0D400C8D0
          D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
          D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
          D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
          D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
          D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
          D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
          D400C8D0D400C8D0D400C8D0D40000000000C8D0D400C8D0D400C8D0D400C8D0
          D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400000000000000
          000000000000C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
          D400C8D0D4000000000000000000000000000000000000000000C8D0D400C8D0
          D400C8D0D400C8D0D400C8D0D400C8D0D4000000000000000000000000000000
          0000000000000000000000000000C8D0D400C8D0D400C8D0D400C8D0D400C8D0
          D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
          D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
          D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
          D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
          D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
          D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400}
        ParentShowHint = False
        ShowHint = True
        TabOrder = 12
        OnClick = BitTipoImpressao1Click
      end
      object BitBtnSair: TBitBtn
        Left = 846
        Top = 412
        Width = 92
        Height = 24
        Cursor = crHandPoint
        Caption = '&Sair'
        TabOrder = 13
        OnClick = BitBtnSairClick
      end
      object BitVisualizar: TBitBtn
        Left = 11
        Top = 412
        Width = 94
        Height = 24
        Caption = '&Visualizar CNAB'
        Enabled = False
        TabOrder = 14
        Visible = False
        OnClick = BitVisualizarClick
      end
    end
  end
  inherited qAux: TSQLQuery
    Left = 722
    Top = 45
  end
  inherited qAux2: TSQLQuery
    Left = 786
    Top = 28
  end
  inherited qAux3: TSQLQuery
    Left = 826
    Top = 28
  end
  object SQLDupliCNAB: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT'#13#10'D1.*,'#13#10'F2.FAT_REGISTRO,'#13#10'F2.FAT_CODIGO,'#13#10'F2.FPC_NUMER,'#13#10 +
      'F2.FPC_VENCTO,'#13#10'F2.FPC_PAGTO,'#13#10'F2.FPC_VLPARC,'#13#10'F2.FPC_JUROS,'#13#10'F2' +
      '.FPC_VLPAGO,'#13#10'F2.CLI_CODIGO,'#13#10'C1.CLI_RAZAO,'#13#10'F2.FPC_COBNUM,'#13#10'O1.' +
      'OCR_DESCRICAO,'#13#10'R1.REJ_DESCRICAO'#13#10'FROM DUPLICAT_CNAB D1'#13#10'JOIN FA' +
      'T_PC01 F2 ON (D1.DCN_DUPLICATA = F2.FAT_CODIGO and D1.DCN_DUP_PA' +
      'RCELA = F2.FPC_NUMER)'#13#10'LEFT JOIN CLI0000 C1 ON (F2.CLI_CODIGO = ' +
      'C1.CLI_CODIGO)'#13#10'LEFT JOIN OCORRENCIA_CNAB O1 ON (F2.BAN_COD_APEL' +
      'IDO = O1.OCR_COD_BANCO)'#13#10'                            AND (D1.DCN' +
      '_COD_OCORRENCIA = O1.OCR_COD_OCORRENCIA)'#13#10'                      ' +
      '      AND (O1.OCR_TIPO_OCORRENCIA = '#39'T'#39')'#13#10'LEFT JOIN REJEICAO_CNA' +
      'B R1 ON (F2.BAN_COD_APELIDO = R1.REJ_COD_BANCO and D1.DCN_COD_RE' +
      'JEICAO = R1.REJ_COD_REJEICAO)'#13#10'where D1.DCN_COD_REMESSA = 15'#13#10'OR' +
      'DER BY'#13#10'F2.FAT_CODIGO,F2.FPC_NUMER,C1.CLI_RAZAO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'SELECT'#13#10'D1.*,'#13#10'F2.FAT_REGISTRO,'#13#10'F2.FAT_CODIGO,'#13#10'F2.FPC_NUMER,'#13#10 +
      'F2.FPC_VENCTO,'#13#10'F2.FPC_PAGTO,'#13#10'F2.FPC_VLPARC,'#13#10'F2.FPC_JUROS,'#13#10'F2' +
      '.FPC_VLPAGO,'#13#10'F2.CLI_CODIGO,'#13#10'C1.CLI_RAZAO,'#13#10'F2.FPC_COBNUM,'#13#10'O1.' +
      'OCR_DESCRICAO,'#13#10'R1.REJ_DESCRICAO'#13#10'FROM DUPLICAT_CNAB D1'#13#10'JOIN FA' +
      'T_PC01 F2 ON (D1.DCN_DUPLICATA = F2.FAT_CODIGO and D1.DCN_DUP_PA' +
      'RCELA = F2.FPC_NUMER)'#13#10'LEFT JOIN CLI0000 C1 ON (F2.CLI_CODIGO = ' +
      'C1.CLI_CODIGO)'#13#10'LEFT JOIN OCORRENCIA_CNAB O1 ON (F2.BAN_COD_APEL' +
      'IDO = O1.OCR_COD_BANCO)'#13#10'                            AND (D1.DCN' +
      '_COD_OCORRENCIA = O1.OCR_COD_OCORRENCIA)'#13#10'                      ' +
      '      AND (O1.OCR_TIPO_OCORRENCIA = '#39'T'#39')'#13#10'LEFT JOIN REJEICAO_CNA' +
      'B R1 ON (F2.BAN_COD_APELIDO = R1.REJ_COD_BANCO and D1.DCN_COD_RE' +
      'JEICAO = R1.REJ_COD_REJEICAO)'#13#10'where D1.DCN_COD_REMESSA = 15'#13#10'OR' +
      'DER BY'#13#10'F2.FAT_CODIGO,F2.FPC_NUMER,C1.CLI_RAZAO'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 240
    Top = 200
    object SQLDupliCNABDCN_REGISTRO: TIntegerField
      FieldName = 'DCN_REGISTRO'
      Required = True
    end
    object SQLDupliCNABDCN_COD_REMESSA: TIntegerField
      FieldName = 'DCN_COD_REMESSA'
    end
    object SQLDupliCNABDCN_DUPLICATA: TStringField
      FieldName = 'DCN_DUPLICATA'
      Size = 10
    end
    object SQLDupliCNABDCN_DUP_PARCELA: TStringField
      Alignment = taCenter
      FieldName = 'DCN_DUP_PARCELA'
      FixedChar = True
      Size = 2
    end
    object SQLDupliCNABDCN_COD_OCORRENCIA: TStringField
      Alignment = taCenter
      FieldName = 'DCN_COD_OCORRENCIA'
      Size = 3
    end
    object SQLDupliCNABDCN_DATA_OCORRENCIA: TDateField
      Alignment = taCenter
      FieldName = 'DCN_DATA_OCORRENCIA'
    end
    object SQLDupliCNABDCN_INSTRUCAO1: TStringField
      FieldName = 'DCN_INSTRUCAO1'
      Size = 3
    end
    object SQLDupliCNABDCN_INSTRUCAO2: TStringField
      FieldName = 'DCN_INSTRUCAO2'
      Size = 3
    end
    object SQLDupliCNABDCN_COD_REJEICAO: TStringField
      FieldName = 'DCN_COD_REJEICAO'
      Size = 3
    end
    object SQLDupliCNABDCN_INDIC_CREDITO: TStringField
      FieldName = 'DCN_INDIC_CREDITO'
      Size = 3
    end
    object SQLDupliCNABDCN_NOSSO_NUMERO: TStringField
      FieldName = 'DCN_NOSSO_NUMERO'
      Size = 15
    end
    object SQLDupliCNABDCN_TARIFA: TFMTBCDField
      FieldName = 'DCN_TARIFA'
      EditFormat = '###,###,##0.00'
      Precision = 15
    end
    object SQLDupliCNABDCN_VALOR_ABATIMENTO: TFMTBCDField
      FieldName = 'DCN_VALOR_ABATIMENTO'
      DisplayFormat = '###,###,##0.00'
      Precision = 15
    end
    object SQLDupliCNABDCN_VALOR_DESCONTO: TFMTBCDField
      FieldName = 'DCN_VALOR_DESCONTO'
      DisplayFormat = '###,###,##0.00'
      Precision = 15
    end
    object SQLDupliCNABDCN_VALOR_PAGO: TFMTBCDField
      FieldName = 'DCN_VALOR_PAGO'
      DisplayFormat = '###,###,##0.00'
      Precision = 15
    end
    object SQLDupliCNABDCN_JUROS_MORA: TFMTBCDField
      FieldName = 'DCN_JUROS_MORA'
      DisplayFormat = '###,###,##0.00'
      Precision = 15
    end
    object SQLDupliCNABDCN_VALOR_MULTA: TFMTBCDField
      FieldName = 'DCN_VALOR_MULTA'
      DisplayFormat = '###,###,##0.00'
      Precision = 15
    end
    object SQLDupliCNABDCN_STATUS_BAIXA: TStringField
      FieldName = 'DCN_STATUS_BAIXA'
      FixedChar = True
      Size = 1
    end
    object SQLDupliCNABDCN_IDENTIFICA_TITULO: TStringField
      FieldName = 'DCN_IDENTIFICA_TITULO'
    end
    object SQLDupliCNABDCN_PROTESTAR: TStringField
      FieldName = 'DCN_PROTESTAR'
      FixedChar = True
      Size = 1
    end
    object SQLDupliCNABDCN_DIAS_PROT: TIntegerField
      FieldName = 'DCN_DIAS_PROT'
    end
    object SQLDupliCNABEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
  object DSDupliCNAB: TDataSource
    DataSet = SQLDupliCNAB
    Left = 272
    Top = 224
  end
  object SQLConsultaArquivo: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = ''
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 160
    Top = 208
  end
  object SQLContaBanco: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = ''
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 768
    Top = 176
  end
  object SQLConsultaCRC: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = ''
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 64
    Top = 216
  end
  object SQLConsulta: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = ''
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 24
    Top = 224
  end
  object SQLRelatorio: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = ''
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 1001
    Top = 350
  end
  object SQLDetalhe: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = ''
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 1165
    Top = 358
  end
  object RDProtRetornoCNAB: TRDprint
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
    OpcoesPreview.CaptionPreview = 'Relat'#243'rio Protocolo Retorno Arquivo CNAB 400'
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
    CaptionSetup = 'Relat'#243'rio Protocolo Retorno Arquivo CNAB 400'
    TitulodoRelatorio = 'Relat'#243'rio Protocolo Retorno Arquivo CNAB 400'
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
    TamanhoQteColunas = 137
    TamanhoQteLPP = Seis
    NumerodeCopias = 1
    FonteTamanhoPadrao = S17cpp
    FonteEstiloPadrao = []
    Orientacao = poPortrait
    OnNewPage = RDProtRetornoCNABNewPage
    OnBeforeNewPage = RDProtRetornoCNABBeforeNewPage
    Left = 1179
    Top = 262
  end
  object CDSRecebimentos: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT'#13#10'    t1.FRE_REGISTRO,'#13#10'    T1.FRE_DATA_RECEBIMENTO,'#13#10'    ' +
      'T1.FRE_VALOR,'#13#10'    T1.FRE_DESCONTO,'#13#10'    T1.FRE_JUROS,'#13#10'    T1.F' +
      'RE_MULTA,'#13#10'    T1.FRE_RECEBIDO,'#13#10'    T1.BAN_CODIGO,'#13#10'    T2.BAN_' +
      'RAZAO,'#13#10'    T1.FPG_REGISTRO,'#13#10'    T3.FPG_DESCRICAO,'#13#10'    T1.USU_' +
      'CODIGO,'#13#10'   t4.USU_NOME'#13#10'FROM'#13#10'FAT_RECEBIMENTO T1'#13#10'JOIN BAN0000 ' +
      'T2 ON (T2.BAN_CODIGO = T1.BAN_CODIGO)'#13#10'JOIN FORMA_PAGAMENTO T3 O' +
      'N (T3.FPG_REGISTRO = T1.FPG_REGISTRO)'#13#10'JOIN USUARIO T4 ON (T4.US' +
      'U_CODIGO = T1.USU_CODIGO)'#13#10'WHERE T1.FAT_REGISTRO = 0'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'SELECT'#13#10'    t1.FRE_REGISTRO,'#13#10'    T1.FRE_DATA_RECEBIMENTO,'#13#10'    ' +
      'T1.FRE_VALOR,'#13#10'    T1.FRE_DESCONTO,'#13#10'    T1.FRE_JUROS,'#13#10'    T1.F' +
      'RE_MULTA,'#13#10'    T1.FRE_RECEBIDO,'#13#10'    T1.BAN_CODIGO,'#13#10'    T2.BAN_' +
      'RAZAO,'#13#10'    T1.FPG_REGISTRO,'#13#10'    T3.FPG_DESCRICAO,'#13#10'    T1.USU_' +
      'CODIGO,'#13#10'   t4.USU_NOME'#13#10'FROM'#13#10'FAT_RECEBIMENTO T1'#13#10'JOIN BAN0000 ' +
      'T2 ON (T2.BAN_CODIGO = T1.BAN_CODIGO)'#13#10'JOIN FORMA_PAGAMENTO T3 O' +
      'N (T3.FPG_REGISTRO = T1.FPG_REGISTRO)'#13#10'JOIN USUARIO T4 ON (T4.US' +
      'U_CODIGO = T1.USU_CODIGO)'#13#10'WHERE T1.FAT_REGISTRO = 0'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 569
    Top = 397
    object CDSRecebimentosFRE_DATA_RECEBIMENTO: TDateField
      FieldName = 'FRE_DATA_RECEBIMENTO'
    end
    object CDSRecebimentosFRE_VALOR: TFMTBCDField
      FieldName = 'FRE_VALOR'
      DisplayFormat = '###,###,##0.00'
      Precision = 15
      Size = 4
    end
    object CDSRecebimentosFRE_DESCONTO: TFMTBCDField
      FieldName = 'FRE_DESCONTO'
      DisplayFormat = '###,###,##0.00'
      Precision = 15
      Size = 4
    end
    object CDSRecebimentosFRE_JUROS: TFMTBCDField
      FieldName = 'FRE_JUROS'
      DisplayFormat = '###,###,##0.00'
      Precision = 15
      Size = 4
    end
    object CDSRecebimentosFRE_MULTA: TFMTBCDField
      FieldName = 'FRE_MULTA'
      DisplayFormat = '###,###,##0.00'
      Precision = 15
      Size = 4
    end
    object CDSRecebimentosFRE_RECEBIDO: TFMTBCDField
      FieldName = 'FRE_RECEBIDO'
      DisplayFormat = '###,###,##0.00'
      Precision = 15
      Size = 4
    end
    object CDSRecebimentosBAN_CODIGO: TStringField
      FieldName = 'BAN_CODIGO'
      Size = 4
    end
    object CDSRecebimentosBAN_RAZAO: TStringField
      FieldName = 'BAN_RAZAO'
      Size = 45
    end
    object CDSRecebimentosFPG_REGISTRO: TIntegerField
      FieldName = 'FPG_REGISTRO'
    end
    object CDSRecebimentosFPG_DESCRICAO: TStringField
      FieldName = 'FPG_DESCRICAO'
      Size = 100
    end
    object CDSRecebimentosUSU_CODIGO: TIntegerField
      FieldName = 'USU_CODIGO'
    end
    object CDSRecebimentosUSU_NOME: TStringField
      FieldName = 'USU_NOME'
      Size = 40
    end
    object CDSRecebimentosFRE_REGISTRO: TIntegerField
      FieldName = 'FRE_REGISTRO'
      Required = True
    end
  end
  object RDProtCNAB: TRDprint
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
    OpcoesPreview.CaptionPreview = 'Relat'#243'rio Protocolo remessa arquivo CNAB 400'
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
    CaptionSetup = 'Relat'#243'rio Protocolo remessa arquivo CNAB 400'
    TitulodoRelatorio = 'Relat'#243'rio Protocolo remessa arquivo CNAB 400'
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
    TamanhoQteColunas = 137
    TamanhoQteLPP = Seis
    NumerodeCopias = 1
    FonteTamanhoPadrao = S17cpp
    FonteEstiloPadrao = []
    Orientacao = poPortrait
    OnNewPage = RDProtCNABNewPage
    OnBeforeNewPage = RDProtCNABBeforeNewPage
    Left = 1013
    Top = 254
  end
  object bl1: TACBrBoleto
    Banco.Numero = 104
    Banco.TamanhoMaximoNossoNum = 15
    Banco.TipoCobranca = cobCaixaEconomica
    Banco.OrientacoesBanco.Strings = (
      
        'SAC CAIXA: 0800 726 0101 (informa'#231#245'es, reclama'#231#245'es, sugest'#245'es e ' +
        'elogios) '
      'Para pessoas com defici'#234'ncia auditiva ou de fala: 0800 726 2492 '
      
        'Ouvidoria: 0800 725 7474 (reclama'#231#245'es n'#227'o solucionadas e den'#250'nci' +
        'as) '
      'caixa.gov.br ')
    Banco.LayoutVersaoArquivo = 0
    Banco.LayoutVersaoLote = 0
    Banco.CasasDecimaisMoraJuros = 2
    Cedente.TipoInscricao = pJuridica
    Cedente.IdentDistribuicao = tbBancoDistribui
    NumeroArquivo = 0
    Configuracoes.Arquivos.LogRegistro = False
    Configuracoes.WebService.SSLHttpLib = httpOpenSSL
    Configuracoes.WebService.StoreName = 'My'
    Configuracoes.WebService.Ambiente = taHomologacao
    Configuracoes.WebService.Operacao = tpInclui
    Configuracoes.WebService.VersaoDF = '1.2'
    Left = 640
    Top = 184
  end
  object cdsDuplicatas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDuplicatas'
    Left = 481
    Top = 113
    object cdsDuplicatasDCN_DUPLICATA: TStringField
      FieldName = 'DCN_DUPLICATA'
      Size = 10
    end
    object cdsDuplicatasDCN_DUP_PARCELA: TStringField
      Alignment = taCenter
      FieldName = 'DCN_DUP_PARCELA'
      FixedChar = True
      Size = 2
    end
    object cdsDuplicatasCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Size = 5
    end
    object cdsDuplicatasFPC_VENCTO: TSQLTimeStampField
      FieldName = 'FPC_VENCTO'
    end
  end
  object dspDuplicatas: TDataSetProvider
    DataSet = qAux
    Left = 529
    Top = 169
  end
end
