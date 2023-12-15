inherited FrmPedidoItem: TFrmPedidoItem
  Left = 137
  Top = 163
  Caption = 'Item do Pedido'
  ClientHeight = 730
  ClientWidth = 1370
  Font.Charset = ANSI_CHARSET
  Font.Name = 'Arial'
  KeyPreview = True
  Position = poDesigned
  OnCloseQuery = FormCloseQuery
  OnResize = FormResize
  ExplicitWidth = 1386
  ExplicitHeight = 769
  PixelsPerInch = 96
  TextHeight = 14
  object pAcoes: TPanel [0]
    AlignWithMargins = True
    Left = 3
    Top = 696
    Width = 1364
    Height = 31
    Align = alBottom
    TabOrder = 0
    TabStop = True
    Visible = False
    object BtnCadastroProduto: TSpeedButton
      Left = 456
      Top = 2
      Width = 131
      Height = 25
      Hint = 'Cadastro de Produtos'
      Caption = 'Cadastro de Produtos'
      ParentShowHint = False
      ShowHint = True
      OnClick = BtnCadastroProdutoClick
    end
    object Label18: TLabel
      Left = 8
      Top = 2
      Width = 120
      Height = 14
      Alignment = taRightJustify
      Caption = 'P = Produto   S = Servi'#231'o'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object btnCodOriginal: TSpeedButton
      Left = 320
      Top = 2
      Width = 131
      Height = 25
      Hint = 'Incluir c'#243'digos originais'
      Caption = 'Incluir c'#243'digos originais'
      ParentShowHint = False
      ShowHint = False
      Visible = False
      OnClick = btnCodOriginalClick
    end
    object Bit_Gravar: TBitBtn
      Left = 753
      Top = 2
      Width = 100
      Height = 25
      Cursor = crHandPoint
      Hint = '|Grava registro...'
      Caption = '&Gravar'
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
      ModalResult = 1
      NumGlyphs = 2
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = Bit_GravarClick
    end
    object Bit_Cancelar: TBitBtn
      Left = 853
      Top = 2
      Width = 100
      Height = 25
      Cursor = crHandPoint
      Hint = '|Cancela registro atual...'
      Cancel = True
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
      ModalResult = 2
      NumGlyphs = 2
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = Bit_CancelarClick
    end
    object BtnCompraVenda: TBitBtn
      Left = 593
      Top = 2
      Width = 153
      Height = 25
      Hint = 'Consulta de Compras e Vendas por Produto'
      Caption = 'Consulta Entradas/Sa'#237'das'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FF8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E
        8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8EFF00FF8E8E8E
        FFFFFFFFFFFFFAFAFAF2F2F2E9E9E9E0E0E0D9D9D9D4D4D4D4D4D4D4D4D4D4D4
        D4D4D4D4D4D4D48E8E8EFF00FF8E8E8EFFFFFFFFFFFFFFFFFFFAFAFAF2F2F2E9
        E9E9E1E1E1D9D9D9D4D4D4D4D4D4D4D4D4D4D4D4D4D4D48E8E8EFF00FF8E8E8E
        FFFFFF9F9F9F9F9F9F9F9F9FFAFAFA7D7D7D7D7D7D7D7D7DD9D9D96969696969
        69696969D4D4D48E8E8EFF00FF8E8E8EFFFFFF9F9F9F9F9F9F9F9F9FFFFFFF7D
        7D7D7D7D7D7D7D7DE1E1E1696969696969696969D4D4D48E8E8EFF00FF8E8E8E
        FFFFFF9F9F9F9F9F9F9F9F9FFFFFFF7D7D7D7D7D7D7D7D7DEAEAEA6969696969
        69696969D4D4D48E8E8EFF00FF8E8E8EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFF9F9F9F2F2F2E9E9E9E1E1E1D9D9D9D4D4D48E8E8EFF00FF8E8E8E
        FFFFFFB2B2B2B2B2B2B2B2B2FFFFFF727272727272727272F9F9F97676767676
        76767676D9D9D98E8E8EFF00FF8E8E8EFFFFFFB2B2B2B2B2B2B2B2B2FFFFFF72
        7272727272727272FFFFFF767676767676767676E1E1E18E8E8EFF00FF8E8E8E
        FFFFFFB2B2B2B2B2B2B2B2B2FFFFFF727272727272727272FFFFFF7676767676
        76767676EAEAEA8E8E8EFF00FF8E8E8EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAF2F2F28E8E8EFF00FF8E8E8E
        8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E
        8E8E8E8E8E8E8E8E8E8EFF00FFFF00FF8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E
        8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8EFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      TabStop = False
      OnClick = BtnCompraVendaClick
    end
  end
  object pDetalhesItem: TPanel [1]
    Left = 0
    Top = 287
    Width = 1370
    Height = 406
    Align = alClient
    TabOrder = 1
    TabStop = True
    object pgcPrincipal: TPageControl
      AlignWithMargins = True
      Left = 1
      Top = 1
      Width = 1368
      Height = 404
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      ActivePage = tsSemGrade
      Align = alClient
      MultiLine = True
      TabOrder = 0
      Touch.ParentTabletOptions = False
      Touch.TabletOptions = [toPressAndHold]
      OnChanging = pgcPrincipalChanging
      object tsSemGrade: TTabSheet
        Caption = 'Sem Grade'
        ImageIndex = 2
        object pgc2: TPageControl
          Left = 0
          Top = 0
          Width = 561
          Height = 375
          ActivePage = tsInfoLancamento
          Align = alLeft
          TabOrder = 0
          OnChange = pgc2Change
          object tsInfoLancamento: TTabSheet
            Caption = 'Informa'#231#245'es do Lan'#231'amento'
            object lblTabelaPreco: TLabel
              Left = 7
              Top = 29
              Width = 65
              Height = 14
              Alignment = taRightJustify
              Caption = 'Tabela Pre'#231'o:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object Label5: TLabel
              Left = 5
              Top = 54
              Width = 67
              Height = 14
              Alignment = taRightJustify
              Caption = 'Almoxarifado:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object lbQuantidade: TLabel
              Left = 14
              Top = 80
              Width = 58
              Height = 14
              Alignment = taRightJustify
              Caption = 'Quantidade:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object Label7: TLabel
              Left = 8
              Top = 104
              Width = 60
              Height = 14
              Alignment = taRightJustify
              Caption = 'Pre'#231'o Bruto:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object Label8: TLabel
              Left = 23
              Top = 126
              Width = 49
              Height = 14
              Alignment = taRightJustify
              Caption = 'Desconto:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object Label9: TLabel
              Left = 4
              Top = 150
              Width = 68
              Height = 14
              Alignment = taRightJustify
              Caption = 'Pre'#231'o L'#237'quido:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object Label10: TLabel
              Left = 46
              Top = 174
              Width = 26
              Height = 14
              Alignment = taRightJustify
              Caption = '% IPI:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object Label15: TLabel
              Left = 14
              Top = 198
              Width = 58
              Height = 14
              Alignment = taRightJustify
              Caption = 'Valor da ST:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object Label22: TLabel
              Left = 175
              Top = 202
              Width = 69
              Height = 14
              Alignment = taRightJustify
              Caption = '% ST Produto:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Visible = False
            end
            object lbl1: TLabel
              Left = 368
              Top = 104
              Width = 74
              Height = 14
              Alignment = taRightJustify
              Caption = 'Acrescimo R$ :'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object Label13: TLabel
              Left = 347
              Top = 126
              Width = 95
              Height = 14
              Alignment = taRightJustify
              Caption = 'Desconto Adicional:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object Label17: TLabel
              Left = 418
              Top = 150
              Width = 25
              Height = 14
              Alignment = taRightJustify
              Caption = 'Total:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object Label12: TLabel
              Left = 386
              Top = 174
              Width = 56
              Height = 14
              Alignment = taRightJustify
              Caption = 'Valor do IPI:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object Label16: TLabel
              Left = 392
              Top = 198
              Width = 50
              Height = 14
              Alignment = taRightJustify
              Caption = 'Comiss'#227'o:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object Label14: TLabel
              Left = 373
              Top = 81
              Width = 69
              Height = 14
              Alignment = taRightJustify
              Caption = 'Estoque Disp.:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object SpeedButton1: TSpeedButton
              Left = 73
              Top = 0
              Width = 130
              Height = 22
              Cursor = crHandPoint
              Hint = 'Vendedor possui verba para aproveitar'
              Caption = 'Aproveitamento de Verba'
              ParentShowHint = False
              ShowHint = True
              Visible = False
              OnClick = SpeedButton1Click
            end
            object lbVerba: TLabel
              Left = 394
              Top = 225
              Width = 50
              Height = 14
              Alignment = taRightJustify
              Caption = 'Verba(%):'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Visible = False
            end
            object Label50: TLabel
              Left = 213
              Top = 153
              Width = 27
              Height = 14
              Hint = 'Somente para programador testar, n'#227'o vai nunca aparecer'
              Alignment = taRightJustify
              Caption = 'Peso:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Visible = False
            end
            object Label51: TLabel
              Left = 211
              Top = 181
              Width = 26
              Height = 14
              Hint = 'Somente para programador testar, n'#227'o vai nunca aparecer'
              Alignment = taRightJustify
              Caption = 'P Ind:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Visible = False
            end
            object lmarkup: TLabel
              Left = 377
              Top = 253
              Width = 68
              Height = 14
              Alignment = taRightJustify
              Caption = 'Margem(mkp):'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object Pendente: TLabel
              Left = 46
              Top = 223
              Width = 26
              Height = 14
              Alignment = taRightJustify
              Caption = 'Falta:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object LOFERTA1: TLabel
              Left = 184
              Top = 155
              Width = 70
              Height = 14
              Caption = '* OFERTA AT'#201' '
            end
            object Label61: TLabel
              Left = 185
              Top = 104
              Width = 65
              Height = 14
              Alignment = taRightJustify
              Caption = 'Data entrega:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object lbPeso: TLabel
              Left = 284
              Top = 79
              Width = 27
              Height = 14
              Alignment = taRightJustify
              Caption = 'Peso:'
              Visible = False
            end
            object lbFaturamento: TLabel
              Left = 6
              Top = 91
              Width = 68
              Height = 14
              Caption = '(Faturamento)'
              Font.Charset = ANSI_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Visible = False
            end
            object lbUnidade: TLabel
              Left = 177
              Top = 79
              Width = 25
              Height = 14
              Caption = 'Und.:'
              Visible = False
            end
            object pUltimoPreco: TPanel
              Left = 209
              Top = 4
              Width = 341
              Height = 18
              Alignment = taRightJustify
              BevelOuter = bvNone
              Caption = 'pUltimoPreco'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 30
            end
            object EdAlmoxarifadoCodigo: TEdit
              Left = 74
              Top = 51
              Width = 43
              Height = 22
              CharCase = ecUpperCase
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              MaxLength = 5
              ParentFont = False
              TabOrder = 2
              OnExit = EdAlmoxarifadoCodigoExit
            end
            object CbAlmoxarifado: TComboBoxRw
              Left = 119
              Top = 51
              Width = 402
              Height = 22
              TabOrder = 3
              CharCase = ecUpperCase
              LookupSelect = 'amx_CODIGO,AMX_DESCRI'
              LookupOrderBy = 'AMX_DESCRI'
              LookupTable = 'ALMOX0000'
              LookupDispl = 'AMX_DESCRI'
              OnSelect = CbAlmoxarifadoSelect
              GridAutoSize = False
              LookupSource = CbAlmoxarifado.InternalSource
              LookupKeyField = 'amx_CODIGO'
              ShowButton = True
              LookupTableShare = 'TABELAS'
              AutoF8WinTitulo = 'Almoxarifados'
              AutoF8ColumnsTitulo = 'C'#243'digo, Descri'#231#227'o'
              GridLeft = 0
              GridWidth = 0
              GridHeight = 100
              GridTop = 0
              GridShowWhenEnter = False
              SelectWithDoubleClick = False
              LimparCampoAoSair = True
              Tabela = 'ALMOX0000'
              CamposCarregar = 'amx_CODIGO,AMX_DESCRI'
              CamposRetornar = 'amx_CODIGO'
              CamposOrdernar = 'AMX_DESCRI'
              ConexaoBanco = DataCadastros.SQLConnection1
              Compartilhar = 'TABELAS'
              Localizado = False
              CodigoEmpresa = 0
              ResetaCampos = False
              MultiEmpresa = False
              Localizar = False
              CarregarCombo = False
              itemindex = 0
              style = csDropDown
            end
            object grpTipoInd: TGroupBox
              Left = 7
              Top = 241
              Width = 364
              Height = 41
              Caption = 'Tipo de Industrializa'#231#227'o'
              TabOrder = 21
              object SpeedButton2: TSpeedButton
                Left = 334
                Top = 15
                Width = 22
                Height = 21
                Hint = 'Cadastro de Natureza de Opera'#231#227'o'
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  0400000000000001000000000000000000001000000000000000000000000000
                  8000008000000080800080000000800080008080000080808000C0C0C0000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                  33333333333FFFFFFFFF333333000000000033333377777777773333330FFFFF
                  FFF03333337F333333373333330FFFFFFFF03333337F3FF3FFF73333330F00F0
                  00F03333F37F773777373330330FFFFFFFF03337FF7F3F3FF3F73339030F0800
                  F0F033377F7F737737373339900FFFFFFFF03FF7777F3FF3FFF70999990F00F0
                  00007777777F7737777709999990FFF0FF0377777777FF37F3730999999908F0
                  F033777777777337F73309999990FFF0033377777777FFF77333099999000000
                  3333777777777777333333399033333333333337773333333333333903333333
                  3333333773333333333333303333333333333337333333333333}
                NumGlyphs = 2
                ParentShowHint = False
                ShowHint = True
                OnClick = SpeedButton2Click
              end
              object cxLookupComboBox1: TSgDbSearchCombo
                Left = 10
                Top = 15
                Width = 299
                Height = 22
                TabOrder = 0
                LookupSelect = 'itt_registro , ITT_DESCRICAO'
                LookupOrderBy = 'ITT_DESCRICAO'
                LookupTable = 'IND_TIPORETORNO'
                LookupDispl = 'ITT_DESCRICAO'
                GridAutoSize = False
                LookupSource = qTipoIndustrializacao
                LookupKeyField = 'itt_registro '
                ShowButton = True
                GridLeft = 0
                GridWidth = 0
                GridHeight = 100
                GridTop = 0
                GridShowWhenEnter = False
                SelectWithDoubleClick = False
                LimparCampoAoSair = True
              end
            end
            object pnVerba: TPanel
              Left = 113
              Top = 288
              Width = 437
              Height = 177
              BorderStyle = bsSingle
              Color = clInfoBk
              ParentBackground = False
              TabOrder = 24
              Visible = False
              OnExit = pnVerbaExit
              object Label43: TLabel
                Left = 41
                Top = 118
                Width = 118
                Height = 14
                Alignment = taRightJustify
                Caption = 'Utilizar no item por valor:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
              end
              object Label44: TLabel
                Left = 105
                Top = 22
                Width = 84
                Height = 14
                Alignment = taRightJustify
                Caption = 'Verba Dispon'#237'vel:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
              end
              object Label41: TLabel
                Left = 113
                Top = 49
                Width = 76
                Height = 14
                Alignment = taRightJustify
                Caption = 'Poss'#237'vel Utlizar:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
              end
              object Label39: TLabel
                Left = 12
                Top = 90
                Width = 145
                Height = 14
                Alignment = taRightJustify
                Caption = 'Utilizar no item por percentual:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
              end
              object Label40: TLabel
                Left = 277
                Top = 90
                Width = 40
                Height = 14
                Alignment = taRightJustify
                Caption = 'Usando:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
              end
              object Button2: TButton
                Left = 131
                Top = 140
                Width = 75
                Height = 25
                Caption = 'Ok'
                Default = True
                TabOrder = 2
                OnClick = Button2Click
              end
              object Button3: TButton
                Left = 275
                Top = 141
                Width = 75
                Height = 25
                Caption = 'Cancela'
                TabOrder = 4
                OnClick = Button3Click
              end
              object Panel4: TPanel
                Left = -2
                Top = 69
                Width = 485
                Height = 2
                Caption = 'Panel4'
                TabOrder = 6
              end
              object edUsando: TEdit
                Left = 323
                Top = 86
                Width = 103
                Height = 22
                Alignment = taRightJustify
                Enabled = False
                TabOrder = 7
                Text = '0,0000'
              end
              object CurUsarValor: TJvValidateEdit
                Left = 160
                Top = 115
                Width = 103
                Height = 22
                CriticalPoints.MaxValueIncluded = False
                CriticalPoints.MinValueIncluded = False
                DisplayFormat = dfCurrency
                DecimalPlaces = 2
                EditText = '0'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
                OnChange = CurUsarValorChange
              end
              object CurTotVerba: TJvValidateEdit
                Left = 190
                Top = 17
                Width = 103
                Height = 22
                Color = 14145495
                CriticalPoints.MaxValueIncluded = False
                CriticalPoints.MinValueIncluded = False
                DisplayFormat = dfCurrency
                DecimalPlaces = 2
                EditText = '0'
                Enabled = False
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                ReadOnly = True
                TabOrder = 3
              end
              object CurPossivel: TJvValidateEdit
                Left = 190
                Top = 44
                Width = 103
                Height = 22
                Color = 14145495
                CriticalPoints.MaxValueIncluded = False
                CriticalPoints.MinValueIncluded = False
                DisplayFormat = dfCurrency
                DecimalPlaces = 2
                EditText = '0'
                Enabled = False
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                ReadOnly = True
                TabOrder = 5
              end
              object CurUsarPerc: TJvValidateEdit
                Left = 160
                Top = 87
                Width = 103
                Height = 22
                CriticalPoints.MaxValueIncluded = False
                CriticalPoints.MinValueIncluded = False
                DisplayFormat = dfPercent
                DecimalPlaces = 2
                DisplaySuffix = ' %'
                EditText = '0'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                OnChange = CurUsarPercChange
              end
            end
            object pprazo: TPanel
              Left = 172
              Top = 124
              Width = 172
              Height = 26
              BevelOuter = bvNone
              TabOrder = 8
              object Label49: TLabel
                Left = 11
                Top = 5
                Width = 117
                Height = 14
                Alignment = taRightJustify
                Caption = 'Prazo de entrega(dias) :'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
              end
              object edPrazo: TSpinEdit
                Left = 123
                Top = 2
                Width = 47
                Height = 23
                MaxValue = 0
                MinValue = 0
                TabOrder = 0
                Value = 0
                OnChange = edPrazoChange
              end
            end
            object grpB2B: TGroupBox
              Left = 5
              Top = 282
              Width = 370
              Height = 42
              Align = alCustom
              Caption = 'Controle B2B'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 20
              object Label20: TLabel
                Left = 8
                Top = 20
                Width = 90
                Height = 14
                Caption = 'Pedido de Compra:'
              end
              object Label21: TLabel
                Left = 194
                Top = 21
                Width = 112
                Height = 14
                Caption = 'Item Pedido de Compra:'
              end
              object edtPedidoB2B: TEdit
                Left = 104
                Top = 16
                Width = 68
                Height = 22
                MaxLength = 15
                TabOrder = 0
              end
              object SpinItemB2B: TJvSpinEdit
                Left = 308
                Top = 17
                Width = 57
                Height = 22
                DisplayFormat = '000'
                Decimal = 0
                MaxValue = 999999.000000000000000000
                TabOrder = 1
              end
            end
            object CbItemAgregado: TCheckBox
              Left = 17
              Top = 4
              Width = 37
              Height = 17
              TabStop = False
              Caption = 'KIT - Item Agregado (baixa estoque sem sair na nota) '
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              Visible = False
              OnClick = CbItemAgregadoClick
            end
            object cbTabelaPrecoMultiplo: TcxLookupComboBox
              Left = 74
              Top = 26
              Properties.AutoSelect = False
              Properties.KeyFieldNames = 'seq'
              Properties.ListColumns = <
                item
                  Width = 150
                  FieldName = 'nome'
                end
                item
                  FieldName = 'PRD_PVENDA'
                end
                item
                  Width = 60
                  FieldName = 'PRD_PERC_COMISSAO'
                end>
              Properties.ListSource = dsTabelaPreco
              Properties.OnChange = cbTabelaPrecoMultiploPropertiesChange
              Style.LookAndFeel.Kind = lfStandard
              StyleDisabled.LookAndFeel.Kind = lfStandard
              StyleFocused.LookAndFeel.Kind = lfStandard
              StyleHot.LookAndFeel.Kind = lfStandard
              TabOrder = 1
              OnClick = cbTabelaPrecoMultiploClick
              OnEnter = cbTabelaPrecoMultiploEnter
              Width = 200
            end
            object ChkSemValor: TCheckBox
              Left = 280
              Top = 28
              Width = 97
              Height = 17
              Caption = 'Item sem valor'
              TabOrder = 29
            end
            object CurQuantidade: TJvValidateEdit
              Left = 74
              Top = 76
              Width = 100
              Height = 22
              AllowEmpty = True
              CriticalPoints.MaxValueIncluded = False
              CriticalPoints.MinValueIncluded = False
              DisplayFormat = dfFloat
              DecimalPlaces = 3
              EditText = '0'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
              OnChange = CurQuantidadeChange
              OnEnter = CurQuantidadeEnter
              OnExit = CurQuantidadeExit
            end
            object CurPrecoBruto: TJvValidateEdit
              Left = 74
              Top = 100
              Width = 100
              Height = 22
              CriticalPoints.MaxValueIncluded = False
              CriticalPoints.MinValueIncluded = False
              DisplayFormat = dfFloat
              DecimalPlaces = 2
              EditText = '0,00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 7
              OnChange = CurPrecoBrutoChange
              OnEnter = CurPrecoBrutoEnter
              OnExit = CurPrecoBrutoExit
            end
            object CurDesconto: TJvValidateEdit
              Left = 74
              Top = 124
              Width = 100
              Height = 22
              CriticalPoints.MaxValueIncluded = False
              CriticalPoints.MinValueIncluded = False
              DisabledColor = 14145495
              DisabledTextColor = clCaptionText
              DisplayFormat = dfPercent
              DecimalPlaces = 5
              DisplaySuffix = ' % '
              EditText = '0'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 9
              OnEnter = CurDescontoEnter
              OnExit = CurDescontoExit
            end
            object CurPrecoLiquido: TJvValidateEdit
              Left = 74
              Top = 148
              Width = 100
              Height = 22
              CriticalPoints.MaxValueIncluded = False
              CriticalPoints.MinValueIncluded = False
              DisplayFormat = dfFloat
              DecimalPlaces = 2
              EditText = '0,00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 10
              OnEnter = CurPrecoLiquidoEnter
              OnExit = CurPrecoLiquidoExit
            end
            object CurPercentIPI: TJvValidateEdit
              Left = 74
              Top = 171
              Width = 100
              Height = 22
              CriticalPoints.MaxValueIncluded = False
              CriticalPoints.MinValueIncluded = False
              DisplayFormat = dfPercent
              DecimalPlaces = 3
              DisplaySuffix = ' %'
              EditText = '0'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 11
              OnChange = CurPercentIPIChange
            end
            object CurValorST: TJvValidateEdit
              Left = 74
              Top = 196
              Width = 100
              Height = 22
              TabStop = False
              Color = 14145495
              CriticalPoints.MaxValueIncluded = False
              CriticalPoints.MinValueIncluded = False
              DisplayFormat = dfCurrency
              DecimalPlaces = 3
              EditText = '0'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 13
            end
            object edtPercentStProduto: TJvValidateEdit
              Left = 241
              Top = 200
              Width = 100
              Height = 22
              TabStop = False
              Color = 14145495
              CriticalPoints.MaxValueIncluded = False
              CriticalPoints.MinValueIncluded = False
              DisplayFormat = dfPercent
              DecimalPlaces = 2
              DisplaySuffix = ' %'
              EditText = '0'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 14
              Visible = False
            end
            object CurrAcrescimoReal: TJvValidateEdit
              Left = 444
              Top = 100
              Width = 100
              Height = 22
              TabStop = False
              Color = 14145495
              CriticalPoints.MaxValueIncluded = False
              CriticalPoints.MinValueIncluded = False
              DisplayFormat = dfCurrency
              DecimalPlaces = 3
              EditText = '0'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 15
            end
            object CurDescontoAdicional: TJvValidateEdit
              Left = 444
              Top = 124
              Width = 100
              Height = 22
              CriticalPoints.MaxValueIncluded = False
              CriticalPoints.MinValueIncluded = False
              DisabledColor = 14145495
              DisabledTextColor = clCaptionText
              DisplayFormat = dfPercent
              DecimalPlaces = 5
              DisplaySuffix = '%'
              EditText = '0'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 16
              OnExit = CurDescontoAdicionalExit
            end
            object CurTotal: TJvValidateEdit
              Left = 444
              Top = 148
              Width = 100
              Height = 22
              TabStop = False
              Color = 14145495
              CriticalPoints.MaxValueIncluded = False
              CriticalPoints.MinValueIncluded = False
              DisplayFormat = dfCurrency
              DecimalPlaces = 3
              EditText = '0'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnly = True
              TabOrder = 17
              OnChange = CurTotalChange
            end
            object CurValorIPI: TJvValidateEdit
              Left = 444
              Top = 172
              Width = 100
              Height = 22
              TabStop = False
              Color = 14145495
              CriticalPoints.MaxValueIncluded = False
              CriticalPoints.MinValueIncluded = False
              DisplayFormat = dfCurrency
              DecimalPlaces = 3
              EditText = '0'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 18
            end
            object CurComissao: TJvValidateEdit
              Left = 444
              Top = 196
              Width = 100
              Height = 22
              CriticalPoints.MaxValueIncluded = False
              CriticalPoints.MinValueIncluded = False
              DisabledColor = 14145495
              DisabledTextColor = clCaptionText
              DisplayFormat = dfPercent
              DecimalPlaces = 3
              DisplaySuffix = ' %'
              EditText = '0'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 19
              OnExit = CurComissaoExit
            end
            object CurSaldo: TJvValidateEdit
              Left = 444
              Top = 78
              Width = 100
              Height = 22
              TabStop = False
              Color = 14145495
              CriticalPoints.MaxValueIncluded = False
              CriticalPoints.MinValueIncluded = False
              DisplayFormat = dfFloat
              DecimalPlaces = 3
              EditText = '0'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 22
            end
            object CurVerba: TJvValidateEdit
              Left = 444
              Top = 221
              Width = 100
              Height = 22
              Color = 14145495
              CriticalPoints.MaxValueIncluded = False
              CriticalPoints.MinValueIncluded = False
              DisplayFormat = dfPercent
              DecimalPlaces = 3
              DisplaySuffix = ' %'
              EditText = '0'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 23
              Visible = False
            end
            object CurrPesoKG: TJvValidateEdit
              Left = 241
              Top = 152
              Width = 100
              Height = 21
              Hint = 'Somente para programador testar, n'#227'o vai nunca aparecer'
              AutoSize = False
              CriticalPoints.MaxValueIncluded = False
              CriticalPoints.MinValueIncluded = False
              EditText = '0'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 25
              Visible = False
              OnChange = CurPrecoBrutoChange
            end
            object CurrPesoIndividual: TJvValidateEdit
              Left = 241
              Top = 175
              Width = 100
              Height = 21
              Hint = 'Somente para programador testar, n'#227'o vai nunca aparecer'
              AutoSize = False
              CriticalPoints.MaxValueIncluded = False
              CriticalPoints.MinValueIncluded = False
              DisplayFormat = dfFloat
              DecimalPlaces = 5
              EditText = '0'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 26
              Visible = False
              OnChange = CurPrecoBrutoChange
            end
            object CurMarkup: TJvValidateEdit
              Left = 445
              Top = 249
              Width = 100
              Height = 22
              TabStop = False
              Color = 14145495
              CriticalPoints.MaxValueIncluded = False
              CriticalPoints.MinValueIncluded = False
              DisplayFormat = dfPercent
              DecimalPlaces = 3
              DisplaySuffix = ' %'
              EditText = '0'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 27
            end
            object CurrPendente: TJvValidateEdit
              Left = 74
              Top = 219
              Width = 100
              Height = 22
              Color = 14145495
              CriticalPoints.MaxValueIncluded = False
              CriticalPoints.MinValueIncluded = False
              DisplayFormat = dfFloat
              DecimalPlaces = 3
              EditText = '0'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 28
              OnChange = CurQuantidadeChange
              OnExit = CurQuantidadeExit
            end
            object PRF_PRAZO_ENTREGA: TJvDateEdit
              Left = 250
              Top = 100
              Width = 92
              Height = 22
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
              TabOrder = 12
              OnExit = PRF_PRAZO_ENTREGAExit
            end
            object CurPeso: TJvValidateEdit
              Left = 310
              Top = 76
              Width = 57
              Height = 22
              AllowEmpty = True
              CriticalPoints.MaxValueIncluded = False
              CriticalPoints.MinValueIncluded = False
              DisplayFormat = dfFloat
              DecimalPlaces = 3
              EditText = '0'
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 6
              Visible = False
              OnChange = CurQuantidadeChange
              OnExit = CurPesoExit
            end
            object cbUnidade: TSgDbSearchCombo
              Left = 202
              Top = 76
              Width = 40
              Height = 22
              TabOrder = 5
              OnExit = cbUnidadeExit
              OnChange = cbUnidadeChange
              Visible = False
              LookupSelect = 'PRD_UNISIGLA, PRD_UNIDESCRI'
              LookupOrderBy = 'PRD_UNISIGLA'
              LookupTable = 'PRD_UNIDADE'
              LookupDispl = 'PRD_UNISIGLA'
              GridAutoSize = False
              LookupSource = qUnidade
              LookupKeyField = 'PRD_UNISIGLA'
              ShowButton = True
              AutoF8WinTitulo = 'Unidades de Medida'
              AutoF8ColumnsTitulo = 'Sigla, Descri'#231#227'o'
              LookupDbGridColumns = 'PRD_UNISIGLA, PRD_UNIDESCRI'
              LookupDbGridColumnsTitle = 'Sigla, Deescri'#231#227'o'
              GridLeft = 0
              GridWidth = 0
              GridHeight = 100
              GridTop = 0
              GridShowWhenEnter = False
              SelectWithDoubleClick = False
              LimparCampoAoSair = True
            end
          end
          object tsDiretivas: TTabSheet
            Caption = 'Diretivas'
            ImageIndex = 1
            object RxDBGrid1: TDBGrid
              Left = 0
              Top = 14
              Width = 553
              Height = 332
              Align = alClient
              DataSource = dsDiretivasMemo
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
              ParentShowHint = False
              ReadOnly = True
              ShowHint = True
              TabOrder = 1
              TitleFont.Charset = ANSI_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Arial'
              TitleFont.Style = []
              OnDrawColumnCell = RxDBGrid1DrawColumnCell
              OnDblClick = RxDBGrid1DblClick
              Columns = <
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'PDI_REGISTRO'
                  Title.Alignment = taCenter
                  Title.Caption = 'Sele'#231#227'o'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'PRDD_DESCRICAO'
                  Title.Caption = 'Descri'#231#227'o'
                  Width = 440
                  Visible = True
                end>
            end
            object Panel1: TPanel
              Left = 0
              Top = 0
              Width = 553
              Height = 14
              Align = alTop
              BevelOuter = bvNone
              Caption = 
                'Selecione as diretivas desejadas com duplo click sobre o registr' +
                'o,'
              TabOrder = 0
            end
            object Button1: TButton
              Left = 456
              Top = 232
              Width = 89
              Height = 25
              Caption = 'Form &Diretivas'
              TabOrder = 2
              Visible = False
              OnClick = Button1Click
            end
          end
          object tsTratamentoTermico: TTabSheet
            Caption = 'Tratamento t'#233'rmico'
            ImageIndex = 2
            object Label11: TLabel
              Left = 8
              Top = 16
              Width = 53
              Height = 14
              Caption = 'Tipo pe'#231'a: '
            end
            object Label53: TLabel
              Left = 8
              Top = 106
              Width = 69
              Height = 14
              Caption = 'Peso Unit'#225'rio :'
            end
            object Label52: TLabel
              Left = 8
              Top = 168
              Width = 91
              Height = 14
              Caption = 'Dureza superf'#237'cial:'
            end
            object Label55: TLabel
              Left = 8
              Top = 271
              Width = 21
              Height = 14
              Caption = 'EHT:'
            end
            object Label56: TLabel
              Left = 8
              Top = 304
              Width = 46
              Height = 14
              Caption = 'Desenho:'
            end
            object Label60: TLabel
              Left = 8
              Top = 49
              Width = 40
              Height = 14
              Caption = 'Material:'
            end
            object Label59: TLabel
              Left = 8
              Top = 139
              Width = 123
              Height = 14
              Caption = 'Profundidade de camada:'
            end
            object Label58: TLabel
              Left = 8
              Top = 205
              Width = 73
              Height = 14
              Caption = 'Dureza n'#250'cleo:'
            end
            object Label57: TLabel
              Left = 8
              Top = 238
              Width = 71
              Height = 14
              Caption = 'Tamanho gr'#227'o:'
            end
            object Label54: TLabel
              Left = 7
              Top = 79
              Width = 102
              Height = 14
              Hint = 
                'Quando a quantidade no pedido '#233' em Kg, este campo vai indicar a ' +
                'quantidade de itens'
              Caption = 'Quantidade de itens :'
            end
            object edtipo: TEdit
              Left = 137
              Top = 13
              Width = 182
              Height = 22
              TabOrder = 0
              Text = 'edtipo'
            end
            object edsuperficial: TEdit
              Left = 137
              Top = 165
              Width = 182
              Height = 22
              TabOrder = 5
              Text = 'edsuperficial'
            end
            object edEHT: TEdit
              Left = 137
              Top = 268
              Width = 182
              Height = 22
              TabOrder = 8
              Text = 'edEHT'
            end
            object edDesenho: TEdit
              Left = 137
              Top = 301
              Width = 182
              Height = 22
              TabOrder = 9
              Text = 'edDesenho'
            end
            object edTamanho: TEdit
              Left = 137
              Top = 235
              Width = 182
              Height = 22
              TabOrder = 7
              Text = 'edTamanho'
            end
            object ednucleo: TEdit
              Left = 137
              Top = 202
              Width = 182
              Height = 22
              TabOrder = 6
              Text = 'ednucleo'
            end
            object edProfundidade: TEdit
              Left = 137
              Top = 136
              Width = 182
              Height = 22
              TabOrder = 4
              Text = 'edProfundidade'
            end
            object edMaterial: TEdit
              Left = 137
              Top = 46
              Width = 182
              Height = 22
              TabOrder = 1
              Text = 'edMaterial'
            end
            object edPeso: TJvValidateEdit
              Left = 137
              Top = 103
              Width = 182
              Height = 22
              CriticalPoints.MaxValueIncluded = False
              CriticalPoints.MinValueIncluded = False
              DisplayFormat = dfFloat
              DecimalPlaces = 3
              TabOrder = 3
            end
            object edQtdeItens: TJvValidateEdit
              Left = 137
              Top = 76
              Width = 182
              Height = 22
              CriticalPoints.MaxValueIncluded = False
              CriticalPoints.MinValueIncluded = False
              DisplayFormat = dfFloat
              DecimalPlaces = 3
              TabOrder = 2
            end
          end
        end
        object gbPrecos: TGroupBox
          Left = 567
          Top = 154
          Width = 401
          Height = 183
          Align = alCustom
          Caption = 'Pre'#231'os:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          TabStop = True
          object Label27: TLabel
            Left = 99
            Top = 20
            Width = 81
            Height = 14
            Alignment = taRightJustify
            Caption = 'Pre'#231'o ao Cliente:'
          end
          object Label28: TLabel
            Left = 118
            Top = 48
            Width = 62
            Height = 14
            Alignment = taRightJustify
            Caption = 'Pre'#231'o Tabela'
          end
          object Label29: TLabel
            Left = 88
            Top = 72
            Width = 92
            Height = 14
            Alignment = taRightJustify
            Caption = 'Pre'#231'o Promocional:'
          end
          object Label30: TLabel
            Left = 66
            Top = 96
            Width = 114
            Height = 14
            Alignment = taRightJustify
            Caption = 'Pre'#231'o Tabela Exclusiva:'
          end
          object lbComissao: TLabel
            Left = 486
            Top = 73
            Width = 65
            Height = 14
            Alignment = taRightJustify
            Caption = 'Comiss'#227'o(%)'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Visible = False
          end
          object edPreTab: TJvValidateEdit
            Left = 184
            Top = 45
            Width = 105
            Height = 22
            TabStop = False
            Color = 14671839
            CriticalPoints.MaxValueIncluded = False
            CriticalPoints.MinValueIncluded = False
            DisplayFormat = dfCurrency
            DecimalPlaces = 2
            EditText = '0'
            ReadOnly = True
            TabOrder = 0
          end
          object edPrePromo: TJvValidateEdit
            Left = 184
            Top = 69
            Width = 105
            Height = 22
            TabStop = False
            Color = 14671839
            CriticalPoints.MaxValueIncluded = False
            CriticalPoints.MinValueIncluded = False
            DisplayFormat = dfCurrency
            DecimalPlaces = 2
            EditText = '0'
            ReadOnly = True
            TabOrder = 1
          end
          object edPreEspe: TJvValidateEdit
            Left = 184
            Top = 93
            Width = 105
            Height = 22
            TabStop = False
            Color = 14671839
            CriticalPoints.MaxValueIncluded = False
            CriticalPoints.MinValueIncluded = False
            DisplayFormat = dfCurrency
            DecimalPlaces = 2
            EditText = '0'
            ReadOnly = True
            TabOrder = 2
          end
          object edPreco: TJvValidateEdit
            Left = 184
            Top = 17
            Width = 105
            Height = 22
            TabStop = False
            Color = 13434828
            CriticalPoints.MaxValueIncluded = False
            CriticalPoints.MinValueIncluded = False
            DisplayFormat = dfCurrency
            DecimalPlaces = 2
            EditText = '0'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 3
          end
          object CurrencyEdit1: TJvValidateEdit
            Left = 560
            Top = 66
            Width = 88
            Height = 21
            AutoSize = False
            Color = 14145495
            CriticalPoints.MaxValueIncluded = False
            CriticalPoints.MinValueIncluded = False
            EditText = '0'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 4
            Visible = False
          end
        end
        object gbSaldoEstoque: TGroupBox
          Left = 563
          Top = 0
          Width = 401
          Height = 155
          Align = alCustom
          Caption = 'Saldos de Estoque por Empresa'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          TabStop = True
          object gbSaldo: TDBGrid
            Left = 2
            Top = 16
            Width = 397
            Height = 107
            Align = alClient
            Color = 16776176
            DataSource = dsSaldos
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit]
            ParentFont = False
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clBlue
            TitleFont.Height = -11
            TitleFont.Name = 'Arial'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'EMP_RAZAO'
                Title.Alignment = taCenter
                Title.Caption = 'Empresa/Almoxarifado'
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -11
                Title.Font.Name = 'Arial'
                Title.Font.Style = []
                Width = 243
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'SALDO'
                Title.Alignment = taCenter
                Title.Caption = 'Estoque Geral'
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -11
                Title.Font.Name = 'Arial'
                Title.Font.Style = []
                Width = 119
                Visible = True
              end>
          end
          object Panel3: TPanel
            Left = 2
            Top = 123
            Width = 397
            Height = 30
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 1
            object Label19: TLabel
              Left = 153
              Top = 8
              Width = 134
              Height = 14
              Caption = 'Total de Estoque Dispon'#237'vel:'
            end
            object btnTransferencia: TButton
              Left = 8
              Top = 4
              Width = 113
              Height = 21
              Caption = 'Transfer'#234'ncia'
              Enabled = False
              TabOrder = 0
              OnClick = btnTransferenciaClick
            end
            object CurTotalEstoqueEmpresa: TJvValidateEdit
              Left = 291
              Top = 5
              Width = 100
              Height = 22
              TabStop = False
              Color = 14145495
              CriticalPoints.MaxValueIncluded = False
              CriticalPoints.MinValueIncluded = False
              DisplayFormat = dfDecimal
              EditText = '0,00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 1
            end
          end
        end
      end
      object tsComGrade: TTabSheet
        Caption = 'COM GRADE'
        ImageIndex = 1
        object dbgLancarinfo: TDBGrid
          Left = 0
          Top = 0
          Width = 1360
          Height = 345
          Align = alClient
          Color = clBtnFace
          Ctl3D = True
          DataSource = dsItemGrade
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Arial'
          TitleFont.Style = []
          StyleElements = [seFont]
          OnDrawColumnCell = dbgLancarinfoDrawColumnCell
          OnEnter = dbgLancarinfoEnter
          OnExit = dbgLancarinfoExit
          OnKeyDown = dbgLancarinfoKeyDown
          OnKeyPress = dbgLancarinfoKeyPress
          Columns = <
            item
              Expanded = False
              FieldName = 'PRG_DESCRICAO'
              Title.Alignment = taCenter
              Width = 128
              Visible = True
            end
            item
              Alignment = taLeftJustify
              Color = 16776176
              Expanded = False
              FieldName = 'PRG_QTDE'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Title.Alignment = taCenter
              Width = 100
              Visible = True
            end
            item
              Alignment = taLeftJustify
              Expanded = False
              FieldName = 'PRG_BRUTO'
              Title.Alignment = taCenter
              Width = 100
              Visible = True
            end
            item
              Alignment = taLeftJustify
              Expanded = False
              FieldName = 'PRD_DESC'
              Title.Alignment = taCenter
              Width = 87
              Visible = True
            end
            item
              Alignment = taLeftJustify
              Expanded = False
              FieldName = 'PRECO_LIQU'
              Title.Alignment = taCenter
              Width = 100
              Visible = True
            end
            item
              Alignment = taLeftJustify
              Expanded = False
              FieldName = 'PORC_IPI'
              Title.Alignment = taCenter
              Visible = True
            end
            item
              Alignment = taLeftJustify
              Color = 14145495
              Expanded = False
              FieldName = 'VLR_TOTAL'
              ReadOnly = True
              Title.Alignment = taCenter
              Width = 100
              Visible = True
            end
            item
              Alignment = taLeftJustify
              Expanded = False
              FieldName = 'PRG_SALDO'
              Title.Alignment = taCenter
              Width = 77
              Visible = True
            end>
        end
        object ptotais: TPanel
          Left = 0
          Top = 345
          Width = 1360
          Height = 30
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 1
          object Label31: TLabel
            Left = 87
            Top = 9
            Width = 83
            Height = 14
            Alignment = taRightJustify
            Caption = 'Quantidade Total:'
          end
          object Label42: TLabel
            Left = 536
            Top = 10
            Width = 56
            Height = 14
            Alignment = taRightJustify
            Caption = 'Pre'#231'o Total:'
          end
          object totalGrade: TJvValidateEdit
            Left = 176
            Top = 6
            Width = 105
            Height = 21
            TabStop = False
            AutoSize = False
            Color = 14671839
            CriticalPoints.MaxValueIncluded = False
            CriticalPoints.MinValueIncluded = False
            EditText = '0'
            ReadOnly = True
            TabOrder = 0
            ZeroEmpty = True
          end
          object ptotal: TJvValidateEdit
            Left = 598
            Top = 6
            Width = 105
            Height = 21
            TabStop = False
            AutoSize = False
            Color = 14671839
            CriticalPoints.MaxValueIncluded = False
            CriticalPoints.MinValueIncluded = False
            EditText = '0'
            ReadOnly = True
            TabOrder = 1
            ZeroEmpty = True
          end
        end
      end
    end
  end
  object GbBusca: TPanel [2]
    Left = 0
    Top = 0
    Width = 1370
    Height = 109
    Align = alTop
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Ctl3D = True
    ParentCtl3D = False
    TabOrder = 2
    VerticalAlignment = taAlignTop
    object lbDesc1: TLabel
      Left = 126
      Top = 63
      Width = 92
      Height = 14
      Caption = 'QUINZE CARACT1:'
      FocusControl = cbMedInterno
    end
    object lbDesc2: TLabel
      Left = 226
      Top = 63
      Width = 92
      Height = 14
      Caption = 'QUINZE CARACT1:'
      FocusControl = cbMedExterno
    end
    object lbDesc3: TLabel
      Left = 324
      Top = 63
      Width = 92
      Height = 14
      Caption = 'QUINZE CARACT1:'
      FocusControl = cbMedAltura1
    end
    object lbDesc4: TLabel
      Left = 422
      Top = 63
      Width = 92
      Height = 14
      Caption = 'QUINZE CARACT1:'
      FocusControl = cbMedAltura2
    end
    object Label48: TLabel
      Left = 535
      Top = 63
      Width = 56
      Height = 14
      Caption = 'Varia'#231#227'o %'
      FocusControl = cbMedAltura2
    end
    object pBuscaProdutos: TPanel
      Left = 0
      Top = 0
      Width = 984
      Height = 65
      BevelOuter = bvNone
      TabOrder = 0
      object Label33: TLabel
        Left = 7
        Top = 26
        Width = 56
        Height = 14
        Caption = 'Refer'#234'ncia:'
      end
      object Label34: TLabel
        Left = 126
        Top = 28
        Width = 114
        Height = 14
        Caption = 'Descri'#231#227'o/Linha/Marca:'
      end
      object Label35: TLabel
        Left = 477
        Top = 26
        Width = 69
        Height = 14
        Caption = 'C'#243'digo Barras'
      end
      object Label37: TLabel
        Left = 604
        Top = 26
        Width = 152
        Height = 14
        Caption = 'C'#243'd.Original/Cliente/Fornecedor'
      end
      object Label36: TLabel
        Left = 804
        Top = 22
        Width = 88
        Height = 14
        Caption = 'Endere'#231'o Estoque'
      end
      object cbFiltroPreco: TCheckBox
        Left = 5
        Top = 5
        Width = 154
        Height = 17
        TabStop = False
        Caption = 'Filtrar Pre'#231'os Exclusivos'
        TabOrder = 0
        OnClick = cbFiltroPrecoClick
      end
      object cbReferencia: TSgDbSearchCombo
        Left = 8
        Top = 41
        Width = 93
        Height = 22
        TabOrder = 1
        OnExit = cbComboBuscaExit
        OnkeyUp = cbReferenciakeyUp
        CharCase = ecUpperCase
        OnClick = cbReferenciaClick
        LookupSelect = 
          'PD.PRD_CODIGO, PD.PRD_REFER, PD.PRD_DESCRI, PD.PRD_CODBARRA, PD.' +
          'PRD_PRODSERV, PD.PRD_UND, T2.LIN_DESCRI, PD.PRD_PVENDA, PRD_EMBA' +
          'LA'
        LookupOrderBy = 'PD.PRD_REFER'
        LookupTable = 
          'prd0000 PD INNER JOIN PRD_TIPO pt ON (pd.PTI_CODIGO = pt.PTI_COD' +
          'IGO AND pti_disponivel_vendas = '#39'S'#39')  left join PRD_LINHA T2 on ' +
          '(T2.LIN_CODIGO = PD.LIN_CODIGO)'
        LookupDispl = 'PD.PRD_REFER'
        OnButtonClick = cbReferenciaButtonClick
        OnSelect = cbReferenciaSelect
        GridAutoSize = False
        LookupSource = qItens
        LookupKeyField = 'PD.PRD_CODIGO'
        FiltroTabela = 'PRD_STATUS = '#39'A'#39
        ShowButton = True
        LookupTableShare = 'PRODUTOS'
        LookupWhere = 'PD.PRD_REFER'
        LookupDbGridColumns = 
          'PRD_PRODSERV, PRD_REFER, PRD_DESCRI, PRD_UND, PRD_PVENDA, PRD_EM' +
          'BALA, LIN_DESCRI,  PRDCO_CODIGO_ORIGINAL,PRD_CODBARRA'
        LookupDbGridColumnsTitle = 
          'P/S, Refer'#234'ncia, Descri'#231#227'o, Unid., Pre'#231'o, Embalagem, Linha/Marca' +
          ', C'#243'd.Cliente,C'#243'd.Barras'
        GridLeft = 0
        GridWidth = 0
        GridHeight = 100
        GridTop = 0
        GridShowWhenEnter = False
        SelectWithDoubleClick = True
        LimparCampoAoSair = True
      end
      object cbDescricao: TSgDbSearchCombo
        Left = 125
        Top = 41
        Width = 349
        Height = 22
        TabOrder = 2
        OnExit = cbComboBuscaExit
        OnChange = cbMedInternoChange
        OnKeyDown = cbDescricaokeyDown
        OnKeyPress = cbDescricaoKeyPress
        CharCase = ecUpperCase
        OnClick = cbDescricaoClick
        LookupSelect = 
          'PD.PRD_CODIGO, PD.PRD_REFER, PD.PRD_DESCRI, PD.PRD_CODBARRA, PD.' +
          'PRD_PRODSERV, PD.PRD_UND, T2.LIN_DESCRI, 0.0 AS PRD_PVENDA'
        LookupOrderBy = 'PD.PRD_DESCRI'
        LookupTable = 
          'prd0000 PD INNER JOIN PRD_TIPO pt ON (pd.PTI_CODIGO = pt.PTI_COD' +
          'IGO AND pti_disponivel_vendas = '#39'S'#39')  left join PRD_LINHA T2 on ' +
          '(T2.LIN_CODIGO = PD.LIN_CODIGO)'
        LookupDispl = 'PD.PRD_DESCRI'
        OnButtonClick = cbReferenciaButtonClick
        OnSelect = GenericSelect
        GridAutoSize = False
        LookupSource = qItens
        LookupKeyField = 'PD.PRD_CODIGO'
        FiltroTabela = 'PRD_STATUS = '#39'A'#39
        ShowButton = False
        LookupTableShare = 'PRODUTOS'
        LookupWhere = 'PD.PRD_DESCRI,  T2.LIN_DESCRI'
        LookupDbGridColumns = 
          'PRD_PRODSERV, PRD_REFER, PRD_DESCRI, PRD_UND, PRD_PVENDA, LIN_DE' +
          'SCRI, PRDCO_CODIGO_ORIGINAL, PRD_CODBARRA'
        LookupDbGridColumnsTitle = 
          'P/S, Refer'#234'ncia, Descri'#231#227'o, Unid., Pre'#231'o, Linha/Marca, C'#243'd.Clien' +
          'te, C'#243'd.Barras'
        GridLeft = 0
        GridWidth = 0
        GridHeight = 100
        GridTop = 0
        GridShowWhenEnter = False
        SelectWithDoubleClick = True
        LimparCampoAoSair = True
      end
      object cbBarras: TSgDbSearchCombo
        Left = 475
        Top = 41
        Width = 123
        Height = 22
        TabOrder = 3
        OnExit = cbComboBuscaExit
        CharCase = ecUpperCase
        OnClick = cbBarrasClick
        LookupSelect = 
          'PD.PRD_CODIGO, PD.PRD_REFER, PD.PRD_DESCRI, PD.PRD_CODBARRA, PD.' +
          'PRD_PRODSERV, PD.PRD_UND, T2.LIN_DESCRI, 0.0 AS PRD_PVENDA'
        LookupOrderBy = 'PD.PRD_CODBARRA'
        LookupTable = 
          'prd0000 PD INNER JOIN PRD_TIPO pt ON (pd.PTI_CODIGO = pt.PTI_COD' +
          'IGO AND pti_disponivel_vendas = '#39'S'#39')  left join PRD_LINHA T2 on ' +
          '(T2.LIN_CODIGO = PD.LIN_CODIGO)'
        LookupDispl = 'PRD_CODBARRA'
        OnButtonClick = cbReferenciaButtonClick
        OnSelect = GenericSelect
        GridAutoSize = False
        LookupSource = qItens
        LookupKeyField = 'PD.PRD_CODIGO'
        FiltroTabela = 'PRD_STATUS = '#39'A'#39
        ShowButton = False
        LookupTableShare = 'PRODUTOS'
        LookupWhere = 'PD.PRD_CODBARRA'
        LookupDbGridColumns = 
          'PRD_PRODSERV, PRD_REFER, PRD_DESCRI, PRD_UND, PRD_PVENDA, LIN_DE' +
          'SCRI, PRDCO_CODIGO_ORIGINAL, PRD_CODBARRA'
        LookupDbGridColumnsTitle = 
          'P/S, Refer'#234'ncia, Descri'#231#227'o, Unid., Pre'#231'o, Linha/Marca, C'#243'd.Clien' +
          'te, C'#243'd.Barras'
        GridLeft = 0
        GridWidth = 0
        GridHeight = 100
        GridTop = 0
        GridShowWhenEnter = False
        SelectWithDoubleClick = True
        LimparCampoAoSair = True
      end
      object cbCodigos: TSgDbSearchCombo
        Left = 600
        Top = 41
        Width = 197
        Height = 22
        TabOrder = 4
        OnExit = cbComboBuscaExit
        CharCase = ecUpperCase
        OnClick = cbCodigosClick
        LookupSelect = 
          'distinct PD.PRD_CODIGO, PD.PRD_REFER, PD.PRD_DESCRI, PD.PRD_CODB' +
          'ARRA, PD.PRD_PRODSERV, PD.PRD_UND, T3.PRDC_REFERENCIA , T5.PRDCO' +
          '_CODIGO_ORIGINAL, 0.0 AS PRD_PVENDA, T2.LIN_DESCRI '
        LookupOrderBy = 'T5.PRDCO_CODIGO_ORIGINAL'
        LookupTable = 
          'PRD0000 PD left join PRD0000_CODIGO T3 on (T3.PRD_CODIGO = PD.PR' +
          'D_CODIGO) left join PRD_CODIGOORIGINAL T5 on (T5.PRD_CODIGO = PD' +
          '.PRD_CODIGO) left join PRD_LINHA T2 on (T2.LIN_CODIGO = PD.LIN_C' +
          'ODIGO) '
        LookupDispl = 'PRDCO_CODIGO_ORIGINAL'
        OnButtonClick = cbReferenciaButtonClick
        OnSelect = cbCodigosSelect
        GridAutoSize = False
        LookupSource = qItensb
        LookupKeyField = 'PD.PRD_CODIGO'
        FiltroTabela = 'PRD_STATUS = '#39'A'#39
        ShowButton = False
        LookupTableShare = 'PRODUTOS'
        LookupWhere = 'T5.PRDCO_CODIGO_ORIGINAL, t3.PRDC_referencia'
        LookupDbGridColumns = 
          'PRD_PRODSERV, PRD_REFER, PRD_DESCRI, PRD_UND, PRD_PVENDA, LIN_DE' +
          'SCRI, PRDCO_CODIGO_ORIGINAL, PRDC_REFERENCIA, PRD_CODBARRA'
        LookupDbGridColumnsTitle = 
          'P/S, Refer'#234'ncia, Descri'#231#227'o, Unid., Pre'#231'o, Linha/Marca, C'#243'd.Origi' +
          'nal/Cliente, C'#243'd.Fornecedor, C'#243'd.Barras'
        GridLeft = 0
        GridWidth = 0
        GridHeight = 100
        GridTop = 0
        GridShowWhenEnter = False
        SelectWithDoubleClick = True
        LimparCampoAoSair = True
      end
      object cbEndereco: TSgDbSearchCombo
        Left = 803
        Top = 42
        Width = 149
        Height = 22
        TabOrder = 5
        CharCase = ecUpperCase
        OnClick = cbEnderecoClick
        LookupSelect = 
          'PD.PRD_CODIGO, PD.PRD_REFER, t4.PRDE_ENDERECO, PD.PRD_DESCRI, PD' +
          '.PRD_CODBARRA, PD.PRD_PRODSERV, PD.PRD_UND, T2.LIN_DESCRI    , 0' +
          '.0 AS PRD_PVENDA'
        LookupOrderBy = 't4.PRDE_ENDERECO'
        LookupTable = 
          'prd0000 PD left join PRD_LINHA T2 on (T2.LIN_CODIGO = PD.LIN_COD' +
          'IGO) join PRD0000_ENDERECAMENTO T4 on (t4.PRDE_REGISTRO=PD.PRDE_' +
          'REGISTRO) '
        LookupDispl = 'T4.PRDE_ENDERECO'
        OnButtonClick = cbReferenciaButtonClick
        OnSelect = GenericSelect
        GridAutoSize = False
        LookupSource = qItensc
        LookupKeyField = 'PD.PRD_CODIGO'
        FiltroTabela = 'PRD_STATUS = '#39'A'#39
        ShowButton = False
        LookupTableShare = 'PRODUTOS'
        LookupWhere = 't4.PRDE_ENDERECO'
        LookupDbGridColumns = 
          'PRD_PRODSERV, PRD_REFER, PRD_DESCRI, PRD_UND, PRD_PVENDA, LIN_DE' +
          'SCRI, PRDE_ENDERECO, PRDCO_CODIGO_ORIGINAL'
        LookupDbGridColumnsTitle = 
          'P/S, Refer'#234'ncia, Descri'#231#227'o, Unid., Pre'#231'o, Linha/Marca, Endere'#231'o ' +
          ', C'#243'd.Cliente'
        GridLeft = 0
        GridWidth = 0
        GridHeight = 100
        GridTop = 0
        GridShowWhenEnter = False
        SelectWithDoubleClick = True
        LimparCampoAoSair = True
      end
    end
    object cbMedInterno: TSgDbSearchCombo
      Left = 126
      Top = 77
      Width = 85
      Height = 22
      OnEnter = cbMedInternoEnter
      TabOrder = 1
      OnExit = cbComboBuscaExit
      OnChange = cbMedInternoChange
      OnKeyPress = cbMedInternoKeyPress
      CharCase = ecUpperCase
      LookupSelect = 
        'PD.PRD_CODIGO, PD.PRD_REFER, PD.PRD_DESCRI, PD.PRD_CODBARRA, PD.' +
        'PRD_PRODSERV, PD.PRD_UND, T2.LIN_DESCRI, 0.0 AS PRD_PVENDA'
      LookupOrderBy = 'PD.PRD_DESCRI'
      LookupTable = 
        'prd0000 PD INNER JOIN PRD_TIPO pt ON (pd.PTI_CODIGO = pt.PTI_COD' +
        'IGO AND pti_disponivel_vendas = '#39'S'#39')  left join PRD_LINHA T2 on ' +
        '(T2.LIN_CODIGO = PD.LIN_CODIGO)'
      LookupDispl = 'INTERNO'
      OnButtonClick = cbReferenciaButtonClick
      OnSelect = GenericSelect
      GridAutoSize = False
      LookupSource = qItens
      LookupKeyField = 'PD.PRD_CODIGO'
      FiltroTabela = 'PRD_STATUS = '#39'A'#39
      ShowButton = False
      LookupTableShare = 'PRODUTOS'
      LookupWhere = 'INTERNO'
      DataFieldFormat = '###0.000'
      LookupDbGridColumns = 
        'PRD_PRODSERV, PRD_REFER, PRD_DESCRI, PRD_UND, PRD_PVENDA, LIN_DE' +
        'SCRI, PRDCO_CODIGO_ORIGINAL, PRD_CODBARRA'
      LookupDbGridColumnsTitle = 
        'P/S, Refer'#234'ncia, Descri'#231#227'o, Unid., Pre'#231'o, Linha/Marca, C'#243'd.Clien' +
        'te, C'#243'd.Barras'
      GridLeft = 0
      GridWidth = 0
      GridHeight = 100
      GridTop = 0
      GridShowWhenEnter = False
      SelectWithDoubleClick = True
      LimparCampoAoSair = True
    end
    object cbMedExterno: TSgDbSearchCombo
      Left = 224
      Top = 77
      Width = 85
      Height = 22
      OnEnter = cbMedInternoEnter
      TabOrder = 2
      OnExit = cbComboBuscaExit
      OnChange = cbMedInternoChange
      OnKeyPress = cbMedInternoKeyPress
      CharCase = ecUpperCase
      LookupSelect = 
        'PD.PRD_CODIGO, PD.PRD_REFER, PD.PRD_DESCRI, PD.PRD_CODBARRA, PD.' +
        'PRD_PRODSERV, PD.PRD_UND, T2.LIN_DESCRI, 0.0 AS PRD_PVENDA'
      LookupOrderBy = 'PD.PRD_DESCRI'
      LookupTable = 
        'prd0000 PD INNER JOIN PRD_TIPO pt ON (pd.PTI_CODIGO = pt.PTI_COD' +
        'IGO AND pti_disponivel_vendas = '#39'S'#39')  left join PRD_LINHA T2 on ' +
        '(T2.LIN_CODIGO = PD.LIN_CODIGO)'
      LookupDispl = 'EXTERNO'
      OnButtonClick = cbReferenciaButtonClick
      OnSelect = GenericSelect
      GridAutoSize = False
      LookupSource = qItens
      LookupKeyField = 'PD.PRD_CODIGO'
      FiltroTabela = 'PRD_STATUS = '#39'A'#39
      ShowButton = False
      LookupTableShare = 'PRODUTOS'
      LookupWhere = 'externo'
      LookupDbGridColumns = 
        'PRD_PRODSERV, PRD_REFER, PRD_DESCRI, PRD_UND, PRD_PVENDA, LIN_DE' +
        'SCRI, PRDCO_CODIGO_ORIGINAL, PRD_CODBARRA'
      LookupDbGridColumnsTitle = 
        'P/S, Refer'#234'ncia, Descri'#231#227'o, Unid., Pre'#231'o, Linha/Marca, C'#243'd.Clien' +
        'te, C'#243'd.Barras'
      GridLeft = 0
      GridWidth = 0
      GridHeight = 100
      GridTop = 0
      GridShowWhenEnter = False
      SelectWithDoubleClick = True
      LimparCampoAoSair = True
    end
    object cbMedAltura1: TSgDbSearchCombo
      Left = 324
      Top = 77
      Width = 85
      Height = 22
      OnEnter = cbMedInternoEnter
      TabOrder = 3
      OnExit = cbComboBuscaExit
      OnChange = cbMedInternoChange
      OnKeyPress = cbMedInternoKeyPress
      CharCase = ecUpperCase
      LookupSelect = 
        'PD.PRD_CODIGO, PD.PRD_REFER, PD.PRD_DESCRI, PD.PRD_CODBARRA, PD.' +
        'PRD_PRODSERV, PD.PRD_UND, T2.LIN_DESCRI, 0.0 AS PRD_PVENDA'
      LookupOrderBy = 'PD.PRD_DESCRI'
      LookupTable = 
        'prd0000 PD INNER JOIN PRD_TIPO pt ON (pd.PTI_CODIGO = pt.PTI_COD' +
        'IGO AND pti_disponivel_vendas = '#39'S'#39')  left join PRD_LINHA T2 on ' +
        '(T2.LIN_CODIGO = PD.LIN_CODIGO)'
      LookupDispl = 'ALTURA1'
      OnButtonClick = cbReferenciaButtonClick
      OnSelect = GenericSelect
      GridAutoSize = False
      LookupSource = qItens
      LookupKeyField = 'PD.PRD_CODIGO'
      FiltroTabela = 'PRD_STATUS = '#39'A'#39
      ShowButton = False
      LookupTableShare = 'PRODUTOS'
      LookupWhere = 'altura1'
      LookupDbGridColumns = 
        'PRD_PRODSERV, PRD_REFER, PRD_DESCRI, PRD_UND, PRD_PVENDA, LIN_DE' +
        'SCRI, PRDCO_CODIGO_ORIGINAL, PRD_CODBARRA'
      LookupDbGridColumnsTitle = 
        'P/S, Refer'#234'ncia, Descri'#231#227'o, Unid., Pre'#231'o, Linha/Marca, C'#243'd.Clien' +
        'te, C'#243'd.Barras'
      GridLeft = 0
      GridWidth = 0
      GridHeight = 100
      GridTop = 0
      GridShowWhenEnter = False
      SelectWithDoubleClick = True
      LimparCampoAoSair = True
    end
    object cbMedAltura2: TSgDbSearchCombo
      Left = 422
      Top = 77
      Width = 85
      Height = 22
      OnEnter = cbMedInternoEnter
      TabOrder = 4
      OnExit = cbComboBuscaExit
      OnChange = cbMedInternoChange
      OnKeyPress = cbMedInternoKeyPress
      CharCase = ecUpperCase
      LookupSelect = 
        'PD.PRD_CODIGO, PD.PRD_REFER, PD.PRD_DESCRI, PD.PRD_CODBARRA, PD.' +
        'PRD_PRODSERV, PD.PRD_UND, T2.LIN_DESCRI, 0.0 AS PRD_PVENDA'
      LookupOrderBy = 'PD.PRD_DESCRI'
      LookupTable = 
        'prd0000 PD INNER JOIN PRD_TIPO pt ON (pd.PTI_CODIGO = pt.PTI_COD' +
        'IGO AND pti_disponivel_vendas = '#39'S'#39')  left join PRD_LINHA T2 on ' +
        '(T2.LIN_CODIGO = PD.LIN_CODIGO)'
      LookupDispl = 'ALTURA2'
      OnButtonClick = cbReferenciaButtonClick
      OnSelect = GenericSelect
      GridAutoSize = False
      LookupSource = qItens
      LookupKeyField = 'PD.PRD_CODIGO'
      FiltroTabela = 'PRD_STATUS = '#39'A'#39
      ShowButton = False
      LookupTableShare = 'PRODUTOS'
      LookupWhere = 'altura2'
      LookupDbGridColumns = 
        'PRD_PRODSERV, PRD_REFER, PRD_DESCRI, PRD_UND, PRD_PVENDA, LIN_DE' +
        'SCRI, PRDCO_CODIGO_ORIGINAL, PRD_CODBARRA'
      LookupDbGridColumnsTitle = 
        'P/S, Refer'#234'ncia, Descri'#231#227'o, Unid., Pre'#231'o, Linha/Marca, C'#243'd.Clien' +
        'te, C'#243'd.Barras'
      GridLeft = 0
      GridWidth = 0
      GridHeight = 100
      GridTop = 0
      GridShowWhenEnter = False
      SelectWithDoubleClick = True
      LimparCampoAoSair = True
    end
    object EdVariacao: TEdit
      Left = 535
      Top = 77
      Width = 79
      Height = 22
      TabOrder = 5
      Text = 'EdVariacao'
    end
  end
  object pInfoProduto: TPanel [3]
    Left = 0
    Top = 109
    Width = 1370
    Height = 178
    Align = alTop
    TabOrder = 3
    object ImgProduto: TImage
      Left = 776
      Top = 14
      Width = 175
      Height = 156
      Center = True
      Proportional = True
      Stretch = True
    end
    object Label1: TLabel
      Left = 30
      Top = 5
      Width = 56
      Height = 14
      Alignment = taRightJustify
      Caption = 'Refer'#234'ncia:'
    end
    object Label2: TLabel
      Left = 32
      Top = 24
      Width = 52
      Height = 14
      Alignment = taRightJustify
      Caption = 'Descri'#231#227'o:'
    end
    object lGrade: TLabel
      Left = 16
      Top = 158
      Width = 33
      Height = 14
      Alignment = taRightJustify
      Caption = 'Grade:'
    end
    object Label3: TLabel
      Left = 19
      Top = 65
      Width = 67
      Height = 14
      Alignment = taRightJustify
      Caption = 'Complemento:'
    end
    object SdCadastroGrade: TSpeedButton
      Left = 288
      Top = 156
      Width = 23
      Height = 22
      Hint = 'Cadastrar Nova Grade'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000EB0A0000EB0A00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBECDB67A76723791914
        6C02146A012272155F9E5FD3E7D3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF99CF990A84090A91010794000A8F001686002C7700396B011B6A0588C1
        88FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9CD29C048E0704A309049F0933CC6666
        FF9966FF9966FF990B89003A6C00276B0287C087FFFFFFFFFFFFFFFFFFE1F1E1
        1390170CA9180AA3160AA315539B51FFF8FFFFF7FF66FF990099000191003C6D
        011B6C05D2E5D2FFFFFFFFFFFF72B57229B0370FA92311AA2310A922539B51FF
        F9FFFFFAFF66FF99029B06009A00108900396B005F9F5FFFFFFFFFFFFF319C31
        38BF4F33CC6666FF9966FF9933CC66F9F4F9FEF7FC66FF9966FF9966FF9966FF
        99347400217515FFFFFFFFFFFF1D992342C45D539B51FCE9F9F0E4ECF1EBF0F1
        EFF1F5F3F4FFF8FCFFF8FFFFF4FF66FF991D8300156E01FFFFFFFFFFFF209C26
        58CF76539B51FDECFDF2E9F2F0EBF0ECEBECEFEEEFF8F3F8FFF8FFFFF5FF66FF
        99118E00136F01FFFFFFFFFFFF37A53979DE99539B51539B51539B518EC18EF1
        EBF1F2ECF133CC66539B51539B5133CC66109403237D19FFFFFFFFFFFF7ABF7A
        70D68D51D47C2ECA602FC960539B51F2E8F2F0E4ED66FF9914AD2B0EA72007A3
        1212900566A966FFFFFFFFFFFFE8F6E831AB368DE9B13ACF6D2FCB64539B51FE
        ECFEFCE7F766FF9916AF2E11AA220BAA1910860BDBEDDBFFFFFFFFFFFFFFFFFF
        ABE1AB3FB84F89E8AF4CD57B219827539B51539B5133CC6616B02F11AF260793
        0C98D198FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFABE1AB31AC3776DC9576E19D50
        D2783BC65F30C05025B33A1193159CD49CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFE8F6E87ABF7A3CA93D25A32C229F2833A13472B872E1F2E1FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      ParentShowHint = False
      ShowHint = True
      OnClick = SdCadastroGradeClick
    end
    object Label4: TLabel
      Left = 397
      Top = 5
      Width = 39
      Height = 14
      Alignment = taRightJustify
      Caption = 'Original:'
    end
    object sbVoltar: TSpeedButton
      Left = 659
      Top = 154
      Width = 111
      Height = 22
      Hint = 'Voltar a tela de selecionar outro produto'
      Caption = 'Voltar'
      Flat = True
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FF694117
        6941176941176941176941176941176941176941176941176941176941176941
        17694117694117FF00FF694117694117AA7341A7703FA76F3EA76F3DA76F3DA7
        6F3DA76F3DA76F3DA7703EA7703FA7703FAA72406941176941176941178A5223
        884F21884F21874F21834D21844E22844E22834E22834D2181491C83491B8950
        21884F218B5223694117694117804619804519804519804519D9DAD9D9DAD9D9
        DAD9D9DAD9D9DAD9BBAC9D8B6541783E1281451981461969411769411782471A
        82471A82471A82471AD9DAD9D9DAD9D9DAD9D9DAD9D9DAD9D9DAD9E1E6EA9776
        577D411383471A694117694117894E20894E20894F20884D1F83461883481A86
        4A1C84491C834819915E33D8D4CFCFCCC9834F248A4D1F694117694117905426
        9054269055268B4D1E966B44D9DAD98F5222905425905425894A1ABCA48AE7ED
        F291653F905122694117694117965B2D975A2C9153239F724AD9DAD9D9DAD993
        5524975A2A975A2A8F4F1FBAA088EEF3F89A6D459658286941176941179D6332
        995B2B9D734CDDDCDAF0F4F8D9DAD9925A2C955E32965E31A0764FD5D4D0D1CF
        CA9862359E6030694117694117A06534A4754CD9D8D7DDDEE1E9EBEEE9EBEEE9
        EBEEE9EBEEE9EBEEEBF0F4E5E6E7A983609E6231A46A3A694117694117AF794B
        B1875FE6E3E0E6E9EAE9EBEEE9EBEEE9EBEEE9EBEECFC6BCC6B29EB48A64A972
        43AF794CB27E51694117694117BD8F66B8865BBD9876E9E7E5E9EBEEE9EBEEB5
        8358B6875DB6865CB58358B8875CBB8B62BA8A62BD8E66694117694117C79D78
        C49872C0926BC6A484E7E6E3E9EBEEC2956DC49772C49772C49872C49772C497
        72C49772C99D77694117694117CEAB8BCFA686CCA684CAA17ECBAF93E9EBEECC
        A582CCA683CCA683CCA683CCA683CCA683CEA684D1AD8E694117694117694117
        D9BBA0DCBCA0DCBC9FD9B89CD9BA9DDCBBA0DABB9FDABB9FDABB9FDABB9FDCBC
        A0DABCA1694117694117FF00FF69411769411769411769411769411769411769
        4117694117694117694117694117694117694117694117FF00FF}
      Layout = blGlyphRight
      ParentShowHint = False
      ShowHint = True
      OnClick = sbVoltarClick
    end
    object lbCapacidade: TLabel
      Left = 331
      Top = 159
      Width = 57
      Height = 14
      Caption = 'Capacidade'
      Visible = False
    end
    object lbCor: TLabel
      Left = 517
      Top = 158
      Width = 17
      Height = 14
      Caption = 'Cor'
      Visible = False
    end
    object MemoDescricao: TMemo
      Left = 88
      Top = 25
      Width = 682
      Height = 38
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Color = clWhite
      Lines.Strings = (
        'MemoDescricao')
      MaxLength = 254
      TabOrder = 2
      OnKeyPress = MemoDescricaoKeyPress
    end
    object EdReferencia: TEdit
      Left = 92
      Top = 4
      Width = 295
      Height = 22
      TabStop = False
      CharCase = ecUpperCase
      Color = 14145495
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      OnChange = EdReferenciaChange
    end
    object pnlGrade: TPanel
      Left = 88
      Top = 24
      Width = 294
      Height = 39
      BevelOuter = bvNone
      TabOrder = 5
      Visible = False
      object Label23: TLabel
        Left = 6
        Top = 3
        Width = 49
        Height = 14
        Caption = 'Medida 1: '
      end
      object Label24: TLabel
        Left = 102
        Top = 3
        Width = 49
        Height = 14
        Caption = 'Medida 2: '
      end
      object Label25: TLabel
        Left = 198
        Top = 3
        Width = 49
        Height = 14
        Caption = 'Medida 1: '
      end
      object Label26: TLabel
        Left = 21
        Top = 19
        Width = 31
        Height = 14
        BiDiMode = bdRightToLeft
        Caption = 'Pre'#231'o:'
        ParentBiDiMode = False
      end
      object lblMedida1: TLabel
        Left = 54
        Top = 3
        Width = 41
        Height = 14
        AutoSize = False
        Caption = 'lblMedida1'
        Color = clBtnFace
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object lblMedida2: TLabel
        Left = 150
        Top = 3
        Width = 41
        Height = 14
        AutoSize = False
        Caption = 'lblMedida1'
        Color = clBtnFace
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object lblMedida3: TLabel
        Left = 246
        Top = 3
        Width = 41
        Height = 14
        AutoSize = False
        Caption = 'lblMedida1'
        Color = clBtnFace
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object lblPrecoMedida: TLabel
        Left = 54
        Top = 19
        Width = 137
        Height = 14
        AutoSize = False
        Caption = 'lblMedida1'
        Color = clBtnFace
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
    end
    object MemoComplemento: TMemo
      Left = 88
      Top = 64
      Width = 682
      Height = 64
      Lines.Strings = (
        'Memo1')
      MaxLength = 500
      TabOrder = 3
      OnEnter = MemoComplementoEnter
      OnExit = MemoComplementoExit
    end
    object pnDirect: TPanel
      Left = 580
      Top = 129
      Width = 195
      Height = 23
      Align = alCustom
      BevelOuter = bvNone
      TabOrder = 4
      TabStop = True
      object Label32: TLabel
        Left = 0
        Top = 5
        Width = 39
        Height = 14
        Alignment = taRightJustify
        Caption = 'Diretiva:'
      end
      object btnDiretiva: TSpeedButton
        Left = 166
        Top = 1
        Width = 23
        Height = 22
        Hint = 'Cadastrar Nova Diretiva'
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000EB0A0000EB0A00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBECDB67A76723791914
          6C02146A012272155F9E5FD3E7D3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF99CF990A84090A91010794000A8F001686002C7700396B011B6A0588C1
          88FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9CD29C048E0704A309049F0933CC6666
          FF9966FF9966FF990B89003A6C00276B0287C087FFFFFFFFFFFFFFFFFFE1F1E1
          1390170CA9180AA3160AA315539B51FFF8FFFFF7FF66FF990099000191003C6D
          011B6C05D2E5D2FFFFFFFFFFFF72B57229B0370FA92311AA2310A922539B51FF
          F9FFFFFAFF66FF99029B06009A00108900396B005F9F5FFFFFFFFFFFFF319C31
          38BF4F33CC6666FF9966FF9933CC66F9F4F9FEF7FC66FF9966FF9966FF9966FF
          99347400217515FFFFFFFFFFFF1D992342C45D539B51FCE9F9F0E4ECF1EBF0F1
          EFF1F5F3F4FFF8FCFFF8FFFFF4FF66FF991D8300156E01FFFFFFFFFFFF209C26
          58CF76539B51FDECFDF2E9F2F0EBF0ECEBECEFEEEFF8F3F8FFF8FFFFF5FF66FF
          99118E00136F01FFFFFFFFFFFF37A53979DE99539B51539B51539B518EC18EF1
          EBF1F2ECF133CC66539B51539B5133CC66109403237D19FFFFFFFFFFFF7ABF7A
          70D68D51D47C2ECA602FC960539B51F2E8F2F0E4ED66FF9914AD2B0EA72007A3
          1212900566A966FFFFFFFFFFFFE8F6E831AB368DE9B13ACF6D2FCB64539B51FE
          ECFEFCE7F766FF9916AF2E11AA220BAA1910860BDBEDDBFFFFFFFFFFFFFFFFFF
          ABE1AB3FB84F89E8AF4CD57B219827539B51539B5133CC6616B02F11AF260793
          0C98D198FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFABE1AB31AC3776DC9576E19D50
          D2783BC65F30C05025B33A1193159CD49CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFE8F6E87ABF7A3CA93D25A32C229F2833A13472B872E1F2E1FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        ParentShowHint = False
        ShowHint = True
        OnClick = btnDiretivaClick
      end
      object CbDiretiva: TComboBoxRw
        Left = 39
        Top = 1
        Width = 48
        Height = 22
        TabOrder = 0
        OnExit = CbDiretivaExit
        CharCase = ecUpperCase
        LookupSelect = 'PRDD_DESCRICAO'
        LookupOrderBy = 'PRDD_DESCRICAO'
        LookupTable = 'PRD_DIRETIVA'
        OnSelect = CbDiretivaSelect
        GridAutoSize = False
        LookupSource = CbDiretiva.InternalSource
        LookupKeyField = 'PRDD_REGISTRO'
        ShowButton = True
        LookupTableShare = 'TABELAS'
        AutoF8WinTitulo = 'Diretivas'
        AutoF8ColumnsTitulo = 'C'#243'digo, Descri'#231#227'o'
        GridLeft = 0
        GridWidth = 0
        GridHeight = 100
        GridTop = 0
        GridShowWhenEnter = False
        SelectWithDoubleClick = False
        LimparCampoAoSair = True
        Tabela = 'PRD_DIRETIVA'
        CamposCarregar = 'PRDD_DESCRICAO'
        CamposRetornar = 'PRDD_REGISTRO'
        CamposOrdernar = 'PRDD_DESCRICAO'
        ConexaoBanco = DataCadastros.SQLConnection1
        Compartilhar = 'TABELAS'
        Localizado = False
        CodigoEmpresa = 0
        ResetaCampos = False
        MultiEmpresa = False
        Localizar = False
        CarregarCombo = False
        itemindex = 0
        style = csDropDown
      end
      object edDiretivaSigla: TMaskEdit
        Left = 113
        Top = 1
        Width = 48
        Height = 22
        TabStop = False
        CharCase = ecUpperCase
        Color = 14145495
        ReadOnly = True
        TabOrder = 1
        Text = ''
      end
    end
    object EdReferenciaOriginal: TEdit
      Left = 442
      Top = 2
      Width = 254
      Height = 22
      TabStop = False
      CharCase = ecUpperCase
      Color = 14145495
      ReadOnly = True
      TabOrder = 1
    end
    object pnLoteProduto: TPanel
      Left = 17
      Top = 129
      Width = 557
      Height = 23
      BevelOuter = bvNone
      TabOrder = 6
      object LblLote: TLabel
        Left = 43
        Top = 6
        Width = 24
        Height = 14
        Caption = 'Lote:'
      end
      object Label38: TLabel
        Left = 367
        Top = 6
        Width = 54
        Height = 14
        Caption = 'Saldo Lote:'
      end
      object edLoteVarios: TEdit
        Left = 71
        Top = 1
        Width = 268
        Height = 22
        TabOrder = 2
        Text = 'edLoteVarios'
        Visible = False
      end
      object CbLoteProduto: TSgDbSearchCombo
        Left = 73
        Top = 1
        Width = 267
        Height = 22
        TabOrder = 0
        LookupSelect = 
          'PRDL_REGISTRO, PRDL_LOTE, PRDL_DATA_FABRICACAO, PRDL_DATA_VALIDA' +
          'DE, PRDL_SALDO'
        LookupOrderBy = 'PRDL_REGISTRO'
        LookupTable = 'PRD_LOTE'
        LookupDispl = 'PRDL_LOTE'
        OnButtonClick = CbLoteProdutoButtonClick
        OnSelect = CbLoteProdutoSelect
        GridAutoSize = False
        LookupSource = qLoteProduto
        LookupKeyField = 'PRDL_REGISTRO'
        FiltroTabela = 'prdl_saldo >0'
        ShowButton = True
        LookupTableShare = 'PRODUTOS'
        LookupWhere = 'PRDL_LOTE'
        AutoF8WinTitulo = 'Lotes do Produto '
        AutoF8ColumnsTitulo = '#Reg , Lote, Fabrica'#231#227'o, Validade, Saldo'
        LookupDbGridColumns = 'PRDL_LOTE, PRDL_DATA_FABRICACAO,  PRDL_DATA_VALIDADE, PRDL_SALDO'
        LookupDbGridColumnsTitle = 'Lote, Fabrica'#231#227'o, Validade, Saldo'
        GridLeft = 0
        GridWidth = 0
        GridHeight = 100
        GridTop = 0
        GridShowWhenEnter = False
        SelectWithDoubleClick = False
        LimparCampoAoSair = True
      end
      object CurSaldoLote: TJvValidateEdit
        Left = 424
        Top = 1
        Width = 121
        Height = 22
        CriticalPoints.MaxValueIncluded = False
        CriticalPoints.MinValueIncluded = False
        DisplayFormat = dfFloat
        DecimalPlaces = 2
        TabOrder = 1
      end
    end
    object cbCapacidade: TSgDbSearchCombo
      Left = 391
      Top = 155
      Width = 91
      Height = 22
      TabOrder = 7
      OnExit = cbUnidadeExit
      OnChange = cbUnidadeChange
      Visible = False
      LookupSelect = 'CAP_DESCRICAO, CAP_CODIGO'
      LookupOrderBy = 'CAP_DESCRICAO'
      LookupTable = 'CAPACIDADE'
      LookupDispl = 'CAP_DESCRICAO'
      OnSelect = cbCapacidadeSelect
      GridAutoSize = False
      LookupSource = qCapacidade
      LookupKeyField = 'CAP_CODIGO'
      ShowButton = True
      AutoF8WinTitulo = 'Capacidade do Item'
      AutoF8ColumnsTitulo = 'Descri'#231#227'o, C'#243'digo'
      LookupDbGridColumns = 'CAP_DESCRICAO, CAP_CODIGO'
      LookupDbGridColumnsTitle = 'Descri'#231#227'o, C'#243'digo'
      GridLeft = 0
      GridWidth = 0
      GridHeight = 100
      GridTop = 0
      GridShowWhenEnter = False
      SelectWithDoubleClick = False
      LimparCampoAoSair = True
    end
    object cbCor: TSgDbSearchCombo
      Left = 537
      Top = 154
      Width = 76
      Height = 22
      TabOrder = 8
      Visible = False
      LookupSelect = 'ACO_NOME, ACO_CODIGO'
      LookupOrderBy = 'ACO_NOME'
      LookupTable = 'ACABAMENTO_CORES'
      LookupDispl = 'ACO_NOME'
      OnSelect = cbCorSelect
      GridAutoSize = False
      LookupSource = qCor
      LookupKeyField = 'ACO_CODIGO'
      ShowButton = True
      AutoF8WinTitulo = 'Cores'
      AutoF8ColumnsTitulo = 'C'#243'digo, Cor'
      LookupDbGridColumns = 'ACO_NOME, ACO_CODIGO,'
      LookupDbGridColumnsTitle = 'Nome, C'#243'digo'
      GridLeft = 0
      GridWidth = 0
      GridHeight = 100
      GridTop = 0
      GridShowWhenEnter = False
      SelectWithDoubleClick = False
      LimparCampoAoSair = True
    end
    object CbGrade: TComboBoxRw
      Left = 55
      Top = 156
      Width = 204
      Height = 22
      TabOrder = 9
      CharCase = ecUpperCase
      LookupSelect = 'prg_descricao'
      LookupOrderBy = 'prg_descricao'
      LookupTable = 'prd_grade'
      OnSelect = CbGradeSelect
      GridAutoSize = False
      LookupSource = CbGrade.InternalSource
      LookupKeyField = 'PRG_REGISTRO'
      ShowButton = True
      LookupTableShare = 'TABELAS'
      AutoF8WinTitulo = 'Grade'
      AutoF8ColumnsTitulo = 'C'#243'digo, Descri'#231#227'o'
      GridLeft = 0
      GridWidth = 0
      GridHeight = 100
      GridTop = 0
      GridShowWhenEnter = False
      SelectWithDoubleClick = False
      LimparCampoAoSair = True
      Tabela = 'prd_grade'
      CamposCarregar = 'prg_descricao'
      CamposRetornar = 'PRG_REGISTRO'
      CamposOrdernar = 'prg_descricao'
      Compartilhar = 'TABELAS'
      Localizado = False
      CodigoEmpresa = 0
      ResetaCampos = False
      MultiEmpresa = False
      Localizar = False
      CarregarCombo = False
      itemindex = 0
      style = csDropDown
    end
  end
  inherited coCalcula: TACBrCalculadora
    Left = 1584
    Top = 456
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 1264
    Top = 232
  end
  inherited DBConn: TSQLConnection
    Params.Strings = (
      'DriverUnit=Data.DBXFirebird'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DbxCommonDriver220.' +
        'bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxCommonDriver,Version=22.0.0.0,Culture=neutral,PublicK' +
        'eyToken=91d62ebb5b0d1b1b'
      
        'MetaDataPackageLoader=TDBXFirebirdMetaDataCommandFactory,DbxFire' +
        'birdDriver220.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXFirebirdMetaDataCommandF' +
        'actory,Borland.Data.DbxFirebirdDriver,Version=22.0.0.0,Culture=n' +
        'eutral,PublicKeyToken=91d62ebb5b0d1b1b'
      'GetDriverFunc=getSQLDriverINTERBASE'
      'LibraryName=dbxfb.dll'
      'LibraryNameOsx=libsqlfb.dylib'
      'VendorLib=fbclient.dll'
      'VendorLibWin64=fbclient.dll'
      'VendorLibOsx=/Library/Frameworks/Firebird.framework/Firebird'
      'Role=RoleName'
      'MaxBlobSize=-1'
      'TrimChar=False'
      'DriverName=Firebird'
      'Database=c:\jobdados\exemplo\exemplo.fdb'
      'RoleName=RoleName'
      'User_Name=sysdba'
      'Password=masterkey'
      'ServerCharSet='
      'SQLDialect=3'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'BlobSize=-1'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'IsolationLevel=ReadCommitted'
      'Trim Char=True')
    Left = 1112
    Top = 65
  end
  inherited qAux: TSQLQuery
    Left = 1210
    Top = 29
  end
  inherited qAux2: TSQLQuery
    Left = 1250
    Top = 28
  end
  inherited qAux3: TSQLQuery
    Left = 1290
    Top = 28
  end
  object cdsDiretivasMemo: TClientDataSet
    Aggregates = <>
    PacketRecords = 10
    Params = <>
    AfterOpen = cdsDiretivasMemoAfterOpen
    Left = 1208
    Top = 144
    object cdsDiretivasMemoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = []
      Size = 3
    end
    object cdsDiretivasMemoPRDD_REGISTRO: TIntegerField
      FieldName = 'PRDD_REGISTRO'
      ProviderFlags = []
    end
    object cdsDiretivasMemoPRDD_DESCRICAO: TStringField
      FieldName = 'PRDD_DESCRICAO'
      ProviderFlags = []
      Size = 100
    end
    object cdsDiretivasMemoPDI_REGISTRO: TIntegerField
      FieldName = 'PDI_REGISTRO'
      ProviderFlags = []
    end
    object cdsDiretivasMemoPRF_REGISTRO: TIntegerField
      FieldName = 'PRF_REGISTRO'
      ProviderFlags = []
    end
  end
  object dsDiretivasMemo: TDataSource
    AutoEdit = False
    DataSet = cdsDiretivasMemo
    Left = 1360
    Top = 136
  end
  object imgListDiretivas: TImageList
    Height = 15
    Left = 1349
    Top = 202
    Bitmap = {
      494C010102000500180010000F00FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000000F0000000100200000000000000F
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000084848400848484000000
      000000000000000000000000000000000000000000000000000000FF00000084
      0000008400008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      8400000084008484840084848400000000000000FF0000000000848484008484
      8400000000000000000000000000000000000000000000000000008400000084
      0000008400000084000084000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      8400000084000000000084848400848484000000840000008400000000008484
      8400000000000000000000000000000000000000000000000000008400000084
      0000008400000084000000840000840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF00000084000000840000000000000084000000840000008400000084000000
      0000000000000000000000000000000000000000000000000000008400000084
      00000084000000FF000000840000008400008400000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000840000008400000084000000840000008400000000000000
      0000000000000000000000000000000000000000000000000000008400000084
      0000840000000000000000FF0000008400000084000084000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF0000008400000084000000840084848400848484000000
      000000000000000000000000000000000000000000000000000000FF00000084
      000084000000000000000000000000FF00000084000000840000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF0000008400000084000000840000000000848484008484
      8400000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FF000000840000008400008400
      0000848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000008400000084000000FF000000840000008400000000008484
      8400848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FF0000008400000084
      0000840000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      84000000FF000000840000000000848484000000FF0000008400000084000000
      0000848484000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FF00000084
      0000008400008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000008400000084008484840000000000000000000000FF00000084000000
      8400000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      0000008400008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF0000000000000000000000000000000000000000000000FF000000
      8400C6C6C6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      28000000400000000F0000000100010000000000780000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF00000000FFFFE7FF00000000
      F39FC3FF00000000E10FC1FF00000000E00FC0FF00000000E01FC07F00000000
      F03FC43F00000000F81FC61F00000000F80FFF0700000000F807FF8300000000
      E007FFC300000000F187FFE300000000F7C7FFFF00000000FFFFFFFF00000000
      FFFFFFFF0000000000000000000000000000000000000000000000000000}
  end
  object qPrecos: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      ''
      
        '    (Select PRE_PRECO FROM precos0001 WHERE PRE_ID=1 AND PRD_COD' +
        'IGO='#39'123'#39') as TabPrinc,'
      
        '    (Select PRE_PRECO FROM precos0001 WHERE PRE_ID=2 AND PRD_COD' +
        'IGO='#39'123'#39') as TabSec,'
      
        '    (Select PRE_PRECO FROM precos0001 WHERE PRE_ID=3 AND PRD_COD' +
        'IGO='#39'123'#39') as TabPromo,'
      
        '    (Select PRE_PRECO FROM precos0001 WHERE PRE_ID=4 AND PRD_COD' +
        'IGO='#39'123'#39') as TabEspe'
      ''
      '   From rdb$database')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 1072
    Top = 192
  end
  object qLoteProduto: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'select PRDL_REGISTRO, PRDL_LOTE, prdl_data_fabricacao, PRDL_DATA' +
        '_VALIDADE, PRDL_SALDO'
      'from PRD_LOTE'
      'where prdl_registro = '#39'-1'#39)
    SQLConnection = DBConn
    Left = 1004
    Top = 22
    object qLoteProdutoPRDL_REGISTRO: TIntegerField
      FieldName = 'PRDL_REGISTRO'
      Required = True
    end
    object qLoteProdutoPRDL_LOTE: TStringField
      Tag = 70
      FieldName = 'PRDL_LOTE'
      OnGetText = qLoteProdutoPRDL_LOTEGetText
      Size = 30
    end
    object qLoteProdutoPRDL_DATA_FABRICACAO: TDateField
      Tag = 80
      FieldName = 'PRDL_DATA_FABRICACAO'
    end
    object qLoteProdutoPRDL_DATA_VALIDADE: TDateField
      Tag = 80
      FieldName = 'PRDL_DATA_VALIDADE'
    end
    object qLoteProdutoPRDL_SALDO: TFMTBCDField
      Tag = 80
      FieldName = 'PRDL_SALDO'
      Precision = 18
      Size = 5
    end
  end
  object qTipoIndustrializacao: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      '')
    SQLConnection = DBConn
    Left = 1072
    Top = 128
  end
  object qItens: TSQLQuery
    AfterScroll = qItensAfterScroll
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'select PD.PRD_CODIGO, PD.PRD_REFER, PD.PRD_DESCRI, PD.PRD_CODBAR' +
        'RA, PD.PRD_PRODSERV, PD.PRD_UND, T2.LIN_DESCRI, 0.00 as PRD_PVEN' +
        'DA, PRD_EMBALA'
      'from PRD0000 PD'
      'INNER JOIN PRD_TIPO pt ON (pd.PTI_CODIGO = pt.PTI_CODIGO '
      '                         AND pti_disponivel_vendas = '#39'S'#39') '
      'left join PRD_LINHA T2 on (T2.LIN_CODIGO = PD.LIN_CODIGO)'
      'where PRD_STATUS = '#39'Z'#39' and'
      '      (coalesce(PD.PRD_REFER, '#39#39') <> '#39#39')'
      'order by PD.PRD_REFER  ')
    SQLConnection = DBConn
    Left = 874
    Top = 92
    object qItensPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Required = True
      Size = 5
    end
    object qItensPRD_REFER: TStringField
      Tag = 110
      FieldName = 'PRD_REFER'
    end
    object qItensPRD_DESCRI: TStringField
      Tag = 400
      FieldName = 'PRD_DESCRI'
      Size = 100
    end
    object qItensPRD_CODBARRA: TStringField
      Tag = 100
      FieldName = 'PRD_CODBARRA'
      Size = 13
    end
    object qItensPRD_PRODSERV: TStringField
      FieldName = 'PRD_PRODSERV'
      Size = 1
    end
    object qItensPRD_UND: TStringField
      Tag = 30
      FieldName = 'PRD_UND'
      Size = 3
    end
    object qItensLIN_DESCRI: TStringField
      Tag = 100
      FieldName = 'LIN_DESCRI'
      Size = 30
    end
    object qItensestoque: TFMTBCDField
      Tag = 100
      FieldName = 'estoque'
      Required = True
      Precision = 18
      Size = 5
    end
    object qItensPRD_PVENDA: TFMTBCDField
      Tag = 100
      FieldName = 'PRD_PVENDA'
      Required = True
      OnGetText = qItensPRD_PVENDAGetText
      DisplayFormat = '###,###,##0.0000'
      Precision = 18
      Size = 5
    end
    object qItensPRD_PVENDA2: TFMTBCDField
      Tag = 100
      FieldName = 'PRD_PVENDA2'
      Precision = 18
      Size = 5
    end
    object qItensPRD_PVENDA3: TFMTBCDField
      Tag = 100
      FieldName = 'PRD_PVENDA3'
      Precision = 18
      Size = 5
    end
    object qItensPRD_PVENDA4: TFMTBCDField
      Tag = 100
      FieldName = 'PRD_PVENDA4'
      Precision = 18
      Size = 5
    end
    object qItensPRD_PVENDA5: TFMTBCDField
      Tag = 100
      FieldName = 'PRD_PVENDA5'
      Precision = 18
      Size = 5
    end
    object qItensPRD_PVENDA6: TFMTBCDField
      Tag = 100
      FieldName = 'PRD_PVENDA6'
      Precision = 18
      Size = 5
    end
    object qItensPRDCO_CODIGO_ORIGINAL: TStringField
      Tag = 130
      FieldName = 'PRDCO_CODIGO_ORIGINAL'
      Size = 60
    end
    object qItensInterno: TFMTBCDField
      FieldName = 'Interno'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '##0.00'
      Precision = 18
      Size = 5
    end
    object qItensEXTERNO: TFMTBCDField
      FieldName = 'EXTERNO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '##0.00'
      Precision = 18
      Size = 5
    end
    object qItensALTURA1: TFMTBCDField
      FieldName = 'ALTURA1'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '##0.00'
      Precision = 18
      Size = 5
    end
    object qItensALTURA2: TFMTBCDField
      FieldName = 'ALTURA2'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '##0.00'
      Precision = 18
      Size = 5
    end
    object qItensPRD_EMBALA: TStringField
      FieldName = 'PRD_EMBALA'
      Size = 10
    end
  end
  object qGrade: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'Select PRG_REGISTRO,prg_descricao from prd_grade where prd_codig' +
        'o = '#39'-1'#39)
    SQLConnection = DBConn
    Left = 976
    Top = 184
  end
  object qItensb: TSQLQuery
    AfterScroll = qItensAfterScroll
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        '  Select distinct PD.PRD_CODIGO, PD.PRD_REFER, PD.PRD_DESCRI, PD' +
        '.PRD_CODBARRA,'
      
        '         PD.PRD_PRODSERV, PD.PRD_UND, T3.PRDC_REFERENCIA , T5.PR' +
        'DCO_CODIGO_ORIGINAL'
      '  from PRD0000 PD'
      
        '       left join PRD0000_CODIGO T3 on (T3.PRD_CODIGO = PD.PRD_CO' +
        'DIGO)'
      
        '       left join PRD_CODIGOORIGINAL T5 on (T5.PRD_CODIGO = PD.PR' +
        'D_CODIGO)'
      'WHERE PD.PRD_CODIGO='#39'-1'#39
      '  Order By T5.PRDCO_CODIGO_ORIGINAL')
    SQLConnection = DBConn
    Left = 954
    Top = 92
    object qItensbPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Required = True
      Size = 5
    end
    object qItensbPRD_REFER: TStringField
      Tag = 80
      FieldName = 'PRD_REFER'
    end
    object qItensbPRD_DESCRI: TStringField
      Tag = 400
      FieldName = 'PRD_DESCRI'
      Size = 100
    end
    object qItensbPRD_CODBARRA: TStringField
      Tag = 100
      FieldName = 'PRD_CODBARRA'
      Size = 13
    end
    object qItensbPRD_PRODSERV: TStringField
      FieldName = 'PRD_PRODSERV'
      Size = 1
    end
    object qItensbPRD_UND: TStringField
      Tag = 30
      FieldName = 'PRD_UND'
      Size = 3
    end
    object qItensbPRDC_REFERENCIA: TStringField
      Tag = 130
      FieldName = 'PRDC_REFERENCIA'
      Size = 30
    end
    object qItensbLIN_DESCRI: TStringField
      Tag = 100
      FieldName = 'LIN_DESCRI'
      Size = 30
    end
    object qItensbPRDCO_CODIGO_ORIGINAL: TStringField
      Tag = 130
      FieldName = 'PRDCO_CODIGO_ORIGINAL'
      Size = 60
    end
    object qItensbPRD_PVENDA6: TFMTBCDField
      FieldName = 'PRD_PVENDA6'
      Precision = 15
    end
    object qItensbPRD_PVENDA5: TFMTBCDField
      FieldName = 'PRD_PVENDA5'
      Precision = 15
    end
    object qItensbPRD_PVENDA4: TFMTBCDField
      FieldName = 'PRD_PVENDA4'
      Precision = 15
    end
    object qItensbPRD_PVENDA3: TFMTBCDField
      FieldName = 'PRD_PVENDA3'
      Precision = 15
    end
    object qItensbPRD_PVENDA2: TFMTBCDField
      FieldName = 'PRD_PVENDA2'
      Precision = 15
    end
    object qItensbPRD_PVENDA: TFMTBCDField
      Tag = 100
      FieldName = 'PRD_PVENDA'
      Required = True
      OnGetText = qItensPRD_PVENDAGetText
      Precision = 18
      Size = 2
    end
  end
  object qItensc: TSQLQuery
    AfterScroll = qItensAfterScroll
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DBConn
    Left = 970
    Top = 140
    object qItenscPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Required = True
      Size = 5
    end
    object qItenscPRD_REFER: TStringField
      Tag = 80
      FieldName = 'PRD_REFER'
    end
    object qItenscPRD_DESCRI: TStringField
      Tag = 400
      FieldName = 'PRD_DESCRI'
      Size = 100
    end
    object qItenscPRD_CODBARRA: TStringField
      Tag = 100
      FieldName = 'PRD_CODBARRA'
      Size = 13
    end
    object qItenscPRD_PRODSERV: TStringField
      FieldName = 'PRD_PRODSERV'
      Size = 1
    end
    object qItenscPRD_UND: TStringField
      Tag = 30
      FieldName = 'PRD_UND'
      Size = 3
    end
    object qItenscLIN_DESCRI: TStringField
      Tag = 100
      FieldName = 'LIN_DESCRI'
      Size = 30
    end
    object qItenscPRDE_ENDERECO: TStringField
      Tag = 90
      FieldName = 'PRDE_ENDERECO'
      Size = 30
    end
    object qItenscPRD_PVENDA: TFMTBCDField
      Tag = 100
      FieldName = 'PRD_PVENDA'
      Required = True
      OnGetText = qItensPRD_PVENDAGetText
      Precision = 18
      Size = 2
    end
    object qItenscPRD_PVENDA2: TFMTBCDField
      FieldName = 'PRD_PVENDA2'
      Precision = 15
    end
    object qItenscPRD_PVENDA3: TFMTBCDField
      FieldName = 'PRD_PVENDA3'
      Precision = 15
    end
    object qItenscPRD_PVENDA4: TFMTBCDField
      FieldName = 'PRD_PVENDA4'
      Precision = 15
    end
    object qItenscPRD_PVENDA5: TFMTBCDField
      FieldName = 'PRD_PVENDA5'
      Precision = 15
    end
    object qItenscPRD_PVENDA6: TFMTBCDField
      FieldName = 'PRD_PVENDA6'
      Precision = 15
    end
    object qItenscPRDCO_CODIGO_ORIGINAL: TStringField
      Tag = 130
      FieldName = 'PRDCO_CODIGO_ORIGINAL'
      Size = 60
    end
  end
  object CdsSaldos: TClientDataSet
    Aggregates = <>
    PacketRecords = 10
    Params = <>
    ProviderName = 'dspSaldos'
    Left = 858
    Top = 378
    object SqlCdsSaldosEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlCdsSaldosEMP_RAZAO: TStringField
      FieldName = 'EMP_RAZAO'
      Size = 45
    end
    object SqlCdsSaldosSALDO: TFMTBCDField
      FieldName = 'SALDO'
      Precision = 15
      Size = 4
    end
    object CdsSaldosAMX_CODIGO: TStringField
      FieldName = 'AMX_CODIGO'
      Size = 4
    end
  end
  object qSaldos: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DBConn
    Left = 722
    Top = 376
  end
  object dspSaldos: TDataSetProvider
    DataSet = qSaldos
    Left = 786
    Top = 376
  end
  object dsSaldos: TDataSource
    DataSet = CdsSaldos
    Left = 922
    Top = 376
  end
  object dsSaldoLote: TDataSource
    DataSet = qSaldos
    Left = 1136
    Top = 10
  end
  object sqlCC: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'cod_vendedor'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'documento'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT * FROM conta_corrente'
      'WHERE cod_vendedor = :cod_vendedor and documento <> :documento'
      'and Cancelamento <> 1 and conta = '#39'C'#39
      'order by valor')
    SQLConnection = DBConn
    Left = 1026
    Top = 472
    object sqlCCCODIGO: TStringField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 5
    end
    object sqlCCTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object sqlCCCONTA: TStringField
      FieldName = 'CONTA'
      Size = 1
    end
    object sqlCCDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
    end
    object sqlCCDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 40
    end
    object sqlCCVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Precision = 18
      Size = 2
    end
    object sqlCCVALOR_UTILIZADO: TFMTBCDField
      FieldName = 'VALOR_UTILIZADO'
      Precision = 18
      Size = 2
    end
    object sqlCCLANCADO: TStringField
      FieldName = 'LANCADO'
      Size = 1
    end
    object sqlCCUSU_CODIGO: TIntegerField
      FieldName = 'USU_CODIGO'
    end
    object sqlCCCOD_VENDEDOR: TStringField
      FieldName = 'COD_VENDEDOR'
      Size = 3
    end
    object sqlCCCOD_CLIENTE: TStringField
      FieldName = 'COD_CLIENTE'
      Size = 5
    end
    object sqlCCCOD_FORNECEDOR: TStringField
      FieldName = 'COD_FORNECEDOR'
      Size = 4
    end
    object sqlCCCANCELAMENTO: TStringField
      FieldName = 'CANCELAMENTO'
      Size = 1
    end
    object sqlCCMOTIVO_CANCELAMENTO: TStringField
      FieldName = 'MOTIVO_CANCELAMENTO'
      Size = 50
    end
    object sqlCCUSUARIO_CANCELAMENTO: TIntegerField
      FieldName = 'USUARIO_CANCELAMENTO'
    end
  end
  object dspCC: TDataSetProvider
    DataSet = sqlCC
    Left = 1098
    Top = 472
  end
  object cdsCC: TClientDataSet
    Aggregates = <>
    PacketRecords = 10
    Params = <
      item
        DataType = ftString
        Name = 'cod_vendedor'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'documento'
        ParamType = ptInput
      end>
    ProviderName = 'dspCC'
    Left = 1202
    Top = 466
    object cdsCCCODIGO: TStringField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 5
    end
    object cdsCCTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object cdsCCCONTA: TStringField
      FieldName = 'CONTA'
      Size = 1
    end
    object cdsCCDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
    end
    object cdsCCDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 40
    end
    object cdsCCVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Precision = 18
      Size = 2
    end
    object cdsCCVALOR_UTILIZADO: TFMTBCDField
      FieldName = 'VALOR_UTILIZADO'
      Precision = 18
      Size = 2
    end
    object cdsCCLANCADO: TStringField
      FieldName = 'LANCADO'
      Size = 1
    end
    object cdsCCUSU_CODIGO: TIntegerField
      FieldName = 'USU_CODIGO'
    end
    object cdsCCCOD_VENDEDOR: TStringField
      FieldName = 'COD_VENDEDOR'
      Size = 3
    end
    object cdsCCCOD_CLIENTE: TStringField
      FieldName = 'COD_CLIENTE'
      Size = 5
    end
    object cdsCCCOD_FORNECEDOR: TStringField
      FieldName = 'COD_FORNECEDOR'
      Size = 4
    end
    object cdsCCCANCELAMENTO: TStringField
      FieldName = 'CANCELAMENTO'
      Size = 1
    end
    object cdsCCMOTIVO_CANCELAMENTO: TStringField
      FieldName = 'MOTIVO_CANCELAMENTO'
      Size = 50
    end
    object cdsCCUSUARIO_CANCELAMENTO: TIntegerField
      FieldName = 'USUARIO_CANCELAMENTO'
    end
  end
  object cdsItemGrade: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspItemGrade'
    AfterScroll = cdsItemGradeAfterScroll
    OnNewRecord = cdsItemGradeNewRecord
    Left = 709
    Top = 292
    object cdsItemGradePRG_REGISTRO: TIntegerField
      FieldName = 'PRG_REGISTRO'
      Required = True
    end
    object cdsItemGradePRG_DESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'PRG_DESCRICAO'
      ReadOnly = True
      Size = 100
    end
    object cdsItemGradePRG_SALDO: TFMTBCDField
      DisplayLabel = 'Estoque'
      FieldName = 'PRG_SALDO'
      ReadOnly = True
      Precision = 18
      Size = 5
    end
    object cdsItemGradePRG_QTDE: TFMTBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'PRG_QTDE'
      OnChange = cdsItemGradePRG_QTDEChange
      OnValidate = cdsItemGradePRG_QTDEValidate
      Precision = 18
      Size = 1
    end
    object cdsItemGradePRG_BRUTO: TFMTBCDField
      DisplayLabel = 'Pre'#231'o Bruto'
      FieldName = 'PRG_BRUTO'
      Required = True
      OnChange = cdsItemGradePRG_BRUTOChange
      DisplayFormat = ',0.0000##;-,0.0000##'
      Precision = 18
      Size = 1
    end
    object cdsItemGradePERCENTSTPRODUTO: TFMTBCDField
      FieldKind = fkCalculated
      FieldName = 'PercentStProduto'
      Required = True
      Precision = 18
      Size = 1
      Calculated = True
    end
    object cdsItemGradePRD_DESC: TFMTBCDField
      DisplayLabel = 'Desconto'
      FieldName = 'PRD_DESC'
      OnChange = cdsItemGradePRD_DESCChange
    end
    object cdsItemGradePRECO_LIQU: TFMTBCDField
      DisplayLabel = 'Pre'#231'o L'#237'quido'
      FieldName = 'PRECO_LIQU'
      DisplayFormat = ',0.0000##;-,0.0000##'
    end
    object cdsItemGradeIPI: TIntegerField
      DisplayLabel = '% IPI'
      FieldName = 'PORC_IPI'
      OnChange = cdsItemGradeIPIChange
    end
    object cdsItemGradeVLR_TOTAL: TFMTBCDField
      DisplayLabel = 'Total'
      FieldKind = fkCalculated
      FieldName = 'VLR_TOTAL'
      Calculated = True
    end
    object cdsItemGradeCOMISSAO: TFMTBCDField
      DisplayLabel = 'Comiss'#227'o'
      FieldKind = fkInternalCalc
      FieldName = 'COMISSAO'
    end
    object cdsItemGradeVLR_ST: TFMTBCDField
      DisplayLabel = 'Valor ST'
      FieldKind = fkCalculated
      FieldName = 'VLR_ST'
      Size = 0
      Calculated = True
    end
    object cdsItemGradeVlr_IPI: TFMTBCDField
      DisplayLabel = 'Valor IPI'
      FieldKind = fkCalculated
      FieldName = 'Vlr_IPI'
      Size = 0
      Calculated = True
    end
    object cdsItemGradePRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Size = 5
    end
    object cdsItemGradePRG_REDUCAO_PERCENT: TFMTBCDField
      FieldName = 'PRG_REDUCAO_PERCENT'
      Precision = 18
      Size = 5
    end
    object cdsItemGradePRG_INDICE: TFMTBCDField
      FieldName = 'PRG_INDICE'
      Precision = 18
      Size = 5
    end
    object cdsItemGradePRF_REGISTRO: TIntegerField
      FieldName = 'PRF_REGISTRO'
      Required = True
    end
    object cdsItemGradeAMX_CODIGO: TStringField
      FieldName = 'AMX_CODIGO'
      FixedChar = True
      Size = 1
    end
    object cdsItemGradePRF_QTDEFAT: TFMTBCDField
      FieldName = 'PRF_QTDEFAT'
      Required = True
      Precision = 18
      Size = 1
    end
    object cdsItemGradePRF_QTDE_ENV_PRODUCAO: TFMTBCDField
      FieldName = 'PRF_QTDE_ENV_PRODUCAO'
    end
    object cdsItemGradePRG_QTDEAnterior: TFMTBCDField
      FieldName = 'PRG_QTDEAnterior'
    end
  end
  object dsItemGrade: TDataSource
    DataSet = cdsItemGrade
    Left = 781
    Top = 292
  end
  object dspItemGrade: TDataSetProvider
    DataSet = sItemGrade
    Constraints = False
    Exported = False
    Left = 601
    Top = 285
  end
  object sItemGrade: TSQLQuery
    MaxBlobSize = -1
    ParamCheck = False
    Params = <>
    SQL.Strings = (
      'SELECT PRG_REGISTRO, p.PRD_CODIGO, PRG_SALDO, '#39'+'
      'PRG_DESCRICAO,  PRG_REDUCAO_PERCENT, PRG_INDICE, '#39'+'
      
        ' 0.0 as PRG_QTDE, 0.0 as PRG_QTDEAnterior, IIF(PRG_PRECO = 0,PRD' +
        '_PVENDA, PRG_PRECO) as PRG_BRUTO, '#39'+'
      ' 0.0 PRECO_LIQU, 0 as PORC_IPI, '#39'+'
      
        ' 0.0 PRD_DESC, 0 PRF_REGISTRO, NULL amx_CODIGO, 0.0 as PRF_QTDEF' +
        'AT, 0.0 as PRF_QTDE_ENV_PRODUCAO, '#39'+'
      ' 0.0 as PercentStProduto '#39'+'
      
        ' FROM PRD_GRADE AS G INNER JOIN PRD0000 P ON  (P.PRD_CODIGO =  G' +
        '.PRD_CODIGO)'#39','
      ' WHERE prd_codigo = '#39'-1'#39
      ' ORDER BY PRG_DESCRICAO'
      '')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 648
    Top = 288
    object sItemGradePRG_REGISTRO: TIntegerField
      FieldName = 'PRG_REGISTRO'
      Required = True
    end
    object sItemGradePRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Size = 5
    end
    object sItemGradePRG_SALDO: TFMTBCDField
      FieldName = 'PRG_SALDO'
      Precision = 18
      Size = 5
    end
    object sItemGradePRG_DESCRICAO: TStringField
      FieldName = 'PRG_DESCRICAO'
      Size = 100
    end
    object sItemGradePRG_REDUCAO_PERCENT: TFMTBCDField
      FieldName = 'PRG_REDUCAO_PERCENT'
      Precision = 18
      Size = 5
    end
    object sItemGradePRG_INDICE: TFMTBCDField
      FieldName = 'PRG_INDICE'
      Precision = 18
      Size = 5
    end
    object sItemGradePRG_QTDE: TFMTBCDField
      FieldName = 'PRG_QTDE'
      Required = True
      Precision = 18
      Size = 1
    end
    object sItemGradePRG_BRUTO: TFMTBCDField
      FieldName = 'PRG_BRUTO'
      Required = True
      Precision = 18
      Size = 1
    end
    object sItemGradePRECO_LIQU: TFMTBCDField
      FieldName = 'PRECO_LIQU'
      Required = True
      Precision = 18
      Size = 1
    end
    object sItemGradePORC_IPI: TIntegerField
      FieldName = 'PORC_IPI'
      Required = True
    end
    object sItemGradePRD_DESC: TFMTBCDField
      FieldName = 'PRD_DESC'
      Required = True
      Precision = 18
      Size = 1
    end
    object sItemGradePRF_REGISTRO: TIntegerField
      FieldName = 'PRF_REGISTRO'
      Required = True
    end
    object sItemGradeAMX_CODIGO: TStringField
      FieldName = 'AMX_CODIGO'
      FixedChar = True
      Size = 1
    end
    object sItemGradePRF_QTDEFAT: TFMTBCDField
      FieldName = 'PRF_QTDEFAT'
      Required = True
      Precision = 18
      Size = 1
    end
    object sItemGradePRF_QTDE_ENV_PRODUCAO: TFMTBCDField
      FieldName = 'PRF_QTDE_ENV_PRODUCAO'
    end
    object sItemGradePRG_QTDEAnterior: TFMTBCDField
      FieldName = 'PRG_QTDEAnterior'
    end
    object sItemGradePERCENTSTPRODUTO: TFMTBCDField
      FieldName = 'PERCENTSTPRODUTO'
      Required = True
      Precision = 18
      Size = 1
    end
  end
  object qTab: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select seq,nome, prd_pvenda, PRD_PERC_COMISSAO , tab_registro'
      ' from  TABELAPRECOS'
      'where seq  = -1')
    SQLConnection = DBConn
    Left = 650
    Top = 173
    object qTabnome: TStringField
      Tag = 150
      DisplayLabel = 'Tabela'
      DisplayWidth = 5
      FieldName = 'nome'
      Size = 30
    end
    object qTabPRD_PVENDA: TFMTBCDField
      Tag = 100
      DisplayLabel = 'Pre'#231'o'
      FieldName = 'PRD_PVENDA'
      Required = True
      DisplayFormat = 'R$ #,###0.00'
      currency = True
      Precision = 18
      Size = 5
    end
    object qTabPRD_PERC_COMISSAO: TFMTBCDField
      Tag = 60
      DisplayLabel = 'Comiss'#227'o'
      DisplayWidth = 23
      FieldName = 'PRD_PERC_COMISSAO'
      Required = True
      DisplayFormat = '#,###0.00 %'
      currency = True
      Precision = 18
      Size = 5
    end
    object qTabPRD_PERC_VENDA: TFMTBCDField
      FieldName = 'PRD_PERC_VENDA'
      Visible = False
      DisplayFormat = '#,###0.00 %'
      currency = True
      Precision = 18
      Size = 5
    end
    object qTabseq: TIntegerField
      FieldName = 'seq'
    end
    object qTabtab_registro: TStringField
      Tag = 2
      FieldName = 'tab_registro'
      Size = 19
    end
  end
  object SQLQuery1: TSQLQuery
    Params = <>
    Left = 848
    Top = 296
  end
  object dsTabelaPreco: TDataSource
    DataSet = cdsTabelas
    Left = 712
    Top = 169
  end
  object dspTabPreco: TDataSetProvider
    DataSet = qTab
    Left = 535
    Top = 173
  end
  object cdsTabelas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTabPreco'
    Left = 599
    Top = 173
    object cdsTabelasnome: TStringField
      Tag = 150
      DisplayLabel = 'Tabela'
      DisplayWidth = 5
      FieldName = 'nome'
      Size = 30
    end
    object cdsTabelasPRD_PVENDA: TFMTBCDField
      Tag = 100
      DisplayLabel = 'Pre'#231'o'
      FieldName = 'PRD_PVENDA'
      Required = True
      DisplayFormat = 'R$ #,###0.00'
      currency = True
      Precision = 18
      Size = 5
    end
    object cdsTabelasPRD_PERC_COMISSAO: TFMTBCDField
      Tag = 60
      DisplayLabel = 'Comiss'#227'o'
      DisplayWidth = 23
      FieldName = 'PRD_PERC_COMISSAO'
      Required = True
      DisplayFormat = '#,###0.00 %'
      currency = True
      Precision = 18
      Size = 5
    end
    object cdsTabelasPRD_PERC_VENDA: TFMTBCDField
      FieldName = 'PRD_PERC_VENDA'
      Visible = False
      DisplayFormat = '#,###0.00 %'
      currency = True
      Precision = 18
      Size = 5
    end
    object cdsTabelasseq: TIntegerField
      FieldName = 'seq'
    end
    object cdsTabelastab_registro: TStringField
      Tag = 2
      FieldName = 'tab_registro'
      Size = 19
    end
  end
  object qUnidade: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT DISTINCT * FROM PRD_UNIDADE ORDER BY PRD_UNIDESCRI ')
    SQLConnection = DBConn
    Left = 976
    Top = 240
  end
  object dsUnidade: TDataSource
    DataSet = qUnidade
    Left = 1032
    Top = 241
  end
  object qCapacidade: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT DISTINCT * FROM CAPACIDADE ORDER BY CAP_DESCRICAO')
    SQLConnection = DBConn
    Left = 976
    Top = 304
  end
  object qCor: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM ACABAMENTO_CORES ORDER BY ACO_NOME')
    SQLConnection = DBConn
    Left = 976
    Top = 360
  end
  object SQLQuery2: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DataCadastros.SQLConnection1
    Left = 880
    Top = 189
  end
end
