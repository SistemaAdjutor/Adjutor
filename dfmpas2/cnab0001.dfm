object FormGeradorCNAB: TFormGeradorCNAB
  Left = 221
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Gerador de Arquivo  [CNAB]'
  ClientHeight = 629
  ClientWidth = 1370
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel2: TBevel
    Left = 9
    Top = 563
    Width = 662
    Height = 9
    Shape = bsTopLine
  end
  object RxLabel1: TRxLabel
    Left = 4
    Top = 548
    Width = 69
    Height = 13
    Caption = 'Novi Sistemas'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    ShadowColor = clSilver
  end
  object BitBtnSair: TBitBtn
    Left = 565
    Top = 572
    Width = 100
    Height = 25
    Cursor = crHandPoint
    Caption = '&Sair'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = BitBtnSairClick
  end
  object BitVoltar: TBitBtn
    Left = 280
    Top = 572
    Width = 100
    Height = 25
    Caption = '< &Voltar'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    TabStop = False
    OnClick = BitVoltarClick
  end
  object BitAvancar: TBitBtn
    Left = 380
    Top = 572
    Width = 100
    Height = 25
    Caption = '&Avan'#231'ar >'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = BitAvancarClick
  end
  object BitCancelar: TBitBtn
    Left = 565
    Top = 572
    Width = 100
    Height = 25
    Caption = '&Cancelar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -12
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
    Visible = False
    OnClick = BitCancelarClick
  end
  object PanVisualizar: TPanel
    Left = 754
    Top = 133
    Width = 769
    Height = 466
    BevelInner = bvLowered
    BevelWidth = 2
    BorderStyle = bsSingle
    Color = 12615680
    TabOrder = 4
    Visible = False
    object Bevel3: TBevel
      Left = 8
      Top = 427
      Width = 748
      Height = 6
      Shape = bsTopLine
    end
    object PanCaptionV: TPanel
      Left = 4
      Top = 4
      Width = 757
      Height = 18
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = ' Gerado Arquivo Remessa'
      Color = 8404992
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object ButFecha: TButton
        Left = 739
        Top = 3
        Width = 16
        Height = 14
        Caption = 'X'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = ButFechaClick
      end
    end
    object BitFechaVisual: TBitBtn
      Left = 650
      Top = 432
      Width = 100
      Height = 25
      Cursor = crHandPoint
      Caption = '&Sair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BitFechaVisualClick
    end
    object Status: TStatusBar
      Left = 6
      Top = 405
      Width = 754
      Height = 20
      Align = alNone
      Panels = <
        item
          Width = 60
        end>
    end
    object TVisualizar: TRxRichEdit
      Left = 5
      Top = 23
      Width = 755
      Height = 382
      DrawEndPage = False
      AutoURLDetect = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Fixedsys'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      UndoLimit = 300
      WordWrap = False
      OnSelectionChange = TVisualizarSelectionChange
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 0
    Width = 1370
    Height = 66
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = clWhite
    TabOrder = 5
    object LblMensagem: TLabel
      Left = 198
      Top = 6
      Width = 243
      Height = 13
      Caption = 'Remessa arquivo CNAB 400 para o banco.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object ImgBanco: TImage
      Left = 530
      Top = 0
      Width = 122
      Height = 32
      Center = True
    end
    object Label36: TLabel
      Left = 12
      Top = 31
      Width = 608
      Height = 13
      Caption = 
        'N'#227'o gerar remessas de carteiras COM REGISTRO e impress'#227'o de bole' +
        'to PELA EMPRESA antes de imprimir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label37: TLabel
      Left = 31
      Top = 43
      Width = 3
      Height = 13
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label38: TLabel
      Left = 11
      Top = 48
      Width = 573
      Height = 13
      Caption = 
        'os boletos para que seja gerado o NOSSO NUMERO e o c'#243'digo de bar' +
        'ras a ser enviado na remessa.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
  end
  object GroupBox1: TGroupBox
    Left = 2
    Top = 63
    Width = 671
    Height = 479
    Color = clBtnFace
    ParentColor = False
    TabOrder = 6
  end
  object NbookPages: TNotebook
    Left = 10
    Top = 78
    Width = 658
    Height = 462
    PageIndex = 3
    TabOrder = 7
    object TPage
      Left = 0
      Top = 0
      Caption = 'SelecionaBanco'
      object GroupBox2: TGroupBox
        Left = -5
        Top = 5
        Width = 660
        Height = 444
        Caption = 'Banco'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object pbanco: TPanel
          Left = 2
          Top = 15
          Width = 656
          Height = 33
          Align = alTop
          BevelOuter = bvNone
          Caption = 'pbanco'
          TabOrder = 0
          object Label1: TLabel
            Left = 43
            Top = 11
            Width = 98
            Height = 13
            Alignment = taRightJustify
            Caption = 'Informe o Banco:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label41: TLabel
            Left = 519
            Top = 11
            Width = 67
            Height = 13
            Alignment = taRightJustify
            Caption = 'Cad.Banco:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object CbBancos: TComboBox
            Left = 188
            Top = 8
            Width = 304
            Height = 21
            CharCase = ecUpperCase
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            OnClick = CbBancosClick
          end
          object ccBan_codigo: TCurrencyEdit
            Left = 585
            Top = 7
            Width = 45
            Height = 21
            Alignment = taCenter
            AutoSize = False
            Color = 14145495
            DecimalPlaces = 0
            DisplayFormat = '0000'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 1
            ZeroEmpty = False
          end
          object CCodigoBco: TCurrencyEdit
            Left = 142
            Top = 8
            Width = 45
            Height = 21
            Alignment = taCenter
            AutoSize = False
            DecimalPlaces = 0
            DisplayFormat = '0000'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
            ZeroEmpty = False
            OnChange = CCodigoBcoChange
            OnKeyPress = CCodigoBcoKeyPress
          end
        end
        object pinfo: TPanel
          Left = 2
          Top = 54
          Width = 656
          Height = 388
          Align = alBottom
          TabOrder = 1
          object PageControl1: TPageControl
            Left = 1
            Top = 1
            Width = 654
            Height = 386
            ActivePage = tsOutros
            Align = alClient
            Style = tsButtons
            TabOrder = 0
            TabStop = False
            StyleElements = []
            object tsCopel: TTabSheet
              Caption = 'tsCopel'
              object pCopel: TPanel
                Left = 0
                Top = 0
                Width = 646
                Height = 355
                Align = alClient
                BevelOuter = bvNone
                TabOrder = 0
                object Label45: TLabel
                  Left = 7
                  Top = 46
                  Width = 48
                  Height = 13
                  Caption = 'Conv'#234'nio:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -12
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object pProduto: TPanel
                  Left = 314
                  Top = 9
                  Width = 196
                  Height = 26
                  BevelOuter = bvNone
                  TabOrder = 0
                  object Label34: TLabel
                    Left = 8
                    Top = 5
                    Width = 62
                    Height = 13
                    Caption = 'Cod Produto:'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -12
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ParentFont = False
                  end
                  object edCodProduto: TEdit
                    Left = 74
                    Top = 1
                    Width = 121
                    Height = 21
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -12
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    MaxLength = 4
                    ParentFont = False
                    TabOrder = 0
                  end
                end
                object rgMovCopel: TRadioGroup
                  Left = 4
                  Top = 2
                  Width = 299
                  Height = 35
                  Caption = 'Tipo de movimento'
                  Columns = 3
                  ItemIndex = 0
                  Items.Strings = (
                    'Inclus'#227'o'
                    'Altera'#231#227'o'
                    'Calcelamento')
                  TabOrder = 1
                end
                object edConvenio: TEdit
                  Left = 62
                  Top = 43
                  Width = 121
                  Height = 21
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -12
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 2
                end
              end
            end
            object tsOutros: TTabSheet
              Caption = 'tsOutros'
              ImageIndex = 1
              object pOutros: TPanel
                Left = 0
                Top = 0
                Width = 646
                Height = 355
                Align = alClient
                BevelOuter = bvNone
                TabOrder = 0
                object Label7: TLabel
                  Left = 92
                  Top = 4
                  Width = 42
                  Height = 13
                  Alignment = taRightJustify
                  Caption = 'Ag'#234'ncia:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -12
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Label10: TLabel
                  Left = 60
                  Top = 27
                  Width = 74
                  Height = 13
                  Alignment = taRightJustify
                  Caption = 'D'#237'gito Ag'#234'ncia:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -12
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Label8: TLabel
                  Left = 60
                  Top = 50
                  Width = 74
                  Height = 13
                  Alignment = taRightJustify
                  Caption = 'Conta Corrente:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -12
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Label9: TLabel
                  Left = 71
                  Top = 73
                  Width = 63
                  Height = 13
                  Alignment = taRightJustify
                  Caption = 'D'#237'gito Conta:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -12
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Label2: TLabel
                  Left = 42
                  Top = 98
                  Width = 92
                  Height = 13
                  Alignment = taRightJustify
                  Caption = 'C'#243'digo Carteira:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -12
                  Font.Name = 'MS Sans Serif'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label31: TLabel
                  Left = 382
                  Top = 98
                  Width = 96
                  Height = 13
                  Caption = 'N'#250'mero Carteira:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -12
                  Font.Name = 'MS Sans Serif'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label21: TLabel
                  Left = 89
                  Top = 189
                  Width = 41
                  Height = 13
                  Alignment = taRightJustify
                  Caption = 'Esp'#233'cie:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -12
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Label4: TLabel
                  Left = 2
                  Top = 142
                  Width = 132
                  Height = 13
                  Alignment = taRightJustify
                  Caption = '2a.  Instru'#231#227'o de Cobran'#231'a:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -12
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Label3: TLabel
                  Left = 2
                  Top = 119
                  Width = 132
                  Height = 13
                  Alignment = taRightJustify
                  Caption = '1a.  Instru'#231#227'o de Cobran'#231'a:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -12
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Label16: TLabel
                  Left = 1
                  Top = 213
                  Width = 133
                  Height = 13
                  Alignment = taRightJustify
                  Caption = 'Cod. da Empresa no Banco:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -12
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Label39: TLabel
                  Left = 340
                  Top = 216
                  Width = 84
                  Height = 13
                  Alignment = taRightJustify
                  Caption = 'Cod.Transmiss'#227'o:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -12
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Label22: TLabel
                  Left = 100
                  Top = 235
                  Width = 33
                  Height = 13
                  Alignment = taRightJustify
                  Caption = 'Aceite:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -12
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Label5: TLabel
                  Left = 38
                  Top = 259
                  Width = 96
                  Height = 13
                  Alignment = taRightJustify
                  Caption = 'Prazo para Protesto:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -12
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Label19: TLabel
                  Left = 27
                  Top = 282
                  Width = 108
                  Height = 13
                  Alignment = taRightJustify
                  Caption = 'Juros Mora p/ m'#234's (%):'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -12
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Label44: TLabel
                  Left = 270
                  Top = 304
                  Width = 126
                  Height = 13
                  Caption = 'Aplicar Multa Ap'#243's N Dias:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -12
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Label40: TLabel
                  Left = 3
                  Top = 305
                  Width = 132
                  Height = 13
                  Caption = 'Multa Ap'#243's Vencimento (%):'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -12
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Label6: TLabel
                  Left = 33
                  Top = 327
                  Width = 100
                  Height = 13
                  Alignment = taRightJustify
                  Caption = 'Mensagem adicional:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -12
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Label46: TLabel
                  Left = 2
                  Top = 166
                  Width = 132
                  Height = 13
                  Alignment = taRightJustify
                  Caption = '3a.  Instru'#231#227'o de Cobran'#231'a:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -12
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object CbAgencia: TComboBox
                  Left = 136
                  Top = 0
                  Width = 115
                  Height = 21
                  CharCase = ecUpperCase
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -12
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                  OnClick = CbAgenciaClick
                end
                object CDigitoAge: TCurrencyEdit
                  Left = 136
                  Top = 23
                  Width = 45
                  Height = 21
                  Alignment = taCenter
                  AutoSize = False
                  DecimalPlaces = 0
                  DisplayFormat = '00'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -12
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 1
                  ZeroEmpty = False
                end
                object CbContaCorr: TComboBox
                  Left = 136
                  Top = 46
                  Width = 115
                  Height = 21
                  CharCase = ecUpperCase
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -12
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 2
                  OnClick = CbContaCorrClick
                end
                object CDigitoC: TCurrencyEdit
                  Left = 136
                  Top = 69
                  Width = 45
                  Height = 21
                  Alignment = taCenter
                  AutoSize = False
                  DecimalPlaces = 0
                  DisplayFormat = '00'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -12
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 3
                  ZeroEmpty = False
                end
                object CCodCarteira: TEdit
                  Left = 136
                  Top = 92
                  Width = 45
                  Height = 21
                  CharCase = ecUpperCase
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlue
                  Font.Height = -12
                  Font.Name = 'MS Sans Serif'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 4
                end
                object CNumCarteira: TEdit
                  Left = 480
                  Top = 94
                  Width = 56
                  Height = 21
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlue
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = [fsBold]
                  MaxLength = 5
                  ParentFont = False
                  TabOrder = 5
                  OnKeyPress = edtMultaKeyPress
                end
                object GroupBox7: TGroupBox
                  Left = 297
                  Top = 34
                  Width = 240
                  Height = 52
                  Caption = 'Forma de Protesto'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlue
                  Font.Height = -12
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 6
                  object Rad_Protesto_Cliente: TRadioButton
                    Left = 8
                    Top = 14
                    Width = 228
                    Height = 17
                    Caption = 'Protestar pelo Cadastro de Cliente.'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -12
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 0
                  end
                  object Rad_Protesto_Gerador: TRadioButton
                    Left = 8
                    Top = 34
                    Width = 221
                    Height = 17
                    Caption = 'Protestar pelo Gerador de Arquivo CNAB'
                    Checked = True
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -12
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 1
                    TabStop = True
                  end
                end
                object CbInstrucao01: TComboBox
                  Left = 182
                  Top = 115
                  Width = 354
                  Height = 21
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -12
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 7
                  OnClick = CbInstrucao01Click
                end
                object C1Instrucao: TCurrencyEdit
                  Left = 136
                  Top = 115
                  Width = 45
                  Height = 21
                  Alignment = taCenter
                  AutoSize = False
                  DecimalPlaces = 0
                  DisplayFormat = '0000'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -12
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 8
                  ZeroEmpty = False
                  OnKeyPress = C1InstrucaoKeyPress
                end
                object C2Instrucao: TCurrencyEdit
                  Left = 136
                  Top = 138
                  Width = 45
                  Height = 21
                  Alignment = taCenter
                  AutoSize = False
                  DecimalPlaces = 0
                  DisplayFormat = '0000'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -12
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 9
                  ZeroEmpty = False
                  OnKeyPress = C2InstrucaoKeyPress
                end
                object CbInstrucao02: TComboBox
                  Left = 183
                  Top = 138
                  Width = 354
                  Height = 21
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -12
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 10
                  OnClick = CbInstrucao02Click
                end
                object CbEspecie: TComboBox
                  Left = 137
                  Top = 186
                  Width = 400
                  Height = 21
                  Style = csDropDownList
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -12
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 11
                  OnClick = CbEspecieClick
                end
                object EdEmpresa: TEdit
                  Left = 136
                  Top = 210
                  Width = 186
                  Height = 21
                  CharCase = ecUpperCase
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -12
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 12
                end
                object EdEmpresaTransmissao: TEdit
                  Left = 427
                  Top = 213
                  Width = 191
                  Height = 21
                  CharCase = ecUpperCase
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -12
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 13
                end
                object CbAceite: TComboBox
                  Left = 136
                  Top = 232
                  Width = 48
                  Height = 21
                  Style = csDropDownList
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -12
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 14
                  OnClick = CbAceiteClick
                  Items.Strings = (
                    'SIM'
                    'N'#195'O')
                end
                object CPrazoProtesto: TCurrencyEdit
                  Left = 136
                  Top = 255
                  Width = 45
                  Height = 21
                  Alignment = taCenter
                  AutoSize = False
                  DecimalPlaces = 0
                  DisplayFormat = '0000'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -12
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 15
                  ZeroEmpty = False
                end
                object CJurosMora: TCurrencyEdit
                  Left = 136
                  Top = 278
                  Width = 56
                  Height = 21
                  AutoSize = False
                  DisplayFormat = '#0.00 %; #0.00 %'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlue
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 16
                  ZeroEmpty = False
                end
                object GroupBox11: TGroupBox
                  Left = 222
                  Top = 241
                  Width = 396
                  Height = 55
                  Caption = 'Tipo da Cobran'#231'a'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlue
                  Font.Height = -12
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 17
                  object Label42: TLabel
                    Left = 179
                    Top = 23
                    Width = 99
                    Height = 13
                    Caption = 'Impress'#227'o do Boleto:'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ParentFont = False
                  end
                  object Label43: TLabel
                    Left = 11
                    Top = 23
                    Width = 106
                    Height = 13
                    Caption = 'Cobran'#231'a Registrada :'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ParentFont = False
                  end
                  object CbRespBoleto: TComboBox
                    Left = 279
                    Top = 19
                    Width = 110
                    Height = 21
                    Style = csDropDownList
                    Enabled = False
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -12
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 0
                    Items.Strings = (
                      'BANCO'
                      'EMPRESA')
                  end
                  object CbRegistrada: TComboBox
                    Left = 119
                    Top = 19
                    Width = 49
                    Height = 21
                    Style = csDropDownList
                    Enabled = False
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -12
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 1
                    Items.Strings = (
                      'SIM'
                      'N'#195'O')
                  end
                end
                object edtMultaDias: TEdit
                  Left = 398
                  Top = 299
                  Width = 39
                  Height = 21
                  CharCase = ecUpperCase
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlue
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 18
                  OnKeyPress = edtMultaDiasKeyPress
                end
                object EdMensagem: TEdit
                  Left = 136
                  Top = 324
                  Width = 493
                  Height = 21
                  CharCase = ecUpperCase
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -12
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 19
                end
                object edtMulta: TEdit
                  Left = 137
                  Top = 301
                  Width = 56
                  Height = 21
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlue
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = [fsBold]
                  MaxLength = 5
                  ParentFont = False
                  TabOrder = 20
                  OnKeyPress = edtMultaKeyPress
                end
                object rgLeiaute: TRadioGroup
                  Left = 268
                  Top = -3
                  Width = 286
                  Height = 34
                  Caption = 'Leiaute'
                  Columns = 2
                  ItemIndex = 0
                  Items.Strings = (
                    'CNAB 400'
                    'CNAB 240')
                  TabOrder = 21
                  OnClick = rgLeiauteClick
                end
                object C3Instrucao: TCurrencyEdit
                  Left = 136
                  Top = 162
                  Width = 45
                  Height = 21
                  Alignment = taCenter
                  AutoSize = False
                  DecimalPlaces = 0
                  DisplayFormat = '0000'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -12
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 22
                  ZeroEmpty = False
                  OnKeyPress = C3InstrucaoKeyPress
                end
                object CbInstrucao03: TComboBox
                  Left = 183
                  Top = 162
                  Width = 354
                  Height = 21
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -12
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 23
                  OnClick = CbInstrucao03Click
                end
              end
            end
          end
        end
      end
    end
    object TPage
      Left = 0
      Top = 0
      Caption = 'SelecionaDuplicatas'
      object GroupBox3: TGroupBox
        Left = 5
        Top = 2
        Width = 648
        Height = 336
        Caption = 'Selec'#227'o das Faturas para Remessa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object GbPesquisa: TGroupBox
          Left = 2
          Top = 106
          Width = 634
          Height = 107
          Caption = 'Filtro de Faturas'
          Enabled = False
          TabOrder = 2
          object Label11: TLabel
            Left = 8
            Top = 26
            Width = 3
            Height = 13
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label13: TLabel
            Left = 8
            Top = 80
            Width = 35
            Height = 13
            Caption = '&Cliente:'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Label12: TLabel
            Left = 270
            Top = 26
            Width = 16
            Height = 13
            Caption = 'At'#233
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label14: TLabel
            Left = 271
            Top = 54
            Width = 16
            Height = 13
            Caption = 'At'#233
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object CbCliente: TComboBox
            Left = 220
            Top = 77
            Width = 401
            Height = 21
            CharCase = ecUpperCase
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
            Text = 'TODOS CLIENTES'
            OnClick = CbClienteClick
          end
          object RadVencimento: TRadioButton
            Left = 8
            Top = 24
            Width = 157
            Height = 17
            Caption = 'Per'#237'odo do &Vencimento  de:'
            Checked = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            TabStop = True
            OnClick = RadVencimentoClick
          end
          object RadEmissao: TRadioButton
            Left = 8
            Top = 48
            Width = 138
            Height = 17
            Caption = 'Per'#237'odo de &Emiss'#227'o  de:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            OnClick = RadEmissaoClick
          end
          object EdCodCliente: TCurrencyEdit
            Left = 174
            Top = 77
            Width = 45
            Height = 21
            Alignment = taCenter
            AutoSize = False
            DecimalPlaces = 0
            DisplayFormat = '00000'
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxLength = 5
            ParentFont = False
            TabOrder = 6
            Value = 99999.000000000000000000
            ZeroEmpty = False
            OnKeyPress = EdCodClienteKeyPress
          end
          object DataInicial: TJvDateEdit
            Left = 174
            Top = 22
            Width = 90
            Height = 21
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Glyph.Data = {
              DA020000424DDA0200000000000036000000280000000D0000000D0000000100
              200000000000A402000000000000000000000000000000000000F0F0F000F0F0
              F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
              F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
              F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
              F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
              F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
              F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
              F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
              F00000000000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
              F000F0F0F000F0F0F000F0F0F000F0F0F000000000000000000000000000F0F0
              F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
              F0000000000000000000000000000000000000000000F0F0F000F0F0F000F0F0
              F000F0F0F000F0F0F000F0F0F000F0F0F0000000000000000000000000000000
              0000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
              F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
              F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
              F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
              F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
              F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
              F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
              F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
              F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000}
            ImageKind = ikCustom
            ButtonWidth = 17
            ParentFont = False
            PopupColor = clBtnFace
            ShowNullDate = False
            YearDigits = dyFour
            TabOrder = 1
            OnKeyPress = DataInicialKeyPress
          end
          object DataFinal: TJvDateEdit
            Left = 290
            Top = 22
            Width = 90
            Height = 21
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
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
            ImageKind = ikCustom
            ButtonWidth = 16
            ParentFont = False
            PopupColor = clBtnFace
            ShowNullDate = False
            YearDigits = dyFour
            TabOrder = 2
            OnKeyPress = DataFinalKeyPress
          end
          object DataInicial1: TJvDateEdit
            Left = 174
            Top = 50
            Width = 90
            Height = 21
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Glyph.Data = {
              DA020000424DDA0200000000000036000000280000000D0000000D0000000100
              200000000000A402000000000000000000000000000000000000F0F0F000F0F0
              F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
              F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
              F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
              F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
              F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
              F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
              F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
              F00000000000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
              F000F0F0F000F0F0F000F0F0F000F0F0F000000000000000000000000000F0F0
              F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
              F0000000000000000000000000000000000000000000F0F0F000F0F0F000F0F0
              F000F0F0F000F0F0F000F0F0F000F0F0F0000000000000000000000000000000
              0000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
              F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
              F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
              F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
              F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
              F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
              F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
              F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
              F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000}
            ImageKind = ikCustom
            ButtonWidth = 17
            ParentFont = False
            PopupColor = clBtnFace
            ShowNullDate = False
            YearDigits = dyFour
            TabOrder = 4
            OnKeyPress = DataInicial1KeyPress
          end
          object DataFinal1: TJvDateEdit
            Left = 290
            Top = 50
            Width = 90
            Height = 21
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
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
            ImageKind = ikCustom
            ButtonWidth = 16
            ParentFont = False
            PopupColor = clBtnFace
            ShowNullDate = False
            YearDigits = dyFour
            TabOrder = 5
            OnKeyPress = DataFinal1KeyPress
          end
        end
        object RadDuplicatas: TRadioButton
          Left = 11
          Top = 75
          Width = 161
          Height = 17
          Caption = 'Todas Faturas &Pendentes'
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          TabStop = True
          OnClick = RadDuplicatasClick
        end
        object RadFiltros: TRadioButton
          Left = 370
          Top = 75
          Width = 100
          Height = 17
          Caption = 'Filtrar &Faturas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = RadFiltrosClick
        end
        object edEmpresaRemessa: TEdit
          Left = 3
          Top = 24
          Width = 620
          Height = 21
          TabOrder = 3
        end
      end
    end
    object TPage
      Left = 0
      Top = 0
      Caption = 'Duplicatas Selecionada'
      object GroupBox5: TGroupBox
        Left = 5
        Top = 2
        Width = 648
        Height = 336
        Caption = 'Faturas para gerar arquivo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object Label32: TLabel
          Left = 217
          Top = 273
          Width = 53
          Height = 13
          Alignment = taRightJustify
          Caption = 'Qtde Total:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label33: TLabel
          Left = 10
          Top = 243
          Width = 35
          Height = 13
          Caption = 'Cliente:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Bevel4: TBevel
          Left = 2
          Top = 265
          Width = 640
          Height = 9
          Shape = bsTopLine
        end
        object Label15: TLabel
          Left = 5
          Top = 273
          Width = 94
          Height = 13
          Alignment = taRightJustify
          Caption = 'Total Selecionadas:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label17: TLabel
          Left = 360
          Top = 273
          Width = 67
          Height = 13
          Alignment = taRightJustify
          Caption = 'Selecionadas:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label35: TLabel
          Left = 517
          Top = 273
          Width = 51
          Height = 13
          Alignment = taRightJustify
          Caption = 'Restantes:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBGridDuplicata: TDBGrid
          Left = 2
          Top = 15
          Width = 644
          Height = 221
          Align = alTop
          Color = 16776176
          DataSource = DsCrcDuplicata
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          PopupMenu = PopupMenu1
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clNavy
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDrawColumnCell = DBGridDuplicataDrawColumnCell
          OnDblClick = DBGridDuplicataDblClick
          OnKeyPress = DBGridDuplicataKeyPress
          Columns = <
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'SELECAO'
              Title.Alignment = taCenter
              Title.Caption = '*'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Width = 20
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FAT_CODIGO'
              Title.Alignment = taCenter
              Title.Caption = 'Fatura'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FPC_NUMER'
              Title.Alignment = taCenter
              Title.Caption = 'N'#186
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Width = 20
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FPC_DTEMIS'
              Title.Alignment = taCenter
              Title.Caption = 'Emiss'#227'o'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Width = 69
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FPC_DATABOLETO'
              Title.Caption = 'Data boleto'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Width = 77
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FPC_VENCTO'
              Title.Alignment = taCenter
              Title.Caption = 'Vencimento'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FPC_VLPARC'
              Title.Alignment = taCenter
              Title.Caption = 'Valor'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Width = 91
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FPC_COBNUM'
              Title.Alignment = taCenter
              Title.Caption = 'Nosso N'#250'mero'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Width = 96
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BAN_APELIDO'
              Title.Alignment = taCenter
              Title.Caption = 'Banco'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Width = 127
              Visible = True
            end>
        end
        object GroupBox10: TGroupBox
          Left = 2
          Top = 292
          Width = 639
          Height = 40
          Caption = 'Ocorr'#234'ncia para o(s) Titulo(s)'
          TabOrder = 1
          TabStop = True
          object CbOcorrencia: TComboBox
            Left = 50
            Top = 15
            Width = 339
            Height = 21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnClick = CbOcorrenciaClick
          end
          object CCodOcorrencia: TCurrencyEdit
            Left = 8
            Top = 15
            Width = 40
            Height = 21
            Alignment = taCenter
            AutoSize = False
            DecimalPlaces = 0
            DisplayFormat = '00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnKeyPress = CCodOcorrenciaKeyPress
          end
        end
        object CQtdeDupliTotal: TCurrencyEdit
          Left = 272
          Top = 270
          Width = 65
          Height = 21
          TabStop = False
          Alignment = taCenter
          AutoSize = False
          Color = 14145495
          DecimalPlaces = 0
          DisplayFormat = '00000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
        end
        object DBEdit1: TDBEdit
          Left = 48
          Top = 240
          Width = 40
          Height = 21
          TabStop = False
          Color = 14145495
          DataField = 'CLI_CODIGO'
          DataSource = DsCrcDuplicata
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
        end
        object DBEdit2: TDBEdit
          Left = 90
          Top = 240
          Width = 337
          Height = 21
          TabStop = False
          Color = 14145495
          DataField = 'CLI_RAZAO'
          DataSource = DsCrcDuplicata
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 4
        end
        object CQtdeDupliSelecionada: TCurrencyEdit
          Left = 429
          Top = 270
          Width = 65
          Height = 21
          TabStop = False
          Alignment = taCenter
          AutoSize = False
          Color = 14145495
          DecimalPlaces = 0
          DisplayFormat = '00000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 5
        end
        object CQtdeDupliRestante: TCurrencyEdit
          Left = 570
          Top = 270
          Width = 65
          Height = 21
          TabStop = False
          Alignment = taCenter
          AutoSize = False
          Color = 14145495
          DecimalPlaces = 0
          DisplayFormat = '00000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 6
        end
        object CurTotalFaturas: TCurrencyEdit
          Left = 101
          Top = 270
          Width = 97
          Height = 21
          TabStop = False
          Alignment = taCenter
          AutoSize = False
          Color = 14145495
          DisplayFormat = ',0.00;-,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 7
        end
      end
    end
    object TPage
      Left = 0
      Top = 0
      Caption = 'GerarArquivoCNAB'
      object GbCnab: TGroupBox
        Left = -6
        Top = 5
        Width = 647
        Height = 348
        Caption = 'Gera Remessa CNAB'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object Label18: TLabel
          Left = 8
          Top = 24
          Width = 183
          Height = 13
          Caption = 'Caminho para Gerar Arquivo Remessa:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Bevel1: TBevel
          Left = 6
          Top = 296
          Width = 634
          Height = 6
          Shape = bsTopLine
        end
        object Label30: TLabel
          Left = 8
          Top = 223
          Width = 120
          Height = 13
          Caption = 'Gerando arquivo CNAB...'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object FileArqSalvar: TFilenameEdit
          Left = 193
          Top = 20
          Width = 424
          Height = 21
          DefaultExt = '*.rem'
          Filter = 
            'Arquivos de remessa (*.rem)|*.rem|Arquivos de texto (*.txt)|*.tx' +
            't|All files (*.*)|*.*'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          NumGlyphs = 1
          ParentFont = False
          TabOrder = 0
          Text = ''
        end
        object GroupBox9: TGroupBox
          Left = 5
          Top = 84
          Width = 612
          Height = 135
          TabOrder = 1
          object Label20: TLabel
            Left = 8
            Top = 13
            Width = 30
            Height = 13
            Caption = 'Fatura'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label23: TLabel
            Left = 105
            Top = 13
            Width = 39
            Height = 13
            Caption = 'Emiss'#227'o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label24: TLabel
            Left = 186
            Top = 13
            Width = 56
            Height = 13
            Caption = 'Vencimento'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label25: TLabel
            Left = 267
            Top = 13
            Width = 24
            Height = 13
            Caption = 'Valor'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label26: TLabel
            Left = 350
            Top = 13
            Width = 31
            Height = 13
            Caption = 'Banco'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label27: TLabel
            Left = 8
            Top = 53
            Width = 32
            Height = 13
            Caption = 'Cliente'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label28: TLabel
            Left = 8
            Top = 93
            Width = 86
            Height = 13
            Caption = 'Total de Registros'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label29: TLabel
            Left = 487
            Top = 93
            Width = 51
            Height = 13
            Caption = 'Valor Total'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object PDisplayDup: TPanel
            Left = 8
            Top = 28
            Width = 94
            Height = 21
            Alignment = taLeftJustify
            BevelOuter = bvNone
            BorderStyle = bsSingle
            Color = 14145495
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object PDisplayEmiss: TPanel
            Left = 105
            Top = 28
            Width = 78
            Height = 21
            BevelOuter = bvNone
            BorderStyle = bsSingle
            Caption = '00/00/0000'
            Color = 14145495
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
          object PDisplayVenc: TPanel
            Left = 186
            Top = 28
            Width = 78
            Height = 21
            BevelOuter = bvNone
            BorderStyle = bsSingle
            Caption = '00/00/0000'
            Color = 14145495
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
          object PDisplayValor: TPanel
            Left = 267
            Top = 28
            Width = 80
            Height = 21
            Alignment = taRightJustify
            BevelOuter = bvNone
            BorderStyle = bsSingle
            Caption = '0,00'
            Color = 14145495
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
          end
          object PDisplayBanco: TPanel
            Left = 350
            Top = 28
            Width = 235
            Height = 21
            Alignment = taLeftJustify
            BevelOuter = bvNone
            BorderStyle = bsSingle
            Color = 14145495
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
          end
          object PanCliente: TPanel
            Left = 8
            Top = 68
            Width = 576
            Height = 21
            Alignment = taLeftJustify
            BevelOuter = bvNone
            BorderStyle = bsSingle
            Color = 14145495
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
          end
          object CRegistro: TCurrencyEdit
            Left = 8
            Top = 108
            Width = 95
            Height = 21
            TabStop = False
            Alignment = taCenter
            AutoSize = False
            Color = 14145495
            DecimalPlaces = 0
            DisplayFormat = '000000'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 6
            ZeroEmpty = False
          end
          object CValorTotal: TCurrencyEdit
            Left = 487
            Top = 108
            Width = 95
            Height = 21
            TabStop = False
            AutoSize = False
            Color = 14145495
            DisplayFormat = '###,###,##0.00;-###,###,##0.00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 7
            ZeroEmpty = False
          end
        end
        object Panel10: TPanel
          Left = 5
          Top = 236
          Width = 593
          Height = 21
          BevelOuter = bvLowered
          TabOrder = 2
          object Gauge: TGauge
            Left = 1
            Top = 1
            Width = 591
            Height = 19
            Align = alClient
            ForeColor = clNavy
            Progress = 0
            ExplicitTop = 2
          end
        end
        object BitProcessar: TBitBtn
          Left = 386
          Top = 317
          Width = 100
          Height = 25
          Caption = '&Gerar CNAB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
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
          ParentFont = False
          TabOrder = 3
          OnClick = BitProcessarClick
        end
        object BitCancelarPro: TBitBtn
          Left = 488
          Top = 318
          Width = 100
          Height = 25
          Caption = 'Cancela&r'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
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
          TabOrder = 4
          OnClick = BitCancelarProClick
        end
        object BitVisualizar: TBitBtn
          Left = 12
          Top = 317
          Width = 100
          Height = 25
          Caption = '&Visualizar CNAB'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          OnClick = BitVisualizarClick
        end
        object BitImprimir: TBitBtn
          Left = 113
          Top = 317
          Width = 100
          Height = 25
          Caption = '&Imprimir'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            0400000000008000000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
            888F8800000000000888808888888880808800000000000008080888888BBB88
            0008088888877788080800000000000008800888888888808080800000000008
            0800880FFFFFFFF080808880F00000F000088880FFFFFFFF088888880F00000F
            088888880FFFFFFFF08888888000000000888888888888888888}
          ParentFont = False
          TabOrder = 6
          TabStop = False
          OnClick = BitImprimirClick
        end
        object ChkRemessaTeste: TCheckBox
          Left = 508
          Top = 56
          Width = 109
          Height = 17
          Caption = 'Remessa Teste'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
        end
        object BitTipoImpressao: TBitBtn
          Left = 215
          Top = 317
          Width = 16
          Height = 25
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
          TabOrder = 8
          OnClick = BitTipoImpressaoClick
        end
        object PanTipo: TPanel
          Left = 258
          Top = 179
          Width = 359
          Height = 132
          BevelInner = bvLowered
          BevelWidth = 2
          TabOrder = 9
          Visible = False
          object GroupBox4: TGroupBox
            Left = 5
            Top = 67
            Width = 347
            Height = 58
            Caption = 'Ordem Impress'#227'o'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 0
            object RadNumFatura: TRadioButton
              Left = 16
              Top = 16
              Width = 108
              Height = 17
              Caption = '&N'#250'mero Fatura'
              Checked = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
              TabStop = True
            end
            object RadCodCliente: TRadioButton
              Left = 16
              Top = 35
              Width = 120
              Height = 17
              Caption = 'C'#243'digo C&liente'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 1
            end
            object RadRazao: TRadioButton
              Left = 192
              Top = 16
              Width = 120
              Height = 17
              Caption = '&Raz'#227'o Cliente'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 2
            end
          end
          object GroupBox6: TGroupBox
            Left = 5
            Top = 24
            Width = 347
            Height = 43
            Caption = 'Dispositivo de sa'#237'da'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 1
            object RadVideo: TRadioButton
              Left = 46
              Top = 19
              Width = 73
              Height = 17
              Caption = '&Video'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
            end
            object RadImpressora: TRadioButton
              Left = 201
              Top = 19
              Width = 85
              Height = 17
              Caption = '&Impressora'
              Checked = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 1
              TabStop = True
            end
          end
          object Panel2: TPanel
            Left = 4
            Top = 4
            Width = 351
            Height = 18
            Align = alTop
            Alignment = taLeftJustify
            BevelOuter = bvNone
            Caption = ' Impress'#227'o Protocolo Remessa CNAB'
            Color = 8404992
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
          end
        end
      end
    end
  end
  object SQLCrcDuplicata: TSQLDataSet
    CommandText = 
      'SELECT ban.ban_instrucao2, '#13#10'FAT.FAT_CODIGO,'#13#10'FAT.FPC_NUMER,'#13#10'FA' +
      'T.BAN_CODIGO,'#13#10'BAN.BAN_APELIDO,'#13#10'FAT.FPC_DTEMIS,'#13#10'FAT.FPC_VENCTO' +
      ','#13#10'FAT.FPC_VLPARC,'#13#10'FAT.CLI_CODIGO,'#13#10'CLI.CLI_RAZAO,'#13#10'CLI.CLI_END' +
      'ERE,'#13#10'CLI.CLI_BAIRRO,'#13#10'CLI.CLI_CEP,'#13#10'CLI.CLI_CIDADE,'#13#10'CLI.CLI_UF' +
      ','#13#10'CLI.CLI_ENDFAT,'#13#10'CLI.CLI_CIDFAT,'#13#10'CLI.CLI_CEPFAT,'#13#10'CLI.CLI_UF' +
      'FAT,'#13#10'CLI.CLI_BAIFAT,'#13#10'FAT.FPC_COBNUM,'#13#10'FAT.FPC_COBTIPO,'#13#10'FAT.EM' +
      'P_CODIGO,'#13#10'CLI.CLI_PESSOA,'#13#10'CLI.CLI_CGC,'#13#10'CLI.CLI_PROTESTAR,'#13#10'CL' +
      'I.CLI_QTDE_DIAS_PROTESTO,'#13#10'FAT.FPC_NPARCELAS'#13#10'FROM FAT_PC01 FAT'#13 +
      #10'LEFT JOIN CLI0000 CLI ON FAT.CLI_CODIGO = CLI.CLI_CODIGO'#13#10'LEFT ' +
      'JOIN BAN0000 BAN on FAT.BAN_CODIGO = BAN.BAN_CODIGO WHERE'#13#10'FAT.F' +
      'PC_SITPAG = '#39'P'#39';'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DBInicio.MainDB
    Left = 958
    Top = 257
  end
  object DSPCrcDuplicata: TDataSetProvider
    DataSet = SQLCrcDuplicata
    Options = [poAllowCommandText]
    Left = 954
    Top = 305
  end
  object CDSCrcDuplicata: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    FieldDefs = <
      item
        Name = 'BAN_INSTRUCAO2'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'FAT_CODIGO'
        Attributes = [faRequired]
        DataType = ftString
        Size = 15
      end
      item
        Name = 'FPC_NUMER'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'BAN_CODIGO'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'BAN_APELIDO'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'FPC_DTEMIS'
        DataType = ftTimeStamp
      end
      item
        Name = 'FPC_VENCTO'
        DataType = ftTimeStamp
      end
      item
        Name = 'FPC_VLPARC'
        DataType = ftFMTBcd
        Precision = 18
        Size = 5
      end
      item
        Name = 'CLI_CODIGO'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'CLI_RAZAO'
        DataType = ftString
        Size = 70
      end
      item
        Name = 'CLI_ENDERE'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'CLI_BAIRRO'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'CLI_CEP'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'CLI_CIDADE'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'CLI_UF'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'CLI_ENDFAT'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'CLI_CIDFAT'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'CLI_CEPFAT'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'CLI_UFFAT'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'CLI_BAIFAT'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'FPC_COBNUM'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'FPC_COBTIPO'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'EMP_CODIGO'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'CLI_PESSOA'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CLI_CGC'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'CLI_PROTESTAR'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CLI_QTDE_DIAS_PROTESTO'
        DataType = ftInteger
      end
      item
        Name = 'FPC_NPARCELAS'
        DataType = ftSmallint
      end>
    IndexDefs = <>
    IndexFieldNames = 'FAT_CODIGO'
    Params = <>
    ProviderName = 'DSPCrcDuplicata'
    StoreDefs = True
    OnCalcFields = CDSCrcDuplicataCalcFields
    Left = 958
    Top = 361
    object CDSCrcDuplicataFAT_CODIGO: TStringField
      Alignment = taCenter
      FieldName = 'FAT_CODIGO'
      Required = True
      Size = 6
    end
    object CDSCrcDuplicataFPC_NUMER: TStringField
      Alignment = taCenter
      FieldName = 'FPC_NUMER'
      Size = 2
    end
    object CDSCrcDuplicataBAN_CODIGO: TStringField
      FieldName = 'BAN_CODIGO'
      Size = 4
    end
    object CDSCrcDuplicataBAN_APELIDO: TStringField
      FieldName = 'BAN_APELIDO'
      Size = 14
    end
    object CDSCrcDuplicataFPC_VENCTO: TSQLTimeStampField
      FieldName = 'FPC_VENCTO'
    end
    object CDSCrcDuplicataFPC_VLPARC: TFMTBCDField
      FieldName = 'FPC_VLPARC'
      DisplayFormat = '###,###,##0.00'
      Precision = 15
    end
    object CDSCrcDuplicataCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Size = 5
    end
    object CDSCrcDuplicataCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Size = 50
    end
    object CDSCrcDuplicataEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object CDSCrcDuplicataFPC_DTEMIS: TSQLTimeStampField
      FieldName = 'FPC_DTEMIS'
    end
    object CDSCrcDuplicataCLI_ENDFAT: TStringField
      FieldName = 'CLI_ENDFAT'
      Size = 50
    end
    object CDSCrcDuplicataCLI_CIDFAT: TStringField
      FieldName = 'CLI_CIDFAT'
      Size = 30
    end
    object CDSCrcDuplicataCLI_CEPFAT: TStringField
      FieldName = 'CLI_CEPFAT'
      Size = 8
    end
    object CDSCrcDuplicataCLI_UFFAT: TStringField
      FieldName = 'CLI_UFFAT'
      Size = 2
    end
    object CDSCrcDuplicataCLI_PROTESTAR: TStringField
      FieldName = 'CLI_PROTESTAR'
      FixedChar = True
      Size = 1
    end
    object CDSCrcDuplicataCLI_QTDE_DIAS_PROTESTO: TIntegerField
      FieldName = 'CLI_QTDE_DIAS_PROTESTO'
    end
    object CDSCrcDuplicataCLI_PESSOA: TStringField
      FieldName = 'CLI_PESSOA'
      Size = 1
    end
    object CDSCrcDuplicataCLI_CGC: TStringField
      FieldName = 'CLI_CGC'
      Size = 14
    end
    object CDSCrcDuplicataFPC_NPARCELAS: TSmallintField
      FieldName = 'FPC_NPARCELAS'
    end
    object CDSCrcDuplicataCLI_ENDERE: TStringField
      FieldName = 'CLI_ENDERE'
      Size = 50
    end
    object CDSCrcDuplicataCLI_BAIRRO: TStringField
      FieldName = 'CLI_BAIRRO'
      Size = 25
    end
    object CDSCrcDuplicataCLI_CEP: TStringField
      FieldName = 'CLI_CEP'
      Size = 8
    end
    object CDSCrcDuplicataCLI_CIDADE: TStringField
      FieldName = 'CLI_CIDADE'
      Size = 30
    end
    object CDSCrcDuplicataCLI_UF: TStringField
      FieldName = 'CLI_UF'
      Size = 2
    end
    object CDSCrcDuplicataCLI_BAIFAT: TStringField
      FieldName = 'CLI_BAIFAT'
      Size = 25
    end
    object CDSCrcDuplicataSELECAO: TBooleanField
      FieldKind = fkInternalCalc
      FieldName = 'SELECAO'
      OnGetText = CDSCrcDuplicataSELECAOGetText
    end
    object CDSCrcDuplicataFPC_COBNUM: TStringField
      FieldName = 'FPC_COBNUM'
      Size = 17
    end
    object CDSCrcDuplicataCC_TOTAL_FATURAS: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'CC_TOTAL_FATURAS'
      Calculated = True
    end
    object CDSCrcDuplicataFPC_COBTIPO: TStringField
      FieldName = 'FPC_COBTIPO'
      Size = 2
    end
    object CDSCrcDuplicataFPC_DATABOLETO: TSQLTimeStampField
      FieldName = 'FPC_DATABOLETO'
    end
    object CDSCrcDuplicataban_convenio: TStringField
      FieldName = 'ban_convenio'
      Size = 15
    end
    object CDSCrcDuplicataPED_UND_CONSUMIDORA: TIntegerField
      FieldName = 'PED_UND_CONSUMIDORA'
    end
    object CDSCrcDuplicataFPC_DTDESC: TSQLTimeStampField
      FieldKind = fkCalculated
      FieldName = 'FPC_DTDESC'
      Calculated = True
    end
    object CDSCrcDuplicataFPC_DESCTO: TFMTBCDField
      FieldKind = fkCalculated
      FieldName = 'FPC_DESCTO'
      Precision = 15
      Calculated = True
    end
    object CDSCrcDuplicataBAN_INSTRUCAO2: TStringField
      FieldName = 'BAN_INSTRUCAO2'
      Size = 2
    end
  end
  object DsCrcDuplicata: TDataSource
    DataSet = CDSCrcDuplicata
    Left = 1058
    Top = 321
  end
  object SQLClientes: TSqlClientDataSet
    Aggregates = <>
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = ''
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 800
    Top = 104
  end
  object SQLBancos: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 
      'SELECT B1.BAN_CODIGO,B1.BAN_COD_APELIDO,B1.BAN_APELIDO,B1.BAN_SE' +
      'Q_NOSSONUMERO FROM BAN0000 B1'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'SELECT B1.BAN_CODIGO,B1.BAN_COD_APELIDO,B1.BAN_APELIDO,B1.BAN_SE' +
      'Q_NOSSONUMERO FROM BAN0000 B1'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 808
    Top = 184
    object SQLBancosBAN_CODIGO: TStringField
      FieldName = 'BAN_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 4
    end
    object SQLBancosBAN_COD_APELIDO: TIntegerField
      FieldName = 'BAN_COD_APELIDO'
    end
    object SQLBancosBAN_APELIDO: TStringField
      FieldName = 'BAN_APELIDO'
      Size = 25
    end
    object SQLBancosBAN_SEQ_NOSSONUMERO: TIntegerField
      FieldName = 'BAN_SEQ_NOSSONUMERO'
    end
    object SQLBancosBAN_MULTA: TFMTBCDField
      FieldName = 'BAN_MULTA'
      ProviderFlags = [pfInUpdate]
      Precision = 20
      Size = 2
    end
    object SQLBancosBAN_MULTA_DIAS: TIntegerField
      FieldName = 'BAN_MULTA_DIAS'
      ProviderFlags = [pfInUpdate]
    end
    object SQLBancosBAN_CONVENIO: TStringField
      FieldName = 'BAN_CONVENIO'
      Size = 15
    end
  end
  object SQLDetalhe: TSqlClientDataSet
    Aggregates = <>
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = ''
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 1101
    Top = 86
  end
  object SQLRelatorio: TSqlClientDataSet
    Aggregates = <>
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = ''
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 1097
    Top = 142
  end
  object SQLContaBancos: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 'SELECT B1.* FROM BAN0000 B1'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'SELECT B1.* FROM BAN0000 B1'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 904
    Top = 184
    object SQLContaBancosBAN_CODIGO: TStringField
      FieldName = 'BAN_CODIGO'
      Required = True
      Size = 4
    end
    object SQLContaBancosBAN_RAZAO: TStringField
      FieldName = 'BAN_RAZAO'
      Size = 45
    end
    object SQLContaBancosBAN_APELIDO: TStringField
      FieldName = 'BAN_APELIDO'
      Size = 25
    end
    object SQLContaBancosBAN_CODAGE: TStringField
      FieldName = 'BAN_CODAGE'
      Size = 5
    end
    object SQLContaBancosBAN_CODAGEDIG: TStringField
      FieldName = 'BAN_CODAGEDIG'
      Size = 2
    end
    object SQLContaBancosBAN_ENDERE: TStringField
      FieldName = 'BAN_ENDERE'
      Size = 40
    end
    object SQLContaBancosBAN_CIDADE: TStringField
      FieldName = 'BAN_CIDADE'
      Size = 30
    end
    object SQLContaBancosBAN_UF: TStringField
      FieldName = 'BAN_UF'
      Size = 2
    end
    object SQLContaBancosBAN_FONE: TStringField
      FieldName = 'BAN_FONE'
      Size = 11
    end
    object SQLContaBancosBAN_FAX: TStringField
      FieldName = 'BAN_FAX'
      Size = 11
    end
    object SQLContaBancosBAN_CEP: TStringField
      FieldName = 'BAN_CEP'
      Size = 8
    end
    object SQLContaBancosBAN_CONTATO: TStringField
      FieldName = 'BAN_CONTATO'
      Size = 30
    end
    object SQLContaBancosBAN_JUROMES: TFMTBCDField
      FieldName = 'BAN_JUROMES'
      Precision = 15
      Size = 4
    end
    object SQLContaBancosBAN_OBS: TStringField
      FieldName = 'BAN_OBS'
      Size = 200
    end
    object SQLContaBancosEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SQLContaBancosBAN_DNAS_CONT: TSQLTimeStampField
      FieldName = 'BAN_DNAS_CONT'
    end
    object SQLContaBancosBAN_EMAIL: TStringField
      FieldName = 'BAN_EMAIL'
      Size = 35
    end
    object SQLContaBancosBAN_HOME: TStringField
      FieldName = 'BAN_HOME'
      Size = 35
    end
    object SQLContaBancosBAN_CONTA: TStringField
      FieldName = 'BAN_CONTA'
      Size = 7
    end
    object SQLContaBancosBAN_DIGCONTA: TStringField
      FieldName = 'BAN_DIGCONTA'
      Size = 1
    end
    object SQLContaBancosBAN_COD_CART: TStringField
      FieldName = 'BAN_COD_CART'
      Size = 2
    end
    object SQLContaBancosBAN_N_CARTEIRA: TStringField
      FieldName = 'BAN_N_CARTEIRA'
      Size = 3
    end
    object SQLContaBancosBAN_INSTRUCAO1: TStringField
      FieldName = 'BAN_INSTRUCAO1'
      Size = 2
    end
    object SQLContaBancosBAN_INSTRUCAO2: TStringField
      FieldName = 'BAN_INSTRUCAO2'
      Size = 2
    end
    object SQLContaBancosBAN_CODNOBANCO: TStringField
      FieldName = 'BAN_CODNOBANCO'
      Size = 12
    end
    object SQLContaBancosBAN_TAM_NONUM: TStringField
      FieldName = 'BAN_TAM_NONUM'
      Size = 2
    end
    object SQLContaBancosBAN_PROTPRAZO: TStringField
      FieldName = 'BAN_PROTPRAZO'
      Size = 2
    end
    object SQLContaBancosBAN_COD_APELIDO: TIntegerField
      FieldName = 'BAN_COD_APELIDO'
    end
    object SQLContaBancosBAN_CAMINHO_REMESSA: TStringField
      FieldName = 'BAN_CAMINHO_REMESSA'
      Size = 100
    end
    object SQLContaBancosBAN_CAMINHO_RETORNO: TStringField
      FieldName = 'BAN_CAMINHO_RETORNO'
      Size = 100
    end
    object SQLContaBancosBAN_SEQUENCIA_REMESSA: TIntegerField
      FieldName = 'BAN_SEQUENCIA_REMESSA'
    end
    object SQLContaBancosBAN_ESPECIE_COB: TStringField
      FieldName = 'BAN_ESPECIE_COB'
      FixedChar = True
      Size = 2
    end
    object SQLContaBancosBAN_ACEITE: TStringField
      FieldName = 'BAN_ACEITE'
      FixedChar = True
      Size = 1
    end
    object SQLContaBancosBAN_SEQ_NOSSONUMERO: TIntegerField
      FieldName = 'BAN_SEQ_NOSSONUMERO'
    end
    object SQLContaBancosBAN_COBTIPO: TStringField
      FieldName = 'BAN_COBTIPO'
      Size = 2
    end
    object SQLContaBancosBAN_LIMITECREDITO: TFMTBCDField
      FieldName = 'BAN_LIMITECREDITO'
      Precision = 15
      Size = 4
    end
    object SQLContaBancosBAN_VCTOLIMITE: TIntegerField
      FieldName = 'BAN_VCTOLIMITE'
    end
    object SQLContaBancosBAN_DIASCRED_COBRANCA: TIntegerField
      FieldName = 'BAN_DIASCRED_COBRANCA'
    end
    object SQLContaBancosBAN_FLUXOCAIXA: TStringField
      FieldName = 'BAN_FLUXOCAIXA'
      Size = 1
    end
    object SQLContaBancosBAN_GERACHEQUE: TStringField
      FieldName = 'BAN_GERACHEQUE'
      Size = 1
    end
    object SQLContaBancosBAN_LIMITE_DESCTODUPL: TFMTBCDField
      FieldName = 'BAN_LIMITE_DESCTODUPL'
      Precision = 15
      Size = 4
    end
    object SQLContaBancosBAN_LIMITE_DESCTOCHEQ: TFMTBCDField
      FieldName = 'BAN_LIMITE_DESCTOCHEQ'
      Precision = 15
      Size = 4
    end
    object SQLContaBancosBAN_NDIAS_MAXDESCTO: TIntegerField
      FieldName = 'BAN_NDIAS_MAXDESCTO'
    end
    object SQLContaBancosBAN_OUTROS_CREDITOS: TFMTBCDField
      FieldName = 'BAN_OUTROS_CREDITOS'
      Precision = 15
      Size = 4
    end
    object SQLContaBancosBAN_JUROS_DESCTOCHEQ: TFMTBCDField
      FieldName = 'BAN_JUROS_DESCTOCHEQ'
      Precision = 15
      Size = 4
    end
    object SQLContaBancosBAN_JUROS_DESCTODUPL: TFMTBCDField
      FieldName = 'BAN_JUROS_DESCTODUPL'
      Precision = 15
      Size = 4
    end
    object SQLContaBancosBAN_LIMITE_UTILIZADO_CHEQ: TFMTBCDField
      FieldName = 'BAN_LIMITE_UTILIZADO_CHEQ'
      Precision = 15
      Size = 4
    end
    object SQLContaBancosBAN_LIMITE_UTILIZADO_DUPL: TFMTBCDField
      FieldName = 'BAN_LIMITE_UTILIZADO_DUPL'
      Precision = 15
      Size = 4
    end
    object SQLContaBancosBAN_SEQ_CHEQUE: TIntegerField
      FieldName = 'BAN_SEQ_CHEQUE'
    end
    object SQLContaBancosBAN_LIMITE_CHEQESP: TFMTBCDField
      FieldName = 'BAN_LIMITE_CHEQESP'
      Precision = 15
      Size = 4
    end
    object SQLContaBancosBAN_CARTEIRA_REGISTRO: TStringField
      FieldName = 'BAN_CARTEIRA_REGISTRO'
      FixedChar = True
      Size = 1
    end
    object SQLContaBancosBAN_RESP_BOLETO: TStringField
      FieldName = 'BAN_RESP_BOLETO'
      FixedChar = True
      Size = 1
    end
    object SQLContaBancosBAN_CODIGO_TRANSMISSAO: TStringField
      FieldName = 'BAN_CODIGO_TRANSMISSAO'
      Size = 25
    end
    object SQLContaBancosBAN_LEIAUTE: TIntegerField
      FieldName = 'BAN_LEIAUTE'
    end
    object SQLContaBancosBAN_INSTRUCAO3: TStringField
      FieldName = 'BAN_INSTRUCAO3'
      Size = 2
    end
  end
  object ImageList1: TImageList
    Height = 15
    Left = 722
    Top = 106
    Bitmap = {
      494C0101030005000C0010000F00FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
    OpcoesPreview.MostrarSETUP = True
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
    OpcoesPreview.ExtraBtnStatus = Invisivel
    OpcoesPreview.ExtraBtnWidth = 80
    OpcoesPreview.ExtraBtnCaption = 'Extra Btn'
    OpcoesPreview.PreviewMode = vPrinter
    Margens.Left = 10
    Margens.Right = 10
    Margens.Top = 10
    Margens.Bottom = 10
    Autor = Deltress
    RegistroUsuario.NomeRegistro = 'DELTRESS SISTEMAS S/S LTDA'
    RegistroUsuario.SerieProduto = 'DEMONSTRA'#199#195'O'
    RegistroUsuario.AutorizacaoKey = '*** SEM REGISTRO ***'
    About = 'RDprint 8.2 - TRIAL'
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
    FonteGrafica = sCourierNew
    ReduzParaCaber = True
    OnNewPage = RDProtCNABNewPage
    OnBeforeNewPage = RDProtCNABBeforeNewPage
    Left = 989
    Top = 102
  end
  object ACBrBoleto1: TACBrBoleto
    Banco.TamanhoMaximoNossoNum = 10
    Banco.TipoCobranca = cobNenhum
    Banco.LayoutVersaoArquivo = 0
    Banco.LayoutVersaoLote = 0
    Banco.CasasDecimaisMoraJuros = 2
    Cedente.TipoInscricao = pJuridica
    Cedente.IdentDistribuicao = tbBancoDistribui
    Cedente.PIX.TipoChavePIX = tchNenhuma
    NumeroArquivo = 0
    Configuracoes.Arquivos.LogRegistro = False
    Configuracoes.WebService.SSLHttpLib = httpOpenSSL
    Configuracoes.WebService.StoreName = 'My'
    Configuracoes.WebService.Ambiente = taHomologacao
    Configuracoes.WebService.Operacao = tpInclui
    Configuracoes.WebService.VersaoDF = '1.2'
    Left = 236
    Top = 123
  end
  object PopupMenu1: TPopupMenu
    Left = 420
    Top = 268
    object Marcartodos1: TMenuItem
      Caption = 'Marcar todos'
      OnClick = Marcartodos1Click
    end
    object Desmarcartodos1: TMenuItem
      Caption = 'Desmarcar todos'
      OnClick = Desmarcartodos1Click
    end
  end
  object ACBrValidador1: TACBrValidador
    IgnorarChar = './-'
    Left = 410
    Top = 117
  end
  object ACBrBoletoFCFR1: TACBrBoletoFCFR
    ModoThread = False
    IncorporarBackgroundPdf = False
    IncorporarFontesPdf = False
    Left = 330
    Top = 117
  end
  object ACBrBoletoFCFortes1: TACBrBoletoFCFortes
    Left = 498
    Top = 125
  end
end
