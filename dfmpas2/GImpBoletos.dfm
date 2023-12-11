inherited FrmGimpBoletos: TFrmGimpBoletos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Emiss'#227'o de Boleto ou Duplicata'
  ClientHeight = 646
  ClientWidth = 1063
  Constraints.MinHeight = 485
  Constraints.MinWidth = 1024
  Font.Charset = ANSI_CHARSET
  Font.Name = 'Arial'
  Position = poDefaultPosOnly
  Visible = True
  ExplicitWidth = 1079
  ExplicitHeight = 685
  PixelsPerInch = 96
  TextHeight = 14
  object Panel5: TPanel [0]
    Left = 0
    Top = 0
    Width = 1063
    Height = 67
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = clWhite
    TabOrder = 0
    object ImgBanco: TImage
      Left = 1056
      Top = 2
      Width = 5
      Height = 63
      Align = alRight
      Center = True
      Stretch = True
    end
    object Label1: TLabel
      Left = 5
      Top = 7
      Width = 979
      Height = 17
      Caption = 
        'Se o respons'#225'vel pela impress'#227'o '#233' a Empresa deve-se imprimir pri' +
        'meiro o boleto para gerar o nosso n'#250'mero e em seguida gerar a re' +
        'messa ao banco'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label4: TLabel
      Left = 5
      Top = 27
      Width = 1048
      Height = 17
      Caption = 
        'Se o repons'#225'vel pela impress'#227'o '#233' o Banco s'#243' ser'#225' poss'#237'vel reimpr' +
        'imir o boleto pelo sistema se j'#225' foi recolhido o retorno com o n' +
        'osso n'#250'mero que o banco gerou'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
  end
  object GroupBox2: TGroupBox [1]
    Left = 0
    Top = 67
    Width = 1063
    Height = 579
    Align = alClient
    Caption = 'Sele'#231#227'o para Emiss'#227'o de Boletos/Duplicatas'
    Color = clBtnFace
    ParentColor = False
    TabOrder = 1
    object BoxDuplicata: TGroupBox
      Left = 2
      Top = 146
      Width = 1059
      Height = 310
      Align = alClient
      Caption = 'Lista das Faturas selecionadas'
      Color = clBtnFace
      ParentColor = False
      TabOrder = 0
      object DBGridDuplicata: TDBGrid
        Left = 2
        Top = 16
        Width = 1055
        Height = 251
        Hint = 'Bot'#227'o direito para enviar Email'
        TabStop = False
        Align = alClient
        Color = 16776176
        DataSource = dsDuplicata
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick]
        ParentShowHint = False
        PopupMenu = pmBoletos
        ReadOnly = True
        ShowHint = True
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Arial'
        TitleFont.Style = []
        OnDrawColumnCell = DBGridDuplicataDrawColumnCell
        OnDblClick = DBGridDuplicataDblClick
        OnTitleClick = DBGridDuplicataTitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'Selecao'
            Title.Alignment = taCenter
            Title.Caption = '*'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 20
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FPC_ENVIOEMAIL_BOLETO'
            Title.Caption = '@'
            Width = 26
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FAT_CODIGO'
            Title.Alignment = taCenter
            Title.Caption = 'Fatura'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 55
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FPC_NUMER'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 74
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FPC_DTEMIS'
            Title.Alignment = taCenter
            Title.Caption = 'Emiss'#227'o'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 58
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FPC_VENCTO'
            Title.Alignment = taCenter
            Title.Caption = 'Vencto'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 58
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLI_RAZAO'
            Title.Alignment = taCenter
            Title.Caption = 'Raz'#227'o Social'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 186
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FPC_VLPARC'
            Title.Alignment = taCenter
            Title.Caption = 'Valor'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BAN_COD_APELIDO'
            Title.Alignment = taCenter
            Title.Caption = 'Cod.'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 27
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BAN_APELIDO'
            Title.Alignment = taCenter
            Title.Caption = 'Banco'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 98
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FPC_DATABOLETO'
            Title.Alignment = taCenter
            Title.Caption = 'Data boleto'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 84
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FPC_COBNUM'
            Title.Alignment = taCenter
            Title.Caption = 'Nosso Numero'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 112
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FPC_IMPDUP'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Title.Caption = 'Imp'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 28
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COBRANCA_CC'
            Title.Alignment = taCenter
            Title.Caption = 'Cobran'#231'a'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 103
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIPO_DOC_CC'
            Title.Alignment = taCenter
            Title.Caption = 'Documento'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 87
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'rep_nome'
            Title.Caption = 'Vendedor'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EMAIL'
            Title.Caption = 'Email'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 384
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FPC_STATUS'
            Title.Caption = 'Situa'#231#227'o'
            Visible = True
          end>
      end
      object Panel1: TPanel
        Left = 2
        Top = 267
        Width = 1055
        Height = 41
        Align = alBottom
        TabOrder = 1
        object lRegistroCount: TLabel
          Left = 16
          Top = 14
          Width = 70
          Height = 14
          Caption = 'lRegistroCount'
        end
        object lvalortotal: TLabel
          Left = 312
          Top = 14
          Width = 46
          Height = 14
          Caption = 'lvalortotal'
        end
        object Label14: TLabel
          Left = 520
          Top = 14
          Width = 87
          Height = 14
          Caption = 'Total Selecionado:'
        end
        object Label15: TLabel
          Left = 698
          Top = 14
          Width = 115
          Height = 14
          Caption = 'Valor Total Selecionado:'
        end
        object edTotalRegistros: TJvValidateEdit
          Left = 607
          Top = 10
          Width = 41
          Height = 22
          CriticalPoints.MaxValueIncluded = False
          CriticalPoints.MinValueIncluded = False
          TabOrder = 0
        end
        object edValorTotal: TJvValidateEdit
          Left = 813
          Top = 10
          Width = 113
          Height = 22
          CriticalPoints.MaxValueIncluded = False
          CriticalPoints.MinValueIncluded = False
          DisplayFormat = dfCurrency
          DecimalPlaces = 2
          TabOrder = 1
        end
      end
    end
    object Panel2: TPanel
      Left = 2
      Top = 16
      Width = 1059
      Height = 130
      Align = alTop
      TabOrder = 1
      object Label7: TLabel
        Left = 7
        Top = 42
        Width = 65
        Height = 14
        Caption = '&Conta Banco:'
        FocusControl = EdtBanco
      end
      object Label10: TLabel
        Left = 434
        Top = 41
        Width = 50
        Height = 14
        Caption = 'Co&bran'#231'a:'
      end
      object Label3: TLabel
        Left = 700
        Top = 42
        Width = 80
        Height = 14
        Caption = 'Tipo Documento:'
      end
      object Label5: TLabel
        Left = 11
        Top = 72
        Width = 134
        Height = 14
        Caption = 'Data da Emiss'#227'o no Boleto :'
      end
      object Label9: TLabel
        Left = 20
        Top = 111
        Width = 35
        Height = 14
        Alignment = taRightJustify
        Caption = 'Cliente:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 639
        Top = 99
        Width = 375
        Height = 17
        Caption = 'Para enviar boleto use o bot'#227'o direito do mouse no cliente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object PanDuplicata: TPanel
        Left = 373
        Top = 10
        Width = 408
        Height = 29
        BevelOuter = bvNone
        TabOrder = 0
        TabStop = True
        object Label11: TLabel
          Left = 46
          Top = 6
          Width = 64
          Height = 14
          Caption = 'N'#186' da Fatura:'
        end
        object Label12: TLabel
          Left = 197
          Top = 6
          Width = 58
          Height = 14
          Caption = 'Parcela No.:'
        end
        object EdtDuplicata: TEdit
          Left = 116
          Top = 0
          Width = 65
          Height = 22
          MaxLength = 6
          TabOrder = 0
          OnKeyPress = EdtDuplicataKeyPress
        end
        object EditParcela: TEdit
          Left = 259
          Top = 1
          Width = 25
          Height = 22
          CharCase = ecUpperCase
          MaxLength = 2
          TabOrder = 1
          OnKeyPress = EdtDuplicataKeyPress
        end
      end
      object Panemissao: TPanel
        Left = 59
        Top = 10
        Width = 345
        Height = 29
        BevelOuter = bvNone
        TabOrder = 1
        TabStop = True
        object Label13: TLabel
          Left = 227
          Top = 5
          Width = 15
          Height = 14
          Alignment = taRightJustify
          Caption = 'at'#233
          FocusControl = DataInicial
        end
        object cbbTipo: TComboBox
          Left = 16
          Top = 1
          Width = 98
          Height = 22
          Style = csOwnerDrawFixed
          ItemIndex = 1
          TabOrder = 0
          Text = 'EMISS'#195'O'
          Items.Strings = (
            'VENCIMENTO'
            'EMISS'#195'O')
        end
        object DataInicial: TJvDateEdit
          Left = 120
          Top = 1
          Width = 90
          Height = 22
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
          PopupColor = clBtnFace
          ShowNullDate = False
          TabOrder = 1
          OnExit = DataInicialExit
        end
        object DataFinal: TJvDateEdit
          Left = 248
          Top = 0
          Width = 90
          Height = 22
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
          PopupColor = clBtnFace
          ShowNullDate = False
          TabOrder = 2
          OnExit = DataFinalExit
        end
      end
      object GbTipo: TGroupBox
        Left = 263
        Top = 62
        Width = 514
        Height = 38
        Caption = 'Tipo'
        TabOrder = 2
        object Label2: TLabel
          Left = 276
          Top = 15
          Width = 69
          Height = 14
          Caption = 'Layout Boleto:'
        end
        object RadBoletoBarras: TRadioButton
          Left = 21
          Top = 15
          Width = 60
          Height = 17
          Caption = '&Boletos'
          Checked = True
          TabOrder = 0
          TabStop = True
          OnClick = RadBoletoBarrasClick
        end
        object Rad_DuplSist: TRadioButton
          Left = 107
          Top = 15
          Width = 88
          Height = 17
          Caption = '&Duplicatas'
          TabOrder = 1
        end
        object cbLayOut: TComboBox
          Left = 351
          Top = 11
          Width = 152
          Height = 22
          TabOrder = 2
          Text = 'Padr'#227'o Entrega'
          OnChange = cbLayOutChange
          Items.Strings = (
            'Padr'#227'o'
            'Carn'#234
            'Fatura'
            'Padr'#227'o Entrega'
            'com Recibo'
            'Padr'#227'o e Carn'#234)
        end
        object rad_Locacao: TRadioButton
          Left = 200
          Top = 15
          Width = 65
          Height = 17
          Caption = 'Loca'#231#227'o'
          TabOrder = 3
        end
      end
      object GroupBox1: TGroupBox
        Left = 785
        Top = 61
        Width = 260
        Height = 38
        Caption = 'Dispositivo de sa'#237'da'
        Color = clBtnFace
        ParentColor = False
        TabOrder = 3
        object RadVideo: TRadioButton
          Left = 17
          Top = 15
          Width = 73
          Height = 17
          Caption = '&Video'
          Checked = True
          TabOrder = 0
          TabStop = True
        end
        object RadImpressora: TRadioButton
          Left = 144
          Top = 15
          Width = 85
          Height = 17
          Caption = '&Impressora'
          TabOrder = 1
        end
      end
      object BitPesquisa: TBitBtn
        Left = 948
        Top = 2
        Width = 99
        Height = 25
        Caption = '&Pesquisar'
        TabOrder = 4
        OnClick = BitPesquisaClick
      end
      object BitCancelar: TBitBtn
        Left = 948
        Top = 30
        Width = 99
        Height = 25
        Cancel = True
        Caption = '&Limpar'
        NumGlyphs = 2
        TabOrder = 5
        OnClick = BitCancelarClick
      end
      object EdtBanco: TEdit
        Left = 74
        Top = 38
        Width = 44
        Height = 22
        CharCase = ecUpperCase
        MaxLength = 4
        TabOrder = 6
        OnExit = EdtBancoExit
        OnKeyDown = EdtBancoKeyDown
        OnKeyPress = EdtDuplicataKeyPress
      end
      object CbBancos: TSgDbSearchCombo
        Left = 121
        Top = 38
        Width = 254
        Height = 22
        TabOrder = 7
        CharCase = ecUpperCase
        LookupSelect = 
          'BAN_CODIGO, BAN_APELIDO, BAN_COD_APELIDO, BAN_CODAGE, BAN_CONTA,' +
          ' BAN_DIGCONTA'
        LookupOrderBy = 'ban_apelido'
        LookupTable = 'ban0000'
        LookupDispl = 'BAN_APELIDO'
        OnSelect = CbBancosSelect
        GridAutoSize = False
        LookupSource = qBanco
        LookupKeyField = 'ban_codigo'
        ShowButton = True
        LookupTableShare = 'BANCOS'
        AutoF8WinTitulo = 'Bancos'
        AutoF8ColumnsTitulo = 'C'#243'digo, Nome, Banco, Agencia, Conta, Digito '
        GridLeft = 0
        GridWidth = 0
        GridHeight = 100
        GridTop = 0
        GridShowWhenEnter = False
        SelectWithDoubleClick = False
        LimparCampoAoSair = True
      end
      object CbxCarteira: TComboBox
        Left = 486
        Top = 38
        Width = 171
        Height = 22
        CharCase = ecUpperCase
        TabOrder = 8
        OnChange = CbxCarteiraChange
        Items.Strings = (
          'TODAS'
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
        Left = 784
        Top = 38
        Width = 151
        Height = 22
        TabOrder = 9
        OnChange = CbxTipoDocChange
        Items.Strings = (
          'TODAS'
          'DUPLICATA'
          'BOLETO'
          'RECIBO'
          'CHEQUE'
          'DINHEIRO'
          'OUTROS'
          'CREDITO CONTA')
      end
      object DataEmissao: TJvDateEdit
        Left = 151
        Top = 69
        Width = 96
        Height = 22
        Hint = 
          'Data que vai sair impressa no boleto, se n'#227'o tiver sido'#13#10'preench' +
          'ido vai pegar a data de emiss'#227'o da parcela'
        DefaultToday = True
        DialogTitle = 'Selecione uma data'
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
        ParentShowHint = False
        PopupColor = clBtnFace
        ShowHint = True
        ShowNullDate = False
        TabOrder = 10
        OnExit = DataInicialExit
      end
      object EdClienteCodigo: TEdit
        Left = 59
        Top = 103
        Width = 42
        Height = 22
        CharCase = ecUpperCase
        Color = clWhite
        MaxLength = 5
        TabOrder = 11
        OnExit = EdClienteCodigoExit
        OnKeyDown = EdClienteCodigoKeyDown
        OnKeyPress = EdClienteCodigoKeyPress
      end
      object PesqCliente: TSgDbSearchCombo
        Left = 103
        Top = 103
        Width = 484
        Height = 22
        EmptyText = 'TODOS OS CLIENTES'
        TabOrder = 12
        CharCase = ecUpperCase
        LookupSelect = 'CLI_CODIGO,CLI_RAZAO,CLI_FANTASIA'
        LookupOrderBy = 'CLI_RAZAO'
        LookupTable = 'cli0000'
        LookupDispl = 'CLI_RAZAO'
        OnButtonClick = PesqClienteButtonClick
        OnSelect = PesqClienteSelect
        GridAutoSize = False
        LookupSource = qAux
        LookupKeyField = 'CLI_CODIGO'
        ShowButton = True
        LookupTableShare = 'clientes'
        AutoF8WinTitulo = 'Clientes'
        AutoF8ColumnsTitulo = 'C'#243'digo, Nome, Fantasia'
        GridLeft = 0
        GridWidth = 0
        GridHeight = 100
        GridTop = 0
        GridShowWhenEnter = False
        SelectWithDoubleClick = False
        LimparCampoAoSair = True
      end
    end
    object Panel3: TPanel
      Left = 2
      Top = 456
      Width = 1059
      Height = 121
      Align = alBottom
      TabOrder = 2
      DesignSize = (
        1059
        121)
      object Label8: TLabel
        Left = 19
        Top = 92
        Width = 439
        Height = 15
        Caption = 
          '* Para enviar PDF do  Boleto por Email, marque e clique bot'#227'o di' +
          'reito do mouse.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object BitImprimir: TBitBtn
        Left = 639
        Top = 88
        Width = 119
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = '&Imprimir'
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
          888F8800000000000888808888888880808800000000000008080888888BBB88
          0008088888877788080800000000000008800888888888808080800000000008
          0800880FFFFFFFF080808880F00000F000088880FFFFFFFF088888880F00000F
          088888880FFFFFFFF08888888000000000888888888888888888}
        TabOrder = 0
        OnClick = BitImprimirClick
        OnKeyPress = EdtDuplicataKeyPress
      end
      object BitConfig: TBitBtn
        Left = 774
        Top = 88
        Width = 151
        Height = 25
        Cursor = crHandPoint
        Anchors = [akLeft, akBottom]
        Caption = 'C&onfigura'#231#227'o de Impress'#227'o'
        TabOrder = 1
        TabStop = False
        OnClick = BitConfigClick
      end
      object BitSair: TBitBtn
        Left = 931
        Top = 88
        Width = 120
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = '&Sair'
        TabOrder = 2
        OnClick = BitSairClick
      end
      object dbHistorico: TDBGrid
        Left = -8
        Top = -5
        Width = 1059
        Height = 72
        Hint = 'Duplo clique para imprimir eventos : cancelar ou carta corre'#231#227'o'
        Anchors = [akLeft, akRight, akBottom]
        DataSource = dsHistorico
        Options = [dgEditing, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 3
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Arial'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'descricao'
            Title.Caption = 'Evento'
            Width = 833
            Visible = True
          end>
      end
    end
  end
  inherited coCalcula: TACBrCalculadora
    Left = 728
    Top = 8
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 640
    Top = 8
  end
  inherited DBConn: TSQLConnection
    Left = 568
    Top = 9
  end
  inherited qAux: TSQLQuery
    Left = 802
  end
  inherited qAux2: TSQLQuery
    Left = 850
  end
  inherited qAux3: TSQLQuery
    Left = 914
    Top = 20
  end
  object dsDuplicata: TDataSource
    DataSet = cdsDuplicata
    Left = 530
    Top = 379
  end
  object SqlCdsConfImpr: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 'select * from SYSBOLETO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'select * from SYSBOLETO'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 144
    Top = 326
    object SqlCdsConfImprBOL_CODBOL: TStringField
      FieldName = 'BOL_CODBOL'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object SqlCdsConfImprBOL_ATIVO: TStringField
      FieldName = 'BOL_ATIVO'
      Size = 1
    end
    object SqlCdsConfImprBOL_CODBAN: TStringField
      FieldName = 'BOL_CODBAN'
      Size = 6
    end
    object SqlCdsConfImprBOL_NRLINHA: TStringField
      FieldName = 'BOL_NRLINHA'
      Size = 3
    end
    object SqlCdsConfImprBOL_LOCAL: TStringField
      FieldName = 'BOL_LOCAL'
      Size = 7
    end
    object SqlCdsConfImprBOL_VENCTO: TStringField
      FieldName = 'BOL_VENCTO'
      Size = 7
    end
    object SqlCdsConfImprBOL_DTEMIS: TStringField
      FieldName = 'BOL_DTEMIS'
      Size = 7
    end
    object SqlCdsConfImprBOL_CODFAT: TStringField
      FieldName = 'BOL_CODFAT'
      Size = 7
    end
    object SqlCdsConfImprBOL_ESPDOC: TStringField
      FieldName = 'BOL_ESPDOC'
      Size = 7
    end
    object SqlCdsConfImprBOL_DESESPDOC: TStringField
      FieldName = 'BOL_DESESPDOC'
      Size = 3
    end
    object SqlCdsConfImprBOL_ACEITE: TStringField
      FieldName = 'BOL_ACEITE'
      Size = 7
    end
    object SqlCdsConfImprBOL_DESACEITE: TStringField
      FieldName = 'BOL_DESACEITE'
      Size = 3
    end
    object SqlCdsConfImprBOL_DTPROCE: TStringField
      FieldName = 'BOL_DTPROCE'
      Size = 7
    end
    object SqlCdsConfImprBOL_USOBCO: TStringField
      FieldName = 'BOL_USOBCO'
      Size = 7
    end
    object SqlCdsConfImprBOL_CARTEIRA: TStringField
      FieldName = 'BOL_CARTEIRA'
      Size = 7
    end
    object SqlCdsConfImprBOL_DESCARTEIRA: TStringField
      FieldName = 'BOL_DESCARTEIRA'
      Size = 3
    end
    object SqlCdsConfImprBOL_VLPARC: TStringField
      FieldName = 'BOL_VLPARC'
      Size = 7
    end
    object SqlCdsConfImprBOL_ESPECIE: TStringField
      FieldName = 'BOL_ESPECIE'
      Size = 7
    end
    object SqlCdsConfImprBOL_DESPECIE: TStringField
      FieldName = 'BOL_DESPECIE'
      Size = 5
    end
    object SqlCdsConfImprBOL_QUANTIDADE: TStringField
      FieldName = 'BOL_QUANTIDADE'
      Size = 7
    end
    object SqlCdsConfImprBOL_VALOR: TStringField
      FieldName = 'BOL_VALOR'
      Size = 7
    end
    object SqlCdsConfImprBOL_VLDOC: TStringField
      FieldName = 'BOL_VLDOC'
      Size = 7
    end
    object SqlCdsConfImprBOL_JUROMES: TStringField
      FieldName = 'BOL_JUROMES'
      Size = 7
    end
    object SqlCdsConfImprBOL_DESCABAT: TStringField
      FieldName = 'BOL_DESCABAT'
      Size = 7
    end
    object SqlCdsConfImprBOL_OBSBOL1: TStringField
      FieldName = 'BOL_OBSBOL1'
      Size = 7
    end
    object SqlCdsConfImprBOL_OUTDEDU: TStringField
      FieldName = 'BOL_OUTDEDU'
      Size = 7
    end
    object SqlCdsConfImprBOL_OBSBOL2: TStringField
      FieldName = 'BOL_OBSBOL2'
      Size = 7
    end
    object SqlCdsConfImprBOL_MORAMULTA: TStringField
      FieldName = 'BOL_MORAMULTA'
      Size = 7
    end
    object SqlCdsConfImprBOL_OBSBOL3: TStringField
      FieldName = 'BOL_OBSBOL3'
      Size = 7
    end
    object SqlCdsConfImprBOL_OUTACRES: TStringField
      FieldName = 'BOL_OUTACRES'
      Size = 7
    end
    object SqlCdsConfImprBOL_OBSBOL4: TStringField
      FieldName = 'BOL_OBSBOL4'
      Size = 7
    end
    object SqlCdsConfImprBOL_VLCOBRADO: TStringField
      FieldName = 'BOL_VLCOBRADO'
      Size = 7
    end
    object SqlCdsConfImprBOL_RAZAO: TStringField
      FieldName = 'BOL_RAZAO'
      Size = 7
    end
    object SqlCdsConfImprBOL_END: TStringField
      FieldName = 'BOL_END'
      Size = 7
    end
    object SqlCdsConfImprBOL_CEP: TStringField
      FieldName = 'BOL_CEP'
      Size = 7
    end
    object SqlCdsConfImprBOL_CID: TStringField
      FieldName = 'BOL_CID'
      Size = 7
    end
    object SqlCdsConfImprBOL_EST: TStringField
      FieldName = 'BOL_EST'
      Size = 7
    end
    object SqlCdsConfImprBOL_CNPJ: TStringField
      FieldName = 'BOL_CNPJ'
      Size = 7
    end
    object SqlCdsConfImprBOL_LOCPGTO: TStringField
      FieldName = 'BOL_LOCPGTO'
      Size = 45
    end
    object SqlCdsConfImprBOL_OBS1: TStringField
      FieldName = 'BOL_OBS1'
      Size = 45
    end
    object SqlCdsConfImprBOL_OBS2: TStringField
      FieldName = 'BOL_OBS2'
      Size = 45
    end
    object SqlCdsConfImprBOL_OBS3: TStringField
      FieldName = 'BOL_OBS3'
      Size = 45
    end
    object SqlCdsConfImprBOL_OBS4: TStringField
      FieldName = 'BOL_OBS4'
      Size = 45
    end
    object SqlCdsConfImprEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
  object SqlCdsConfDupl: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 'select * from SYSDUPLI'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'select * from SYSDUPLI'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 49
    Top = 327
    object SqlCdsConfDuplCDU_CODIGO: TStringField
      FieldName = 'CDU_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 2
    end
    object SqlCdsConfDuplCDU_DTCADA: TDateField
      FieldName = 'CDU_DTCADA'
    end
    object SqlCdsConfDuplCDU_ATIVO: TStringField
      FieldName = 'CDU_ATIVO'
      Size = 1
    end
    object SqlCdsConfDuplCDU_FONTE: TStringField
      FieldName = 'CDU_FONTE'
      Size = 2
    end
    object SqlCdsConfDuplEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlCdsConfDuplCDU_NATUREZA: TStringField
      FieldName = 'CDU_NATUREZA'
      Size = 7
    end
    object SqlCdsConfDuplCDU_DTEMISSAO: TStringField
      FieldName = 'CDU_DTEMISSAO'
      Size = 7
    end
    object SqlCdsConfDuplCDU_FATURA: TStringField
      FieldName = 'CDU_FATURA'
      Size = 7
    end
    object SqlCdsConfDuplCDU_VALORD: TStringField
      FieldName = 'CDU_VALORD'
      Size = 7
    end
    object SqlCdsConfDuplCDU_NORDEM: TStringField
      FieldName = 'CDU_NORDEM'
      Size = 7
    end
    object SqlCdsConfDuplCDU_VENCTO: TStringField
      FieldName = 'CDU_VENCTO'
      Size = 7
    end
    object SqlCdsConfDuplCDU_DESCTODE: TStringField
      FieldName = 'CDU_DESCTODE'
      Size = 7
    end
    object SqlCdsConfDuplCDU_DESCTOATE: TStringField
      FieldName = 'CDU_DESCTOATE'
      Size = 7
    end
    object SqlCdsConfDuplCDU_DESCTOS: TStringField
      FieldName = 'CDU_DESCTOS'
      Size = 7
    end
    object SqlCdsConfDuplCDU_CONDESPECIAL: TStringField
      FieldName = 'CDU_CONDESPECIAL'
      Size = 7
    end
    object SqlCdsConfDuplCDU_NOMESACADO: TStringField
      FieldName = 'CDU_NOMESACADO'
      Size = 7
    end
    object SqlCdsConfDuplCDU_ENDERECO: TStringField
      FieldName = 'CDU_ENDERECO'
      Size = 7
    end
    object SqlCdsConfDuplCDU_BAIRRO: TStringField
      FieldName = 'CDU_BAIRRO'
      Size = 7
    end
    object SqlCdsConfDuplCDU_CIDADE: TStringField
      FieldName = 'CDU_CIDADE'
      Size = 7
    end
    object SqlCdsConfDuplCDU_ESTADO: TStringField
      FieldName = 'CDU_ESTADO'
      Size = 7
    end
    object SqlCdsConfDuplCDU_CEP: TStringField
      FieldName = 'CDU_CEP'
      Size = 7
    end
    object SqlCdsConfDuplCDU_FONE: TStringField
      FieldName = 'CDU_FONE'
      Size = 7
    end
    object SqlCdsConfDuplCDU_PRACA: TStringField
      FieldName = 'CDU_PRACA'
      Size = 7
    end
    object SqlCdsConfDuplCDU_ENDECOBRA: TStringField
      FieldName = 'CDU_ENDECOBRA'
      Size = 7
    end
    object SqlCdsConfDuplCDU_CEPCOBRA: TStringField
      FieldName = 'CDU_CEPCOBRA'
      Size = 7
    end
    object SqlCdsConfDuplCDU_CNPJ: TStringField
      FieldName = 'CDU_CNPJ'
      Size = 7
    end
    object SqlCdsConfDuplCDU_INSCRESTADUAL: TStringField
      FieldName = 'CDU_INSCRESTADUAL'
      Size = 7
    end
    object SqlCdsConfDuplCDU_DATACEITE: TStringField
      FieldName = 'CDU_DATACEITE'
      Size = 7
    end
    object SqlCdsConfDuplCDU_VLEXTENSO: TStringField
      FieldName = 'CDU_VLEXTENSO'
      Size = 7
    end
    object SqlCdsConfDuplCDU_LINHAS: TStringField
      FieldName = 'CDU_LINHAS'
      Size = 3
    end
    object SqlCdsConfDuplCDU_OBS: TStringField
      FieldName = 'CDU_OBS'
      Size = 7
    end
  end
  object SqlCdsDupl: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 
      'SELECT'#13#10'P1.FAT_CODIGO,'#13#10'P1.FPC_NUMER,'#13#10'P1.CLI_CODIGO,'#13#10'P1.FPC_DT' +
      'EMIS,'#13#10'P1.FPC_VENCTO,'#13#10'P1.FPC_VLPARC,'#13#10'P1.FPC_DESCTO,'#13#10'P1.FPC_DT' +
      'DESC,'#13#10'P1.FPC_IMPDUP,'#13#10'P1.FPC_SITPAG,'#13#10'P1.FPC_OBS,'#13#10'P1.EMP_CODIG' +
      'O,'#13#10'A1.FAT_OPERACAO,'#13#10'A1.FAT_VLFAT,'#13#10'C1.CLI_RAZAO,'#13#10'C1.CLI_ENDER' +
      'E,'#13#10'C1.CLI_BAIRRO,'#13#10'C1.CLI_CEP,'#13#10'C1.CLI_CIDADE,'#13#10'C1.CLI_UF,'#13#10'C1.' +
      'CLI_FONE,'#13#10'C1.CLI_ENDFAT,'#13#10'C1.CLI_CIDFAT,'#13#10'C1.CLI_CEPFAT,'#13#10'C1.CL' +
      'I_UFFAT,'#13#10'C1.CLI_CGC,'#13#10'C1.CLI_INSC'#13#10'FROM fat_pc01 P1'#13#10'JOIN CLI00' +
      '00 C1 ON (P1.cli_codigo = C1.cli_codigo)'#13#10'JOIN FAT0000 A1 ON (P1' +
      '.FAT_CODIGO = A1.FAT_CODIGO)'#13#10'WHERE P1.FAT_CODIGO = '#39'000456'#39' AND' +
      ' P1.FPC_NUMER = '#39'02'#39
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    AfterScroll = SqlCdsDuplAfterScroll
    CommandText = 
      'SELECT'#13#10'P1.FAT_CODIGO,'#13#10'P1.FPC_NUMER,'#13#10'P1.CLI_CODIGO,'#13#10'P1.FPC_DT' +
      'EMIS,'#13#10'P1.FPC_VENCTO,'#13#10'P1.FPC_VLPARC,'#13#10'P1.FPC_DESCTO,'#13#10'P1.FPC_DT' +
      'DESC,'#13#10'P1.FPC_IMPDUP,'#13#10'P1.FPC_SITPAG,'#13#10'P1.FPC_OBS,'#13#10'P1.EMP_CODIG' +
      'O,'#13#10'A1.FAT_OPERACAO,'#13#10'A1.FAT_VLFAT,'#13#10'C1.CLI_RAZAO,'#13#10'C1.CLI_ENDER' +
      'E,'#13#10'C1.CLI_BAIRRO,'#13#10'C1.CLI_CEP,'#13#10'C1.CLI_CIDADE,'#13#10'C1.CLI_UF,'#13#10'C1.' +
      'CLI_FONE,'#13#10'C1.CLI_ENDFAT,'#13#10'C1.CLI_CIDFAT,'#13#10'C1.CLI_CEPFAT,'#13#10'C1.CL' +
      'I_UFFAT,'#13#10'C1.CLI_CGC,'#13#10'C1.CLI_INSC'#13#10'FROM fat_pc01 P1'#13#10'JOIN CLI00' +
      '00 C1 ON (P1.cli_codigo = C1.cli_codigo)'#13#10'JOIN FAT0000 A1 ON (P1' +
      '.FAT_CODIGO = A1.FAT_CODIGO)'#13#10'WHERE P1.FAT_CODIGO = '#39'000456'#39' AND' +
      ' P1.FPC_NUMER = '#39'02'#39
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 53
    Top = 271
    object SqlCdsDuplFAT_CODIGO: TStringField
      FieldName = 'FAT_CODIGO'
      ProviderFlags = []
      Required = True
      Size = 6
    end
    object SqlCdsDuplFPC_NUMER: TStringField
      FieldName = 'FPC_NUMER'
      ProviderFlags = []
      Size = 2
    end
    object SqlCdsDuplCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      ProviderFlags = []
      Size = 5
    end
    object SqlCdsDuplFPC_DTEMIS: TSQLTimeStampField
      FieldName = 'FPC_DTEMIS'
      ProviderFlags = []
    end
    object SqlCdsDuplFPC_VENCTO: TSQLTimeStampField
      FieldName = 'FPC_VENCTO'
      ProviderFlags = []
    end
    object SqlCdsDuplFPC_VLPARC: TFMTBCDField
      FieldName = 'FPC_VLPARC'
      ProviderFlags = []
      Precision = 15
    end
    object SqlCdsDuplEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = []
      Size = 3
    end
    object SqlCdsDuplCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      ProviderFlags = []
      Size = 52
    end
    object SqlCdsDuplCLI_ENDERE: TStringField
      FieldName = 'CLI_ENDERE'
      ProviderFlags = []
      Size = 50
    end
    object SqlCdsDuplCLI_ENDFAT: TStringField
      FieldName = 'CLI_ENDFAT'
      ProviderFlags = []
      Size = 50
    end
    object SqlCdsDuplCLI_CIDADE: TStringField
      FieldName = 'CLI_CIDADE'
      ProviderFlags = []
      Size = 30
    end
    object SqlCdsDuplCLI_CIDFAT: TStringField
      FieldName = 'CLI_CIDFAT'
      ProviderFlags = []
      Size = 30
    end
    object SqlCdsDuplCLI_CEP: TStringField
      FieldName = 'CLI_CEP'
      ProviderFlags = []
      EditMask = '99\.999\-999;0;_'
      Size = 8
    end
    object SqlCdsDuplCLI_CEPFAT: TStringField
      FieldName = 'CLI_CEPFAT'
      ProviderFlags = []
      EditMask = '99\.999\-999;0;_'
      Size = 8
    end
    object SqlCdsDuplCLI_UF: TStringField
      FieldName = 'CLI_UF'
      ProviderFlags = []
      Size = 2
    end
    object SqlCdsDuplCLI_UFFAT: TStringField
      FieldName = 'CLI_UFFAT'
      ProviderFlags = []
      Size = 2
    end
    object SqlCdsDuplCLI_CGC: TStringField
      FieldName = 'CLI_CGC'
      ProviderFlags = []
      Size = 14
    end
    object SqlCdsDuplFPC_DESCTO: TFMTBCDField
      FieldName = 'FPC_DESCTO'
      Precision = 15
    end
    object SqlCdsDuplFPC_DTDESC: TSQLTimeStampField
      FieldName = 'FPC_DTDESC'
    end
    object SqlCdsDuplFPC_IMPDUP: TStringField
      FieldName = 'FPC_IMPDUP'
      Size = 1
    end
    object SqlCdsDuplFPC_OBS: TStringField
      FieldName = 'FPC_OBS'
      Size = 50
    end
    object SqlCdsDuplFPC_SITPAG: TStringField
      FieldName = 'FPC_SITPAG'
      Size = 1
    end
    object SqlCdsDuplFAT_OPERACAO: TStringField
      FieldName = 'FAT_OPERACAO'
      Size = 4
    end
    object SqlCdsDuplCLI_BAIRRO: TStringField
      FieldName = 'CLI_BAIRRO'
      Size = 25
    end
    object SqlCdsDuplCLI_INSC: TStringField
      FieldName = 'CLI_INSC'
      Size = 18
    end
    object SqlCdsDuplCLI_FONE: TStringField
      FieldName = 'CLI_FONE'
      Size = 11
    end
    object SqlCdsDuplFAT_VLFAT: TFMTBCDField
      FieldName = 'FAT_VLFAT'
      Precision = 15
    end
  end
  object ppDBDupl: TppDBPipeline
    DataSource = DsDupl
    UserName = 'DBDupl'
    Left = 197
    Top = 271
    object ppDBDuplppField1: TppField
      FieldAlias = 'FAT_CODIGO'
      FieldName = 'FAT_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBDuplppField2: TppField
      FieldAlias = 'FPC_NUMER'
      FieldName = 'FPC_NUMER'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBDuplppField3: TppField
      FieldAlias = 'CLI_CODIGO'
      FieldName = 'CLI_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBDuplppField4: TppField
      FieldAlias = 'FPC_DTEMIS'
      FieldName = 'FPC_DTEMIS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBDuplppField5: TppField
      FieldAlias = 'FPC_VENCTO'
      FieldName = 'FPC_VENCTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBDuplppField6: TppField
      FieldAlias = 'FPC_VLPARC'
      FieldName = 'FPC_VLPARC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBDuplppField7: TppField
      FieldAlias = 'EMP_CODIGO'
      FieldName = 'EMP_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBDuplppField8: TppField
      FieldAlias = 'CLI_RAZAO'
      FieldName = 'CLI_RAZAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBDuplppField9: TppField
      FieldAlias = 'CLI_ENDERE'
      FieldName = 'CLI_ENDERE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBDuplppField10: TppField
      FieldAlias = 'CLI_ENDFAT'
      FieldName = 'CLI_ENDFAT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBDuplppField11: TppField
      FieldAlias = 'CLI_CIDADE'
      FieldName = 'CLI_CIDADE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBDuplppField12: TppField
      FieldAlias = 'CLI_CIDFAT'
      FieldName = 'CLI_CIDFAT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDBDuplppField13: TppField
      FieldAlias = 'CLI_CEP'
      FieldName = 'CLI_CEP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDBDuplppField14: TppField
      FieldAlias = 'CLI_CEPFAT'
      FieldName = 'CLI_CEPFAT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppDBDuplppField15: TppField
      FieldAlias = 'CLI_UF'
      FieldName = 'CLI_UF'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppDBDuplppField16: TppField
      FieldAlias = 'CLI_UFFAT'
      FieldName = 'CLI_UFFAT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppDBDuplppField17: TppField
      FieldAlias = 'CLI_CGC'
      FieldName = 'CLI_CGC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppDBDuplppField18: TppField
      FieldAlias = 'FPC_DESCTO'
      FieldName = 'FPC_DESCTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppDBDuplppField19: TppField
      FieldAlias = 'FPC_DTDESC'
      FieldName = 'FPC_DTDESC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object ppDBDuplppField20: TppField
      FieldAlias = 'FPC_IMPDUP'
      FieldName = 'FPC_IMPDUP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object ppDBDuplppField21: TppField
      FieldAlias = 'FPC_OBS'
      FieldName = 'FPC_OBS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object ppDBDuplppField22: TppField
      FieldAlias = 'FPC_SITPAG'
      FieldName = 'FPC_SITPAG'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object ppDBDuplppField23: TppField
      FieldAlias = 'FAT_OPERACAO'
      FieldName = 'FAT_OPERACAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object ppDBDuplppField24: TppField
      FieldAlias = 'CLI_BAIRRO'
      FieldName = 'CLI_BAIRRO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object ppDBDuplppField25: TppField
      FieldAlias = 'CLI_INSC'
      FieldName = 'CLI_INSC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
    object ppDBDuplppField26: TppField
      FieldAlias = 'CLI_FONE'
      FieldName = 'CLI_FONE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 25
      Searchable = False
      Sortable = False
    end
    object ppDBDuplppField27: TppField
      FieldAlias = 'FAT_VLFAT'
      FieldName = 'FAT_VLFAT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 26
      Searchable = False
      Sortable = False
    end
  end
  object DsDupl: TDataSource
    DataSet = SqlCdsDupl
    Left = 129
    Top = 271
  end
  object ppReportDupl: TppReport
    AutoStop = False
    DataPipeline = ppDBDupl
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 0
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 10000
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Template.FileName = 'X:\adjutor\fontesrelatorios\RELDUPLICATA'
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    EmailSettings.ConnectionSettings.MailService = 'SMTP'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.EnableMultiPlugin = False
    LanguageID = 'Portuguese (Brazil)'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    ThumbnailSettings.PageHighlight.Width = 3
    ThumbnailSettings.ThumbnailSize = tsSmall
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.AllowExtract = True
    PDFSettings.EncryptSettings.AllowAssemble = True
    PDFSettings.EncryptSettings.AllowQualityPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.EncryptSettings.EncryptionType = etRC4
    PDFSettings.DigitalSignatureSettings.SignPDF = False
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PDFSettings.PDFAFormat = pafNone
    PreviewFormSettings.PageBorder.mmPadding = 0
    PreviewFormSettings.WindowState = wsMaximized
    RTFSettings.AppName = 'ReportBuilder'
    RTFSettings.Author = 'ReportBuilder'
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    RTFSettings.Title = 'Report'
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    CloudDriveSettings.DropBoxSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.DropBoxSettings.DirectorySupport = True
    CloudDriveSettings.GoogleDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.GoogleDriveSettings.DirectorySupport = False
    CloudDriveSettings.OneDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.OneDriveSettings.DirectorySupport = True
    Left = 161
    Top = 407
    Version = '22.0'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBDupl'
    object ppDetailBand2: TppDetailBand
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 280194
      mmPrintPosition = 0
      object ppShape1: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape1'
        mmHeight = 132027
        mmLeft = 3175
        mmTop = 0
        mmWidth = 188913
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine45: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line45'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 0
        mmTop = 138113
        mmWidth = 196321
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine47: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line47'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 3175
        mmTop = 26988
        mmWidth = 189000
        BandType = 4
        LayerName = Foreground1
      end
      object ppShape3: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape3'
        mmHeight = 81000
        mmLeft = 7938
        mmTop = 28840
        mmWidth = 23500
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine48: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line48'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 75671
        mmLeft = 25929
        mmTop = 31485
        mmWidth = 1058
        BandType = 4
        LayerName = Foreground1
      end
      object ppShape4: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape4'
        mmHeight = 12000
        mmLeft = 33867
        mmTop = 28840
        mmWidth = 106000
        BandType = 4
        LayerName = Foreground1
      end
      object ppShape5: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape5'
        mmHeight = 27000
        mmLeft = 141817
        mmTop = 28840
        mmWidth = 45000
        BandType = 4
        LayerName = Foreground1
      end
      object ppShape6: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape6'
        mmHeight = 51065
        mmLeft = 33867
        mmTop = 58738
        mmWidth = 152929
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label7'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 
          'Reconhe'#231'o(emos) a exatid'#227'o desta DUPLICATA DE VENDA MERCANTIL/PR' +
          'ESTA'#199#195'O DE SERVI'#199'OS, na import'#226'ncia acima que pagarei(mos)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3175
        mmLeft = 4763
        mmTop = 112184
        mmWidth = 179917
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel20: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label20'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = #224' ou '#224' sua ordem na pra'#231'a e vencimento indicados.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3175
        mmLeft = 4763
        mmTop = 115094
        mmWidth = 63500
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel27: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Em'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3704
        mmLeft = 9525
        mmTop = 123825
        mmWidth = 6085
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel59: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label59'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = '______/______/______'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3704
        mmLeft = 16404
        mmTop = 123825
        mmWidth = 32173
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel60: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label60'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Data do aceite'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3704
        mmLeft = 21696
        mmTop = 127265
        mmWidth = 21167
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel61: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label61'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = '______________________________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3704
        mmLeft = 135732
        mmTop = 123825
        mmWidth = 50800
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel62: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label62'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Assinatura do Sacado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 145521
        mmTop = 127265
        mmWidth = 32808
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel63: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label63'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'PARA USO DA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 156104
        mmTop = 29633
        mmWidth = 19685
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel64: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label64'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'INSTITUI'#199#195'O FINANCEIRA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 147373
        mmTop = 32544
        mmWidth = 33338
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine46: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line46'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 2381
        mmLeft = 33867
        mmTop = 35190
        mmWidth = 106000
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine49: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line49'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11642
        mmLeft = 51065
        mmTop = 28840
        mmWidth = 265
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine50: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line50'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11642
        mmLeft = 70379
        mmTop = 28840
        mmWidth = 265
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine51: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line501'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11642
        mmLeft = 92604
        mmTop = 28840
        mmWidth = 265
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine52: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line52'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11642
        mmLeft = 116946
        mmTop = 28840
        mmWidth = 265
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel65: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label65'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Duplicata'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 20
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 8467
        mmLeft = 156104
        mmTop = 2117
        mmWidth = 31750
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel66: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label66'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Data de Emiss'#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4057
        mmLeft = 158221
        mmTop = 11642
        mmWidth = 27728
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel67: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label67'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Fatura N'#186
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 36673
        mmTop = 31750
        mmWidth = 11853
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel68: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label68'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Fatura'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 54504
        mmTop = 29369
        mmWidth = 10848
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel69: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label69'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Valor R$'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 54612
        mmTop = 32015
        mmWidth = 10795
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel70: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label70'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Duplicata'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 75938
        mmTop = 29369
        mmWidth = 11642
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel71: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label71'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'N'#186' de Ordem'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 73584
        mmTop = 32015
        mmWidth = 16087
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel72: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label72'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Duplicata'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 98161
        mmTop = 29369
        mmWidth = 11642
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel73: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label73'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Valor R$'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 98161
        mmTop = 32015
        mmWidth = 11642
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel74: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label74'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Vencimento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 118905
        mmTop = 31750
        mmWidth = 14605
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel75: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label75'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'DESCONTO DE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3175
        mmLeft = 33867
        mmTop = 47096
        mmWidth = 19315
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel76: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label76'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'CONDI'#199#213'ES ESPECIAIS:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3175
        mmLeft = 33867
        mmTop = 50536
        mmWidth = 30427
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel77: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label77'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'AT'#201
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3175
        mmLeft = 114565
        mmTop = 47096
        mmWidth = 5503
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine53: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line53'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10000
        mmLeft = 52917
        mmTop = 99484
        mmWidth = 265
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine54: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line54'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 33867
        mmTop = 99484
        mmWidth = 152665
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel78: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label78'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'VALOR POR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 35190
        mmTop = 100806
        mmWidth = 16510
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel79: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label79'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'EXTENSO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 35190
        mmTop = 105040
        mmWidth = 16404
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel80: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label80'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'NOME DO SACADO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 35190
        mmTop = 64029
        mmWidth = 30480
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel81: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label801'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'ENDERE'#199'O:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3704
        mmLeft = 46567
        mmTop = 71173
        mmWidth = 19050
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel82: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label82'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'MUNIC'#205'PIO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3704
        mmLeft = 48154
        mmTop = 77788
        mmWidth = 17463
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel83: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label83'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'PRA'#199'A DE PGTO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3704
        mmLeft = 38629
        mmTop = 84402
        mmWidth = 26988
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel84: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label84'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'INSCR. NO CNPJ N'#186':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3704
        mmLeft = 34660
        mmTop = 91017
        mmWidth = 30956
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel85: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label85'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'INSCR. EST N'#186':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 121179
        mmTop = 91017
        mmWidth = 22754
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel86: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label86'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'TELEFONE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 126471
        mmTop = 84402
        mmWidth = 17463
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel87: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label87'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'CEP:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 136525
        mmTop = 77788
        mmWidth = 7408
        BandType = 4
        LayerName = Foreground1
      end
      object ppImage1: TppImage
        DesignLayer = ppDesignLayer2
        UserName = 'Image1'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Picture.Data = {
          07544269746D6170FA060000424DFA0600000000000076000000280000001100
          00008B000000010004000000000084060000C40E0000C40E0000100000000000
          0000000000000000800000800000008080008000000080008000808000008080
          8000C0C0C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
          FF00FFFFFFFFFFFFFFFFF0000000FFFFFFFFFFFFFFFFF0000000FFFFFFFFFF00
          FFFFF0000000FFFFFFFF00FFFFFFF0000000FFFFFF000FFFFFFFF0000000FFF0
          00FF0FFFFFFFF0000000FF0FFFFF0FFFFFFFF0000000FFF000FF0FFFFFFFF000
          0000FFFFFF000FFFFFFFF0000000FFFFFFFF00FFFFFFF0000000FFFFFFFFFF00
          FFFFF0000000FFFFFFFFFFFFFFFFF0000000FFFFFF00FF0FFFFFF0000000FFFF
          F0FF0FF0FFFFF0000000FFFFF0FF0FF0FFFFF0000000FFFFF0FF0FF0FFFFF000
          0000FFFFFF0FF00FFFFFF0000000FFFFFFFFFFFFFFFFF0000000FFFFFFFFFFFF
          FFFFF0000000FFFFFF00FF0FFFFFF0000000FFFFF0FF0FF0FFFFF0000000FFFF
          F0FF0FF0FFFFF0000000FFFFF0FF0FF0FFFFF0000000FFFFFF0FF00FFFFFF000
          0000FFFFFFFFFFFFFFFFF0000000FFFFFFFFFFFFFFFFF0000000FF0FF0000000
          FFFFF0000000FFFFFFFFFFFFFFFFF0000000FFFFFFFFFFFFFFFFF0000000FFFF
          F0000000FFFFF0000000FFFFFF0FFFFFFFFFF0000000FFFFF0FFFFFFFFFFF000
          0000FFFFF0FFFFFFFFFFF0000000FFFFFF000000FFFFF0000000FFFFFFFFFFFF
          FFFFF0000000FFFFFFFFFFFFFFFFF0000000FFFFFF0FF00FFFFFF0000000FFFF
          F0FF0FF0FFFFF0000000FFFFF0FF0FF0FFFFF0000000FFFFF0FF0F0FFFFFF000
          0000FFFFFF000000FFFFF0000000FFFFFFFFFFFFFFFFF0000000FFFFF0FFFFFF
          FFFFF0000000FFF000000000FFFFF0000000FFFFF0FFFFF0FFFFF0000000FFFF
          FFFFFFFFFFFFF0000000FFFFFFFFFFFFFFFFF0000000FFFFF000000FFFFFF000
          0000FFFFFFFFFFF0FFFFF0000000FFFFFFFFFFF0FFFFF0000000FFFFFFFFFFF0
          FFFFF0000000FFFFF0000000FFFFF0000000FFFFFFFFFFFFFFFFF0000000FFFF
          FFFFFFFFFFFFF0000000FFFFF0000000FFFFF0000000FFFFFF0FFFFFFFFFF000
          0000FFFFF0FFFFFFFFFFF0000000FFFFFFFFFFFFFFFFF0000000FFFFFF0FF00F
          FFFFF0000000FFFFF0FF0FF0FFFFF0000000FFFFF0FF0FF0FFFFF0000000FFFF
          F0FF0F0FFFFFF0000000FFFFFF000000FFFFF0000000FFFFFFFFFFFFFFFFF000
          0000FFFFFFFFFFFFFFFFF0000000FFFFFFFFFFFFFFFFF0000000FFFFFFFFFFFF
          FFFFF0000000FFFFFFFFFFFFFFFFF0000000FFFFFFFFFFFFFFFFF0000000FFFF
          FF00000FFFFFF0000000FFFFF0FFFFF0FFFFF0000000FFFFF0FFFFF0FFFFF000
          0000FFFFFF0FFFF0FFFFF0000000FF0000000000FFFFF0000000FFFFFFFFFFFF
          FFFFF0000000FFFFFFFFFFFFFFFFF0000000FFFFFF00000FFFFFF0000000FFFF
          F0FFFFF0FFFFF0000000FFFFF0FFFFF0FFFFF0000000FFFFF0FFFFF0FFFFF000
          0000FFFFFF00000FFFFFF0000000FFFFFFFFFFFFFFFFF0000000FFFFFFFFFFFF
          FFFFF0000000FFFFFFFFFFFFFFFFF0000000FFFFFFFFFFFFFFFFF0000000FFFF
          FFFFFFFFFFFFF0000000FFFFFFFFFFFFFFFFF0000000FF0000000000FFFFF000
          0000FF0FFF0FFFF0FFFFF0000000FF0FFF0FFFF0FFFFF0000000FF0FFF0FFFF0
          FFFFF0000000FF0FFF0FFFF0FFFFF0000000FF0FFF0FFFF0FFFFF0000000FF0F
          FF0FFFF0FFFFF0000000FFFFFFFFFFFFFFFFF0000000FFFFFFFFFFFFFFFFF000
          0000FFFFF0000000FFFFF0000000FFFFFF0FFFFFFFFFF0000000FFFFF0FFFFFF
          FFFFF0000000FFFFF0FFFFFFFFFFF0000000FFFFFF000000FFFFF0000000FFFF
          FF0FFFFFFFFFF0000000FFFFF0FFFFFFFFFFF0000000FFFFF0FFFFFFFFFFF000
          0000FFFFFF000000FFFFF0000000FFFFFFFFFFFFFFFFF0000000FFFFFFFFFFFF
          FFFFF0000000FF0FF0000000FFFFF0000000FFFFFFFFFFFFFFFFF0000000FFFF
          F0FFFFFFFFFFF0000000FFF000000000FFFFF0000000FFFFF0FFFFF0FFFFF000
          0000FFFFFFFFFFFFFFFFF0000000FFFFFFFFFFFFFFFFF0000000FFFFFF00000F
          FFFFF0000000FFFFF0FF0FF0FFFFF0000000FFFFF0FF0FF0FFFFF0000000FFFF
          F0FF0FF0FFFFF0000000FFFFFF000F0FFFFFF0000000FFFFFFFFFFFFFFFFF000
          0000FFFFFFFFFFFFFFFFF0000000FFFFF0000000FFFFF0000000FFFFFF0FFFFF
          FFFFF0000000FFFFF0FFFFFFFFFFF0000000FFFFF0FFFFFFFFFFF0000000FFFF
          FF000000FFFFF0000000FFFFFFFFFFFFFFFFF0000000FFFFF0FFFFFFFFFFF000
          0000FFF000000000FFFFF0000000FFFFF0FFFFF0FFFFF0000000FFFFFFFFFFFF
          FFFFF0000000FFFFFFFFFFFFFFFFF0000000FFFFFF00000FFFFFF0000000FFFF
          F0FF0FF0FFFFF0000000FFFFF0FF0FF0FFFFF0000000FFFFF0FF0FF0FFFFF000
          0000FFFFFF000F0FFFFFF0000000FFFFFFFFFFFFFFFFF0000000FFFFFFFFFFFF
          FFFFF0000000}
        mmHeight = 38365
        mmLeft = 27517
        mmTop = 49477
        mmWidth = 3440
        BandType = 4
        LayerName = Foreground1
      end
      object LOGO1: TppImage
        OnPrint = LOGO1Print
        DesignLayer = ppDesignLayer2
        UserName = 'LOGO1'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        Stretch = True
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        mmHeight = 23500
        mmLeft = 7673
        mmTop = 2117
        mmWidth = 23500
        BandType = 4
        LayerName = Foreground1
      end
      object LBL_EMPRESA: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'LBL_EMPRESA'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'LBL_EMPRESA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4057
        mmLeft = 33073
        mmTop = 4233
        mmWidth = 26035
        BandType = 4
        LayerName = Foreground1
      end
      object LBL_FONE: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'LBL_FONE'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'FONE / FAX'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4057
        mmLeft = 33073
        mmTop = 8731
        mmWidth = 19685
        BandType = 4
        LayerName = Foreground1
      end
      object LBL_ENDERECO: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'LBL_ENDERECO'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'ENDERECO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4057
        mmLeft = 33073
        mmTop = 13229
        mmWidth = 19897
        BandType = 4
        LayerName = Foreground1
      end
      object LBL_CNPJ: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'LBL_CNPJ'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'CNPJ'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4057
        mmLeft = 33073
        mmTop = 17727
        mmWidth = 9102
        BandType = 4
        LayerName = Foreground1
      end
      object ppShape2: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape2'
        mmHeight = 132027
        mmLeft = 3175
        mmTop = 148167
        mmWidth = 188913
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine56: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line56'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 3175
        mmTop = 175155
        mmWidth = 188913
        BandType = 4
        LayerName = Foreground1
      end
      object ppShape7: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape7'
        mmHeight = 80963
        mmLeft = 7938
        mmTop = 177007
        mmWidth = 23548
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine57: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line57'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 75671
        mmLeft = 25929
        mmTop = 179652
        mmWidth = 1058
        BandType = 4
        LayerName = Foreground1
      end
      object ppShape8: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape8'
        mmHeight = 11906
        mmLeft = 33867
        mmTop = 177007
        mmWidth = 106098
        BandType = 4
        LayerName = Foreground1
      end
      object ppShape9: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape9'
        mmHeight = 26988
        mmLeft = 141817
        mmTop = 177007
        mmWidth = 44979
        BandType = 4
        LayerName = Foreground1
      end
      object ppShape10: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape10'
        mmHeight = 51065
        mmLeft = 33867
        mmTop = 206905
        mmWidth = 152929
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel89: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label89'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 
          'Reconhe'#231'o(emos) a exatid'#227'o desta DUPLICATA DE VENDA MERCANTIL/PR' +
          'ESTA'#199#195'O DE SERVI'#199'OS, na import'#226'ncia acima que pagarei(mos)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3175
        mmLeft = 4763
        mmTop = 260351
        mmWidth = 179917
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel90: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label201'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = #224' ou '#224' sua ordem na pra'#231'a e vencimento indicados.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3175
        mmLeft = 4763
        mmTop = 263261
        mmWidth = 63500
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel91: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label91'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Em'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3704
        mmLeft = 9525
        mmTop = 271992
        mmWidth = 6085
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel92: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label92'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = '______/______/______'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3704
        mmLeft = 16404
        mmTop = 271992
        mmWidth = 32279
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel93: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label601'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Data do aceite'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3704
        mmLeft = 21696
        mmTop = 275432
        mmWidth = 21167
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel94: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label94'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = '______________________________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3704
        mmLeft = 135732
        mmTop = 271992
        mmWidth = 50800
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel95: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label95'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Assinatura do Sacado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 145521
        mmTop = 275432
        mmWidth = 32808
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel96: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label96'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'PARA USO DA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 156104
        mmTop = 177800
        mmWidth = 19579
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel97: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label97'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'INSTITUI'#199#195'O FINANCEIRA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 147373
        mmTop = 180711
        mmWidth = 33338
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine58: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line58'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 2381
        mmLeft = 33867
        mmTop = 183357
        mmWidth = 106098
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine59: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line59'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11642
        mmLeft = 51065
        mmTop = 177007
        mmWidth = 265
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine60: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line502'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11642
        mmLeft = 70379
        mmTop = 177007
        mmWidth = 265
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine61: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line61'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11642
        mmLeft = 92604
        mmTop = 177007
        mmWidth = 265
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine62: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line62'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11642
        mmLeft = 116946
        mmTop = 177007
        mmWidth = 265
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel98: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label98'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Duplicata'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 20
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 8467
        mmLeft = 156100
        mmTop = 150284
        mmWidth = 31750
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel99: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label99'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Data de Emiss'#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 158220
        mmTop = 159809
        mmWidth = 27781
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel100: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label100'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Fatura N'#186
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 36777
        mmTop = 179917
        mmWidth = 11906
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel101: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Fatura'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 54504
        mmTop = 177536
        mmWidth = 10848
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel102: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label3'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Valor R$'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 54504
        mmTop = 180182
        mmWidth = 10848
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel103: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label701'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Duplicata'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 75936
        mmTop = 177536
        mmWidth = 11642
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel104: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label104'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'N'#186' de Ordem'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 73554
        mmTop = 180182
        mmWidth = 16140
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel105: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label105'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Duplicata'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 98161
        mmTop = 177536
        mmWidth = 11642
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel106: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label106'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Valor R$'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 98161
        mmTop = 180182
        mmWidth = 11642
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel107: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label107'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Vencimento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 118798
        mmTop = 179917
        mmWidth = 14552
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel108: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label108'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'DESCONTO DE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3175
        mmLeft = 33867
        mmTop = 195263
        mmWidth = 19315
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel109: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label109'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'CONDI'#199#213'ES ESPECIAIS:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3175
        mmLeft = 33867
        mmTop = 198702
        mmWidth = 30163
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel110: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label110'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'AT'#201
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3175
        mmLeft = 114565
        mmTop = 195263
        mmWidth = 5556
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine63: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line63'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10054
        mmLeft = 52917
        mmTop = 247650
        mmWidth = 265
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine64: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line64'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 33867
        mmTop = 247650
        mmWidth = 152665
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel111: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label111'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'VALOR POR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 35190
        mmTop = 248973
        mmWidth = 16404
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel112: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label112'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'EXTENSO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 35190
        mmTop = 253207
        mmWidth = 16404
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel113: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label802'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'NOME DO SACADO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 35190
        mmTop = 212196
        mmWidth = 30427
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel114: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label114'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'ENDERE'#199'O:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3704
        mmLeft = 46567
        mmTop = 219340
        mmWidth = 19050
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel115: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label115'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'MUNIC'#205'PIO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3704
        mmLeft = 48154
        mmTop = 225955
        mmWidth = 17463
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel116: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label116'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'PRA'#199'A DE PGTO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3704
        mmLeft = 38629
        mmTop = 232569
        mmWidth = 26988
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel117: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label117'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'INSCR. NO CNPJ N'#186':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3704
        mmLeft = 34660
        mmTop = 239184
        mmWidth = 30956
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel118: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label118'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'INSCR. EST N'#186':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 121179
        mmTop = 239184
        mmWidth = 22754
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel119: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label119'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'TELEFONE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 126471
        mmTop = 232569
        mmWidth = 17463
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel120: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label120'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'CEP:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 136525
        mmTop = 225955
        mmWidth = 7408
        BandType = 4
        LayerName = Foreground1
      end
      object LBL_EXTENSO2: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'LBL_EXTENSO2'
        CharWrap = True
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'LBL_EXTENSO2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        WordWrap = True
        mmHeight = 8202
        mmLeft = 53975
        mmTop = 248709
        mmWidth = 132027
        BandType = 4
        LayerName = Foreground1
      end
      object ppImage2: TppImage
        DesignLayer = ppDesignLayer2
        UserName = 'Image2'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Picture.Data = {
          07544269746D6170FA060000424DFA0600000000000076000000280000001100
          00008B000000010004000000000084060000C40E0000C40E0000100000000000
          0000000000000000800000800000008080008000000080008000808000008080
          8000C0C0C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
          FF00FFFFFFFFFFFFFFFFF0000000FFFFFFFFFFFFFFFFF0000000FFFFFFFFFF00
          FFFFF0000000FFFFFFFF00FFFFFFF0000000FFFFFF000FFFFFFFF0000000FFF0
          00FF0FFFFFFFF0000000FF0FFFFF0FFFFFFFF0000000FFF000FF0FFFFFFFF000
          0000FFFFFF000FFFFFFFF0000000FFFFFFFF00FFFFFFF0000000FFFFFFFFFF00
          FFFFF0000000FFFFFFFFFFFFFFFFF0000000FFFFFF00FF0FFFFFF0000000FFFF
          F0FF0FF0FFFFF0000000FFFFF0FF0FF0FFFFF0000000FFFFF0FF0FF0FFFFF000
          0000FFFFFF0FF00FFFFFF0000000FFFFFFFFFFFFFFFFF0000000FFFFFFFFFFFF
          FFFFF0000000FFFFFF00FF0FFFFFF0000000FFFFF0FF0FF0FFFFF0000000FFFF
          F0FF0FF0FFFFF0000000FFFFF0FF0FF0FFFFF0000000FFFFFF0FF00FFFFFF000
          0000FFFFFFFFFFFFFFFFF0000000FFFFFFFFFFFFFFFFF0000000FF0FF0000000
          FFFFF0000000FFFFFFFFFFFFFFFFF0000000FFFFFFFFFFFFFFFFF0000000FFFF
          F0000000FFFFF0000000FFFFFF0FFFFFFFFFF0000000FFFFF0FFFFFFFFFFF000
          0000FFFFF0FFFFFFFFFFF0000000FFFFFF000000FFFFF0000000FFFFFFFFFFFF
          FFFFF0000000FFFFFFFFFFFFFFFFF0000000FFFFFF0FF00FFFFFF0000000FFFF
          F0FF0FF0FFFFF0000000FFFFF0FF0FF0FFFFF0000000FFFFF0FF0F0FFFFFF000
          0000FFFFFF000000FFFFF0000000FFFFFFFFFFFFFFFFF0000000FFFFF0FFFFFF
          FFFFF0000000FFF000000000FFFFF0000000FFFFF0FFFFF0FFFFF0000000FFFF
          FFFFFFFFFFFFF0000000FFFFFFFFFFFFFFFFF0000000FFFFF000000FFFFFF000
          0000FFFFFFFFFFF0FFFFF0000000FFFFFFFFFFF0FFFFF0000000FFFFFFFFFFF0
          FFFFF0000000FFFFF0000000FFFFF0000000FFFFFFFFFFFFFFFFF0000000FFFF
          FFFFFFFFFFFFF0000000FFFFF0000000FFFFF0000000FFFFFF0FFFFFFFFFF000
          0000FFFFF0FFFFFFFFFFF0000000FFFFFFFFFFFFFFFFF0000000FFFFFF0FF00F
          FFFFF0000000FFFFF0FF0FF0FFFFF0000000FFFFF0FF0FF0FFFFF0000000FFFF
          F0FF0F0FFFFFF0000000FFFFFF000000FFFFF0000000FFFFFFFFFFFFFFFFF000
          0000FFFFFFFFFFFFFFFFF0000000FFFFFFFFFFFFFFFFF0000000FFFFFFFFFFFF
          FFFFF0000000FFFFFFFFFFFFFFFFF0000000FFFFFFFFFFFFFFFFF0000000FFFF
          FF00000FFFFFF0000000FFFFF0FFFFF0FFFFF0000000FFFFF0FFFFF0FFFFF000
          0000FFFFFF0FFFF0FFFFF0000000FF0000000000FFFFF0000000FFFFFFFFFFFF
          FFFFF0000000FFFFFFFFFFFFFFFFF0000000FFFFFF00000FFFFFF0000000FFFF
          F0FFFFF0FFFFF0000000FFFFF0FFFFF0FFFFF0000000FFFFF0FFFFF0FFFFF000
          0000FFFFFF00000FFFFFF0000000FFFFFFFFFFFFFFFFF0000000FFFFFFFFFFFF
          FFFFF0000000FFFFFFFFFFFFFFFFF0000000FFFFFFFFFFFFFFFFF0000000FFFF
          FFFFFFFFFFFFF0000000FFFFFFFFFFFFFFFFF0000000FF0000000000FFFFF000
          0000FF0FFF0FFFF0FFFFF0000000FF0FFF0FFFF0FFFFF0000000FF0FFF0FFFF0
          FFFFF0000000FF0FFF0FFFF0FFFFF0000000FF0FFF0FFFF0FFFFF0000000FF0F
          FF0FFFF0FFFFF0000000FFFFFFFFFFFFFFFFF0000000FFFFFFFFFFFFFFFFF000
          0000FFFFF0000000FFFFF0000000FFFFFF0FFFFFFFFFF0000000FFFFF0FFFFFF
          FFFFF0000000FFFFF0FFFFFFFFFFF0000000FFFFFF000000FFFFF0000000FFFF
          FF0FFFFFFFFFF0000000FFFFF0FFFFFFFFFFF0000000FFFFF0FFFFFFFFFFF000
          0000FFFFFF000000FFFFF0000000FFFFFFFFFFFFFFFFF0000000FFFFFFFFFFFF
          FFFFF0000000FF0FF0000000FFFFF0000000FFFFFFFFFFFFFFFFF0000000FFFF
          F0FFFFFFFFFFF0000000FFF000000000FFFFF0000000FFFFF0FFFFF0FFFFF000
          0000FFFFFFFFFFFFFFFFF0000000FFFFFFFFFFFFFFFFF0000000FFFFFF00000F
          FFFFF0000000FFFFF0FF0FF0FFFFF0000000FFFFF0FF0FF0FFFFF0000000FFFF
          F0FF0FF0FFFFF0000000FFFFFF000F0FFFFFF0000000FFFFFFFFFFFFFFFFF000
          0000FFFFFFFFFFFFFFFFF0000000FFFFF0000000FFFFF0000000FFFFFF0FFFFF
          FFFFF0000000FFFFF0FFFFFFFFFFF0000000FFFFF0FFFFFFFFFFF0000000FFFF
          FF000000FFFFF0000000FFFFFFFFFFFFFFFFF0000000FFFFF0FFFFFFFFFFF000
          0000FFF000000000FFFFF0000000FFFFF0FFFFF0FFFFF0000000FFFFFFFFFFFF
          FFFFF0000000FFFFFFFFFFFFFFFFF0000000FFFFFF00000FFFFFF0000000FFFF
          F0FF0FF0FFFFF0000000FFFFF0FF0FF0FFFFF0000000FFFFF0FF0FF0FFFFF000
          0000FFFFFF000F0FFFFFF0000000FFFFFFFFFFFFFFFFF0000000FFFFFFFFFFFF
          FFFFF0000000}
        mmHeight = 38365
        mmLeft = 27517
        mmTop = 197644
        mmWidth = 3440
        BandType = 4
        LayerName = Foreground1
      end
      object LOGO2: TppImage
        DesignLayer = ppDesignLayer2
        UserName = 'LOGO2'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        Stretch = True
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        mmHeight = 23500
        mmLeft = 7673
        mmTop = 150284
        mmWidth = 23548
        BandType = 4
        LayerName = Foreground1
      end
      object LBL_EMPRESA1: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'LBL_EMPRESA1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'LBL_EMPRESA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4057
        mmLeft = 33073
        mmTop = 152400
        mmWidth = 26035
        BandType = 4
        LayerName = Foreground1
      end
      object LBL_FONE1: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'LBL_FONE1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'FONE / FAX'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 33073
        mmTop = 156898
        mmWidth = 19579
        BandType = 4
        LayerName = Foreground1
      end
      object LBL_ENDERECO1: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'LBL_ENDERECO1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'ENDERECO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 33073
        mmTop = 161396
        mmWidth = 19844
        BandType = 4
        LayerName = Foreground1
      end
      object LBL_CNPJ1: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'LBL_CNPJ1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'CNPJ'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 33073
        mmTop = 165894
        mmWidth = 8996
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText5'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'FPC_DTEMIS'
        DataPipeline = ppDBDupl
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBDupl'
        mmHeight = 3704
        mmLeft = 158221
        mmTop = 15875
        mmWidth = 28046
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBFatura: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBFatura'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'FAT_CODIGO'
        DataPipeline = ppDBDupl
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBDupl'
        mmHeight = 3704
        mmLeft = 71438
        mmTop = 35983
        mmWidth = 15875
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText10'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'FAT_VLFAT'
        DataPipeline = ppDBDupl
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBDupl'
        mmHeight = 3704
        mmLeft = 51858
        mmTop = 35983
        mmWidth = 17992
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText11: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText101'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'FPC_VLPARC'
        DataPipeline = ppDBDupl
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBDupl'
        mmHeight = 3704
        mmLeft = 93398
        mmTop = 35983
        mmWidth = 23019
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText12: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText12'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'FPC_VENCTO'
        DataPipeline = ppDBDupl
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBDupl'
        mmHeight = 3704
        mmLeft = 118269
        mmTop = 35983
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBCNPJ1: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBCNPJ1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'CLI_CGC'
        DataPipeline = ppDBDupl
        DisplayFormat = '99\.999\.999\/9999\-99;0;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBDupl'
        mmHeight = 3704
        mmLeft = 66411
        mmTop = 91017
        mmWidth = 51594
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBFONE1: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBFONE1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'CLI_FONE'
        DataPipeline = ppDBDupl
        DisplayFormat = '\(999\)9999\-9999;0;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBDupl'
        mmHeight = 3704
        mmLeft = 144727
        mmTop = 84402
        mmWidth = 35454
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBINSCR1: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBINSCR1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'CLI_INSC'
        DataPipeline = ppDBDupl
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBDupl'
        mmHeight = 3704
        mmLeft = 144727
        mmTop = 91017
        mmWidth = 35454
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText69: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText69'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'FPC_DTEMIS'
        DataPipeline = ppDBDupl
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBDupl'
        mmHeight = 3704
        mmLeft = 158220
        mmTop = 164042
        mmWidth = 28046
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBFatura2: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBFatura2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'FAT_CODIGO'
        DataPipeline = ppDBDupl
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBDupl'
        mmHeight = 3704
        mmLeft = 71438
        mmTop = 184415
        mmWidth = 15875
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText71: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText102'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'FAT_VLFAT'
        DataPipeline = ppDBDupl
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBDupl'
        mmHeight = 3704
        mmLeft = 51858
        mmTop = 184415
        mmWidth = 17992
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText72: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText72'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'FPC_VLPARC'
        DataPipeline = ppDBDupl
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBDupl'
        mmHeight = 3704
        mmLeft = 93398
        mmTop = 184415
        mmWidth = 23019
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText73: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText73'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'FPC_VENCTO'
        DataPipeline = ppDBDupl
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBDupl'
        mmHeight = 3704
        mmLeft = 118269
        mmTop = 184415
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBRAZAO2: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBRAZAO2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'CLI_RAZAO'
        DataPipeline = ppDBDupl
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBDupl'
        mmHeight = 3704
        mmLeft = 66411
        mmTop = 212196
        mmWidth = 113771
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBCNPJ2: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBCNPJ2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'CLI_CGC'
        DataPipeline = ppDBDupl
        DisplayFormat = '99\.999\.999\/9999\-99;0;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBDupl'
        mmHeight = 3704
        mmLeft = 66411
        mmTop = 239184
        mmWidth = 51594
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBINSCR2: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBINSCR2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'CLI_INSC'
        DataPipeline = ppDBDupl
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBDupl'
        mmHeight = 3704
        mmLeft = 144727
        mmTop = 239184
        mmWidth = 35454
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBFONE2: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBFONE2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'CLI_FONE'
        DataPipeline = ppDBDupl
        DisplayFormat = '\(999\)9999\-9999;0;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBDupl'
        mmHeight = 3704
        mmLeft = 144727
        mmTop = 232569
        mmWidth = 35454
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBRAZAO1: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBRAZAO1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'CLI_RAZAO'
        DataPipeline = ppDBDupl
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBDupl'
        mmHeight = 3704
        mmLeft = 66411
        mmTop = 64029
        mmWidth = 113771
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBCep: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBCep'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'CLI_CEP'
        DataPipeline = ppDBDupl
        DisplayFormat = '99\.999\-999;0;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBDupl'
        mmHeight = 3704
        mmLeft = 144727
        mmTop = 77788
        mmWidth = 35454
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBCep_Fat: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBCep_Fat'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'CLI_CEPFAT'
        DataPipeline = ppDBDupl
        DisplayFormat = '99\.999\-999;0;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        Visible = False
        DataPipelineName = 'ppDBDupl'
        mmHeight = 3704
        mmLeft = 144727
        mmTop = 74083
        mmWidth = 35454
        BandType = 4
        LayerName = Foreground1
      end
      object ppDB_END1: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DB_END1'
        HyperlinkEnabled = False
        AutoSize = True
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataPipeline = ppDBDupl
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBDupl'
        mmHeight = 3968
        mmLeft = 66411
        mmTop = 71438
        mmWidth = 14022
        BandType = 4
        LayerName = Foreground1
      end
      object ppDB_MUN1: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DB_MUN1'
        HyperlinkEnabled = False
        AutoSize = True
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataPipeline = ppDBDupl
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBDupl'
        mmHeight = 3968
        mmLeft = 66411
        mmTop = 77788
        mmWidth = 14816
        BandType = 4
        LayerName = Foreground1
      end
      object ppDB_PRAC1: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DB_PRAC1'
        HyperlinkEnabled = False
        AutoSize = True
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataPipeline = ppDBDupl
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBDupl'
        mmHeight = 3969
        mmLeft = 66411
        mmTop = 84402
        mmWidth = 16404
        BandType = 4
        LayerName = Foreground1
      end
      object ppDB_END2: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DB_END2'
        HyperlinkEnabled = False
        AutoSize = True
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataPipeline = ppDBDupl
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBDupl'
        mmHeight = 3969
        mmLeft = 66411
        mmTop = 219340
        mmWidth = 14022
        BandType = 4
        LayerName = Foreground1
      end
      object ppDB_MUN2: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DB_MUN2'
        HyperlinkEnabled = False
        AutoSize = True
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataPipeline = ppDBDupl
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBDupl'
        mmHeight = 3968
        mmLeft = 66411
        mmTop = 225955
        mmWidth = 14816
        BandType = 4
        LayerName = Foreground1
      end
      object ppDB_PRAC2: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DB_PRAC2'
        HyperlinkEnabled = False
        AutoSize = True
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataPipeline = ppDBDupl
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBDupl'
        mmHeight = 3969
        mmLeft = 66411
        mmTop = 232569
        mmWidth = 16404
        BandType = 4
        LayerName = Foreground1
      end
      object ppDB_CEP2: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DB_CEP2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'CLI_CEP'
        DataPipeline = ppDBDupl
        DisplayFormat = '99\.999\-999;0;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBDupl'
        mmHeight = 3704
        mmLeft = 144727
        mmTop = 225955
        mmWidth = 35454
        BandType = 4
        LayerName = Foreground1
      end
      object ppDB_CEP2FAT: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DB_CEP2FAT'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'CLI_CEPFAT'
        DataPipeline = ppDBDupl
        DisplayFormat = '99\.999-999;0;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        Visible = False
        DataPipelineName = 'ppDBDupl'
        mmHeight = 3704
        mmLeft = 144727
        mmTop = 222250
        mmWidth = 35454
        BandType = 4
        LayerName = Foreground1
      end
      object LBL_EXTENSO1: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'LBL_EXTENSO1'
        CharWrap = True
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'LBL_EXTENSO1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        WordWrap = True
        mmHeight = 8202
        mmLeft = 53975
        mmTop = 100542
        mmWidth = 132027
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText9'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'FAT_CODIGO'
        DataPipeline = ppDBDupl
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBDupl'
        mmHeight = 3704
        mmLeft = 34925
        mmTop = 35983
        mmWidth = 15875
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText27: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText27'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'FAT_CODIGO'
        DataPipeline = ppDBDupl
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBDupl'
        mmHeight = 3704
        mmLeft = 34660
        mmTop = 184415
        mmWidth = 15875
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBMemo2: TppDBMemo
        DesignLayer = ppDesignLayer2
        UserName = 'DBMemo2'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        CharWrap = True
        DataField = 'FPC_OBS'
        DataPipeline = ppDBDupl
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        RemoveEmptyLines = False
        TextAlignment = taFullJustified
        Transparent = True
        DataPipelineName = 'ppDBDupl'
        mmHeight = 3969
        mmLeft = 33867
        mmTop = 54240
        mmWidth = 107421
        BandType = 4
        LayerName = Foreground1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppDBMemo1: TppDBMemo
        DesignLayer = ppDesignLayer2
        UserName = 'DBMemo1'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        CharWrap = True
        DataField = 'FPC_OBS'
        DataPipeline = ppDBDupl
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        RemoveEmptyLines = False
        TextAlignment = taFullJustified
        Transparent = True
        DataPipelineName = 'ppDBDupl'
        mmHeight = 3969
        mmLeft = 33867
        mmTop = 202407
        mmWidth = 107421
        BandType = 4
        LayerName = Foreground1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
    end
    object raCodeModule1: TraCodeModule
      object raProgramInfo1: TraProgramInfo
        raClassName = 'TraEventHandler'
        raProgram.ProgramName = 'DBFaturaOnGetText'
        raProgram.ProgramType = ttProcedure
        raProgram.Source = 
          'procedure DBFaturaOnGetText(var Text: String);'#13#10'begin'#13#10'  if (DBD' +
          'upl['#39'FPC_NUMER'#39']<>'#39#39') then'#13#10'     Text := DBDupl['#39'FAT_CODIGO'#39']+'#39'/' +
          #39'+DBDupl['#39'FPC_NUMER'#39']'#13#10'  else'#13#10'     Text := DBDupl['#39'FAT_CODIGO'#39']' +
          ';'#13#10'end;'#13#10
        raProgram.ComponentName = 'DBFatura'
        raProgram.EventName = 'OnGetText'
        raProgram.EventID = 53
      end
      object raProgramInfo2: TraProgramInfo
        raClassName = 'TraEventHandler'
        raProgram.ProgramName = 'DBFatura2OnGetText'
        raProgram.ProgramType = ttProcedure
        raProgram.Source = 
          'procedure DBFatura2OnGetText(var Text: String);'#13#10'begin'#13#10'  if (DB' +
          'Dupl['#39'FPC_NUMER'#39']<>'#39#39') then'#13#10'     Text := DBDupl['#39'FAT_CODIGO'#39']+'#39 +
          '/'#39'+DBDupl['#39'FPC_NUMER'#39']'#13#10'  else'#13#10'     Text := DBDupl['#39'FAT_CODIGO'#39 +
          '];'#13#10'end;'#13#10
        raProgram.ComponentName = 'DBFatura2'
        raProgram.EventName = 'OnGetText'
        raProgram.EventID = 53
        raProgram.CaretPos = (
          3
          3)
      end
      object raProgramInfo3: TraProgramInfo
        raClassName = 'TraEventHandler'
        raProgram.ProgramName = 'DBCepOnPrint'
        raProgram.ProgramType = ttProcedure
        raProgram.Source = 
          'procedure DBCepOnPrint;'#13#10'begin'#13#10'    if (DBDupl['#39'CLI_CIDFAT'#39']='#39#39')' +
          ' and (DBDupl['#39'CLI_CEPFAT'#39']='#39#39') then'#13#10'       begin'#13#10'           DB' +
          'Cep.Visible     := True;'#13#10'           DBCep_Fat.Visible := False;' +
          #13#10'       end'#13#10'    else'#13#10'       begin'#13#10'           DBCep.Visible  ' +
          '   := False;'#13#10'           DBCep_Fat.Top     := 77.788;'#13#10'         ' +
          '  DBCep_Fat.Visible := True;'#13#10'       end;'#13#10'end;'#13#10
        raProgram.ComponentName = 'DBCep'
        raProgram.EventName = 'OnPrint'
        raProgram.EventID = 32
        raProgram.CaretPos = (
          3
          3)
      end
      object raProgramInfo4: TraProgramInfo
        raClassName = 'TraEventHandler'
        raProgram.ProgramName = 'DB_END1OnGetText'
        raProgram.ProgramType = ttProcedure
        raProgram.Source = 
          'procedure DB_END1OnGetText(var Text: String);'#13#10'begin'#13#10'    if (DB' +
          'Dupl['#39'CLI_CIDFAT'#39']='#39#39') and (DBDupl['#39'CLI_CEPFAT'#39']='#39#39') then'#13#10'     ' +
          '  Text := DBDupl['#39'CLI_ENDERE'#39']'#13#10'    else'#13#10'       Text := DBDupl[' +
          #39'CLI_ENDFAT'#39'];  '#13#10'end;'#13#10
        raProgram.ComponentName = 'DB_END1'
        raProgram.EventName = 'OnGetText'
        raProgram.EventID = 53
      end
      object raProgramInfo5: TraProgramInfo
        raClassName = 'TraEventHandler'
        raProgram.ProgramName = 'DB_MUN1OnGetText'
        raProgram.ProgramType = ttProcedure
        raProgram.Source = 
          'procedure DB_MUN1OnGetText(var Text: String);'#13#10'begin'#13#10'    if (DB' +
          'Dupl['#39'CLI_CIDFAT'#39']='#39#39') and (DBDupl['#39'CLI_CEPFAT'#39']='#39#39') then'#13#10'     ' +
          '  Text := DBDupl['#39'CLI_CIDADE'#39']+'#39' - '#39'+DBDupl['#39'CLI_UF'#39']'#13#10'    else'#13 +
          #10'       Text := DBDupl['#39'CLI_CIDFAT'#39']+'#39' - '#39'+DBDupl['#39'CLI_UFFAT'#39'];'#13 +
          #10'end;'#13#10
        raProgram.ComponentName = 'DB_MUN1'
        raProgram.EventName = 'OnGetText'
        raProgram.EventID = 53
      end
      object raProgramInfo6: TraProgramInfo
        raClassName = 'TraEventHandler'
        raProgram.ProgramName = 'DB_PRAC1OnGetText'
        raProgram.ProgramType = ttProcedure
        raProgram.Source = 
          'procedure DB_PRAC1OnGetText(var Text: String);'#13#10'begin'#13#10'    if (D' +
          'BDupl['#39'CLI_CIDFAT'#39']='#39#39') and (DBDupl['#39'CLI_CEPFAT'#39']='#39#39') then'#13#10'    ' +
          '   Text := DBDupl['#39'CLI_CIDADE'#39']+'#39' - '#39'+DBDupl['#39'CLI_UF'#39']'#13#10'    else' +
          #13#10'       Text := DBDupl['#39'CLI_CIDFAT'#39']+'#39' - '#39'+DBDupl['#39'CLI_UFFAT'#39'];' +
          #13#10'end;'#13#10
        raProgram.ComponentName = 'DB_PRAC1'
        raProgram.EventName = 'OnGetText'
        raProgram.EventID = 53
      end
      object raProgramInfo7: TraProgramInfo
        raClassName = 'TraEventHandler'
        raProgram.ProgramName = 'DB_MUN2OnGetText'
        raProgram.ProgramType = ttProcedure
        raProgram.Source = 
          'procedure DB_MUN2OnGetText(var Text: String);'#13#10'begin'#13#10'    if (DB' +
          'Dupl['#39'CLI_CIDFAT'#39']='#39#39') and (DBDupl['#39'CLI_CEPFAT'#39']='#39#39') then'#13#10'     ' +
          '  Text := DBDupl['#39'CLI_CIDADE'#39']+'#39' - '#39'+DBDupl['#39'CLI_UF'#39']'#13#10'    else'#13 +
          #10'       Text := DBDupl['#39'CLI_CIDFAT'#39']+'#39' - '#39'+DBDupl['#39'CLI_UFFAT'#39'];'#13 +
          #10'end;'#13#10
        raProgram.ComponentName = 'DB_MUN2'
        raProgram.EventName = 'OnGetText'
        raProgram.EventID = 53
        raProgram.CaretPos = (
          3
          3)
      end
      object raProgramInfo8: TraProgramInfo
        raClassName = 'TraEventHandler'
        raProgram.ProgramName = 'DB_PRAC2OnGetText'
        raProgram.ProgramType = ttProcedure
        raProgram.Source = 
          'procedure DB_PRAC2OnGetText(var Text: String);'#13#10'begin'#13#10'    if (D' +
          'BDupl['#39'CLI_CIDFAT'#39']='#39#39') and (DBDupl['#39'CLI_CEPFAT'#39']='#39#39') then'#13#10'    ' +
          '   Text := DBDupl['#39'CLI_CIDADE'#39']+'#39' - '#39'+DBDupl['#39'CLI_UF'#39']'#13#10'    else' +
          #13#10'       Text := DBDupl['#39'CLI_CIDFAT'#39']+'#39' - '#39'+DBDupl['#39'CLI_UFFAT'#39'];' +
          #13#10'end;'#13#10
        raProgram.ComponentName = 'DB_PRAC2'
        raProgram.EventName = 'OnGetText'
        raProgram.EventID = 53
        raProgram.CaretPos = (
          3
          3)
      end
      object raProgramInfo9: TraProgramInfo
        raClassName = 'TraEventHandler'
        raProgram.ProgramName = 'DB_CEP2OnPrint'
        raProgram.ProgramType = ttProcedure
        raProgram.Source = 
          'procedure DB_CEP2OnPrint;'#13#10'begin'#13#10'    if (DBDupl['#39'CLI_CIDFAT'#39']='#39 +
          #39') and (DBDupl['#39'CLI_CEPFAT'#39']='#39#39') then'#13#10'       begin'#13#10'           ' +
          'DB_CEP2.Visible    := True;'#13#10'           DB_Cep2Fat.Visible := Fa' +
          'lse;'#13#10'       end'#13#10'    else'#13#10'       begin'#13#10'           DB_Cep2.Vis' +
          'ible    := False;'#13#10'           DB_Cep2Fat.Top     := 225.955;'#13#10'  ' +
          '         DB_Cep2Fat.Visible := True;'#13#10'       end;'#13#10'end;'#13#10
        raProgram.ComponentName = 'DB_CEP2'
        raProgram.EventName = 'OnPrint'
        raProgram.EventID = 32
        raProgram.CaretPos = (
          3
          3)
      end
      object raProgramInfo10: TraProgramInfo
        raClassName = 'TraEventHandler'
        raProgram.ProgramName = 'DB_END2OnGetText'
        raProgram.ProgramType = ttProcedure
        raProgram.Source = 
          'procedure DB_END2OnGetText(var Text: String);'#13#10'begin'#13#10'    if (DB' +
          'Dupl['#39'CLI_CIDFAT'#39']='#39#39') and (DBDupl['#39'CLI_CEPFAT'#39']='#39#39') then'#13#10'     ' +
          '  Text := DBDupl['#39'CLI_ENDERE'#39']'#13#10'    else'#13#10'       Text := DBDupl[' +
          #39'CLI_ENDFAT'#39'];  '#13#10'end;'#13#10
        raProgram.ComponentName = 'DB_END2'
        raProgram.EventName = 'OnGetText'
        raProgram.EventID = 53
      end
    end
    object ppDesignLayers2: TppDesignLayers
      object ppDesignLayer2: TppDesignLayer
        UserName = 'Foreground1'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList2: TppParameterList
    end
  end
  object ImageList1: TImageList
    Height = 15
    Left = 378
    Top = 10
    Bitmap = {
      494C010103000500180010000F00FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
  object qDuplicata: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select'
      'F1.FAT_REGISTRO,'
      'F1.FAT_CODIGO,'
      'F1.FPC_NUMER,'
      'F1.FPC_DTEMIS,'
      'F1.FPC_VENCTO,'
      'F1.CLI_CODIGO,'
      'C1.CLI_RAZAO,'
      'F1.FPC_VLPARC,'
      'F1.FPC_SITPAG,'
      'F1.FPC_COBNUM,'
      'F1.FPC_PREVISAO,'
      'F1.FPC_IMPDUP,'
      'F1.BAN_COD_APELIDO,'
      'F1.BAN_CODIGO,'
      'F1.FPC_COBTIPO,'
      'F1.FPC_TIPODOC,'
      'B1.BAN_APELIDO,'
      'F1.FPC_DATABOLETO '
      'from fat_pc01 F1'
      'JOIN CLI0000 C1 ON (C1.CLI_CODIGO = F1.CLI_CODIGO)'
      'JOIN BAN0000 B1 ON (B1.ban_codigo = F1.BAN_CODIGO)'
      'where F1.fpc_sitpag = '#39'P'#39' AND F1.FPC_PREVISAO = '#39'N'#39)
    SQLConnection = DataCadastros.SQLConnection1
    Left = 326
    Top = 378
    object qDuplicataFAT_REGISTRO: TIntegerField
      FieldName = 'FAT_REGISTRO'
      ProviderFlags = [pfInKey]
      Required = True
    end
    object qDuplicataFAT_CODIGO: TStringField
      FieldName = 'FAT_CODIGO'
      ProviderFlags = [pfInWhere]
      Required = True
      Size = 6
    end
    object qDuplicataFPC_NUMER: TStringField
      FieldName = 'FPC_NUMER'
      ProviderFlags = [pfInWhere]
      Size = 2
    end
    object qDuplicataFPC_DTEMIS: TSQLTimeStampField
      FieldName = 'FPC_DTEMIS'
      ProviderFlags = [pfInWhere]
    end
    object qDuplicataCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      ProviderFlags = [pfInWhere]
      Size = 5
    end
    object qDuplicataCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      ProviderFlags = [pfInWhere]
      Size = 55
    end
    object qDuplicataFPC_VLPARC: TFMTBCDField
      FieldName = 'FPC_VLPARC'
      ProviderFlags = [pfInWhere]
      Precision = 15
      Size = 4
    end
    object qDuplicataFPC_SITPAG: TStringField
      FieldName = 'FPC_SITPAG'
      ProviderFlags = [pfInWhere]
      Size = 1
    end
    object qDuplicataFPC_PREVISAO: TStringField
      FieldName = 'FPC_PREVISAO'
      ProviderFlags = [pfInWhere]
      Size = 1
    end
    object qDuplicataFPC_IMPDUP: TStringField
      FieldName = 'FPC_IMPDUP'
      ProviderFlags = [pfInWhere]
      Size = 1
    end
    object qDuplicataBAN_COD_APELIDO: TIntegerField
      FieldName = 'BAN_COD_APELIDO'
      ProviderFlags = [pfInWhere]
    end
    object qDuplicataBAN_CODIGO: TStringField
      FieldName = 'BAN_CODIGO'
      ProviderFlags = [pfInWhere]
      Size = 4
    end
    object qDuplicataFPC_COBTIPO: TStringField
      FieldName = 'FPC_COBTIPO'
      ProviderFlags = [pfInWhere]
      Size = 2
    end
    object qDuplicataFPC_TIPODOC: TStringField
      FieldName = 'FPC_TIPODOC'
      ProviderFlags = [pfInWhere]
      Size = 2
    end
    object qDuplicataBAN_APELIDO: TStringField
      FieldName = 'BAN_APELIDO'
      ProviderFlags = [pfInWhere]
      Size = 25
    end
    object qDuplicataFPC_VENCTO: TSQLTimeStampField
      FieldName = 'FPC_VENCTO'
    end
    object qDuplicataFPC_COBNUM: TStringField
      FieldName = 'FPC_COBNUM'
      Size = 17
    end
    object qDuplicataFPC_DATABOLETO: TSQLTimeStampField
      FieldName = 'FPC_DATABOLETO'
    end
    object qDuplicataFPC_ENVIOEMAIL_BOLETO: TStringField
      FieldName = 'FPC_ENVIOEMAIL_BOLETO'
      Size = 1
    end
    object qDuplicataFPC_OBS: TStringField
      FieldName = 'FPC_OBS'
      Size = 500
    end
    object qDuplicataEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 150
    end
    object qDuplicataFPC_NPARCELAS: TSmallintField
      FieldName = 'FPC_NPARCELAS'
    end
    object qDuplicatarep_nome: TStringField
      FieldName = 'rep_nome'
      Size = 35
    end
    object qDuplicataFPC_STATUS: TStringField
      FieldName = 'FPC_STATUS'
      Size = 30
    end
  end
  object dspDuplicata: TDataSetProvider
    DataSet = qDuplicata
    Options = [poAllowCommandText]
    Left = 390
    Top = 378
  end
  object cdsDuplicata: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPDuplicata'
    AfterScroll = cdsDuplicataAfterScroll
    OnCalcFields = cdsDuplicataCalcFields
    Left = 462
    Top = 378
    object cdsDuplicataFAT_REGISTRO: TIntegerField
      FieldName = 'FAT_REGISTRO'
      ProviderFlags = [pfInKey]
      Required = True
    end
    object cdsDuplicataFAT_CODIGO: TStringField
      FieldName = 'FAT_CODIGO'
      ProviderFlags = [pfInWhere]
      Required = True
      Size = 6
    end
    object cdsDuplicataFPC_NUMER: TStringField
      FieldName = 'FPC_NUMER'
      ProviderFlags = [pfInWhere]
      OnGetText = cdsDuplicataFPC_NUMERGetText
      Size = 2
    end
    object cdsDuplicataFPC_DTEMIS: TSQLTimeStampField
      FieldName = 'FPC_DTEMIS'
      ProviderFlags = [pfInWhere]
    end
    object cdsDuplicataCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      ProviderFlags = [pfInWhere]
      Size = 5
    end
    object cdsDuplicataCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      ProviderFlags = [pfInWhere]
      Size = 55
    end
    object cdsDuplicataFPC_VLPARC: TFMTBCDField
      FieldName = 'FPC_VLPARC'
      ProviderFlags = [pfInWhere]
      DisplayFormat = '###,###,##0.00'
      Precision = 15
      Size = 4
    end
    object cdsDuplicataFPC_SITPAG: TStringField
      FieldName = 'FPC_SITPAG'
      ProviderFlags = [pfInWhere]
      Size = 1
    end
    object cdsDuplicataFPC_PREVISAO: TStringField
      FieldName = 'FPC_PREVISAO'
      ProviderFlags = [pfInWhere]
      Size = 1
    end
    object cdsDuplicataFPC_IMPDUP: TStringField
      FieldName = 'FPC_IMPDUP'
      ProviderFlags = [pfInWhere]
      Size = 1
    end
    object cdsDuplicataBAN_COD_APELIDO: TIntegerField
      FieldName = 'BAN_COD_APELIDO'
      ProviderFlags = [pfInWhere]
    end
    object cdsDuplicataBAN_CODIGO: TStringField
      FieldName = 'BAN_CODIGO'
      ProviderFlags = [pfInWhere]
      Size = 4
    end
    object cdsDuplicataFPC_COBTIPO: TStringField
      FieldName = 'FPC_COBTIPO'
      ProviderFlags = [pfInWhere]
      Size = 2
    end
    object cdsDuplicataFPC_TIPODOC: TStringField
      FieldName = 'FPC_TIPODOC'
      ProviderFlags = [pfInWhere]
      Size = 2
    end
    object cdsDuplicataBAN_APELIDO: TStringField
      FieldName = 'BAN_APELIDO'
      ProviderFlags = [pfInWhere]
      Size = 25
    end
    object cdsDuplicataSelecao: TBooleanField
      FieldKind = fkInternalCalc
      FieldName = 'Selecao'
      OnGetText = cdsDuplicataSelecaoGetText
    end
    object cdsDuplicataCOBRANCA_CC: TStringField
      FieldKind = fkCalculated
      FieldName = 'COBRANCA_CC'
      Size = 50
      Calculated = True
    end
    object cdsDuplicataTIPO_DOC_CC: TStringField
      FieldKind = fkCalculated
      FieldName = 'TIPO_DOC_CC'
      Size = 40
      Calculated = True
    end
    object cdsDuplicataFPC_VENCTO: TSQLTimeStampField
      FieldName = 'FPC_VENCTO'
    end
    object cdsDuplicataFPC_COBNUM: TStringField
      FieldName = 'FPC_COBNUM'
      Size = 17
    end
    object cdsDuplicataFPC_DATABOLETO: TSQLTimeStampField
      FieldName = 'FPC_DATABOLETO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsDuplicataEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 150
    end
    object cdsDuplicataFPC_OBS: TStringField
      FieldName = 'FPC_OBS'
      Size = 500
    end
    object cdsDuplicataFPC_ENVIOEMAIL_BOLETO: TStringField
      FieldName = 'FPC_ENVIOEMAIL_BOLETO'
      Size = 1
    end
    object cdsDuplicataFPC_NPARCELAS: TSmallintField
      FieldName = 'FPC_NPARCELAS'
    end
    object cdsDuplicatarep_nome: TStringField
      FieldName = 'rep_nome'
      Size = 35
    end
    object cdsDuplicataFPC_STATUS: TStringField
      FieldName = 'FPC_STATUS'
      Size = 30
    end
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
    Cedente.PIX.TipoChavePIX = tchNenhuma
    NumeroArquivo = 0
    ACBrBoletoFC = ImpBoleto
    Configuracoes.Arquivos.LogRegistro = False
    Configuracoes.WebService.SSLHttpLib = httpOpenSSL
    Configuracoes.WebService.StoreName = 'My'
    Configuracoes.WebService.Ambiente = taHomologacao
    Configuracoes.WebService.Operacao = tpInclui
    Configuracoes.WebService.VersaoDF = '1.2'
    Left = 800
    Top = 272
  end
  object ImpBoleto: TACBrBoletoFCFortes
    SoftwareHouse = 'Novi Sistemas'
    PrinterName = 'TESTE'
    Left = 856
    Top = 280
  end
  object PrinterSetupDialog1: TPrinterSetupDialog
    Left = 944
    Top = 280
  end
  object qBanco: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      '')
    SQLConnection = DBConn
    Left = 346
    Top = 116
  end
  object sslsocket: TIdSSLIOHandlerSocketOpenSSL
    MaxLineAction = maException
    Port = 0
    DefaultPort = 0
    SSLOptions.Mode = sslmUnassigned
    SSLOptions.VerifyMode = []
    SSLOptions.VerifyDepth = 0
    Left = 60
    Top = 9
  end
  object SMTP: TIdSMTP
    SASLMechanisms = <>
    Left = 104
    Top = 408
  end
  object IdMessage1: TIdMessage
    AttachmentEncoding = 'UUE'
    BccList = <>
    CCList = <>
    Encoding = meDefault
    FromList = <
      item
      end>
    Recipients = <>
    ReplyTo = <>
    ConvertPreamble = True
    Left = 136
    Top = 8
  end
  object IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL
    MaxLineAction = maException
    Port = 0
    DefaultPort = 0
    SSLOptions.Mode = sslmUnassigned
    SSLOptions.VerifyMode = []
    SSLOptions.VerifyDepth = 0
    Left = 248
    Top = 8
  end
  object pmBoletos: TJvPopupMenu
    ImageMargin.Left = 0
    ImageMargin.Top = 0
    ImageMargin.Right = 0
    ImageMargin.Bottom = 0
    ImageSize.Height = 0
    ImageSize.Width = 0
    Left = 40
    Top = 400
    object miIncluirMensagem: TMenuItem
      Caption = 'Incluir Mensagem adicional '
      OnClick = miIncluirMensagemClick
    end
    object Enviaremaildoboleto1: TMenuItem
      Caption = 'Enviar Email do boleto'
      OnClick = Enviaremaildoboleto1Click
    end
  end
  object ImageList2: TImageList
    Left = 447
    Top = 16
    Bitmap = {
      494C010107000900180010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      00000000000000000000000000000000000000000000E0E0E0008E8E8E008E8E
      8E008E8E8E008E8E8E008E8E8E008E8E8E008E8E8E008E8E8E008E8E8E008E8E
      8E008E8E8E008E8E8E00E0E0E0000000000000000000D8D8F2007272D0007272
      D0007272D0007272D0007272D0007272D0007272D0007272D0007272D0007272
      D0007272D0007272D000D8D8F20000000000000000001F1FB4001B1BB3001B1B
      B3002D2DB900F5F5FC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF006060
      CA000D0DAE000A0AAD000606AC008D8DD9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0E0E0003B3B3B00333333003333
      3300333333003333330033333300333333003333330033333300333333003333
      330033333300333333003B3B3B00DFDFDF00D8D8F2000A0AAD000000AA000000
      AA000000AA000000AA000000AA000000AA000000AA000000AA000000AA000000
      AA000000AA000000AA000A0AAD00D8D8F200FFFFFF009C9CDE002F2FBA002F2F
      BA002929B8006A6ACD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A9A9E2001E1E
      B4001A1AB3001616B1005151C500FEFEFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ABABAB0033333300333333003333
      3300333333003333330033333300333333003333330033333300333333003333
      3300333333003333330033333300A8A8A8009696DC000000AA000000AA000000
      AA000000AA000000AA000000AA000000AA000000AA000000AA000000AA000000
      AA000000AA000000AA000000AA009292DA00FFFFFF00FDFDFE006B6BCE003939
      BD003939BD002525B600B4B4E600FFFFFF00FFFFFF00E3E3F6003434BB002727
      B7002323B6003131BB00E8E8F700FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009797970045454500474747004848
      480049494900494949004A4A4A004A4A4A004A4A4A0049494900484848004747
      4700474747004545450043434300909090007C7CD4001616B1001919B2001A1A
      B3001B1BB3001B1BB3001C1CB3001C1CB3001C1CB3001C1CB3001A1AB3001919
      B2001919B2001717B2001414B1007575D100FFFFFF00FFFFFF00E8E8F7005050
      C5004343C0004242C0002C2CB800EBEBF800FEFEFF005F5FC9003434BB003030
      BA002D2DB900BBBBE800FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009F9F9F0051515100545454005555
      5500565656005656560057575700575757005757570057575700565656005555
      550054545400525252004F4F4F00959595008686D7002626B7002929B8002A2A
      B8002C2CB9002C2CB9002D2DB9002E2EB9002D2DB9002D2DB9002B2BB8002A2A
      B8002929B8002727B7002323B6007B7BD300FFFFFF00FFFFFF00FFFFFF00C3C3
      EB004E4EC4004D4DC4004646C1005555C6009A9ADD004242C0003E3EBF003939
      BD008484D600FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A3A3A3005D5D5D00606060006262
      6200636363006464640065656500656565006565650064646400636363006262
      6200606060005F5F5F005B5B5B00999999008B8BD8003434BB003939BD003A3A
      BD003C3CBE003D3DBE003E3EBF003E3EBF003E3EBF003E3EBF003C3CBE003A3A
      BD003838BD003636BC003232BB008080D500FFFFFF00FFFFFF00FFFFFF00FFFF
      FF009898DD005858C7005555C6004141C0004C4CC3004B4BC3004747C2006060
      CA00F9F9FD00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A7A7A700686868006C6C6C006E6E
      6E00707070007171710073737300737373007373730072727200707070006E6E
      6E006D6D6D006B6B6B00666666009C9C9C009090DA004242C0004848C2004A4A
      C3004C4CC3004D4DC4004F4FC4004F4FC4004F4FC4004E4EC4004C4CC3004A4A
      C3004848C2004646C1004040BF008383D600FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F6F6FC007979D2006060CA005C5CC9005959C8005454C6005656C700DCDC
      F300FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AAAAAA0071717100777777007979
      79007C7C7C007E7E7E008080800080808000808080007F7F7F007C7C7C007A7A
      7A0078787800757575006F6F6F009E9E9E009595DC004E4EC4005555C6005858
      C7005B5BC8005D5DC9006060CA006161CA006060CA005F5FCA005C5CC9005959
      C8005656C7005353C6004B4BC3008585D600FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00DCDCF4006B6BCD006666CC006262CB005D5DC900A2A2E000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ADADAD00787878007F7F7F008383
      8300868686008A8A8A0090909000929292009292920090909000898989008686
      8600828282007E7E7E0077777700A0A0A0009898DD005656C7005F5FCA006464
      CB006868CD006C6CCE007575D1007777D2007777D2007474D1006C6CCE006767
      CC006363CB005E5EC9005555C6008989D800FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00ABABE3007373D0006F6FCF006A6ACD006565CC004B4BC300FDFD
      FE00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ABABAB0073737300797979007C7C
      7C007F7F7F008181810084848400858585008585850084848400818181007F7F
      7F007C7C7C0079797900737373009F9F9F009696DC005050C5005858C7005B5B
      C8005F5FCA006161CA006565CC006666CC006666CC006565CC006262CB005F5F
      CA005B5BC8005858C7005050C5008787D700FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00DADAF3007D7DD4007C7CD3007777D2007171D0006C6CCE005252C5008B8B
      D800FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A8A8A8006A6A6A006F6F6F007171
      7100737373007575750077777700777777007777770077777700757575007474
      740072727200707070006B6B6B009D9D9D009191DB004545C1004B4BC3004E4E
      C4005050C5005252C5005555C6005555C6005555C6005555C6005353C6005151
      C5004E4EC4004C4CC3004646C1008585D700FFFFFF00FFFFFF00FFFFFF00FAFA
      FD008686D7008989D8008484D6008383D5009F9FDF007171D0006A6ACD003A3A
      BD00D1D1F000FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A4A4A40060606000646464006565
      650067676700686868006A6A6A006A6A6A006A6A6A006A6A6A00686868006767
      67006666660064646400606060009A9A9A008C8CD9003838BD003D3DBE003F3F
      BF004141C0004242C0004444C1004545C1004545C1004444C1004343C0004141
      C0004040BF003E3EBF003939BD008181D500FFFFFF00FFFFFF00FFFFFF009D9D
      DF009696DC009090DA008989D800B4B4E600F3F3FB008282D5006D6DCE006565
      CC003F3FBF00F8F8FD00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009F9F9F0054545400575757005858
      5800595959005B5B5B005C5C5C005C5C5C005C5C5C005C5C5C005B5B5B005A5A
      5A00595959005858580055555500979797008686D7002929B8002D2DB9002F2F
      BA003030BA003232BB003333BB003333BB003333BB003333BB003232BB003131
      BA003030BA002E2EB9002B2BB8007D7DD400FFFFFF00FFFFFF00C7C7EC009898
      DD009797DC009090DA009595DC00FFFFFF00FFFFFF00D0D0EF006E6ECF006666
      CC005454C6007575D100FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AEAEAE003A3A3A003D3D3D003E3E
      3E003F3F3F004040400041414100414141004141410041414100404040004040
      40003F3F3F003E3E3E003B3B3B00A9A9A9009999DE000909AD000D0DAE000E0E
      AF000F0FAF001010AF001111B0001111B0001212B0001111B0001111B0001010
      AF000F0FAF000E0EAF000A0AAD009494DB00FFFFFF00EFEFFA008888D7009191
      DA008F8FDA008E8EDA00EAEAF800FFFFFF00FFFFFF00FFFFFF00A1A1DF006565
      CC005E5EC9003838BC00BFBFEA00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E2E2E2003D3D3D00333333003333
      3300333333003333330033333300333333003333330033333300333333003333
      330033333300333333003D3D3D00E2E2E200DBDBF3000D0DAE000000AA000000
      AA000000AA000000AA000000AA000000AA000000AA000000AA000000AA000000
      AA000000AA000000AA000D0DAE00DBDBF300FFFFFF008A8AD8008686D7008787
      D7008585D600BDBDE900FFFFFF00FFFFFF00FFFFFF00FFFFFF00F2F2FB007171
      D0005C5CC9005555C6003434BB00F0F0FA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E2E2E2008E8E8E008E8E
      8E008E8E8E008E8E8E008E8E8E008E8E8E008E8E8E008E8E8E008E8E8E008E8E
      8E008E8E8E008E8E8E00E2E2E2000000000000000000DBDBF3007272D0007272
      D0007272D0007272D0007272D0007272D0007272D0007272D0007272D0007272
      D0007272D0007272D000DBDBF30000000000F9F9FD00D6D6F200D6D6F100D6D6
      F100D6D6F200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E5E5
      F600D0D0EF00CECEEF00CCCCEE00E7E7F7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D8EBD80072B9720072B9
      720072B9720072B9720072B9720072B9720072B9720072B9720072B9720072B9
      720072B9720072B97200D8EBD8000000000000000000D8F2F80072D0E70072D0
      E80072D0E80072D0E80072D0E80072D0E80072D0E80072D0E80072D0E80072D0
      E80072D0E80072D0E700D8F2F8000000000000000000F8E5D800E7A17200E8A1
      7200E8A17200E8A17200E8A17200E8A17200E8A17200E8A17200E8A17200E8A1
      7200E8A17200E7A17200F8E5D8000000000000000000F3F3F300D5D5D500D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600D5D5D500F3F3F30000000000D8ECD8000A850A00008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      000000800000008000000A850A00D8ECD800D8F2F8000AADD60000AAD40000AA
      D40000AAD40000AAD40000AAD40000AAD40000AAD40000AAD40000AAD40000AA
      D40000AAD40000AAD4000AADD600D8F2F800F8E5D800D65C0A00D4550000D455
      0000D4550000D4550000D4550000D4550000D4550000D4550000D4550000D455
      0000D4550000D4550000D65C0A00F8E5D800F3F3F300B6B6B600B3B3B300B3B3
      B300B3B3B300B3B3B300B3B3B300B3B3B300B3B3B300B3B3B300B3B3B300B3B3
      B300B3B3B300B3B3B300B6B6B600F3F3F30096CB960000800000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      000000800000008000000080000092C9920096DCED0000AAD40000AAD40000AA
      D40000AAD40000AAD40000AAD40000AAD40000AAD40000AAD40000AAD40000AA
      D40000AAD40000AAD40000AAD40092DAEC00EDB99600D4550000D4550000D455
      0000D4550000D4550000D4550000D4550000D4550000D4550000D4550000D455
      0000D4550000D4550000D4550000ECB69200E0E0E000B3B3B300B3B3B300B3B3
      B300B3B3B300B3B3B300B3B3B300B3B3B300B3B3B300B3B3B300B3B3B300B3B3
      B300B3B3B300B3B3B300B3B3B300DEDEDE007CBE7C00168B1600198C19001A8D
      1A001B8D1B001B8E1B001C8E1C001C8E1C001C8E1C001C8E1C001A8D1A00198D
      1900198C1900178B1700148A140075BA75007CD4E90016B1D80019B2D8001AB3
      D8001BB3D9001BB3D9001CB3D9001CB3D9001CB3D9001CB3D9001AB3D80019B2
      D80019B2D80017B2D80014B1D70075D1E900E9A87C00D8641600D8661900D866
      1A00D9671B00D9671B00D9681C00D9681C00D9681C00D9681C00D8671A00D866
      1900D8651900D8641700D7621400E9A37500D9D9D900BABABA00BABABA00BBBB
      BB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBB
      BB00BABABA00BABABA00B9B9B900D7D7D70086C2860026932600299529002A95
      2A002C962C002C962C002D962D002E972E002D962D002D962D002B952B002A95
      2A002994290027942700239223007BBD7B0086D7EB0026B7DA0029B8DB002AB8
      DB002CB9DB002CB9DB002DB9DC002EB9DC002DB9DC002DB9DC002BB8DB002AB8
      DB0029B8DB0027B7DB0023B6DA007BD3E900EBAE8600DA6E2600DB702900DB71
      2A00DB722C00DB722C00DC732D00DC732E00DC732D00DC732D00DB722B00DB71
      2A00DB702900DB6F2700DA6D2300E9A77B00DCDCDC00BEBEBE00BFBFBF00C0C0
      C000C0C0C000C0C0C000C0C0C000C1C1C100C0C0C000C0C0C000C0C0C000C0C0
      C000BFBFBF00BFBFBF00BEBEBE00D8D8D8008BC58B00349A3400399C39003A9D
      3A003C9E3C003D9E3D003E9F3E003E9F3E003E9F3E003E9F3E003C9E3C003A9D
      3A00389C3800369B36003299320080C080008BD8EB0034BBDD0039BDDE003ABD
      DE003CBEDE003DBEDE003EBFDE003EBFDE003EBFDE003EBFDE003CBEDE003ABD
      DE0038BDDE0036BCDD0032BBDC0080D5EB00EBB18B00DD783400DE7B3900DE7C
      3A00DE7D3C00DE7E3D00DE7F3E00DE7F3E00DE7F3E00DE7E3E00DE7D3C00DE7C
      3A00DE7B3800DD793600DC763200EBAA8000DDDDDD00C3C3C300C4C4C400C4C4
      C400C5C5C500C5C5C500C6C6C600C6C6C600C6C6C600C5C5C500C5C5C500C4C4
      C400C4C4C400C3C3C300C2C2C200DADADA0090C7900042A1420048A448004AA5
      4A004CA64C004DA74D004FA84F004FA84F004FA84F004EA74E004CA64C004AA5
      4A0048A4480046A3460040A0400083C1830090DAEC0042C0DF0048C2E0004AC3
      E0004CC3E1004DC4E1004FC4E1004FC4E1004FC4E1004EC4E1004CC3E1004AC3
      E00048C2E00046C1E00040BFDF0083D6EB00ECB59000DF814200E0854800E086
      4A00E1884C00E1894D00E18A4F00E18A4F00E18A4F00E1894E00E1884C00E086
      4A00E0854800E0834600DF7F4000EBAC8300DEDEDE00C7C7C700C8C8C800C9C9
      C900CACACA00CACACA00CBCBCB00CBCBCB00CBCBCB00CACACA00CACACA00C9C9
      C900C8C8C800C8C8C800C6C6C600DBDBDB0095CA95004EA74E0055AA550058AC
      58005BAD5B005DAE5D0060B0600061B0610060B060005FAF5F005CAE5C0059AC
      590056AB560053A953004BA64B0085C2850095DCED004EC4E10055C6E20058C7
      E3005BC8E3005DC9E40060CAE40061CAE40060CAE4005FCAE4005CC9E30059C8
      E30056C7E20053C6E2004BC3E10085D6EB00EDB89500E1894E00E28E5500E38F
      5800E3915B00E4935D00E4956000E4956100E4956000E4945F00E3925C00E390
      5900E28E5600E28C5300E1874B00EBAE8500E0E0E000CACACA00CCCCCC00CDCD
      CD00CECECE00CFCFCF00D0D0D000D0D0D000D0D0D000CFCFCF00CECECE00CDCD
      CD00CDCDCD00CCCCCC00C9C9C900DBDBDB0098CC980056AB56005FAF5F0064B2
      640068B468006CB66C0075BA750077BB770077BB770074BA74006CB66C0067B4
      670063B163005EAF5E0055AA550089C4890098DDEE0056C7E2005FCAE40064CB
      E50068CDE6006CCEE60075D1E80077D2E80077D2E80074D1E8006CCEE60067CC
      E50063CBE5005EC9E40055C6E20089D8EC00EEBA9800E28E5600E4945F00E597
      6400E69A6800E69D6C00E8A37500E8A47700E8A47700E8A27400E69D6C00E59A
      6700E5976300E4945E00E28E5500ECB08900E1E1E100CDCDCD00CFCFCF00D1D1
      D100D2D2D200D3D3D300D6D6D600D7D7D700D7D7D700D5D5D500D3D3D300D2D2
      D200D1D1D100CFCFCF00CCCCCC00DDDDDD0096CA960050A8500058AC58005BAD
      5B005FAF5F0061B0610065B3650066B3660066B3660065B3650062B162005FAF
      5F005BAD5B0058AC580050A8500087C3870096DCED0050C5E10058C7E3005BC8
      E3005FCAE40061CAE40065CCE50066CCE50066CCE50065CCE50062CBE4005FCA
      E4005BC8E30058C7E30050C5E10087D7EB00EDB89600E18A5000E38F5800E392
      5B00E4945F00E4966100E5996500E5996600E5996600E5996500E4966200E494
      5F00E3925B00E38F5800E18A5000EBAF8700E0E0E000CBCBCB00CDCDCD00CECE
      CE00CFCFCF00D0D0D000D1D1D100D2D2D200D2D2D200D1D1D100D0D0D000CFCF
      CF00CECECE00CDCDCD00CBCBCB00DCDCDC0091C8910045A245004BA54B004EA7
      4E0050A8500052A9520055AA550055AA550055AA550055AA550053A9530051A8
      51004EA74E004CA64C0046A3460085C3850091DBEC0045C1E0004BC3E1004EC4
      E10050C5E20052C5E20055C6E20055C6E20055C6E20055C6E20053C6E20051C5
      E2004EC4E1004CC3E10046C1E00085D7EB00ECB69100E0834500E1874B00E189
      4E00E28B5000E28C5200E28E5500E28E5500E28E5500E28E5500E28C5300E28B
      5100E1894E00E1884C00E0844600EBAE8500DFDFDF00C8C8C800C9C9C900CACA
      CA00CBCBCB00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CBCB
      CB00CACACA00CACACA00C8C8C800DCDCDC008CC58C00389C38003D9E3D003F9F
      3F0041A0410042A1420044A2440045A2450045A2450044A2440043A1430041A0
      410040A040003E9F3E00399C390081C081008CD9EB0038BDDD003DBEDE003FBF
      DF0041C0DF0042C0DF0044C1DF0045C1E00045C1E00044C1DF0043C0DF0041C0
      DF0040BFDF003EBFDE0039BDDE0081D5EA00EBB28C00DD7A3800DE7E3D00DF7F
      3F00DF804100DF814200DF824400E0834500E0834500DF824400DF814300DF80
      4100DF7F4000DE7E3E00DE7B3900EAAB8100DDDDDD00C4C4C400C5C5C500C6C6
      C600C6C6C600C7C7C700C7C7C700C7C7C700C7C7C700C7C7C700C7C7C700C6C6
      C600C6C6C600C5C5C500C4C4C400DADADA0086C28600299529002D962D002F97
      2F00309830003299320033993300339A3300339A3300339A3300329932003198
      3100309830002E972E002B952B007DBF7D0086D7EA0029B8DB002DB9DC002FBA
      DC0030BADC0032BBDC0033BBDD0033BBDD0033BBDD0033BBDD0032BBDC0031BA
      DC0030BADC002EB9DC002BB8DB007DD4EA00EAAE8600DB702900DC732D00DC74
      2F00DC753000DC763200DD773300DD773300DD773300DD773300DC763200DC76
      3100DC753000DC742E00DB712B00EAA87D00DBDBDB00BFBFBF00C0C0C000C1C1
      C100C1C1C100C2C2C200C2C2C200C2C2C200C2C2C200C2C2C200C2C2C200C2C2
      C200C1C1C100C1C1C100C0C0C000D9D9D90099CD9900098509000D860D000E87
      0E000F880F001088100011891100118911001289120011891100118811001088
      10000F880F000E870E000A850A0094C9940099DEEE0009ADD6000DAED6000EAF
      D6000FAFD70010AFD70011B0D70011B0D70012B0D70011B0D70011B0D70010AF
      D7000FAFD7000EAFD6000AADD60094DBED00EEBC9900D65B0900D65D0D00D65E
      0E00D75F0F00D75F1000D7601100D7601100D7611200D7601100D7601100D760
      1000D75F0F00D65E0E00D65C0A00EDB89400E2E2E200B6B6B600B7B7B700B7B7
      B700B8B8B800B8B8B800B8B8B800B8B8B800B8B8B800B8B8B800B8B8B800B8B8
      B800B8B8B800B7B7B700B6B6B600DFDFDF00DBEDDB000D860D00008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      000000800000008000000D860D00DBEDDB00DBF3F9000DAED60000AAD40000AA
      D40000AAD40000AAD40000AAD40000AAD40000AAD40000AAD40000AAD40000AA
      D40000AAD40000AAD4000DAED600DBF3F900F9E7DB00D65E0D00D4550000D455
      0000D4550000D4550000D4550000D4550000D4550000D4550000D4550000D455
      0000D4550000D4550000D65E0D00F9E7DB00F5F5F500B7B7B700B3B3B300B3B3
      B300B3B3B300B3B3B300B3B3B300B3B3B300B3B3B300B3B3B300B3B3B300B3B3
      B300B3B3B300B3B3B300B7B7B700F4F4F40000000000DBEDDB0072B9720072B9
      720072B9720072B9720072B9720072B9720072B9720072B9720072B9720072B9
      720072B9720072B97200DBEDDB000000000000000000DBF3F90072D0E70072D0
      E80072D0E80072D0E80072D0E80072D0E80072D0E80072D0E80072D0E80072D0
      E80072D0E80072D0E700DBF3F9000000000000000000F9E7DB00E7A17200E8A1
      7200E8A17200E8A17200E8A17200E8A17200E8A17200E8A17200E8A17200E8A1
      7200E8A17200E7A17200F9E7DB000000000000000000F4F4F400D5D5D500D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600D5D5D500F4F4F40000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF0080018001800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000800180010000000080018001800180010000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000800180018001800100000000000000000000000000000000
      000000000000}
  end
  object Imagens: TImageList
    Left = 448
    Top = 64
    Bitmap = {
      494C01010E001100180010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000004000000001002000000000000040
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000066666600666666006666
      6600666666006666660066666600666666006666660066666600666666006666
      6600666666006666660066666600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000066666600CECFCE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CECFCE00666666000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006666660000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000666666000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A
      4A00000000000000000000000000000000006666660000000000000000000065
      6300000000000065630000000000000000000000000000000000000000000000
      0000000000000000000000000000666666000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004A4A
      4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A000000
      0000000000000000000000000000000000006666660000000000000000000000
      0000006563009CCFCE0000659C00000000000000000000000000000000000000
      0000000000000000000000000000666666000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004A4A4A000000
      00000000000000000000000000000000000000000000000000004A4A4A004A4A
      4A00000000000000000000000000000000006666660000000000000000000000
      000000659C0000000000009AFF0000659C000000000000000000000000000000
      0000000000000000000000000000666666000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004A4A4A000000
      00004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A
      4A00000000000000000000000000000000006666660000000000000000000000
      00000000000000659C0000000000009AFF0000659C0000000000000000000000
      0000000000000000000000000000666666000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004A4A4A00000000000000
      000000000000000000000000000000000000000000004A4A4A004A4A4A00E7C6
      A5004A4A4A000000000000000000000000006666660000000000000000000000
      0000000000000000000000659C0000000000009AFF0000659C00000000000000
      0000000000000000000000000000666666000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004A4A4A00000000004A4A
      4A004A4A4A004A4A4A004A4A4A00000000004A4A4A00000000004A4A4A00E7C6
      A5004A4A4A000000000000000000000000006666660000000000000000000000
      000000000000000000000000000000659C0000000000009AFF0000659C000000
      0000000000000000000000000000666666000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004A4A4A0000000000000000000000
      0000000000000000000000000000000000004A4A4A0000000000000000004A4A
      4A00A5A5A5004A4A4A0000000000000000006666660000000000000000000000
      00000000000000000000000000000000000000659C0000000000009AFF000065
      9C00000000000000000000000000666666000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004A4A4A004A4A4A004A4A4A004A4A
      4A004A4A4A004A4A4A004A4A4A004A4A4A000000000000000000000000004A4A
      4A00D6D6D6004A4A4A0000000000000000006666660000000000000000000000
      0000000000000000000000000000000000000000000000659C00000000000000
      00009C659C000000000000000000666666000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E7C6A500A5A5A5004A4A4A00000000006666660000000000000000000000
      0000000000000000000000000000000000000000000000000000313063000000
      00009C9ACE000000000000000000666666000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004A4A4A00DEA58C00DEA58C004A4A4A006666660000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003130
      6300313063000000000000000000666666000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004A4A4A004A4A4A004A4A4A00000000006666660000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000666666000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000066666600CECFCE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CECFCE00666666000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000066666600666666006666
      6600666666006666660066666600666666006666660066666600666666006666
      6600666666006666660066666600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B7B73007B737300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000031521000638C39006B9442006B94
      42006B9442006B9442006B9442006B9442006B9442006B9442006B9442006B94
      42006B9442006B9442006B944200294A08000000000000000000000000000000
      00007B7B7B00EFEFEF00F7F7F700DEDEDE00C6C6C6007B7B7B006B6B6B000000
      000000000000000000000000000000000000000000007B7B7B004A637B00FFE7
      C600F7DEBD00F7DEB500F7D6AD00F7D6A500F7CE9C00F7CE9C00F7CE9C00F7CE
      9C00F7CE9C00EFCE94009C6B6300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005A843900638C390063843900638C
      3900638C3900638C3900638C3900638C3900638C3900638C3900638C3900638C
      3900638C3900638C3900638C3900638439000000000000000000000000007B7B
      7B0094949400FFFFFF00F7F7F700E7E7E700DEDEDE00216B940008527B005263
      6B006B6B6300000000000000000000000000000000006B9CC600188CEF00CE94
      9400F7DEC600F7DEB500F7D6B500F7D6A500F7CE9C00EFCE9400EFCE9400EFCE
      9400EFCE9400EFCE94009C6B6300000000000000000000000000000000000000
      000000000000BDC6C600429C6B00000000000000000000000000000000000000
      00000000000000000000000000000000000052842900527B2900527B31005A7B
      31005A7B31005A7B31005A7B31005A7B31005A7B31005A7B31005A7B31005A7B
      31005A7B31005A7B31005A7B31005A843100000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00EFEFEF00E7E7E700216B9400004A8400004A
      840084A5B500BDBDBD00B5B5B50000000000000000000000000052B5FF001884
      E7004A7BA500F7DEC600F7DEBD00F7D6B500F7D6AD00F7CEA500EFCE9C00EFCE
      9400EFCE9400EFCE94009C6B6300000000000000000000000000000000000000
      0000A5ADA50042D68400BDF7D600299452000000000000000000000000000000
      0000000000000000000000000000000000005273290052732900527329005273
      2900527329005273290052732900527329005273290052732900527329005273
      29005273290052732900527329004A7331000000000084848400CECECE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00EFEFEF00EFEFEF00216B9C00004A8400004A
      84008CA5B500BDBDBD00BDBDBD00000000000000000000000000AD7B7B004AB5
      FF00188CE700BD949400F7DEC600F7DEB500F7D6B500F7D6A500F7CEA500EFCE
      9400EFCE9400EFCE94009C6B6300000000000000000000000000000000009CAD
      A50029C6730052EF940084F7BD00CEFFE70021944A0000000000000000000000
      00000000000000000000000000000000000042632100426B21004A6B2900E7F7
      E700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B5CEAD004A6B2100426B2100426B180000000000C6BDBD00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7F700216B9C00004A8400004A
      840094ADBD00CECECE00C6C6C600000000000000000000000000AD847B00FFF7
      E70052BDFF00A5848400AD847B00EFE7C600FFFFD600CEADA500B5848400F7CE
      A500EFCE9C00EFCE94009C6B6300000000000000000000000000849C8C0021C6
      630010DE5A0042E7840063EFA5007BF7B50094EFBD00108C3900000000000000
      00000000000000000000000000000000000039631800315A100039522100FFFF
      F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7FF
      EF00FFFFF700425A2100315A18003963100000000000C6BDBD00FFFFFF00FFFF
      FF00EFF7F700ADC6D600FFFFFF00FFFFFF00FFFFFF0021739C00004A8400004A
      840094B5C600CECECE00CECECE00000000000000000000000000B58C7B00FFF7
      EF00FFEFE700B5848400F7DEB500FFFFDE00FFFFDE00FFFFEF00EFDEDE00DEBD
      9C00F7CE9C00EFCE94009C6B63000000000000000000638C6B0010BD5A0000CE
      390000D64A0018DE630039E77B0042E7840039E77B004AE78C00008C2900FFFF
      FF0000000000000000000000000000000000315A1000315A180031521800FFFF
      FF004A633100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007B8C
      6300FFFFFF0031521000295A1800315A100000000000C6BDBD00EFF7F7000042
      6B00006BA5000063940000528400FFFFFF00FFFFFF00FFFFFF00CEDEE7004A8C
      AD00ADC6D600DEDEDE00D6D6D600000000000000000000000000BD8C8400FFFF
      FF00FFF7F700EFD6A500F7CE9400FFFFDE00FFFFE700FFFFFF00FFFFEF00AD7B
      7B00F7D6AD00EFCE9C009C6B6300000000006B8C730000AD420000BD310000C6
      390000CE420008D64A0021DE630021DE630010DE5A0000D6420018D663000884
      2900FFFFFF00000000000000000000000000315A1000295A100039521000FFFF
      FF00FFFFFF00738C6300FFFFF700ADC69C0073845A00F7FFFF00526B3900FFFF
      EF00FFFFFF00315A180029521800315A100000000000C6BDBD00104A7300008C
      C60000BDFF000094CE0000639400427B9400FFFFFF00FFFFFF00FFFFFF00EFEF
      EF00EFEFEF00DEDEDE00DEDEDE0000426B000000000000000000BD948400FFFF
      FF00FFFFF700FFDEAD00EFBD8400FFFFDE00FFFFDE00FFFFEF00FFFFE700AD7B
      7300F7D6B500EFCEA5009C6B63000000000000A5310000AD210021C64A005AD6
      7B0063DE840031DE6B0008D64A0063E78C005ADE84005ADE840039D66B0000C6
      4200007B1800EFEFEF000000000000000000315A1000315A100039521800F7F7
      F700FFFFF700D6EFBD006B845200FFFFFF00FFFFFF0042632100F7FFEF00FFFF
      FF00FFFFFF00395A1800315A1800315A180000000000008CCE0000BDFF0000BD
      FF0000BDFF0000ADEF0000ADEF000063940000427300FFFFFF00FFFFFF00FFFF
      FF00F7F7F7004A7B9C0000396B00000000000000000000000000C69C8400FFFF
      FF00FFFFFF00D6BDA500FFEFC600F7D69C00FFE7BD00FFFFD600FFFFDE00CEA5
      9400F7DEBD00F7D6AD009C6B63000000000010A5290084D694007BD694007BDE
      940039D66300C6D6CE000000000008CE420084E7A5007BDE9C007BDE94007BDE
      940000B5290000730800E7E7E700000000003963180039631800395A1800FFFF
      FF00848C6B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7FFF700B5BD
      AD00FFFFFF00395A1800315A2100396318000000000000BDFF0000BDFF0000BD
      FF0000BDFF0000ADEF0000ADEF000084C60000639400427B9400FFFFFF00FFFF
      FF00D6DEE70000426B00005A9400000000000000000000000000CE9C8C00FFFF
      FF00FFFFFF00B58C8400F7EFEF00F7CE9C00F7BD8C00FFE7B500F7E7BD00E7CE
      B500F7DEC600DEC6A5009C6B6300000000000000000021A53100A5DEAD0042CE
      6300C6D6C60000000000000000000000000018C64200A5E7B5009CE7AD009CDE
      AD009CDEAD0000A52100006B0000E7E7E70042632100426B180042632900BDCE
      B500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7EF
      E700E7F7DE0042632100426B1800426B18000000000000639C0000ADEF0000BD
      FF0000BDFF0000ADEF0000ADEF00009CDE00009CD60000639400004273000031
      5A00005284000000000000000000000000000000000000000000D6A58C00FFFF
      FF00FFFFFF00FFFFFF00EFDEDE00AD847B00AD7B7300CEADA500E7D6C600E7DE
      CE00CEBDAD00B5AD9C009C6B630000000000000000000000000042A55200E7E7
      E700000000000000000000000000000000000000000031AD4A00BDEFCE00BDE7
      C600BDE7C600C6E7C600089C18007B947B004A7329004A73290052732900FFFF
      FF00FFFFFF00FFFFF700FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7FFFF00FFFF
      FF00F7FFF7004A7329004A6B29004A732900000000000000000000639C0000BD
      FF0000BDFF0000ADEF0000ADEF0008ADE700009CDE00007BB500006394000052
      8400006394000000000000000000000000000000000000000000D6A58C00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFF7EF00EFDED600AD84
      7300AD7B7300AD7B7300AD847300000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000029A53900DEF7
      E700D6EFDE00DEF7DE006BC67300C6D6C600527B31005A7B390052842900527B
      3100527B3100527B31005284310052843100528431005A7B31005A8431005A84
      3100528429005A7B39005A842900527B31000000000000000000000000000063
      9C0000B5F70000ADEF0000ADEF0031CEF70000BDFF00008CC60000639C000000
      0000000000000000000000000000000000000000000000000000DEAD8C00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7D6CE00EFC6
      8C00F7BD6B00BD84840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004A9C
      4A00F7FFF7004AB55200DEE7DE0000000000638C39005A8439005A8439005A84
      39005A8439005A8439005A8439005A8439005A8439005A8439005A8439005A84
      39005A8439005A8439005A8439005A8C31000000000000000000000000000000
      000000639C0000ADEF0000ADEF0031CEF70000BDFF0000639C00000000000000
      0000000000000000000000000000000000000000000000000000DEAD8C00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7D6D600EFC6
      8C00F7BD6B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00005A945A00F7F7F70000000000000000006B8C39006B8C42006B944200638C
      4200638C4200638C4200638C4200638C4200638C4200638C4200638C4200638C
      4200638C4200638C4200638C4200638C42000000000000000000000000000000
      00000000000000639C0000639C00005A8C00004A7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000DEA58400DEA5
      8400DEA58400DEA58400DEA58400DEA58400DEA58400DEA58400DEA58400BD84
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000394A21005A8431006B9442006B94
      42006B9442006B9442006B9442006B9442006B9442006B9442006B9442006B94
      42006B9442006B9442006B9442003142100000000000F2E2D800D0977200D098
      7200D0987200D0987200D0987200D0987200D0987200D0987200D0987200D098
      7200D0987200D0977200F2E2D8000000000000000000D8D8F2007272D0007272
      D0007272D0007272D0007272D0007272D0007272D0007272D0007272D0007272
      D0007272D0007272D000D8D8F2000000000000000000D8D8D800727272007272
      7200727272007272720072727200727272007272720072727200727272007272
      72007272720072727200D8D8D800000000000000000000000000000000000000
      0000EFEFEF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F2E3D800AD4B0A00AA440000AA44
      0000AA440000AA440000AA440000AA440000AA440000AA440000AA440000AA44
      0000AA440000AA440000AD4B0A00F2E2D800D8D8F2000A0AAD000000AA000000
      AA000000AA000000AA000000AA000000AA000000AA000000AA000000AA000000
      AA000000AA000000AA000A0AAD00D8D8F200D8D8D8000A0A0A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000A0A0A00D8D8D8000000000000000000DEDEDE00BD84
      63007B736B00DEDEDE00EFE7DE009484730094949400D6D6D600000000000000
      000000000000000000000000000000000000DCB29600AA440000AA440000AA44
      0000AA440000AA440000AA440000AA440000AA440000AA440000AA440000AA44
      0000AA440000AA440000AA440000DAAF92009696DC000000AA000000AA000000
      AA000000AA000000AA000000AA000000AA000000AA000000AA000000AA000000
      AA000000AA000000AA000000AA009292DA009696960000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000929292000000000000000000FFCEB500FFAD
      7300FFAD73007B6B5A00DE845200FF9C5A00FF94520094736300EFEFEF000000
      000000000000000000000000000000000000D49F7C00B1541600B2561900B357
      1A00B3581B00B3581B00B3591C00B3591C00B3591C00B3581C00B3571A00B257
      1900B2561900B2551700B1521400D19A75007C7CD4001616B1001919B2001A1A
      B3001B1BB3001B1BB3001C1CB3001C1CB3001C1CB3001C1CB3001A1AB3001919
      B2001919B2001717B2001414B1007575D1007C7C7C0016161600191919001A1A
      1A001B1B1B001B1B1B001C1C1C001C1C1C001C1C1C001C1C1C001A1A1A001919
      19001919190017171700141414007575750000000000B5B5B500FFC66B00FFAD
      5A00FFB57B00FFAD7B00FF843900FF732100FF843900BD734A00ADADAD00EFEF
      EF00EFEFEF00000000000000000000000000D7A68600B7602600B8622900B863
      2A00B9642C00B9642C00B9652D00B9652E00B9652D00B9652D00B8642B00B863
      2A00B8622900B7612700B65E2300D39E7B008686D7002626B7002929B8002A2A
      B8002C2CB9002C2CB9002D2DB9002E2EB9002D2DB9002D2DB9002B2BB8002A2A
      B8002929B8002727B7002323B6007B7BD3008686860026262600292929002A2A
      2A002C2C2C002C2C2C002D2D2D002E2E2E002D2D2D002D2D2D002B2B2B002A2A
      2A002929290027272700232323007B7B7B00EFC6B500FFF7F700FFD6A500FFBD
      7300FFA55200FF8C3900FF843900FF7B3100FF7B2900FF945A00BD734A009C73
      5A0084736300CECECE000000000000000000D8A98B00BB6A3400BD6E3900BD6F
      3A00BE703C00BE713D00BF723E00BF723E00BF723E00BF713E00BE703C00BD6F
      3A00BD6D3800BC6C3600BB693200D5A280008B8BD8003434BB003939BD003A3A
      BD003C3CBE003D3DBE003E3EBF003E3EBF003E3EBF003E3EBF003C3CBE003A3A
      BD003838BD003636BC003232BB008080D5008B8B8B0034343400393939003A3A
      3A003C3C3C003D3D3D003E3E3E003E3E3E003E3E3E003E3E3E003C3C3C003A3A
      3A0038383800363636003232320080808000F7D6AD00FFEFCE00FFDEA500FFCE
      8400F7A55A00EFBD9C00F7C6A500FF945200FF843900FF843900FF945A00FF8C
      5200FF945A00736B6B00E7E7E70000000000DAAD9000C0754200C2784800C37A
      4A00C37C4C00C47D4D00C47E4F00C47E4F00C47E4F00C47E4E00C37C4C00C37A
      4A00C2794800C1774600BF734000D6A483009090DA004242C0004848C2004A4A
      C3004C4CC3004D4DC4004F4FC4004F4FC4004F4FC4004E4EC4004C4CC3004A4A
      C3004848C2004646C1004040BF008383D6009090900042424200484848004A4A
      4A004C4C4C004D4D4D004F4F4F004F4F4F004F4F4F004E4E4E004C4C4C004A4A
      4A0048484800464646004040400083838300FFE7D600FFF7E700FFE7C600FFDE
      AD00847B7B00000000000000000000000000FFF7EF00FF843900FF7B3100FF7B
      3100FF8C4200FF8C5200DEDEDE0000000000DCB19500C47D4E00C6825500C784
      5800C8875B00C9885D00CA8A6000CA8B6100CA8A6000CA8A5F00C9875C00C885
      5900C7835600C6815300C37B4B00D6A685009595DC004E4EC4005555C6005858
      C7005B5BC8005D5DC9006060CA006161CA006060CA005F5FCA005C5CC9005959
      C8005656C7005353C6004B4BC3008585D600959595004E4E4E00555555005858
      58005B5B5B005D5D5D006060600061616100606060005F5F5F005C5C5C005959
      590056565600535353004B4B4B008585850000000000F7C6A500FFF7DE00FFE7
      CE009C6B5200D6D6D60000000000000000000000000000000000FF843900FF84
      3900F77B3100C6947B000000000000000000DDB39800C7835600CA8A5F00CB8D
      6400CD906800CE936C00D19A7500D29B7700D29B7700D1997400CE936C00CC90
      6700CB8D6300C9895E00C6835500D8A989009898DD005656C7005F5FCA006464
      CB006868CD006C6CCE007575D1007777D2007777D2007474D1006C6CCE006767
      CC006363CB005E5EC9005555C6008989D80098989800565656005F5F5F006464
      6400686868006C6C6C00757575007777770077777700747474006C6C6C006767
      6700636363005E5E5E00555555008989890000000000F7C6AD00FFF7EF00FFE7
      D600FFEFDE0073737300E7E7E700000000000000000000000000FFDECE00FF8C
      4A00FF945A008463520094949400CECECE00DCB19600C57F5000C7845800C887
      5B00CA895F00CA8B6100CC8E6500CC8F6600CC8F6600CC8E6500CB8C6200CA89
      5F00C8875B00C7845800C57F5000D7A787009696DC005050C5005858C7005B5B
      C8005F5FCA006161CA006565CC006666CC006666CC006565CC006262CB005F5F
      CA005B5BC8005858C7005050C5008787D7009696960050505000585858005B5B
      5B005F5F5F006161610065656500666666006666660065656500626262005F5F
      5F005B5B5B0058585800505050008787870000000000FFFFF700FFFFF700FFEF
      E700FFEFDE00FFD6BD006B6B6B00C6C6C600EFEFEF000000000000000000FF94
      5200FF945200FF945A00FF8C5200AD8C7B00DBAE9100C1774500C37B4B00C47D
      4E00C57F5000C5805200C6825500C6835500C6835500C6825500C6815300C57F
      5100C47E4E00C37C4C00C1774600D7A685009191DB004545C1004B4BC3004E4E
      C4005050C5005252C5005555C6005555C6005555C6005555C6005353C6005151
      C5004E4EC4004C4CC3004646C1008585D70091919100454545004B4B4B004E4E
      4E00505050005252520055555500555555005555550055555500535353005151
      51004E4E4E004C4C4C00464646008585850000000000FFD6BD00FFFFFF00FFF7
      EF00FFE7D600FFE7D600FFE7D600C67B5A00847363008C847B00BD845A00FF9C
      5A00FF945200FF8C4A00FF945200C69C8C00D9AA8C00BD6D3800BE713D00BF72
      3F00C0734100C0754200C1764400C1764500C1764500C1764400C0754300C074
      4100BF734000BF713E00BD6E3900D5A381008C8CD9003838BD003D3DBE003F3F
      BF004141C0004242C0004444C1004545C1004545C1004444C1004343C0004141
      C0004040BF003E3EBF003939BD008181D5008C8C8C00383838003D3D3D003F3F
      3F00414141004242420044444400454545004545450044444400434343004141
      4100404040003E3E3E0039393900818181000000000000000000FFC6A500FFEF
      DE00FFF7EF00FFE7CE00FFD6BD00FFD6BD00FFCEAD00FFC69C00FFAD7300FF9C
      6300FF9C6300FF945200FF8C5200DEDEDE00D7A68600B8622900B9652D00BA66
      2F00BA673000BB683200BB693300BB6A3300BB6A3300BB6A3300BB693200BA68
      3100BA673000B9662E00B8632B00D4A07D008686D7002929B8002D2DB9002F2F
      BA003030BA003232BB003333BB003333BB003333BB003333BB003232BB003131
      BA003030BA002E2EB9002B2BB8007D7DD40086868600292929002D2D2D002F2F
      2F00303030003232320033333300333333003333330033333300323232003131
      3100303030002E2E2E002B2B2B007D7D7D000000000000000000000000000000
      0000FFEFE700FFEFE700FFDEC600FFCEAD00FFB57B00FFAD7B00FFAD7300FFAD
      7300AD6B4A00EF946B00DEB5A50000000000DEB59900AD4B0900AE4D0D00AF4E
      0E00AF4F0F00AF501000B0511100B0511100B0511200B0511100B0501100AF50
      1000AF4F0F00AF4E0E00AD4B0A00DBB194009999DE000909AD000D0DAE000E0E
      AF000F0FAF001010AF001111B0001111B0001212B0001111B0001111B0001010
      AF000F0FAF000E0EAF000A0AAD009494DB0099999900090909000D0D0D000E0E
      0E000F0F0F001010100011111100111111001212120011111100111111001010
      10000F0F0F000E0E0E000A0A0A00949494000000000000000000000000000000
      000000000000FFCEAD00FFE7D600FFDEBD00F7AD8400FFB58400FFB57B00FFAD
      7B00FFB58C00ADA59C000000000000000000F3E5DB00AE4E0D00AA440000AA44
      0000AA440000AA440000AA440000AA440000AA440000AA440000AA440000AA44
      0000AA440000AA440000AE4E0D00F3E4DB00DBDBF3000D0DAE000000AA000000
      AA000000AA000000AA000000AA000000AA000000AA000000AA000000AA000000
      AA000000AA000000AA000D0DAE00DBDBF300DBDBDB000D0D0D00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000D0D0D00DBDBDB000000000000000000000000000000
      00000000000000000000FFCEAD00FFBD9400EFEFEF0000000000FFB58400FFB5
      8400EF9C6B0000000000000000000000000000000000F3E5DB00D0977200D098
      7200D0987200D0987200D0987200D0987200D0987200D0987200D0987200D098
      7200D0987200D0977200F3E5DB000000000000000000DBDBF3007272D0007272
      D0007272D0007272D0007272D0007272D0007272D0007272D0007272D0007272
      D0007272D0007272D000DBDBF3000000000000000000DBDBDB00727272007272
      7200727272007272720072727200727272007272720072727200727272007272
      72007272720072727200DBDBDB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFEFDE00F7F7
      EF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E6E6E600D2D2D200CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00D2D2D200E6E6E6000000000000000000D8F7FF0072E3FF0072E3
      FF0072E3FF0072E3FF0072E3FF0072E3FF0072E3FF0072E3FF0072E3FF0072E3
      FF0072E3FF0072E3FF00D8F7FF000000000000000000D8EBD80072B9720072B9
      720072B9720072B9720072B9720072B9720072B9720072B9720072B9720072B9
      720072B9720072B97200D8EBD800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E6E6E600B3B3B300B3B3B300B3B3
      B300B3B3B300B3B3B300B3B3B300B3B3B300B3B3B300B3B3B300B3B3B300B3B3
      B300B3B3B300B3B3B300B3B3B300E6E6E600D8F7FF000ACEFF0000CCFF0000CC
      FF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CC
      FF0000CCFF0000CCFF000ACEFF00D8F7FF00D8ECD8000A850A00008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      000000800000008000000A850A00D8ECD8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D2D2D200B3B3B300B3B3B300B3B3
      B300B3B3B300B3B3B300B3B3B300B3B3B300B3B3B300B3B3B300B3B3B300B3B3
      B300B3B3B300B3B3B300B3B3B300D2D2D20096EAFF0000CCFF0000CCFF0000CC
      FF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CC
      FF0000CCFF0000CCFF0000CCFF0092E9FF0096CB960000800000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      000000800000008000000080000092C992000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D0D0D000B8B8B800B9B9B900B9B9
      B900B9B9B900BABABA00BABABA00BABABA00BABABA00BABABA00B9B9B900B9B9
      B900B9B9B900B8B8B800B7B7B700D0D0D0007CE5FF0016D0FF0019D1FF001AD1
      FF001BD1FF001BD1FF001CD2FF001CD2FF001CD2FF001CD2FF001AD1FF0019D1
      FF0019D1FF0017D1FF0014D0FF0075E4FF007CBE7C00168B1600198C19001A8D
      1A001B8D1B001B8E1B001C8E1C001C8E1C001C8E1C001C8E1C001A8D1A00198D
      1900198C1900178B1700148A140075BA75000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D4D4D400BEBEBE00BEBEBE00BFBF
      BF00BFBFBF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000BFBFBF00BFBF
      BF00BEBEBE00BEBEBE00BDBDBD00D2D2D20086E7FF0026D4FF0029D4FF002AD4
      FF002CD5FF002CD5FF002DD5FF002ED5FF002DD5FF002DD5FF002BD5FF002AD4
      FF0029D4FF0027D4FF0023D3FF007BE4FF0086C2860026932600299529002A95
      2A002C962C002C962C002D962D002E972E002D962D002D962D002B952B002A95
      2A002994290027942700239223007BBD7B00000000000000000000000000E7F7
      E700000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D6D6D600C3C3C300C4C4C400C5C5
      C500C5C5C500C5C5C500C6C6C600C6C6C600C6C6C600C6C6C600C5C5C500C5C5
      C500C4C4C400C3C3C300C2C2C200D5D5D5008BE8FF0034D6FF0039D7FF003AD8
      FF003CD8FF003DD8FF003ED8FF003ED8FF003ED8FF003ED8FF003CD8FF003AD8
      FF0038D7FF0036D7FF0032D6FF0080E6FF008BC58B00349A3400399C39003A9D
      3A003C9E3C003D9E3D003E9F3E003E9F3E003E9F3E003E9F3E003C9E3C003A9D
      3A00389C3800369B36003299320080C080000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F7FF
      EF0000000000000000000000000000000000D9D9D900C8C8C800C9C9C900CACA
      CA00CBCBCB00CBCBCB00CCCCCC00CCCCCC00CCCCCC00CBCBCB00CBCBCB00CACA
      CA00C9C9C900C8C8C800C7C7C700D6D6D60090E9FF0042D9FF0048DAFF004ADB
      FF004CDBFF004DDBFF004FDCFF004FDCFF004FDCFF004EDCFF004CDBFF004ADB
      FF0048DAFF0046DAFF0040D9FF0083E6FF0090C7900042A1420048A448004AA5
      4A004CA64C004DA74D004FA84F004FA84F004FA84F004EA74E004CA64C004AA5
      4A0048A4480046A3460040A0400083C183000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DBDBDB00CCCCCC00CDCDCD00CECE
      CE00D0D0D000D1D1D100D1D1D100D2D2D200D2D2D200D1D1D100D0D0D000CFCF
      CF00CECECE00CDCDCD00CBCBCB00D7D7D70095EAFF004EDCFF0055DDFF0058DE
      FF005BDEFF005DDFFF0060DFFF0061DFFF0060DFFF005FDFFF005CDEFF0059DE
      FF0056DDFF0053DDFF004BDBFF0085E7FF0095CA95004EA74E0055AA550058AC
      58005BAD5B005DAE5D0060B0600061B0610060B060005FAF5F005CAE5C0059AC
      590056AB560053A953004BA64B0085C285000000000000000000000000000000
      00000000000000000000FFFFF7000000000000000000F7FFFF0000000000FFFF
      EF0000000000000000000000000000000000DCDCDC00CDCDCD00CFCFCF00D1D1
      D100D2D2D200D4D4D400D6D6D600D8D8D800D7D7D700D5D5D500D4D4D400D2D2
      D200D0D0D000CFCFCF00CDCDCD00D8D8D80098EBFF0056DDFF005FDFFF0064E0
      FF0068E1FF006CE2FF0075E3FF0077E4FF0077E4FF0074E3FF006CE2FF0067E1
      FF0063E0FF005EDFFF0055DDFF0089E8FF0098CC980056AB56005FAF5F0064B2
      640068B468006CB66C0075BA750077BB770077BB770074BA74006CB66C0067B4
      670063B163005EAF5E0055AA550089C48900000000000000000000000000F7F7
      F700FFFFF7000000000000000000000000000000000000000000F7FFEF000000
      000000000000000000000000000000000000DBDBDB00CCCCCC00CDCDCD00CFCF
      CF00D0D0D000D1D1D100D2D2D200D3D3D300D3D3D300D2D2D200D1D1D100D0D0
      D000CFCFCF00CDCDCD00CCCCCC00D8D8D80096EAFF0050DCFF0058DEFF005BDE
      FF005FDFFF0061DFFF0065E0FF0066E0FF0066E0FF0065E0FF0062E0FF005FDF
      FF005BDEFF0058DEFF0050DCFF0087E7FF0096CA960050A8500058AC58005BAD
      5B005FAF5F0061B0610065B3650066B3660066B3660065B3650062B162005FAF
      5F005BAD5B0058AC580050A8500087C387000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B5BD
      AD0000000000000000000000000000000000D9D9D900C8C8C800C9C9C900CACA
      CA00CBCBCB00CCCCCC00CCCCCC00CDCDCD00CDCDCD00CCCCCC00CCCCCC00CBCB
      CB00CACACA00C9C9C900C8C8C800D7D7D70091E9FF0045DAFF004BDBFF004EDC
      FF0050DCFF0052DCFF0055DDFF0055DDFF0055DDFF0055DDFF0053DDFF0051DC
      FF004EDCFF004CDBFF0046DAFF0085E7FF0091C8910045A245004BA54B004EA7
      4E0050A8500052A9520055AA550055AA550055AA550055AA550053A9530051A8
      51004EA74E004CA64C0046A3460085C385000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D6D6D600C3C3C300C4C4C400C5C5
      C500C6C6C600C6C6C600C6C6C600C7C7C700C7C7C700C6C6C600C6C6C600C6C6
      C600C5C5C500C4C4C400C4C4C400D5D5D5008CE8FF0038D7FF003DD8FF003FD9
      FF0041D9FF0042D9FF0044DAFF0045DAFF0045DAFF0044DAFF0043D9FF0041D9
      FF0040D9FF003ED8FF0039D7FF0081E6FF008CC58C00389C38003D9E3D003F9F
      3F0041A0410042A1420044A2440045A2450045A2450044A2440043A1430041A0
      410040A040003E9F3E00399C390081C081000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D5D5D500BEBEBE00BFBFBF00BFBF
      BF00C0C0C000C0C0C000C0C0C000C1C1C100C1C1C100C0C0C000C0C0C000C0C0
      C000C0C0C000BFBFBF00BEBEBE00D3D3D30086E7FF0029D4FF002DD5FF002FD5
      FF0030D6FF0032D6FF0033D6FF0033D6FF0033D6FF0033D6FF0032D6FF0031D6
      FF0030D6FF002ED5FF002BD5FF007DE5FF0086C28600299529002D962D002F97
      2F00309830003299320033993300339A3300339A3300339A3300329932003198
      3100309830002E972E002B952B007DBF7D000000000000000000000000000000
      0000FFFFF70000000000000000000000000000000000F7FFFF0000000000F7FF
      F700F7FFF700000000000000000000000000D4D4D400B8B8B800B9B9B900B9B9
      B900BABABA00BABABA00BABABA00BBBBBB00BBBBBB00BBBBBB00BABABA00BABA
      BA00BABABA00B9B9B900B9B9B900D3D3D30099EBFF0009CEFF000DCFFF000ECF
      FF000FCFFF0010CFFF0011CFFF0011CFFF0012D0FF0011CFFF0011CFFF0010CF
      FF000FCFFF000ECFFF000ACEFF0094E9FF0099CD9900098509000D860D000E87
      0E000F880F001088100011891100118911001289120011891100118811001088
      10000F880F000E870E000A850A0094C994000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E7E7E700B3B3B300B3B3B300B3B3
      B300B4B4B400B4B4B400B4B4B400B4B4B400B4B4B400B4B4B400B4B4B400B4B4
      B400B4B4B400B3B3B300B3B3B300E7E7E700DBF8FF000DCFFF0000CCFF0000CC
      FF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CC
      FF0000CCFF0000CCFF000DCFFF00DBF8FF00DBEDDB000D860D00008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      000000800000008000000D860D00DBEDDB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FCFCFC00E7E7E700D4D4D400D1D1
      D100D1D1D100D1D1D100D1D1D100D1D1D100D1D1D100D1D1D100D1D1D100D1D1
      D100D1D1D100D4D4D400E7E7E700FCFCFC0000000000DBF8FF0072E3FF0072E3
      FF0072E3FF0072E3FF0072E3FF0072E3FF0072E3FF0072E3FF0072E3FF0072E3
      FF0072E3FF0072E3FF00DBF8FF000000000000000000DBEDDB0072B9720072B9
      720072B9720072B9720072B9720072B9720072B9720072B9720072B9720072B9
      720072B9720072B97200DBEDDB0000000000424D3E000000000000003E000000
      2800000040000000400000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF00FFFF800100000000FFFF3FFC00000000
      FFFF67FE00000000F00F61FE00000000E01F70FE00000000DFCF747E00000000
      D00F7A3E00000000BF877D1E00000000A1477E8E000000007F637F4600000000
      00E37FA200000000FFF17FD200000000FFF07FE600000000FFF17FFE00000000
      FFFF3FFC00000000FFFF800100000000F9FFFFFFFFFF0000F01F8001FFFF0000
      E0078001F9FF0000C001C001F0FF00008001C001E07F00008001C001C03F0000
      8001C001800F00008001C001000700008000C001000300008001C00102010000
      8001C001870000008007C001CF800000C007C001FFC00000E01FC003FFE10000
      F03FC007FFF30000F87FC00FFFFF0000800180018001F7FF000000000000C03F
      000000000000C01F000000000000800700000000000000030000000000000001
      000000000000070100000000000083C300000000000081C00000000000008060
      0000000000008000000000000000C000000000000000F001000000000000F803
      000000000000FC47800180018001FFCFFFFF800180018001FFFF000000000000
      FFFF000000000000FFFF000000000000C007000000000000CFF7000000000000
      CFE7000000000000D7E7000000000000D807000000000000C197000000000000
      D7C7000000000000CFE7000000000000C007000000000000F7A7000000000000
      FFFF000000000000FFFF00008001800100000000000000000000000000000000
      000000000000}
  end
  object cdsHistorico: TClientDataSet
    Aggregates = <>
    PacketRecords = 30
    Params = <>
    ProviderName = 'dspHistorico'
    Left = 245
    Top = 542
    object cdsHistoricodescricao: TStringField
      FieldName = 'descricao'
      Size = 300
    end
  end
  object qhistorico: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DBConn
    Left = 101
    Top = 542
  end
  object dspHistorico: TDataSetProvider
    DataSet = qhistorico
    Left = 173
    Top = 542
  end
  object dsHistorico: TDataSource
    DataSet = cdsHistorico
    Left = 317
    Top = 542
  end
  object qCli: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select t1.cli_codigo,'
      '       t1.cli_tabpreco,'
      '       t1.cli_razao,'
      '       t1.cli_cgc,'
      '       t1.cli_insc,'
      '       t2.cid_cidade,'
      '       t2.cid_estado,'
      '       t1.cli_modo_trib_st,'
      '       cn1.cnae_carga_trib_media,'
      '       t1.pcx_codigo,'
      '       t1.cli_consfinal,'
      '       t1.CLI_REGIME_TRIBUTARIO,'
      '       t1.OPE_CODIGO,'
      '       t1.pcl_codigo,'
      '       t3.pcl_nome,'
      '       t1.REP_CODIGO,'
      '       t1.TRP_CODIGO,'
      '       t1.cli_fone'
      'from cli0000 t1'
      '       left join cid0000 t2 on (t2.cid_codigo = t1.cid_codigo)'
      
        '       LEFT JOIN cnae CN1 ON (CN1.cnae_registro = t1.cnae_regist' +
        'ro)'
      '       left join pcl0000 t3 on (t3.pcl_codigo = t1.pcl_codigo)'
      'Where t1.Cli_Codigo='#39'-1'#39
      'order by t1.cli_razao'
      ''
      '')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 543
    Top = 180
  end
  object ppReportLocacao: TppReport
    AutoStop = False
    DataPipeline = pipeLocacao
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    EmailSettings.ConnectionSettings.MailService = 'SMTP'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.EnableMultiPlugin = False
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    ThumbnailSettings.PageHighlight.Width = 3
    ThumbnailSettings.ThumbnailSize = tsSmall
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.AllowExtract = True
    PDFSettings.EncryptSettings.AllowAssemble = True
    PDFSettings.EncryptSettings.AllowQualityPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.EncryptSettings.EncryptionType = etRC4
    PDFSettings.DigitalSignatureSettings.SignPDF = False
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PDFSettings.PDFAFormat = pafNone
    PreviewFormSettings.PageBorder.mmPadding = 0
    RTFSettings.AppName = 'ReportBuilder'
    RTFSettings.Author = 'ReportBuilder'
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    RTFSettings.Title = 'Report'
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    CloudDriveSettings.DropBoxSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.DropBoxSettings.DirectorySupport = True
    CloudDriveSettings.GoogleDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.GoogleDriveSettings.DirectorySupport = False
    CloudDriveSettings.OneDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.OneDriveSettings.DirectorySupport = True
    Left = 825
    Top = 539
    Version = '22.0'
    mmColumnWidth = 0
    DataPipelineName = 'pipeLocacao'
    object ppHeaderBand1: TppHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand1: TppDetailBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 277284
      mmPrintPosition = 0
      object ppShape28: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape28'
        mmHeight = 15346
        mmLeft = 882
        mmTop = 130704
        mmWidth = 195527
        BandType = 4
        LayerName = Foreground
      end
      object ppShape11: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape11'
        mmHeight = 25538
        mmLeft = 794
        mmTop = 1588
        mmWidth = 152224
        BandType = 4
        LayerName = Foreground
      end
      object Logo1_loc: TppImage
        OnPrint = LOGO1Print
        DesignLayer = ppDesignLayer1
        UserName = 'Logo1_loc'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        Stretch = True
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        mmHeight = 23548
        mmLeft = 1852
        mmTop = 2646
        mmWidth = 44803
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LBL_EMPRESA2'
        HyperlinkEnabled = False
        OnGetText = ppLabel1GetText
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'LBL_EMPRESA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3704
        mmLeft = 47450
        mmTop = 3704
        mmWidth = 20638
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'endereco_loc'
        HyperlinkEnabled = False
        OnGetText = ppLabel2GetText
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'ENDERECO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3704
        mmLeft = 47450
        mmTop = 10319
        mmWidth = 14288
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LBL_TELEFONE2'
        HyperlinkEnabled = False
        OnGetText = ppLabel3GetText
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'TELEFONE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3704
        mmLeft = 105659
        mmTop = 10319
        mmWidth = 46390
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LBL_CNPJ2'
        HyperlinkEnabled = False
        OnGetText = ppLabel4GetText
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'CNPJ'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3704
        mmLeft = 47450
        mmTop = 22225
        mmWidth = 6615
        BandType = 4
        LayerName = Foreground
      end
      object ppShape12: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape12'
        mmHeight = 25550
        mmLeft = 152753
        mmTop = 1588
        mmWidth = 43392
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        CharWrap = True
        Border.mmPadding = 0
        Caption = 'NOTA DE LOCA'#199#195'O FATURA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7408
        mmLeft = 160514
        mmTop = 2646
        mmWidth = 27870
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'CEP'
        HyperlinkEnabled = False
        OnGetText = ppLabel6GetText
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'CEP'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3704
        mmLeft = 47450
        mmTop = 16669
        mmWidth = 5027
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'CEP1'
        HyperlinkEnabled = False
        OnGetText = ppLabel8GetText
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'CIDADE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3704
        mmLeft = 65178
        mmTop = 16669
        mmWidth = 24694
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label9'
        HyperlinkEnabled = False
        OnGetText = ppLabel9GetText
        Anchors = [atTop]
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'EMAIL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3704
        mmLeft = 105659
        mmTop = 16669
        mmWidth = 46390
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'IESTADUAL'
        HyperlinkEnabled = False
        OnGetText = ppLabel10GetText
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'INS ESTADUAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3704
        mmLeft = 105394
        mmTop = 22225
        mmWidth = 46567
        BandType = 4
        LayerName = Foreground
      end
      object ppShape13: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape13'
        mmHeight = 15610
        mmLeft = 794
        mmTop = 28310
        mmWidth = 53711
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label11'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'N'#186' Fatura'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4763
        mmLeft = 7673
        mmTop = 30163
        mmWidth = 28046
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'FAT_CODIGO'
        DataPipeline = pipeLocacao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pipeLocacao'
        mmHeight = 4763
        mmLeft = 9260
        mmTop = 35983
        mmWidth = 21960
        BandType = 4
        LayerName = Foreground
      end
      object ppShape14: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape14'
        mmHeight = 15610
        mmLeft = 794
        mmTop = 44715
        mmWidth = 195447
        BandType = 4
        LayerName = Foreground
      end
      object ppShape15: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape15'
        mmHeight = 15610
        mmLeft = 794
        mmTop = 60325
        mmWidth = 195447
        BandType = 4
        LayerName = Foreground
      end
      object ppShape16: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape16'
        mmHeight = 13885
        mmLeft = 794
        mmTop = 75936
        mmWidth = 53711
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label12'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'N'#186':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4763
        mmLeft = 154867
        mmTop = 13494
        mmWidth = 6902
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'FAT_CODIGO'
        DataPipeline = pipeLocacao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pipeLocacao'
        mmHeight = 4763
        mmLeft = 163333
        mmTop = 13494
        mmWidth = 17601
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label13'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Data emiss'#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4763
        mmLeft = 154782
        mmTop = 20373
        mmWidth = 18168
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'FPC_DTEMIS'
        DataPipeline = pipeLocacao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pipeLocacao'
        mmHeight = 4763
        mmLeft = 173038
        mmTop = 20373
        mmWidth = 22317
        BandType = 4
        LayerName = Foreground
      end
      object ppShape17: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape17'
        mmHeight = 15610
        mmLeft = 124619
        mmTop = 28310
        mmWidth = 71783
        BandType = 4
        LayerName = Foreground
      end
      object ppShape18: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape18'
        mmHeight = 13885
        mmLeft = 54504
        mmTop = 75936
        mmWidth = 30140
        BandType = 4
        LayerName = Foreground
      end
      object ppShape19: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape19'
        mmHeight = 15610
        mmLeft = 54504
        mmTop = 28310
        mmWidth = 70057
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel14: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label14'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Vencimento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4763
        mmLeft = 144198
        mmTop = 30163
        mmWidth = 29633
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = 'FPC_VENCTO'
        DataPipeline = pipeLocacao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pipeLocacao'
        mmHeight = 4763
        mmLeft = 144463
        mmTop = 37571
        mmWidth = 33936
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel15: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label15'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Valor R$'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4763
        mmLeft = 69850
        mmTop = 30163
        mmWidth = 29369
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        Border.mmPadding = 0
        DataField = 'FPC_VLPARC'
        DataPipeline = pipeLocacao
        DisplayFormat = '$  ,#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pipeLocacao'
        mmHeight = 4763
        mmLeft = 76465
        mmTop = 35983
        mmWidth = 26458
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel16: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label16'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'SACADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4763
        mmLeft = 1852
        mmTop = 46567
        mmWidth = 24077
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        Border.mmPadding = 0
        DataField = 'CLI_RAZAO'
        DataPipeline = pipeLocacao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pipeLocacao'
        mmHeight = 4763
        mmLeft = 1852
        mmTop = 52652
        mmWidth = 146902
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel17: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label17'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Endere'#231'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4763
        mmLeft = 1852
        mmTop = 61913
        mmWidth = 27517
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText8'
        CharWrap = True
        Border.mmPadding = 0
        DataField = 'CLI_ENDERE'
        DataPipeline = pipeLocacao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        WordWrap = True
        DataPipelineName = 'pipeLocacao'
        mmHeight = 4763
        mmLeft = 1852
        mmTop = 67204
        mmWidth = 147109
        BandType = 4
        LayerName = Foreground
      end
      object ppShape20: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape20'
        mmHeight = 13885
        mmLeft = 84402
        mmTop = 75936
        mmWidth = 40838
        BandType = 4
        LayerName = Foreground
      end
      object ppShape21: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape21'
        mmHeight = 13758
        mmLeft = 125062
        mmTop = 75936
        mmWidth = 37218
        BandType = 4
        LayerName = Foreground
      end
      object ppShape22: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape22'
        mmHeight = 13885
        mmLeft = 162190
        mmTop = 75936
        mmWidth = 34043
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel18: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label18'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Munic'#237'pio/UF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4763
        mmLeft = 1852
        mmTop = 76994
        mmWidth = 25929
        BandType = 4
        LayerName = Foreground
      end
      object txtCidadeUF: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'txtCidadeUF'
        Border.mmPadding = 0
        DataField = 'CLI_CIDADE'
        DataPipeline = pipeLocacao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pipeLocacao'
        mmHeight = 4763
        mmLeft = 1852
        mmTop = 82815
        mmWidth = 50961
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel19: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label19'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'CEP'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4763
        mmLeft = 57150
        mmTop = 76994
        mmWidth = 18785
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText14: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText14'
        OnGetText = ppDBText14GetText
        Border.mmPadding = 0
        DataField = 'CLI_CEP'
        DataPipeline = pipeLocacao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pipeLocacao'
        mmHeight = 4763
        mmLeft = 57679
        mmTop = 82815
        mmWidth = 24963
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel21: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label21'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'CNPJ'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4763
        mmLeft = 89429
        mmTop = 76994
        mmWidth = 19315
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText13: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText13'
        OnGetText = ppDBText13GetText
        Border.mmPadding = 0
        DataField = 'CLI_CGC'
        DataPipeline = pipeLocacao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pipeLocacao'
        mmHeight = 4763
        mmLeft = 89429
        mmTop = 82815
        mmWidth = 30830
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel22: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label22'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Insc. Estadual'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4763
        mmLeft = 130440
        mmTop = 76994
        mmWidth = 28184
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText15: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText15'
        Border.mmPadding = 0
        DataField = 'CLI_INSC'
        DataPipeline = pipeLocacao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pipeLocacao'
        mmHeight = 4763
        mmLeft = 130440
        mmTop = 82815
        mmWidth = 20016
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel23: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label23'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Insc. Municipal'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4763
        mmLeft = 164836
        mmTop = 76994
        mmWidth = 30600
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText16: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText16'
        Border.mmPadding = 0
        DataField = 'CLI_INSCMUNI'
        DataPipeline = pipeLocacao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pipeLocacao'
        mmHeight = 4763
        mmLeft = 164836
        mmTop = 82815
        mmWidth = 19096
        BandType = 4
        LayerName = Foreground
      end
      object ppShape23: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape23'
        mmHeight = 12965
        mmLeft = 794
        mmTop = 89694
        mmWidth = 195527
        BandType = 4
        LayerName = Foreground
      end
      object ppShape24: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape24'
        mmHeight = 5027
        mmLeft = 794
        mmTop = 115623
        mmWidth = 195527
        BandType = 4
        LayerName = Foreground
      end
      object ppShape25: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape25'
        mmHeight = 12965
        mmLeft = 794
        mmTop = 102659
        mmWidth = 195527
        BandType = 4
        LayerName = Foreground
      end
      object ppShape26: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape26'
        mmHeight = 5027
        mmLeft = 794
        mmTop = 120650
        mmWidth = 195527
        BandType = 4
        LayerName = Foreground
      end
      object ppShape27: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape27'
        mmHeight = 5027
        mmLeft = 794
        mmTop = 125677
        mmWidth = 195527
        BandType = 4
        LayerName = Foreground
      end
      object ppMemo1: TppMemo
        DesignLayer = ppDesignLayer1
        UserName = 'Memo1'
        Border.Weight = 0.750000000000000000
        Border.mmPadding = 0
        Caption = 'Memo1'
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Lines.Strings = (
          
            'Dispensada de emiss'#227'o de nota fiscal conforme LC n'#186' 116/2003 (lo' +
            'ca'#231#227'o de equipamentos). Atividade n'#227'o sujeita a reten'#231#227'o de CSLL' +
            ', COFINS e PIS prevista no artigo da lei 10833/04. N'#227'o sujeita a' +
            ' reten'#231#227'o do IR na fonte conforme artigo 647 do RIR 99.')
        RemoveEmptyLines = False
        Transparent = True
        mmHeight = 15415
        mmLeft = 1686
        mmTop = 130635
        mmWidth = 193274
        BandType = 4
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppLabel24: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label24'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Desconto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3970
        mmLeft = 139079
        mmTop = 116151
        mmWidth = 24848
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText17: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText17'
        Border.mmPadding = 0
        DataField = 'FPC_DESCTO'
        DataPipeline = pipeLocacao
        DisplayFormat = '$ ,#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pipeLocacao'
        mmHeight = 3970
        mmLeft = 140700
        mmTop = 121267
        mmWidth = 19844
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel25: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label25'
        Border.mmPadding = 0
        Caption = 'Endere'#231'o de cobran'#231'a e pra'#231'a de pagamento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 1852
        mmTop = 91281
        mmWidth = 66411
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel26: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label26'
        Border.mmPadding = 0
        Caption = 'Valor por extenso'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3968
        mmLeft = 1852
        mmTop = 103188
        mmWidth = 25136
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel28: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label28'
        Border.mmPadding = 0
        Caption = 'Discrimina'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 1852
        mmTop = 116151
        mmWidth = 21167
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel29: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label29'
        Border.mmPadding = 0
        Caption = 'LOCA'#199#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 1852
        mmTop = 121267
        mmWidth = 16757
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText18: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText18'
        OnGetText = ppDBText18GetText
        Border.mmPadding = 0
        DataField = 'FPC_VLPARC'
        DataPipeline = pipeLocacao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pipeLocacao'
        mmHeight = 4763
        mmLeft = 1852
        mmTop = 108744
        mmWidth = 134938
        BandType = 4
        LayerName = Foreground
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 83873
        mmTop = 115623
        mmWidth = 794
        BandType = 4
        LayerName = Foreground
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 83873
        mmTop = 120915
        mmWidth = 794
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel30: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label30'
        Border.mmPadding = 0
        Caption = 'Qtde'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 85196
        mmTop = 116151
        mmWidth = 6879
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel31: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label31'
        Border.mmPadding = 0
        Caption = '1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 90752
        mmTop = 121267
        mmWidth = 1852
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel32: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label32'
        Border.mmPadding = 0
        Caption = 'Total R$'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 175419
        mmTop = 116151
        mmWidth = 12171
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel33: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label301'
        Border.mmPadding = 0
        Caption = 'Vlr Unit'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 105040
        mmTop = 116151
        mmWidth = 10319
        BandType = 4
        LayerName = Foreground
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line3'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 102923
        mmTop = 115359
        mmWidth = 794
        BandType = 4
        LayerName = Foreground
      end
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line4'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 102923
        mmTop = 120650
        mmWidth = 794
        BandType = 4
        LayerName = Foreground
      end
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line5'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 130969
        mmTop = 115623
        mmWidth = 794
        BandType = 4
        LayerName = Foreground
      end
      object ppLine6: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line6'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 130969
        mmTop = 120915
        mmWidth = 794
        BandType = 4
        LayerName = Foreground
      end
      object ppLine7: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line7'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 169863
        mmTop = 115623
        mmWidth = 794
        BandType = 4
        LayerName = Foreground
      end
      object ppLine8: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line8'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 169863
        mmTop = 120915
        mmWidth = 794
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText19: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText19'
        Border.mmPadding = 0
        DataField = 'FPC_VLPARC'
        DataPipeline = pipeLocacao
        DisplayFormat = '$ ,#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pipeLocacao'
        mmHeight = 3970
        mmLeft = 105040
        mmTop = 121091
        mmWidth = 20373
        BandType = 4
        LayerName = Foreground
      end
      object ppVariable1: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'Variable1'
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 0
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 174625
        mmTop = 121267
        mmWidth = 13759
        BandType = 4
        LayerName = Foreground
      end
      object ppVariable2: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'Variable2'
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 174625
        mmTop = 126029
        mmWidth = 13759
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText20: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText20'
        Border.mmPadding = 0
        DataField = 'FPC_DESCTO'
        DataPipeline = pipeLocacao
        DisplayFormat = '$ ,#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pipeLocacao'
        mmHeight = 3970
        mmLeft = 140964
        mmTop = 126029
        mmWidth = 19844
        BandType = 4
        LayerName = Foreground
      end
      object ppLine9: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line9'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 169863
        mmTop = 125677
        mmWidth = 794
        BandType = 4
        LayerName = Foreground
      end
      object ppLine10: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line10'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 130969
        mmTop = 125677
        mmWidth = 794
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel34: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label34'
        Border.mmPadding = 0
        Caption = 'valor total da nota R$:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 87048
        mmTop = 126029
        mmWidth = 31221
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel35: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label35'
        Border.mmPadding = 0
        Caption = 'Label35'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3968
        mmLeft = 7144
        mmTop = 98161
        mmWidth = 11906
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel36: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label36'
        OnGetText = ppLabel36GetText
        Anchors = [atLeft, atTop, atRight]
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpRight, bpBottom]
        Border.Visible = True
        Border.mmPadding = 0
        Caption = 'OBS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        WordWrap = True
        mmHeight = 126835
        mmLeft = 882
        mmTop = 149853
        mmWidth = 195527
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel37: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label37'
        OnGetText = ppLabel37GetText
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight]
        Border.Visible = True
        Border.mmPadding = 0
        Caption = 'Observa'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 882
        mmTop = 145762
        mmWidth = 195527
        BandType = 4
        LayerName = Foreground
      end
    end
    object raCodeModule2: TraCodeModule
      object raProgramInfo11: TraProgramInfo
        raClassName = 'TraEventHandler'
        raProgram.ProgramName = 'Variable1OnGetText'
        raProgram.ProgramType = ttProcedure
        raProgram.Source = 
          'procedure Variable1OnGetText(var Text: String);'#13#10'begin'#13#10#13#10'  Text' +
          ' :=  '#39'R$ '#39' + FormatFloat('#39'#,0.00;-#,0.00'#39',pipeLocacao['#39'FPC_VLPAR' +
          'C'#39'] -  pipeLocacao['#39'FPC_DESCTO'#39'])'#13#10'     '#13#10'end;'#13#10
        raProgram.ComponentName = 'Variable1'
        raProgram.EventName = 'OnGetText'
        raProgram.EventID = 53
        raProgram.CaretPos = (
          16
          4)
      end
      object raProgramInfo12: TraProgramInfo
        raClassName = 'TraEventHandler'
        raProgram.ProgramName = 'Variable2OnGetText'
        raProgram.ProgramType = ttProcedure
        raProgram.Source = 
          'procedure Variable2OnGetText(var Text: String);'#13#10'begin'#13#10#13#10'  Text' +
          ' :=  '#39'R$ '#39' + FormatFloat('#39'#,0.00;-#,0.00'#39',pipeLocacao['#39'FPC_VLPAR' +
          'C'#39'] -   pipeLocacao['#39'FPC_DESCTO'#39'])'#13#10#13#10'end;'#13#10
        raProgram.ComponentName = 'Variable2'
        raProgram.EventName = 'OnGetText'
        raProgram.EventID = 53
        raProgram.CaretPos = (
          16
          4)
      end
      object raProgramInfo13: TraProgramInfo
        raClassName = 'TraEventHandler'
        raProgram.ProgramName = 'txtCidadeUFOnGetText'
        raProgram.ProgramType = ttProcedure
        raProgram.Source = 
          'procedure txtCidadeUFOnGetText(var Text: String);'#13#10'begin'#13#10#13#10'  Te' +
          'xt :=   pipeLocacao['#39'CLI_CIDADE'#39']+'#39'-'#39'+ pipeLocacao['#39'CLI_UF'#39'];'#13#10#13 +
          #10'end;'#13#10
        raProgram.ComponentName = 'txtCidadeUF'
        raProgram.EventName = 'OnGetText'
        raProgram.EventID = 53
        raProgram.CaretPos = (
          66
          4)
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
  object qLocacao: TSQLQuery
    Params = <>
    Left = 441
    Top = 539
  end
  object dsLocacao: TDataSource
    DataSet = cdsLocacao
    Left = 657
    Top = 539
  end
  object dspLocacao: TDataSetProvider
    DataSet = qLocacao
    Left = 505
    Top = 539
  end
  object cdsLocacao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspLocacao'
    Left = 577
    Top = 539
    object cdsLocacaoFAT_CODIGO: TStringField
      FieldName = 'FAT_CODIGO'
      ProviderFlags = [pfInWhere]
      Required = True
      Size = 6
    end
    object cdsLocacaoFPC_DTEMIS: TSQLTimeStampField
      FieldName = 'FPC_DTEMIS'
      ProviderFlags = [pfInWhere]
    end
    object cdsLocacaoCLI_RAZAO: TStringField
      DisplayWidth = 70
      FieldName = 'CLI_RAZAO'
      ProviderFlags = [pfInWhere]
      Size = 70
    end
    object cdsLocacaoFPC_VLPARC: TFMTBCDField
      FieldName = 'FPC_VLPARC'
      ProviderFlags = [pfInWhere]
      Precision = 15
      Size = 4
    end
    object cdsLocacaoFPC_VENCTO: TSQLTimeStampField
      FieldName = 'FPC_VENCTO'
    end
    object cdsLocacaoCLI_ENDERE: TStringField
      FieldName = 'CLI_ENDERE'
      Size = 60
    end
    object cdsLocacaoCLI_CIDADE: TStringField
      FieldName = 'CLI_CIDADE'
      Size = 30
    end
    object cdsLocacaoCLI_UF: TStringField
      FieldName = 'CLI_UF'
      Size = 2
    end
    object cdsLocacaoCLI_CEP: TStringField
      FieldName = 'CLI_CEP'
      Size = 8
    end
    object cdsLocacaoCLI_CGC: TStringField
      FieldName = 'CLI_CGC'
      Size = 14
    end
    object cdsLocacaoCLI_INSC: TStringField
      FieldName = 'CLI_INSC'
      Size = 18
    end
    object cdsLocacaoCLI_INSCMUNI: TStringField
      FieldName = 'CLI_INSCMUNI'
      Size = 14
    end
    object cdsLocacaoFPC_DESCTO: TFMTBCDField
      FieldName = 'FPC_DESCTO'
      Precision = 15
    end
    object cdsLocacaoPED_OBSERVACAO: TBlobField
      FieldName = 'PED_OBSERVACAO'
    end
  end
  object pipeLocacao: TppDBPipeline
    DataSource = dsLocacao
    UserName = 'pipeLocacao'
    Left = 729
    Top = 539
    object pipeLocacaoppField1: TppField
      FieldAlias = 'FAT_CODIGO'
      FieldName = 'FAT_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object pipeLocacaoppField2: TppField
      FieldAlias = 'FPC_DTEMIS'
      FieldName = 'FPC_DTEMIS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object pipeLocacaoppField3: TppField
      FieldAlias = 'CLI_RAZAO'
      FieldName = 'CLI_RAZAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object pipeLocacaoppField4: TppField
      FieldAlias = 'FPC_VLPARC'
      FieldName = 'FPC_VLPARC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object pipeLocacaoppField5: TppField
      FieldAlias = 'FPC_VENCTO'
      FieldName = 'FPC_VENCTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object pipeLocacaoppField6: TppField
      FieldAlias = 'CLI_ENDERE'
      FieldName = 'CLI_ENDERE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object pipeLocacaoppField7: TppField
      FieldAlias = 'CLI_CIDADE'
      FieldName = 'CLI_CIDADE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object pipeLocacaoppField8: TppField
      FieldAlias = 'CLI_UF'
      FieldName = 'CLI_UF'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object pipeLocacaoppField9: TppField
      FieldAlias = 'CLI_CEP'
      FieldName = 'CLI_CEP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object pipeLocacaoppField10: TppField
      FieldAlias = 'CLI_CGC'
      FieldName = 'CLI_CGC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object pipeLocacaoppField11: TppField
      FieldAlias = 'CLI_INSC'
      FieldName = 'CLI_INSC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object pipeLocacaoppField12: TppField
      FieldAlias = 'CLI_INSCMUNI'
      FieldName = 'CLI_INSCMUNI'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object pipeLocacaoppField13: TppField
      FieldAlias = 'FPC_DESCTO'
      FieldName = 'FPC_DESCTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object pipeLocacaoppField14: TppField
      FieldAlias = 'PED_OBSERVACAO'
      FieldName = 'PED_OBSERVACAO'
      FieldLength = 10
      DisplayWidth = 10
      Position = 13
    end
  end
  object ACBrExtenso1: TACBrExtenso
    StrMoeda = 'Real'
    StrMoedas = 'Reais'
    StrCentavo = 'Centavo'
    StrCentavos = 'Centavos'
    Left = 729
    Top = 275
  end
end
