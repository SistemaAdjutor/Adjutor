inherited FrmConsultaMarkup: TFrmConsultaMarkup
  Left = 389
  Top = 81
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Faturamento - Margens Previstas/Realizadas'
  ClientHeight = 549
  ClientWidth = 1273
  Font.Charset = ANSI_CHARSET
  Font.Name = 'Arial'
  FormStyle = fsMDIChild
  Position = poDesigned
  Visible = True
  ExplicitWidth = 1281
  ExplicitHeight = 576
  PixelsPerInch = 96
  TextHeight = 14
  object PageControl1: TPageControl [0]
    Left = 0
    Top = 0
    Width = 1273
    Height = 528
    ActivePage = tsNotaFiscal
    Align = alClient
    TabOrder = 0
    object tsNotaFiscal: TTabSheet
      Caption = 'Nota Fiscal'
      ImageIndex = 2
      object GroupBox5: TGroupBox
        Left = 0
        Top = 0
        Width = 1265
        Height = 98
        Align = alTop
        Caption = 'Filtro das Notas Fiscais'
        TabOrder = 0
        object SpeedButton1: TSpeedButton
          Left = 1183
          Top = 34
          Width = 78
          Height = 48
          Caption = '&Exportar'
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCCCCC
            CCCCCCCCCCCCCCCFCFCFCFCFCFCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC67
            9D703B86483C86483B86483C86483D87493C86483D8749488D53B5B5B3AFAFAD
            AEAEABADADABADADABB0AFADBBB3B72C7F3A45A15F419E5B409E5B449F5E47A1
            6045A05E47A2623A8647B0B0ADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF24
            7932FFFFFFFFFFFFFFFFFFFFFFFF3A9C55FFFFFFFFFFFF358242AEAEABFFFFFF
            FDFDFCFCFCFBFCFCFBFFFEFEFFFFFF24783247A863FFFFFFFFFFFF329C50FFFF
            FFFFFFFF4BAB66388344ADADABFFFFFFF8F8F8F8F8F8F8F8F8FBFAFBFFFFFF27
            793455B37043A960FFFFFFFFFFFFFFFFFF43A96058B5733A8446ADADABFFFFFF
            F6F5F5F6F5F5F6F5F5F9F7F8FFFFFF24773255B772FFFFFFFFFFFF48AD65FFFF
            FFFFFFFF58B975378344ADADABFFFFFFF3F2F2F3F2F2F3F2F2F6F4F4FFFBFF1D
            742CFFFFFFFFFFFF5BBA7661BD7B5ABA76FFFFFFFFFFFF348141ADADABFFFFFF
            F0F0EFF0F0EFF0F0EFF2F1F1FAF6F872A67B49A86268C8856FCA8A73CC8D71CC
            8C6DCA8971CF8E398445ADADABFFFFFFEEECEBEEEDECEEEDECEEEDECF2EFEFFC
            F4F874A67C2577332A7A37307F3D35824337834539854769A374ADADABFFFFFF
            EAE9E9EBEAEAEBEAEAEAE9E9F5F4F4FFFFFFFFFFFFD8EADCFFFFFFC2B7C0FFFF
            FFCCCCCCFFFFFFFFFFFFADADABFFFFFFE7E7E6E8E8E7E8E8E7E6E7E5FFFFFFCC
            CCCBA9A8A6A9A8A6FFFFFFB3B5BACCCCCCC78443CCCCCCFFFFFFAEAEABFFFFFF
            E4E3E2E5E4E3E5E4E3E4E3E2FFFFFFA6A6A4FBFBFAFFFFFFE9EBEEBCC0C4BB81
            3CF4C073BE8545CCCCCCAEAEACFFFFFFE0DFDEE1DFDEE1DFDEE0DFDEFFFFFFA5
            A5A2FFFFFFE7E8E9CFD1D4BA7E35BA8442B98545BB8646BC8747AFAFADFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E9E9CCCECECCCCCCCCCCCCC8B9
            A8BB8747FFFFFFFFFFFFB8B8B6B0B0ADAEAEACAEAEABAEAEABADAEABAEAEABAF
            AFADB7B8B7FFFFFFBB7F36BB8542BB8747D5B58DFFFFFFFFFFFF}
          Layout = blGlyphTop
          OnClick = SpeedButton1Click
        end
        object GroupBox6: TGroupBox
          Left = 2
          Top = 16
          Width = 239
          Height = 80
          Align = alLeft
          Caption = 'Empresas'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object lstEmpresaNotaFiscal: TJvCheckListBox
            Left = 2
            Top = 16
            Width = 235
            Height = 62
            Align = alClient
            DoubleBuffered = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ItemHeight = 14
            Items.Strings = (
              'Empresa 1')
            ParentDoubleBuffered = False
            ParentFont = False
            ScrollWidth = 69
            TabOrder = 0
            MultiSelect = True
          end
        end
        object GroupBox12: TGroupBox
          Left = 243
          Top = 16
          Width = 278
          Height = 40
          Caption = 'Informe o Per'#237'odo de Emiss'#227'o'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          TabStop = True
          object Label1: TLabel
            Left = 8
            Top = 19
            Width = 57
            Height = 14
            Caption = 'Data Inicial :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label2: TLabel
            Left = 162
            Top = 17
            Width = 15
            Height = 14
            Caption = 'at'#233
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RxDataInicialNotaFiscal: TDateEdit
            Left = 68
            Top = 14
            Width = 90
            Height = 22
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ButtonWidth = 20
            NumGlyphs = 2
            ParentFont = False
            YearDigits = dyFour
            TabOrder = 0
          end
          object RxDataFinalNotaFiscal: TDateEdit
            Left = 183
            Top = 14
            Width = 89
            Height = 22
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ButtonWidth = 20
            NumGlyphs = 2
            ParentFont = False
            YearDigits = dyFour
            TabOrder = 1
          end
        end
        object GroupBox2: TGroupBox
          Left = 523
          Top = 56
          Width = 322
          Height = 40
          Caption = 'Cliente'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          object edtCodigoClienteNotaFiscal: TEdit
            Left = 7
            Top = 14
            Width = 40
            Height = 22
            CharCase = ecUpperCase
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            MaxLength = 5
            ParentFont = False
            TabOrder = 0
            OnExit = edtCodigoClienteNotaFiscalExit
          end
          object cbbClienteNotaFiscal: TComboBoxRw
            Left = 49
            Top = 14
            Width = 243
            Height = 22
            EmptyText = 'TODOS OS CLIENTES'
            TabOrder = 1
            CharCase = ecUpperCase
            font.Charset = ANSI_CHARSET
            font.Color = clBlack
            font.Height = -11
            font.Name = 'Arial'
            font.Style = []
            LookupSelect = 'CLI_RAZAO'
            LookupOrderBy = 'CLI_RAZAO'
            LookupTable = 'cli0000'
            OnSelect = cbbClienteNotaFiscalSelect
            GridAutoSize = False
            LookupSource = cbbClienteNotaFiscal.InternalSource
            LookupKeyField = 'CLI_CODIGO'
            ShowButton = True
            LookupTableShare = 'CLIENTES'
            AutoF8WinTitulo = 'Clientes'
            AutoF8ColumnsTitulo = 'C'#243'digo, Nome'
            GridLeft = 0
            GridWidth = 0
            GridHeight = 100
            GridShowWhenEnter = False
            SelectWithDoubleClick = False
            Tabela = 'cli0000'
            CamposCarregar = 'CLI_RAZAO'
            CamposRetornar = 'CLI_CODIGO'
            CamposOrdernar = 'CLI_RAZAO'
            ConexaoBanco = DataCadastros.SQLConnection1
            Compartilhar = 'CLIENTES'
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
        object btnSairNotaFiscal: TBitBtn
          Left = 1083
          Top = 34
          Width = 99
          Height = 24
          Hint = 'Sair'
          Caption = '&Sair'
          TabOrder = 4
          OnClick = btnSairPedidoClick
        end
        object BitBtn2: TBitBtn
          Left = 1083
          Top = 58
          Width = 99
          Height = 24
          Hint = 'Pesquisar'
          Caption = '&Pesquisar'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          OnClick = BitBtn2Click
        end
        object GroupBox4: TGroupBox
          Left = 756
          Top = 16
          Width = 89
          Height = 40
          Caption = 'Pedido'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
          object edtPedidoNota: TEdit
            Left = 5
            Top = 15
            Width = 76
            Height = 22
            CharCase = ecUpperCase
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            MaxLength = 6
            ParentFont = False
            TabOrder = 0
            OnExit = edtPedidoNotaExit
          end
        end
        object GroupBox14: TGroupBox
          Left = 523
          Top = 16
          Width = 229
          Height = 40
          Caption = 'Tipo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
          object CbbTipoNota: TComboBoxRw
            Left = 6
            Top = 14
            Width = 193
            Height = 22
            EmptyText = 'TODOS OS TIPOS'
            TabOrder = 0
            CharCase = ecUpperCase
            font.Charset = ANSI_CHARSET
            font.Color = clBlack
            font.Height = -11
            font.Name = 'Arial'
            font.Style = []
            LookupSelect = 'OPV_DESCRICAO'
            LookupOrderBy = 'OPV_DESCRICAO'
            LookupTable = 'OPV0000'
            GridAutoSize = False
            LookupSource = cbbTipoPedido.InternalSource
            LookupKeyField = 'OPV_CODIGO'
            FiltroTabela = 'OPV_TIPO = '#39'S'#39
            ShowButton = True
            LookupTableShare = 'TABELAS'
            AutoF8WinTitulo = 'Tipos'
            AutoF8ColumnsTitulo = 'C'#243'digo, Descri'#231#227'o'
            GridLeft = 0
            GridWidth = 0
            GridHeight = 100
            GridShowWhenEnter = False
            SelectWithDoubleClick = False
            Tabela = 'OPV0000'
            CamposCarregar = 'OPV_DESCRICAO'
            CamposRetornar = 'OPV_CODIGO'
            Condicao = 'OPV_TIPO = '#39'S'#39
            CamposOrdernar = 'OPV_DESCRICAO'
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
        end
        object GroupBox1: TGroupBox
          Left = 244
          Top = 56
          Width = 277
          Height = 40
          Caption = 'Vendedor'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 7
          object cbbVendedorNotaFiscal: TComboBoxRw
            Left = 8
            Top = 16
            Width = 240
            Height = 22
            EmptyText = 'TODOS OS VENDEDORES'
            TabOrder = 0
            CharCase = ecUpperCase
            font.Charset = ANSI_CHARSET
            font.Color = clBlack
            font.Height = -11
            font.Name = 'Arial'
            font.Style = []
            LookupSelect = 'REP_NOME'
            LookupOrderBy = 'REP_NOME'
            LookupTable = 'REP0000'
            GridAutoSize = False
            LookupSource = cbbVendedorNotaFiscal.InternalSource
            LookupKeyField = 'REP_CODIGO'
            ShowButton = True
            LookupTableShare = 'REPRESENTANTES'
            AutoF8WinTitulo = 'Vendedores'
            AutoF8ColumnsTitulo = 'C'#243'digo, Nome'
            GridLeft = 0
            GridWidth = 0
            GridHeight = 100
            GridShowWhenEnter = False
            SelectWithDoubleClick = False
            Tabela = 'REP0000'
            CamposCarregar = 'REP_NOME'
            CamposRetornar = 'REP_CODIGO'
            CamposOrdernar = 'REP_NOME'
            ConexaoBanco = DataCadastros.SQLConnection1
            Compartilhar = 'REPRESENTANTES'
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
        object GroupBox15: TGroupBox
          Left = 851
          Top = 56
          Width = 226
          Height = 40
          Caption = 'Centro de Custo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 8
          object edCCusto: TSgDbSearchCombo
            Left = 3
            Top = 15
            Width = 190
            Height = 22
            TabOrder = 0
            CharCase = ecUpperCase
            LookupSelect = 'PCX_CODIGO, PCX_DESCRI'
            LookupOrderBy = 'PCX_DESCRI'
            LookupTable = 'pcx0000'
            LookupDispl = 'PCX_DESCRI'
            GridAutoSize = False
            LookupSource = qCCusto
            LookupKeyField = 'PCX_CODIGO'
            FiltroTabela = 'PCX_TIPO = '#39'L'#39
            ShowButton = True
            AutoF8WinTitulo = 'Centros de Custos'
            AutoF8ColumnsTitulo = 'C'#243'digo, Descri'#231#227'o'
            GridLeft = 0
            GridWidth = 0
            GridHeight = 100
            GridShowWhenEnter = False
            SelectWithDoubleClick = False
          end
        end
      end
      object GroupBox8: TGroupBox
        Left = 0
        Top = 440
        Width = 1265
        Height = 59
        Align = alBottom
        Caption = 'Totais'
        TabOrder = 1
        object Label5: TLabel
          Left = 154
          Top = 12
          Width = 72
          Height = 14
          Alignment = taRightJustify
          Caption = 'Qtd. Registros:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 369
          Top = 12
          Width = 47
          Height = 14
          Caption = 'Vlr.Venda'
        end
        object Label7: TLabel
          Left = 464
          Top = 12
          Width = 28
          Height = 14
          Caption = 'Custo'
        end
        object Label8: TLabel
          Left = 543
          Top = 12
          Width = 48
          Height = 14
          Caption = 'Resultado'
        end
        object Label9: TLabel
          Left = 816
          Top = 12
          Width = 55
          Height = 14
          Caption = 'Vlr.Previsto'
        end
        object Label11: TLabel
          Left = 896
          Top = 12
          Width = 73
          Height = 14
          Caption = 'Resultado Prev'
        end
        object Label10: TLabel
          Left = 631
          Top = 12
          Width = 35
          Height = 14
          Caption = 'Markup'
        end
        object Label12: TLabel
          Left = 990
          Top = 12
          Width = 77
          Height = 14
          Caption = 'Markup Previsto'
        end
        object Label13: TLabel
          Left = 1095
          Top = 12
          Width = 80
          Height = 14
          Caption = 'Margem Prevista'
        end
        object Label23: TLabel
          Left = 721
          Top = 12
          Width = 72
          Height = 14
          Caption = 'Margem Obtida'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object SpeedButton2: TSpeedButton
          Left = 1199
          Top = 10
          Width = 57
          Height = 46
          Caption = '(Ctrl+F5)'
          Glyph.Data = {
            D6050000424DD605000000000000360000002800000014000000120000000100
            200000000000A005000064000000640000000000000000000000FFFFFFFFF6F6
            F6FFBBBBBBFF7A7A7AFF595959FF595959FF595959FF595959FF595959FF5959
            59FF595959FF595959FF565656FF606060FF565656FF575757FF606060FF5C5C
            5CFF8E8E8EFFF2F2F2FFFFFFFFFFEFEFEFFF999999FF404040FF686868FF6868
            68FF686868FF686868FF686868FF686868FF686868FF686868FF696969FF6767
            67FF5B5B5BFF707070FF7F7F7FFF515151FF616161FFC9C9C9FFFEFEFEFFF7F7
            F7FF747474FF5B5B5BFFADADADFFFFFFFFFFD0D0D0FF737373FF575757FF9F9F
            9FFFFFFFFFFFDCDCDCFF727272FF656565FF8C8C8CFFFFFFFFFFE8E8E8FF7373
            73FF585858FFBCBCBCFFFEFEFEFFF7F7F7FF747474FF5B5B5BFFDEDEDEFFFFFF
            FFFFF0F0F0FF737373FF616161FFD1D1D1FFFCFCFCFFFEFEFEFF818181FF5555
            55FFC0C0C0FFFFFFFFFFF8F8F8FF9B9B9BFF4B4B4BFFC4C4C4FFFEFEFEFFF7F7
            F7FF747474FF5B5B5BFF9E9E9EFFEDEDEDFFCFCFCFFF6A6A6AFF4F4F4FFFA0A0
            A0FFE7E7E7FFCCCCCCFF747474FF565656FF8B8B8BFFEFEFEFFFD8D8D8FF7575
            75FF4E4E4EFFC4C4C4FFFEFEFEFFF7F7F7FF747474FF5B5B5BFF575757FF5858
            58FF565656FF5C5C5CFF646464FF656565FF5E5E5EFF505050FF585858FF5F5F
            5FFF606060FF6C6C6CFF434343FF646464FF585858FFBBBBBBFFFEFEFEFFF7F7
            F7FF747474FF5B5B5BFF979797FFF2F2F2FFAFAFAFFF737373FF585858FF8181
            81FFECECECFFC4C4C4FF636363FF6B6B6BFF757575FFE7E7E7FFCECECEFF6666
            66FF676767FFBABABAFFFEFEFEFFF7F7F7FF747474FF5B5B5BFFE2E2E2FFFCFC
            FCFFF3F3F3FF747474FF626262FFD5D5D5FFF9F9F9FFFFFFFFFF858585FF4F4F
            4FFFCCCCCCFFF9F9F9FFFDFDFDFF969696FF4D4D4DFFC2C2C2FFFEFEFEFFF7F7
            F7FF747474FF5B5B5BFFAFAFAFFFFFFFFFFFE6E6E6FF6D6D6DFF4D4D4DFFAFAF
            AFFFF9F9F9FFE4E4E4FF808080FF515151FF9E9E9EFFF8F8F8FFF1F1F1FF7474
            74FF4C4C4CFFC4C4C4FFFEFEFEFFF7F7F7FF747474FF5B5B5BFF5F5F5FFF7D7D
            7DFF666666FF606060FF5D5D5DFF616161FF7F7F7FFF696969FF5A5A5AFF6767
            67FF5A5A5AFF888888FF5B5B5BFF616161FF5E5E5EFFBDBDBDFFFEFEFEFFECEC
            ECFF7A7A7AFF656565FF696969FF6A6A6AFF696969FF676767FF696969FF6D6D
            6DFF6B6B6BFF666666FF696969FF686868FF6F6F6FFF5D5D5DFF7A7A7AFF6B6B
            6BFF4F4F4FFFC7C7C7FFFBFBFBFFFBFBFBFF797979FF545454FFE2E2E2FFEAEA
            EAFFF1F1F1FFF0F0F0FFEDEDEDFFEEEEEEFFEFEFEFFFEDEDEDFFF7F7F7FFE7E7
            E7FFEAEAEAFFE5E5E5FFEBEBEBFF999999FF4F4F4FFFBFBFBFFFFDFDFDFFFDFD
            FDFF747474FF5B5B5BFFE6E6E6FFF5F5F5FFFFFFFFFFFFFFFFFFFCFCFCFFFAFA
            FAFFFCFCFCFFFEFEFEFFFBFBFBFFFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFF9898
            98FF4B4B4BFFC3C3C3FFFFFFFFFFF2F2F2FF6C6C6CFF6C6C6CFFECECECFFFBFB
            FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9FFFFFF
            FFFFFFFFFFFFFAFAFAFFF2F2F2FF989898FF565656FFBABABAFFFFFFFFFFF2F2
            F2FF707070FF5B5B5BFF9D9D9DFFA3A3A3FFA7A7A7FFA6A6A6FFA5A5A5FFA6A6
            A6FFA6A6A6FFA4A4A4FFA3A3A3FFA5A5A5FFA2A2A2FFA2A2A2FFB2B2B2FF8383
            83FF636363FFBCBCBCFFFFFFFFFFFFFFFFFF949494FF505050FF595959FF5959
            59FF575757FF555555FF575757FF5C5C5CFF5A5A5AFF545454FF686868FF5C5C
            5CFF595959FF5B5B5BFF5C5C5CFF464646FF636363FFD2D2D2FFFFFFFFFFFFFF
            FFFFD4D4D4FF939393FF6E6E6EFF6F6F6FFF6C6C6CFF6A6A6AFF6D6D6DFF7171
            71FF6F6F6FFF6A6A6AFF666666FF626262FF6C6C6CFF707070FF6D6D6DFF7878
            78FFB2B2B2FFFFFFFFFFFDFDFDFFF8F8F8FFFFFFFFFFF2F2F2FFEDEDEDFFF1F1
            F1FFF1F1F1FFF0F0F0FFF1F1F1FFF4F4F4FFF2F2F2FFEEEEEEFFF7F7F7FFF1F1
            F1FFF3F3F3FFEBEBEBFFEBEBEBFFFDFDFDFFFFFFFFFFFCFCFCFF}
          Layout = blGlyphTop
          OnClick = SpeedButton2Click
        end
        object edit0: TCurrencyEdit
          Left = 150
          Top = 26
          Width = 86
          Height = 21
          TabStop = False
          AutoSize = False
          Color = clWhite
          DecimalPlaces = 0
          DisplayFormat = '0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          ZeroEmpty = False
        end
        object DBEdit1: TDBEdit
          Left = 369
          Top = 26
          Width = 90
          Height = 22
          TabStop = False
          BiDiMode = bdRightToLeft
          Color = clWhite
          DataField = 'TOT_NFTOTPROD'
          DataSource = dsNotaFiscal
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object DBEdit2: TDBEdit
          Left = 464
          Top = 26
          Width = 75
          Height = 22
          TabStop = False
          BiDiMode = bdRightToLeft
          Color = clWhite
          DataField = 'TOT_CUSTO'
          DataSource = dsNotaFiscal
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
        end
        object DBEdit3: TDBEdit
          Left = 543
          Top = 26
          Width = 78
          Height = 22
          TabStop = False
          BiDiMode = bdRightToLeft
          Color = clWhite
          DataField = 'TOT_LUCRO'
          DataSource = dsNotaFiscal
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
        end
        object DBEdit4: TDBEdit
          Left = 896
          Top = 26
          Width = 86
          Height = 22
          TabStop = False
          BiDiMode = bdRightToLeft
          Color = clWhite
          DataField = 'tot_lucroesperado'
          DataSource = dsNotaFiscal
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 4
        end
        object DBEdit6: TDBEdit
          Left = 813
          Top = 26
          Width = 77
          Height = 22
          TabStop = False
          BiDiMode = bdRightToLeft
          Color = clWhite
          DataField = 'TOT_VENDAESPERADA'
          DataSource = dsNotaFiscal
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 5
        end
        object Edit1: TEdit
          Left = 631
          Top = 26
          Width = 86
          Height = 22
          TabStop = False
          BiDiMode = bdRightToLeft
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 6
          Text = 'Edit1'
        end
        object Edit2: TEdit
          Left = 990
          Top = 26
          Width = 86
          Height = 22
          TabStop = False
          BiDiMode = bdRightToLeft
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 7
          Text = 'Edit1'
        end
        object edMargemPrevista: TEdit
          Left = 1095
          Top = 26
          Width = 86
          Height = 22
          TabStop = False
          BiDiMode = bdRightToLeft
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 8
          Text = 'Edit1'
        end
        object edTotalMargem: TEdit
          Left = 721
          Top = 26
          Width = 86
          Height = 22
          TabStop = False
          BiDiMode = bdRightToLeft
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 9
          Text = 'Edit1'
        end
      end
      object PageControl2: TPageControl
        Left = 0
        Top = 98
        Width = 1265
        Height = 342
        ActivePage = tsResultadoNotaFiscal
        Align = alClient
        TabOrder = 2
        object tsResultadoNotaFiscal: TTabSheet
          Caption = 'Resultado'
          object GroupBox7: TGroupBox
            Left = 0
            Top = 0
            Width = 1257
            Height = 313
            Align = alClient
            Caption = 'Duplo click ou  Enter para ver os itens do pedido'
            TabOrder = 0
            object dbgrdNotaFiscal: TDBGrid
              Left = 2
              Top = 16
              Width = 1253
              Height = 295
              Align = alClient
              Color = 16776176
              DataSource = dsNotaFiscal
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
              TabOrder = 0
              TitleFont.Charset = ANSI_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Arial'
              TitleFont.Style = []
              OnDblClick = dbgrdNotaFiscalDblClick
              Columns = <
                item
                  Expanded = False
                  FieldName = 'NF_NUM_NFE'
                  Title.Alignment = taCenter
                  Title.Caption = 'NFe'
                  Width = 41
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'NF_EMISSAO'
                  Title.Alignment = taCenter
                  Title.Caption = 'Emiss'#227'o'
                  Width = 58
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'PED_CODIGO'
                  Title.Alignment = taCenter
                  Title.Caption = 'Pedido'
                  Width = 42
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'CLI_RAZAO'
                  Title.Alignment = taCenter
                  Title.Caption = 'Cliente'
                  Width = 153
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'REP_NOME'
                  Title.Alignment = taCenter
                  Title.Caption = 'Vendedor'
                  Width = 72
                  Visible = True
                end
                item
                  Color = clYellow
                  Expanded = False
                  FieldName = 'NF_TOT_NOTA'
                  Title.Alignment = taCenter
                  Title.Caption = 'Vlr. Venda'
                  Width = 70
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'CUSTO'
                  Title.Alignment = taCenter
                  Title.Caption = 'Custo'
                  Width = 83
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'LUCRO'
                  Title.Alignment = taCenter
                  Title.Caption = 'Resultado'
                  Width = 74
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Margem'
                  Title.Alignment = taCenter
                  Title.Caption = 'Markup'
                  Width = 100
                  Visible = True
                end
                item
                  Color = clYellow
                  Expanded = False
                  FieldName = 'Markup'
                  Title.Alignment = taCenter
                  Title.Caption = 'Margem Obtida'
                  Width = 99
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'VENDA_ESPERADA'
                  Title.Alignment = taCenter
                  Title.Caption = 'Vlr. Previsto'
                  Width = 71
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'LUCRO_ESPERADO'
                  Title.Alignment = taCenter
                  Title.Caption = 'Resultado Prev'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'MargemPrevista'
                  Title.Alignment = taCenter
                  Title.Caption = 'Markup Previsto'
                  Width = 100
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'MarkupPrevisto'
                  Title.Alignment = taCenter
                  Title.Caption = 'Margem Prevista'
                  Width = 100
                  Visible = True
                end>
            end
          end
        end
        object tsGraficoNotaFiscal: TTabSheet
          Caption = 'Gr'#225'fico'
          ImageIndex = 1
          OnShow = tsGraficoNotaFiscalShow
          object chtGraficoNotaFiscal: TChart
            Left = 0
            Top = 0
            Width = 1257
            Height = 313
            Title.Text.Strings = (
              'Faturamento/Markups por Vendedores')
            TopAxis.LabelsAngle = 45
            TopAxis.LabelsMultiLine = True
            View3DOptions.Elevation = 315
            View3DOptions.Orthogonal = False
            View3DOptions.Perspective = 0
            View3DOptions.Rotation = 360
            Align = alClient
            Color = clWhite
            TabOrder = 0
            DefaultCanvas = 'TGDIPlusCanvas'
            ColorPaletteIndex = 13
            object Button1: TButton
              Left = 2
              Top = 2
              Width = 108
              Height = 25
              Caption = 'Imprimir Gr'#225'fico'
              TabOrder = 0
              OnClick = Button1Click
            end
            object BarSeries1: TBarSeries
              ColorEachPoint = True
              SeriesColor = clRed
              MultiBar = mbNone
              XValues.Name = 'X'
              XValues.Order = loAscending
              YValues.Name = 'Bar'
              YValues.Order = loNone
            end
          end
        end
      end
    end
    object tsPedido: TTabSheet
      Caption = 'Pedido'
      object grpConsultaProduto: TGroupBox
        Left = 0
        Top = 0
        Width = 1265
        Height = 98
        Align = alTop
        Caption = 'Filtro dos Pedidos'
        TabOrder = 0
        object btnExcel: TSpeedButton
          Left = 1091
          Top = 35
          Width = 78
          Height = 48
          Caption = '&Exportar'
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCCCCC
            CCCCCCCCCCCCCCCFCFCFCFCFCFCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC67
            9D703B86483C86483B86483C86483D87493C86483D8749488D53B5B5B3AFAFAD
            AEAEABADADABADADABB0AFADBBB3B72C7F3A45A15F419E5B409E5B449F5E47A1
            6045A05E47A2623A8647B0B0ADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF24
            7932FFFFFFFFFFFFFFFFFFFFFFFF3A9C55FFFFFFFFFFFF358242AEAEABFFFFFF
            FDFDFCFCFCFBFCFCFBFFFEFEFFFFFF24783247A863FFFFFFFFFFFF329C50FFFF
            FFFFFFFF4BAB66388344ADADABFFFFFFF8F8F8F8F8F8F8F8F8FBFAFBFFFFFF27
            793455B37043A960FFFFFFFFFFFFFFFFFF43A96058B5733A8446ADADABFFFFFF
            F6F5F5F6F5F5F6F5F5F9F7F8FFFFFF24773255B772FFFFFFFFFFFF48AD65FFFF
            FFFFFFFF58B975378344ADADABFFFFFFF3F2F2F3F2F2F3F2F2F6F4F4FFFBFF1D
            742CFFFFFFFFFFFF5BBA7661BD7B5ABA76FFFFFFFFFFFF348141ADADABFFFFFF
            F0F0EFF0F0EFF0F0EFF2F1F1FAF6F872A67B49A86268C8856FCA8A73CC8D71CC
            8C6DCA8971CF8E398445ADADABFFFFFFEEECEBEEEDECEEEDECEEEDECF2EFEFFC
            F4F874A67C2577332A7A37307F3D35824337834539854769A374ADADABFFFFFF
            EAE9E9EBEAEAEBEAEAEAE9E9F5F4F4FFFFFFFFFFFFD8EADCFFFFFFC2B7C0FFFF
            FFCCCCCCFFFFFFFFFFFFADADABFFFFFFE7E7E6E8E8E7E8E8E7E6E7E5FFFFFFCC
            CCCBA9A8A6A9A8A6FFFFFFB3B5BACCCCCCC78443CCCCCCFFFFFFAEAEABFFFFFF
            E4E3E2E5E4E3E5E4E3E4E3E2FFFFFFA6A6A4FBFBFAFFFFFFE9EBEEBCC0C4BB81
            3CF4C073BE8545CCCCCCAEAEACFFFFFFE0DFDEE1DFDEE1DFDEE0DFDEFFFFFFA5
            A5A2FFFFFFE7E8E9CFD1D4BA7E35BA8442B98545BB8646BC8747AFAFADFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E9E9CCCECECCCCCCCCCCCCC8B9
            A8BB8747FFFFFFFFFFFFB8B8B6B0B0ADAEAEACAEAEABAEAEABADAEABAEAEABAF
            AFADB7B8B7FFFFFFBB7F36BB8542BB8747D5B58DFFFFFFFFFFFF}
          Layout = blGlyphTop
          OnClick = btnExcelClick
        end
        object btCalc: TSpeedButton
          Left = 1169
          Top = 35
          Width = 84
          Height = 48
          Caption = '(Ctrl+F5)'
          Glyph.Data = {
            D6050000424DD605000000000000360000002800000014000000120000000100
            200000000000A005000064000000640000000000000000000000FFFFFFFFF6F6
            F6FFBBBBBBFF7A7A7AFF595959FF595959FF595959FF595959FF595959FF5959
            59FF595959FF595959FF565656FF606060FF565656FF575757FF606060FF5C5C
            5CFF8E8E8EFFF2F2F2FFFFFFFFFFEFEFEFFF999999FF404040FF686868FF6868
            68FF686868FF686868FF686868FF686868FF686868FF686868FF696969FF6767
            67FF5B5B5BFF707070FF7F7F7FFF515151FF616161FFC9C9C9FFFEFEFEFFF7F7
            F7FF747474FF5B5B5BFFADADADFFFFFFFFFFD0D0D0FF737373FF575757FF9F9F
            9FFFFFFFFFFFDCDCDCFF727272FF656565FF8C8C8CFFFFFFFFFFE8E8E8FF7373
            73FF585858FFBCBCBCFFFEFEFEFFF7F7F7FF747474FF5B5B5BFFDEDEDEFFFFFF
            FFFFF0F0F0FF737373FF616161FFD1D1D1FFFCFCFCFFFEFEFEFF818181FF5555
            55FFC0C0C0FFFFFFFFFFF8F8F8FF9B9B9BFF4B4B4BFFC4C4C4FFFEFEFEFFF7F7
            F7FF747474FF5B5B5BFF9E9E9EFFEDEDEDFFCFCFCFFF6A6A6AFF4F4F4FFFA0A0
            A0FFE7E7E7FFCCCCCCFF747474FF565656FF8B8B8BFFEFEFEFFFD8D8D8FF7575
            75FF4E4E4EFFC4C4C4FFFEFEFEFFF7F7F7FF747474FF5B5B5BFF575757FF5858
            58FF565656FF5C5C5CFF646464FF656565FF5E5E5EFF505050FF585858FF5F5F
            5FFF606060FF6C6C6CFF434343FF646464FF585858FFBBBBBBFFFEFEFEFFF7F7
            F7FF747474FF5B5B5BFF979797FFF2F2F2FFAFAFAFFF737373FF585858FF8181
            81FFECECECFFC4C4C4FF636363FF6B6B6BFF757575FFE7E7E7FFCECECEFF6666
            66FF676767FFBABABAFFFEFEFEFFF7F7F7FF747474FF5B5B5BFFE2E2E2FFFCFC
            FCFFF3F3F3FF747474FF626262FFD5D5D5FFF9F9F9FFFFFFFFFF858585FF4F4F
            4FFFCCCCCCFFF9F9F9FFFDFDFDFF969696FF4D4D4DFFC2C2C2FFFEFEFEFFF7F7
            F7FF747474FF5B5B5BFFAFAFAFFFFFFFFFFFE6E6E6FF6D6D6DFF4D4D4DFFAFAF
            AFFFF9F9F9FFE4E4E4FF808080FF515151FF9E9E9EFFF8F8F8FFF1F1F1FF7474
            74FF4C4C4CFFC4C4C4FFFEFEFEFFF7F7F7FF747474FF5B5B5BFF5F5F5FFF7D7D
            7DFF666666FF606060FF5D5D5DFF616161FF7F7F7FFF696969FF5A5A5AFF6767
            67FF5A5A5AFF888888FF5B5B5BFF616161FF5E5E5EFFBDBDBDFFFEFEFEFFECEC
            ECFF7A7A7AFF656565FF696969FF6A6A6AFF696969FF676767FF696969FF6D6D
            6DFF6B6B6BFF666666FF696969FF686868FF6F6F6FFF5D5D5DFF7A7A7AFF6B6B
            6BFF4F4F4FFFC7C7C7FFFBFBFBFFFBFBFBFF797979FF545454FFE2E2E2FFEAEA
            EAFFF1F1F1FFF0F0F0FFEDEDEDFFEEEEEEFFEFEFEFFFEDEDEDFFF7F7F7FFE7E7
            E7FFEAEAEAFFE5E5E5FFEBEBEBFF999999FF4F4F4FFFBFBFBFFFFDFDFDFFFDFD
            FDFF747474FF5B5B5BFFE6E6E6FFF5F5F5FFFFFFFFFFFFFFFFFFFCFCFCFFFAFA
            FAFFFCFCFCFFFEFEFEFFFBFBFBFFFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFF9898
            98FF4B4B4BFFC3C3C3FFFFFFFFFFF2F2F2FF6C6C6CFF6C6C6CFFECECECFFFBFB
            FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9FFFFFF
            FFFFFFFFFFFFFAFAFAFFF2F2F2FF989898FF565656FFBABABAFFFFFFFFFFF2F2
            F2FF707070FF5B5B5BFF9D9D9DFFA3A3A3FFA7A7A7FFA6A6A6FFA5A5A5FFA6A6
            A6FFA6A6A6FFA4A4A4FFA3A3A3FFA5A5A5FFA2A2A2FFA2A2A2FFB2B2B2FF8383
            83FF636363FFBCBCBCFFFFFFFFFFFFFFFFFF949494FF505050FF595959FF5959
            59FF575757FF555555FF575757FF5C5C5CFF5A5A5AFF545454FF686868FF5C5C
            5CFF595959FF5B5B5BFF5C5C5CFF464646FF636363FFD2D2D2FFFFFFFFFFFFFF
            FFFFD4D4D4FF939393FF6E6E6EFF6F6F6FFF6C6C6CFF6A6A6AFF6D6D6DFF7171
            71FF6F6F6FFF6A6A6AFF666666FF626262FF6C6C6CFF707070FF6D6D6DFF7878
            78FFB2B2B2FFFFFFFFFFFDFDFDFFF8F8F8FFFFFFFFFFF2F2F2FFEDEDEDFFF1F1
            F1FFF1F1F1FFF0F0F0FFF1F1F1FFF4F4F4FFF2F2F2FFEEEEEEFFF7F7F7FFF1F1
            F1FFF3F3F3FFEBEBEBFFEBEBEBFFFDFDFDFFFFFFFFFFFCFCFCFF}
          Layout = blGlyphTop
          OnClick = btCalcClick
        end
        object grpEmpresa: TGroupBox
          Left = 2
          Top = 16
          Width = 239
          Height = 80
          Align = alLeft
          Caption = 'Empresas'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object lstEmpresaPedido: TJvCheckListBox
            Left = 2
            Top = 16
            Width = 235
            Height = 62
            Align = alClient
            DoubleBuffered = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ItemHeight = 14
            Items.Strings = (
              'Empresa 1')
            ParentDoubleBuffered = False
            ParentFont = False
            ScrollWidth = 69
            TabOrder = 0
            MultiSelect = True
          end
        end
        object GbData: TGroupBox
          Left = 243
          Top = 16
          Width = 278
          Height = 40
          Caption = 'Informe o Per'#237'odo de Entrada'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          TabStop = True
          object Label3: TLabel
            Left = 8
            Top = 19
            Width = 57
            Height = 14
            Caption = 'Data Inicial :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label4: TLabel
            Left = 162
            Top = 17
            Width = 15
            Height = 14
            Caption = 'at'#233
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RxDataInicialPedido: TDateEdit
            Left = 68
            Top = 14
            Width = 90
            Height = 22
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ButtonWidth = 20
            NumGlyphs = 2
            ParentFont = False
            YearDigits = dyFour
            TabOrder = 0
          end
          object RxDataFinalPedido: TDateEdit
            Left = 183
            Top = 14
            Width = 89
            Height = 22
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ButtonWidth = 20
            NumGlyphs = 2
            ParentFont = False
            YearDigits = dyFour
            TabOrder = 1
          end
        end
        object GroupBox9: TGroupBox
          Left = 524
          Top = 16
          Width = 229
          Height = 40
          Caption = 'Tipo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          object cbbTipoPedido: TComboBoxRw
            Left = 6
            Top = 14
            Width = 193
            Height = 22
            EmptyText = 'TODOS OS TIPOS'
            TabOrder = 0
            CharCase = ecUpperCase
            font.Charset = ANSI_CHARSET
            font.Color = clBlack
            font.Height = -11
            font.Name = 'Arial'
            font.Style = []
            LookupSelect = 'OPV_DESCRICAO'
            LookupOrderBy = 'OPV_DESCRICAO'
            LookupTable = 'OPV0000'
            GridAutoSize = False
            LookupSource = cbbTipoPedido.InternalSource
            LookupKeyField = 'OPV_CODIGO'
            FiltroTabela = 'OPV_TIPO = '#39'S'#39
            ShowButton = True
            LookupTableShare = 'TABELAS'
            AutoF8WinTitulo = 'Tipos'
            AutoF8ColumnsTitulo = 'C'#243'digo, Descri'#231#227'o'
            GridLeft = 0
            GridWidth = 0
            GridHeight = 100
            GridShowWhenEnter = False
            SelectWithDoubleClick = False
            Tabela = 'OPV0000'
            CamposCarregar = 'OPV_DESCRICAO'
            CamposRetornar = 'OPV_CODIGO'
            Condicao = 'OPV_TIPO = '#39'S'#39
            CamposOrdernar = 'OPV_DESCRICAO'
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
        end
        object GroupBox10: TGroupBox
          Left = 525
          Top = 56
          Width = 320
          Height = 40
          Caption = 'Cliente'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
          object edtCodigoClientePedido: TEdit
            Left = 3
            Top = 14
            Width = 40
            Height = 22
            CharCase = ecUpperCase
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            MaxLength = 5
            ParentFont = False
            TabOrder = 0
            OnExit = edtCodigoClientePedidoExit
          end
          object cbbClientePedido: TComboBoxRw
            Left = 47
            Top = 15
            Width = 244
            Height = 22
            EmptyText = 'TODOS OS CLIENTES'
            TabOrder = 1
            CharCase = ecUpperCase
            font.Charset = ANSI_CHARSET
            font.Color = clBlack
            font.Height = -11
            font.Name = 'Arial'
            font.Style = []
            LookupSelect = 'CLI_RAZAO'
            LookupOrderBy = 'CLI_RAZAO'
            LookupTable = 'cli0000'
            OnSelect = cbbClientePedidoSelect
            GridAutoSize = False
            LookupSource = cbbClientePedido.InternalSource
            LookupKeyField = 'CLI_CODIGO'
            ShowButton = True
            LookupTableShare = 'CLIENTES'
            AutoF8WinTitulo = 'Clientes'
            AutoF8ColumnsTitulo = 'C'#243'digo, Nome'
            GridLeft = 0
            GridWidth = 0
            GridHeight = 100
            GridShowWhenEnter = False
            SelectWithDoubleClick = False
            Tabela = 'cli0000'
            CamposCarregar = 'CLI_RAZAO'
            CamposRetornar = 'CLI_CODIGO'
            CamposOrdernar = 'CLI_RAZAO'
            ConexaoBanco = DataCadastros.SQLConnection1
            Compartilhar = 'CLIENTES'
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
        object GroupBox11: TGroupBox
          Left = 243
          Top = 56
          Width = 278
          Height = 40
          Caption = 'Vendedor'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          object cbbVendedorPedido: TComboBoxRw
            Left = 8
            Top = 16
            Width = 241
            Height = 22
            EmptyText = 'TODOS OS VENDEDORES'
            TabOrder = 0
            CharCase = ecUpperCase
            font.Charset = ANSI_CHARSET
            font.Color = clBlack
            font.Height = -11
            font.Name = 'Arial'
            font.Style = []
            LookupSelect = 'REP_NOME'
            LookupOrderBy = 'REP_NOME'
            LookupTable = 'REP0000'
            GridAutoSize = False
            LookupSource = cbbVendedorPedido.InternalSource
            LookupKeyField = 'REP_CODIGO'
            ShowButton = True
            LookupTableShare = 'REPRESENTANTES'
            AutoF8WinTitulo = 'Vendedores'
            AutoF8ColumnsTitulo = 'C'#243'digo, Nome'
            GridLeft = 0
            GridWidth = 0
            GridHeight = 100
            GridShowWhenEnter = False
            SelectWithDoubleClick = False
            Tabela = 'REP0000'
            CamposCarregar = 'REP_NOME'
            CamposRetornar = 'REP_CODIGO'
            CamposOrdernar = 'REP_NOME'
            ConexaoBanco = DataCadastros.SQLConnection1
            Compartilhar = 'REPRESENTANTES'
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
        object btnSairPedido: TBitBtn
          Left = 989
          Top = 35
          Width = 99
          Height = 24
          Hint = 'Sair'
          Caption = '&Sair'
          TabOrder = 7
          OnClick = btnSairPedidoClick
        end
        object btnPesquisarPedido: TBitBtn
          Left = 989
          Top = 59
          Width = 99
          Height = 24
          Hint = 'Pesquisar'
          Caption = '&Pesquisar'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
          OnClick = btnPesquisarPedidoClick
        end
        object GroupBox3: TGroupBox
          Left = 756
          Top = 16
          Width = 89
          Height = 40
          Caption = 'Pedido'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          object Edt_Lista: TEdit
            Left = 5
            Top = 15
            Width = 76
            Height = 22
            CharCase = ecUpperCase
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            MaxLength = 6
            ParentFont = False
            TabOrder = 0
            OnExit = Edt_ListaExit
          end
        end
        object name: TGroupBox
          Left = 845
          Top = 16
          Width = 137
          Height = 40
          Caption = 'Situa'#231#227'o'
          TabOrder = 8
          TabStop = True
          object cbSituacao: TComboBox
            Left = 4
            Top = 14
            Width = 130
            Height = 22
            Style = csOwnerDrawFixed
            TabOrder = 0
            Items.Strings = (
              'TODOS'
              'FATURADO'
              'PENDENTE'
              'AGRUPADO'
              'CANCELADOS'
              'FATURADO PARCIAL')
          end
        end
      end
      object pgcPedido: TPageControl
        Left = 0
        Top = 98
        Width = 1265
        Height = 342
        ActivePage = tsResultadoPedido
        Align = alClient
        TabOrder = 1
        object tsResultadoPedido: TTabSheet
          Caption = 'Resultado'
          object grpProdutoResultado: TGroupBox
            Left = 0
            Top = 0
            Width = 1257
            Height = 313
            Align = alClient
            Caption = 'Duplo click ou  Enter para ver os itens do pedido'
            TabOrder = 0
            object dbgrdPedido: TDBGrid
              Left = 2
              Top = 16
              Width = 1253
              Height = 295
              Align = alClient
              Color = 16776176
              DataSource = dsPedido
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit]
              TabOrder = 0
              TitleFont.Charset = ANSI_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Arial'
              TitleFont.Style = []
              OnDblClick = dbgrdPedidoDblClick
              Columns = <
                item
                  Expanded = False
                  FieldName = 'PED_CODIGO'
                  Title.Alignment = taCenter
                  Title.Caption = 'Pedido'
                  Width = 42
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'PED_DTENTRADA'
                  Title.Alignment = taCenter
                  Title.Caption = 'Emiss'#227'o'
                  Width = 58
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'CLI_RAZAO'
                  Title.Alignment = taCenter
                  Title.Caption = 'Cliente'
                  Width = 161
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'CLI_UF'
                  Title.Alignment = taCenter
                  Title.Caption = 'UF'
                  Width = 19
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'REP_NOME'
                  Title.Alignment = taCenter
                  Title.Caption = 'Vendedor'
                  Width = 72
                  Visible = True
                end
                item
                  Color = clYellow
                  Expanded = False
                  FieldName = 'VLLIQUIDO'
                  Title.Alignment = taCenter
                  Title.Caption = 'Vlr. Venda'
                  Width = 75
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'CUSTO'
                  Title.Alignment = taCenter
                  Title.Caption = 'Custo'
                  Width = 75
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'LUCRO'
                  Title.Alignment = taCenter
                  Title.Caption = 'Resultado'
                  Width = 75
                  Visible = True
                end
                item
                  Color = clYellow
                  Expanded = False
                  FieldName = 'MARKUP'
                  Title.Alignment = taCenter
                  Title.Caption = 'Markup'
                  Width = 100
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'MARGEM_OBTIDA'
                  Title.Caption = 'Margem Obtida'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'VENDA_ESPERADA'
                  Title.Alignment = taCenter
                  Title.Caption = 'Vlr. Previsto'
                  Width = 75
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'LUCRO_ESPERADO'
                  Title.Alignment = taCenter
                  Title.Caption = 'Resultado Prev'
                  Width = 82
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'MARKUP_PREVISTO'
                  Title.Alignment = taCenter
                  Title.Caption = 'Markup Prev.'
                  Width = 100
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'RV'
                  Title.Alignment = taCenter
                  Title.Caption = '%Produtividade'
                  Width = 100
                  Visible = True
                end>
            end
          end
        end
        object tsGraficoPedido: TTabSheet
          Caption = 'Gr'#225'fico'
          ImageIndex = 1
          OnShow = tsGraficoPedidoShow
          object chtGrafico: TChart
            Left = 0
            Top = 0
            Width = 1257
            Height = 313
            Title.Text.Strings = (
              'Pedidos/Markups por Vendedor')
            View3DOptions.Elevation = 315
            View3DOptions.Orthogonal = False
            View3DOptions.Perspective = 0
            View3DOptions.Rotation = 360
            Align = alClient
            Color = clWhite
            TabOrder = 0
            DefaultCanvas = 'TGDIPlusCanvas'
            ColorPaletteIndex = 13
            object btnImprimir: TButton
              Left = 2
              Top = 2
              Width = 108
              Height = 25
              Margins.Left = 0
              Margins.Top = 0
              Margins.Right = 0
              Margins.Bottom = 0
              Caption = 'Imprimir Gr'#225'fico'
              TabOrder = 0
              OnClick = btnImprimirClick
            end
            object brsrsSeries1: TBarSeries
              ColorEachPoint = True
              SeriesColor = clRed
              MultiBar = mbNone
              XValues.Name = 'X'
              XValues.Order = loAscending
              YValues.Name = 'Bar'
              YValues.Order = loNone
            end
          end
        end
      end
      object GroupBox13: TGroupBox
        Left = 0
        Top = 440
        Width = 1265
        Height = 59
        Align = alBottom
        Caption = 'Totais'
        TabOrder = 2
        object Label14: TLabel
          Left = 154
          Top = 12
          Width = 72
          Height = 14
          Alignment = taRightJustify
          Caption = 'Qtd. Registros:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label15: TLabel
          Left = 344
          Top = 12
          Width = 50
          Height = 14
          Caption = 'Vlr.Venda:'
        end
        object Label16: TLabel
          Left = 436
          Top = 12
          Width = 31
          Height = 14
          Caption = 'Custo:'
        end
        object Label17: TLabel
          Left = 525
          Top = 12
          Width = 51
          Height = 14
          Caption = 'Resultado:'
        end
        object Label18: TLabel
          Left = 787
          Top = 12
          Width = 58
          Height = 14
          Caption = 'Vlr.Previsto:'
        end
        object Label19: TLabel
          Left = 867
          Top = 12
          Width = 76
          Height = 14
          Caption = 'Resultado Prev:'
        end
        object Label20: TLabel
          Left = 613
          Top = 12
          Width = 38
          Height = 14
          Caption = 'Markup:'
        end
        object Label21: TLabel
          Left = 961
          Top = 12
          Width = 65
          Height = 14
          Caption = 'Markup Prev.:'
        end
        object Label22: TLabel
          Left = 1058
          Top = 12
          Width = 78
          Height = 14
          Caption = '%Produtividade:'
        end
        object Label24: TLabel
          Left = 703
          Top = 11
          Width = 75
          Height = 14
          Caption = 'Margem Obtida:'
        end
        object Edit4: TCurrencyEdit
          Left = 150
          Top = 26
          Width = 86
          Height = 21
          TabStop = False
          AutoSize = False
          Color = clWhite
          DecimalPlaces = 0
          DisplayFormat = '0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          ZeroEmpty = False
        end
        object DBEdit5: TDBEdit
          Left = 344
          Top = 26
          Width = 83
          Height = 22
          TabStop = False
          BiDiMode = bdRightToLeft
          Color = clWhite
          DataField = 'TOT_NFTOTPROD'
          DataSource = dsPedido
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object DBEdit7: TDBEdit
          Left = 436
          Top = 26
          Width = 75
          Height = 22
          TabStop = False
          BiDiMode = bdRightToLeft
          Color = clWhite
          DataField = 'TOT_CUSTO'
          DataSource = dsPedido
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
        end
        object DBEdit8: TDBEdit
          Left = 525
          Top = 26
          Width = 78
          Height = 22
          TabStop = False
          BiDiMode = bdRightToLeft
          Color = clWhite
          DataField = 'TOT_LUCRO'
          DataSource = dsPedido
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
        end
        object DBEdit9: TDBEdit
          Left = 867
          Top = 26
          Width = 86
          Height = 22
          TabStop = False
          BiDiMode = bdRightToLeft
          Color = clWhite
          DataField = 'tot_lucroesperado'
          DataSource = dsPedido
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 4
        end
        object DBEdit10: TDBEdit
          Left = 784
          Top = 26
          Width = 77
          Height = 22
          TabStop = False
          BiDiMode = bdRightToLeft
          Color = clWhite
          DataField = 'TOT_VENDAESPERADA'
          DataSource = dsPedido
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 5
        end
        object Edit5: TEdit
          Left = 613
          Top = 26
          Width = 86
          Height = 22
          TabStop = False
          BiDiMode = bdRightToLeft
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 6
          Text = 'Edit1'
        end
        object Edit6: TEdit
          Left = 961
          Top = 26
          Width = 86
          Height = 22
          TabStop = False
          BiDiMode = bdRightToLeft
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 7
          Text = 'Edit1'
        end
        object Edit7: TEdit
          Left = 1058
          Top = 26
          Width = 86
          Height = 22
          TabStop = False
          BiDiMode = bdRightToLeft
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 8
          Text = 'Edit1'
        end
        object edMargemObtida: TEdit
          Left = 704
          Top = 25
          Width = 75
          Height = 22
          TabStop = False
          BiDiMode = bdRightToLeft
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 9
          Text = 'edMargemObtida'
        end
      end
    end
  end
  object PHINT: TPanel [1]
    Left = 0
    Top = 528
    Width = 1273
    Height = 21
    Align = alBottom
    Caption = 'PHINT'
    TabOrder = 1
    object Memo1: TMemo
      Left = 1
      Top = 1
      Width = 495
      Height = 19
      Align = alLeft
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Lines.Strings = (
        'Margem = (PVenda - Custo) / PVenda * 100 ')
      ParentFont = False
      TabOrder = 0
    end
    object Memo2: TMemo
      Left = 496
      Top = 1
      Width = 776
      Height = 19
      Align = alClient
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      Lines.Strings = (
        'Markup % = ((PVenda / Custo) - 100  ) * 100')
      ParentFont = False
      TabOrder = 1
    end
  end
  inherited coCalcula: TACBrCalculadora
    Left = 736
    Top = 328
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 784
    Top = 336
  end
  inherited DBConn: TSQLConnection
    Left = 680
    Top = 329
  end
  inherited qAux: TSQLQuery
    Top = 101
  end
  inherited qAux2: TSQLQuery
    Top = 100
  end
  inherited qAux3: TSQLQuery
    Top = 100
  end
  object dsPedido: TDataSource
    DataSet = cdsPedido
    Left = 404
    Top = 289
  end
  object dsNotaFiscal: TDataSource
    DataSet = cdsNotaFiscal
    Left = 404
    Top = 225
  end
  object dsGraficoPedido: TDataSource
    Left = 1051
    Top = 242
  end
  object CdsGraficoPedido: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Vendedor'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Custo'
        DataType = ftFloat
      end
      item
        Name = 'venda'
        DataType = ftFloat
      end
      item
        Name = 'VendCodigo'
        DataType = ftInteger
      end
      item
        Name = 'Markup'
        DataType = ftFloat
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 1139
    Top = 242
    object CdsGraficoPedidoVendedor: TStringField
      FieldName = 'Vendedor'
      Size = 40
    end
    object CdsGraficoPedidoCusto: TFloatField
      FieldName = 'Custo'
    end
    object CdsGraficoPedidovenda: TFloatField
      FieldName = 'venda'
    end
    object CdsGraficoPedidoVendCodigo: TIntegerField
      FieldName = 'VendCodigo'
    end
    object CdsGraficoPedidoMarkup: TFloatField
      FieldName = 'Markup'
      DisplayFormat = '###,###,##0.00%'
      currency = True
    end
  end
  object CdsGraficoNotaFiscal: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Vendedor'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Custo'
        DataType = ftFloat
      end
      item
        Name = 'venda'
        DataType = ftFloat
      end
      item
        Name = 'VendCodigo'
        DataType = ftInteger
      end
      item
        Name = 'Markup'
        DataType = ftFloat
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 1139
    Top = 186
    object CdsGraficoNotaFiscalVendedor: TStringField
      FieldName = 'Vendedor'
      Size = 40
    end
    object CdsGraficoNotaFiscalCusto: TFloatField
      FieldName = 'Custo'
    end
    object CdsGraficoNotaFiscalVenda: TFloatField
      FieldName = 'Venda'
    end
    object CdsGraficoNotaFiscalVendCodigo: TIntegerField
      FieldName = 'VendCodigo'
    end
    object CdsGraficoNotaFiscalMarkup: TFloatField
      FieldName = 'Markup'
    end
  end
  object DataSource1: TDataSource
    Left = 1051
    Top = 186
  end
  object cdsNotaFiscal: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'DspNotaFiscal'
    AfterOpen = cdsNotaFiscalAfterOpen
    AfterClose = cdsNotaFiscalAfterOpen
    AfterRefresh = cdsNotaFiscalAfterOpen
    OnCalcFields = cdsNotaFiscalCalcFields
    Left = 296
    Top = 220
    object cdsNotaFiscalNF_NUM_NFE: TIntegerField
      FieldName = 'NF_NUM_NFE'
    end
    object cdsNotaFiscalNF_EMISSAO: TDateField
      FieldName = 'NF_EMISSAO'
    end
    object cdsNotaFiscalPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Size = 7
    end
    object cdsNotaFiscalCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Size = 5
    end
    object cdsNotaFiscalCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Size = 55
    end
    object cdsNotaFiscalREP_NOME: TStringField
      FieldName = 'REP_NOME'
      Size = 35
    end
    object cdsNotaFiscalNF_TOT_PROD: TFMTBCDField
      FieldName = 'NF_TOT_PROD'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 15
      Size = 5
    end
    object cdsNotaFiscalCUSTO: TFMTBCDField
      FieldName = 'CUSTO'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 15
      Size = 4
    end
    object cdsNotaFiscalLUCRO: TFMTBCDField
      FieldName = 'LUCRO'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 15
      Size = 5
    end
    object cdsNotaFiscalVENDA_ESPERADA: TFMTBCDField
      FieldName = 'VENDA_ESPERADA'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 15
      Size = 4
    end
    object cdsNotaFiscalLUCRO_ESPERADO: TFMTBCDField
      FieldName = 'LUCRO_ESPERADO'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 15
      Size = 4
    end
    object cdsNotaFiscalMarkup: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Markup'
      DisplayFormat = '##0.00%'
      currency = True
      Calculated = True
    end
    object cdsNotaFiscalMargem: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Margem'
      DisplayFormat = '##0.00%'
      currency = True
      Calculated = True
    end
    object cdsNotaFiscalMarkupPrevisto: TFloatField
      FieldKind = fkCalculated
      FieldName = 'MarkupPrevisto'
      DisplayFormat = '##0.00%'
      currency = True
      Calculated = True
    end
    object cdsNotaFiscalMargemPrevista: TFloatField
      FieldKind = fkCalculated
      FieldName = 'MargemPrevista'
      DisplayFormat = '##0.00%'
      currency = True
      Calculated = True
    end
    object cdsNotaFiscalREP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      Size = 3
    end
    object cdsNotaFiscalRV: TFloatField
      FieldKind = fkCalculated
      FieldName = 'RV'
      DisplayFormat = '##0.00%'
      currency = True
      Calculated = True
    end
    object cdsNotaFiscalEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object cdsNotaFiscalNF_TOT_NOTA: TFMTBCDField
      FieldName = 'NF_TOT_NOTA'
      Precision = 15
    end
    object cdsNotaFiscalTOT_NFTOTPROD: TAggregateField
      FieldName = 'TOT_NFTOTPROD'
      Active = True
      DisplayName = ''
      DisplayFormat = '###,###,##0.00'
      Expression = 'sum( NF_TOT_NOTA )'
    end
    object cdsNotaFiscalTOT_CUSTO: TAggregateField
      FieldName = 'TOT_CUSTO'
      Active = True
      DisplayName = ''
      DisplayFormat = '###,###,##0.00'
      Expression = 'sum( custo )'
    end
    object cdsNotaFiscalTOT_LUCRO: TAggregateField
      FieldName = 'TOT_LUCRO'
      Active = True
      DisplayName = ''
      DisplayFormat = '###,###,##0.00'
      Expression = 'SUM( LUCRO )'
    end
    object cdsNotaFiscalTOT_VENDAESPERADA: TAggregateField
      FieldName = 'TOT_VENDAESPERADA'
      Active = True
      DisplayName = ''
      DisplayFormat = '###,###,##0.00'
      Expression = 'SUM( VENDA_ESPERADA )'
    end
    object cdsNotaFiscaltot_lucroesperado: TAggregateField
      FieldName = 'tot_lucroesperado'
      Active = True
      DisplayName = ''
      DisplayFormat = '###,###,##0.00'
      Expression = 'sum( lucro_esperado )'
    end
  end
  object cdsPedido: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'dspPedido'
    AfterOpen = cdsPedidoAfterOpen
    AfterClose = cdsPedidoAfterOpen
    AfterRefresh = cdsPedidoAfterOpen
    OnCalcFields = CdsPedidoCalcFields
    Left = 280
    Top = 292
    object cdsPedidoPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Required = True
      Size = 7
    end
    object cdsPedidoPED_DTENTRADA: TSQLTimeStampField
      FieldName = 'PED_DTENTRADA'
    end
    object cdsPedidoCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Size = 5
    end
    object cdsPedidoCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Size = 55
    end
    object cdsPedidoCLI_UF: TStringField
      FieldName = 'CLI_UF'
      Size = 2
    end
    object cdsPedidoREP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      Size = 3
    end
    object cdsPedidoREP_NOME: TStringField
      FieldName = 'REP_NOME'
      Size = 35
    end
    object cdsPedidoVLLIQUIDO: TFMTBCDField
      FieldName = 'VLLIQUIDO'
      DisplayFormat = '###,###,##0.00'
      Precision = 15
      Size = 4
    end
    object cdsPedidoCUSTO: TFMTBCDField
      FieldName = 'CUSTO'
      DisplayFormat = '###,###,##0.00'
      Precision = 15
      Size = 4
    end
    object cdsPedidoLUCRO: TFMTBCDField
      FieldName = 'LUCRO'
      DisplayFormat = '###,###,##0.00'
      Precision = 15
      Size = 4
    end
    object cdsPedidoVENDA_ESPERADA: TFMTBCDField
      FieldName = 'VENDA_ESPERADA'
      DisplayFormat = '###,###,##0.00'
      Precision = 15
      Size = 4
    end
    object cdsPedidoLUCRO_ESPERADO: TFMTBCDField
      FieldName = 'LUCRO_ESPERADO'
      DisplayFormat = '###,###,##0.00'
      Precision = 15
      Size = 4
    end
    object cdsPedidoMARKUP: TFloatField
      FieldKind = fkCalculated
      FieldName = 'MARKUP'
      DisplayFormat = '##0.00%'
      currency = True
      Calculated = True
    end
    object cdsPedidoMARKUP_PREVISTO: TFloatField
      FieldKind = fkCalculated
      FieldName = 'MARKUP_PREVISTO'
      DisplayFormat = '##0.00%'
      currency = True
      Calculated = True
    end
    object cdsPedidoRV: TFloatField
      FieldKind = fkCalculated
      FieldName = 'RV'
      DisplayFormat = '##0.00%'
      currency = True
      Calculated = True
    end
    object cdsPedidoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object cdsPedidoMARGEM_OBTIDA: TFloatField
      FieldKind = fkCalculated
      FieldName = 'MARGEM_OBTIDA'
      DisplayFormat = '##0.00%'
      Calculated = True
    end
    object cdsPedidoTOT_NFTOTPROD: TAggregateField
      FieldName = 'TOT_NFTOTPROD'
      Active = True
      DisplayName = ''
      DisplayFormat = '###,###,##0.00'
      Expression = 'sum( vlliquido )'
    end
    object cdsPedidoTOT_CUSTO: TAggregateField
      FieldName = 'TOT_CUSTO'
      Active = True
      DisplayName = ''
      DisplayFormat = '###,###,##0.00'
      Expression = 'sum( custo )'
    end
    object cdsPedidoTOT_LUCRO: TAggregateField
      FieldName = 'TOT_LUCRO'
      Active = True
      DisplayName = ''
      DisplayFormat = '###,###,##0.00'
      Expression = 'SUM( LUCRO )'
    end
    object cdsPedidoTOT_VENDAESPERADA: TAggregateField
      FieldName = 'TOT_VENDAESPERADA'
      Active = True
      DisplayName = ''
      DisplayFormat = '###,###,##0.00'
      Expression = 'SUM( VENDA_ESPERADA )'
    end
    object cdsPedidotot_lucroesperado: TAggregateField
      FieldName = 'tot_lucroesperado'
      Active = True
      DisplayName = ''
      DisplayFormat = '###,###,##0.00'
      Expression = 'sum( lucro_esperado )'
    end
  end
  object qNotaFiscal: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DBConn
    Left = 104
    Top = 220
  end
  object DspNotaFiscal: TDataSetProvider
    DataSet = qNotaFiscal
    Left = 184
    Top = 220
  end
  object dspPedido: TDataSetProvider
    DataSet = qPedido
    Left = 176
    Top = 292
  end
  object qPedido: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DBConn
    Left = 88
    Top = 300
  end
  object qCCusto: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select PCX_DESCRI,PCX_CODIGO'
      'from PCX0000'
      'where PCX_CODIGO='#39'-1'#39' and PCX_TIPO = '#39'L'#39
      'order by PCX_DESCRI'
      '')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 1045
    Top = 36
  end
end
