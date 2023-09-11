object FrmEmissaoDuplicata: TFrmEmissaoDuplicata
  Left = 32
  Top = 3
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Emiss'#227'o [Duplicatas Bancarias]'
  ClientHeight = 541
  ClientWidth = 703
  Color = 12615680
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RxLabTitulo: TRxLabel
    Left = 8
    Top = 38
    Width = 271
    Height = 20
    Caption = 'Emiss'#227'o de Duplicatas Bancarias'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ShadowColor = clBlue
    Transparent = True
  end
  object Bevel1: TBevel
    Left = 109
    Top = 508
    Width = 590
    Height = 7
    Shape = bsTopLine
  end
  object RxLabel1: TRxLabel
    Left = 8
    Top = 503
    Width = 118
    Height = 13
      
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGray
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ShadowColor = clSilver
  end
  object GroupBox1: TGroupBox
    Left = 2
    Top = 64
    Width = 699
    Height = 437
    Color = clBtnFace
    ParentColor = False
    TabOrder = 0
    object Notebook: TNotebook
      Left = 3
      Top = 8
      Width = 693
      Height = 427
      Color = clBtnFace
      ParentColor = False
      TabOrder = 0
      object TPage
        Left = 0
        Top = 0
        Caption = 'Default'
        object GroupBox2: TGroupBox
          Left = 2
          Top = 2
          Width = 690
          Height = 424
          Caption = 'Sele'#231#227'o para Emiss'#227'o das Duplicatas'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 0
          object LblEstatisitica: TLabel
            Left = 638
            Top = 1
            Width = 48
            Height = 13
            Caption = 'Estatistica'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Visible = False
          end
          object BoxDuplicata: TGroupBox
            Left = 2
            Top = 115
            Width = 685
            Height = 237
            Caption = 'Duplicatas'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 2
            object Label19: TLabel
              Left = 711
              Top = 0
              Width = 48
              Height = 13
              Caption = 'Estatistica'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              Visible = False
            end
            object DBGridDuplicata: TDBGrid
              Left = 2
              Top = 15
              Width = 681
              Height = 220
              TabStop = False
              Align = alClient
              Color = 16776176
              DataSource = DSCrcDuplicata
              FixedColor = 12681984
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
              ParentFont = False
              ReadOnly = True
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clNavy
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              OnDblClick = DBGridDuplicataDblClick
              OnKeyPress = DBGridDuplicataKeyPress
              Columns = <
                item
                  Expanded = False
                  FieldName = 'CRC_DUPLICATA'
                  Title.Alignment = taCenter
                  Title.Caption = 'Duplicata'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clWhite
                  Title.Font.Height = -12
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 70
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'CRC_VALOR_DUPLICATA'
                  Title.Alignment = taCenter
                  Title.Caption = 'Valor'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clWhite
                  Title.Font.Height = -12
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 98
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'CRC_VENCIMENTO'
                  Title.Alignment = taCenter
                  Title.Caption = 'Vencimento'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clWhite
                  Title.Font.Height = -12
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 79
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'BCO_DESCRICAO'
                  Title.Alignment = taCenter
                  Title.Caption = 'Banco'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clWhite
                  Title.Font.Height = -12
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 268
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'CRC_COD_COBRANCA'
                  Title.Alignment = taCenter
                  Title.Caption = 'Nosso N'#250'mero'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clWhite
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 131
                  Visible = True
                end>
            end
          end
          object Group00: TGroupBox
            Left = 2
            Top = 13
            Width = 121
            Height = 94
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
            object RadData: TRadioButton
              Left = 16
              Top = 20
              Width = 89
              Height = 17
              Caption = '&Data emiss'#227'o'
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
            object RadFatura: TRadioButton
              Left = 16
              Top = 53
              Width = 73
              Height = 17
              Caption = '&N'#186' Fatura'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
            end
          end
          object GbTipo: TGroupBox
            Left = 2
            Top = 353
            Width = 685
            Height = 33
            Caption = 'Tipo'
            TabOrder = 3
            object RadDuplicataImp: TRadioButton
              Left = 16
              Top = 14
              Width = 102
              Height = 17
              Caption = 'Bo&leto Banco'
              Checked = True
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
              TabStop = True
            end
            object RadRecibo: TRadioButton
              Left = 569
              Top = 14
              Width = 65
              Height = 17
              Caption = '&Recibo'
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 3
            end
            object RadDuplicataDesc: TRadioButton
              Left = 408
              Top = 14
              Width = 113
              Height = 17
              Caption = 'Duplicata &Desc.'
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 2
              OnClick = RadDuplicataDescClick
            end
            object RadBoletoBarras: TRadioButton
              Left = 176
              Top = 14
              Width = 182
              Height = 17
              Caption = 'Bole&to Banco Codigo Barras'
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 1
            end
          end
          object GroupBox3: TGroupBox
            Left = 2
            Top = 386
            Width = 249
            Height = 34
            Caption = 'Dispositivo de sa'#237'da'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 4
            object RadVideo: TRadioButton
              Left = 17
              Top = 15
              Width = 73
              Height = 17
              Caption = '&Video'
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
            end
            object RadImpressora: TRadioButton
              Left = 144
              Top = 15
              Width = 85
              Height = 17
              Caption = '&Impressora'
              Checked = True
              Enabled = False
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
          object BitImprimir: TBitBtn
            Left = 260
            Top = 394
            Width = 100
            Height = 25
            Caption = '&Imprimir'
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            OnClick = BitImprimirClick
            Glyph.Data = {
              F6000000424DF600000000000000760000002800000010000000100000000100
              0400000000008000000000000000000000001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
              888F8800000000000888808888888880808800000000000008080888888BBB88
              0008088888877788080800000000000008800888888888808080800000000008
              0800880FFFFFFFF080808880F00000F000088880FFFFFFFF088888880F00000F
              088888880FFFFFFFF08888888000000000888888888888888888}
          end
          object BitPesquisa: TBitBtn
            Left = 585
            Top = 57
            Width = 100
            Height = 25
            Caption = '&Pesquisa'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnClick = BitPesquisaClick
          end
          object BitCancelar: TBitBtn
            Left = 585
            Top = 83
            Width = 100
            Height = 25
            Cancel = True
            Caption = 'Cancela&r'
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnClick = BitCancelarClick
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
          end
          object GroupBox4: TGroupBox
            Left = 123
            Top = 52
            Width = 457
            Height = 55
            TabOrder = 7
            object Label1: TLabel
              Left = 69
              Top = 13
              Width = 44
              Height = 13
              Caption = 'C&liente:'
              FocusControl = CCodCliente
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label7: TLabel
              Left = 8
              Top = 34
              Width = 104
              Height = 13
              Caption = '&Banco p/Emiss'#227'o:'
              FocusControl = CCodBanco
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object CCodCliente: TCurrencyEdit
              Left = 114
              Top = 9
              Width = 45
              Height = 21
              Alignment = taCenter
              AutoSize = False
              DecimalPlaces = 0
              DisplayFormat = '0000'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              MaxLength = 8
              ParentFont = False
              TabOrder = 0
              Value = 999999
              ZeroEmpty = False
              OnKeyPress = CCodClienteKeyPress
            end
            object CCodBanco: TCurrencyEdit
              Left = 114
              Top = 31
              Width = 45
              Height = 21
              Alignment = taCenter
              AutoSize = False
              DecimalPlaces = 0
              DisplayFormat = '0000;-0000'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              MaxLength = 5
              ParentFont = False
              TabOrder = 1
              OnKeyPress = CCodBancoKeyPress
            end
            object CbClientes: TComboBox
              Left = 160
              Top = 9
              Width = 295
              Height = 21
              CharCase = ecUpperCase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ItemHeight = 13
              ParentFont = False
              TabOrder = 2
              Text = 'TODOS CLIENTES'
              OnClick = CbClientesClick
            end
            object CbBancos: TComboBox
              Left = 160
              Top = 31
              Width = 295
              Height = 21
              CharCase = ecUpperCase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ItemHeight = 13
              ParentFont = False
              TabOrder = 3
              OnClick = CbBancosClick
            end
          end
          object GroupBox5: TGroupBox
            Left = 123
            Top = 13
            Width = 457
            Height = 46
            TabOrder = 8
            object Label2: TLabel
              Left = 19
              Top = 21
              Width = 100
              Height = 13
              Caption = 'Data Emiss'#227'o de:'
              FocusControl = DataInicial
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label22: TLabel
              Left = 232
              Top = 21
              Width = 105
              Height = 13
              Alignment = taRightJustify
              Caption = 'Data Emiss'#227'o At'#233':'
              FocusControl = DataInicial
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DataInicial: TDateEdit
              Left = 120
              Top = 17
              Width = 84
              Height = 21
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              GlyphKind = gkDropDown
              NumGlyphs = 1
              ParentFont = False
              TabOrder = 0
              OnKeyPress = DataInicialKeyPress
            end
            object DataFinal: TDateEdit
              Left = 338
              Top = 17
              Width = 84
              Height = 21
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              GlyphKind = gkDropDown
              NumGlyphs = 1
              ParentFont = False
              TabOrder = 1
              OnKeyPress = DataFinalKeyPress
            end
          end
        end
      end
    end
  end
  object BitSair: TBitBtn
    Left = 598
    Top = 513
    Width = 100
    Height = 25
    Caption = '&Sair'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = BitSairClick
  end
  object Panel5: TPanel
    Left = 0
    Top = 0
    Width = 703
    Height = 60
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = clWhite
    TabOrder = 2
    object LblMensagem: TLabel
      Left = 7
      Top = 18
      Width = 189
      Height = 13
      Caption = 'Emiss'#227'o de Duplicatas Bancarias'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object ImgLog: TImage
      Left = 642
      Top = 2
      Width = 55
      Height = 55
    end
  end
  object SQLClientes: TSQLClientDataSet
    Aggregates = <>
    Options = [poAllowCommandText]
    ObjectView = True
    Params = <>
    Left = 6
    Top = 511
  end
  object SQLBancos: TSQLClientDataSet
    Aggregates = <>
    Options = [poAllowCommandText]
    ObjectView = True
    Params = <>
    Left = 34
    Top = 511
  end
  object DSCrcDuplicata: TDataSource
    DataSet = SQLCrcDuplicata
    Left = 394
    Top = 512
  end
  object SQLCrcDuplicata: TSQLClientDataSet
    CommandText = 
      'select CRC.*,CL_RAZAO,CL_CNPJ_CNPF,CL_ENDERECO_COB,CL_CEP_COB,CL' +
      '_CIDADE_COB,CL_UF_COB,BCO_DESCRICAO'#13#10'from CRCDUPLICATA CRC join ' +
      'CLIENTES on CRC_COD_CLIENTE = CL_CODIGO join BANCOS on CRC_COD_B' +
      'ANCO = BCO_CODIGO'#13#10'where CRC_VENCIMENTO between '#39'01.01.2004'#39' and' +
      ' '#39'31.12.2004'#39#13#10'and CRC_COD_BANCO = '#39'341'#39#13#10'order by CRC_COD_CLIEN' +
      'TE,CRC_DUPLICATA'
    Aggregates = <>
    Options = [poAllowCommandText]
    ObjectView = True
    Params = <>
    Left = 366
    Top = 512
    object SQLCrcDuplicataCRC_REGISTRO: TIntegerField
      FieldName = 'CRC_REGISTRO'
      Required = True
    end
    object SQLCrcDuplicataCRC_COD_CLIENTE: TIntegerField
      Alignment = taCenter
      FieldName = 'CRC_COD_CLIENTE'
      Required = True
      DisplayFormat = '00000'
    end
    object SQLCrcDuplicataCRC_COD_VEND1: TIntegerField
      FieldName = 'CRC_COD_VEND1'
    end
    object SQLCrcDuplicataCRC_COD_VEND2: TIntegerField
      FieldName = 'CRC_COD_VEND2'
    end
    object SQLCrcDuplicataCRC_DUPLICATA: TStringField
      FieldName = 'CRC_DUPLICATA'
      Size = 10
    end
    object SQLCrcDuplicataCRC_COD_COBRANCA: TStringField
      FieldName = 'CRC_COD_COBRANCA'
      Size = 30
    end
    object SQLCrcDuplicataCRC_NUM_AVISO_BANCO: TStringField
      FieldName = 'CRC_NUM_AVISO_BANCO'
      Size = 6
    end
    object SQLCrcDuplicataCRC_EMISSAO: TDateField
      FieldName = 'CRC_EMISSAO'
    end
    object SQLCrcDuplicataCRC_VENCIMENTO: TDateField
      Alignment = taCenter
      FieldName = 'CRC_VENCIMENTO'
    end
    object SQLCrcDuplicataCRC_VALOR_DUPLICATA: TFMTBCDField
      FieldName = 'CRC_VALOR_DUPLICATA'
      DisplayFormat = '###,###,##0.00'
      Precision = 15
      Size = 8
    end
    object SQLCrcDuplicataCRC_VALOR_PAGO: TFMTBCDField
      FieldName = 'CRC_VALOR_PAGO'
      Precision = 15
      Size = 8
    end
    object SQLCrcDuplicataCRC_VALOR_ADIANTADO: TFMTBCDField
      FieldName = 'CRC_VALOR_ADIANTADO'
      Precision = 15
      Size = 8
    end
    object SQLCrcDuplicataCRC_VALOR_PENDENTE: TFMTBCDField
      FieldName = 'CRC_VALOR_PENDENTE'
      Precision = 15
      Size = 8
    end
    object SQLCrcDuplicataCRC_INDICE_MOEDA: TFMTBCDField
      FieldName = 'CRC_INDICE_MOEDA'
      Precision = 15
      Size = 8
    end
    object SQLCrcDuplicataCRC_NUM_PEDIDO: TIntegerField
      FieldName = 'CRC_NUM_PEDIDO'
    end
    object SQLCrcDuplicataCRC_NOTA_FISCAL: TIntegerField
      FieldName = 'CRC_NOTA_FISCAL'
    end
    object SQLCrcDuplicataCRC_VALOR_FATURA: TFMTBCDField
      FieldName = 'CRC_VALOR_FATURA'
      Precision = 15
      Size = 8
    end
    object SQLCrcDuplicataCRC_COD_BANCO: TIntegerField
      FieldName = 'CRC_COD_BANCO'
    end
    object SQLCrcDuplicataCRC_DATA_AVISO1: TDateField
      FieldName = 'CRC_DATA_AVISO1'
    end
    object SQLCrcDuplicataCRC_DATA_AVISO2: TDateField
      FieldName = 'CRC_DATA_AVISO2'
    end
    object SQLCrcDuplicataCRC_DATA_DEB_REPRES: TDateField
      FieldName = 'CRC_DATA_DEB_REPRES'
    end
    object SQLCrcDuplicataCRC_DATA_PGTO: TDateField
      FieldName = 'CRC_DATA_PGTO'
    end
    object SQLCrcDuplicataCRC_JUROS: TFMTBCDField
      FieldName = 'CRC_JUROS'
      Precision = 15
      Size = 8
    end
    object SQLCrcDuplicataCRC_DESCONTO: TFMTBCDField
      FieldName = 'CRC_DESCONTO'
      Precision = 15
      Size = 8
    end
    object SQLCrcDuplicataCRC_VALOR_LIQUIDO: TFMTBCDField
      FieldName = 'CRC_VALOR_LIQUIDO'
      Precision = 15
      Size = 8
    end
    object SQLCrcDuplicataCRC_TIPO_PAGAMENTO: TStringField
      FieldName = 'CRC_TIPO_PAGAMENTO'
      FixedChar = True
      Size = 1
    end
    object SQLCrcDuplicataCRC_SITUACAO: TStringField
      FieldName = 'CRC_SITUACAO'
      FixedChar = True
      Size = 1
    end
    object SQLCrcDuplicataCRC_STATUS: TStringField
      FieldName = 'CRC_STATUS'
      FixedChar = True
      Size = 1
    end
    object SQLCrcDuplicataCRC_STATUS_EMISSAO: TStringField
      FieldName = 'CRC_STATUS_EMISSAO'
      FixedChar = True
      Size = 1
    end
    object SQLCrcDuplicataCRC_STATUS_REMESSA: TStringField
      FieldName = 'CRC_STATUS_REMESSA'
      FixedChar = True
      Size = 1
    end
    object SQLCrcDuplicataCRC_DATA_REMESSA: TDateField
      FieldName = 'CRC_DATA_REMESSA'
    end
    object SQLCrcDuplicataCRC_TIPO_BAIXA: TStringField
      FieldName = 'CRC_TIPO_BAIXA'
      FixedChar = True
      Size = 1
    end
    object SQLCrcDuplicataCRC_DATA_BAIXA: TDateField
      FieldName = 'CRC_DATA_BAIXA'
    end
    object SQLCrcDuplicataCRC_OBS: TStringField
      FieldName = 'CRC_OBS'
      Size = 30
    end
    object SQLCrcDuplicataCRC_TARIFA: TFMTBCDField
      FieldName = 'CRC_TARIFA'
      Precision = 15
      Size = 8
    end
    object SQLCrcDuplicataCL_RAZAO: TStringField
      FieldName = 'CL_RAZAO'
      Required = True
      Size = 40
    end
    object SQLCrcDuplicataCL_ENDERECO_COB: TStringField
      FieldName = 'CL_ENDERECO_COB'
      Size = 40
    end
    object SQLCrcDuplicataCL_CNPJ_CNPF: TStringField
      FieldName = 'CL_CNPJ_CNPF'
      Required = True
      FixedChar = True
      Size = 14
    end
    object SQLCrcDuplicataCL_CEP_COB: TStringField
      FieldName = 'CL_CEP_COB'
      FixedChar = True
      Size = 8
    end
    object SQLCrcDuplicataCL_CIDADE_COB: TStringField
      FieldName = 'CL_CIDADE_COB'
      Size = 25
    end
    object SQLCrcDuplicataCL_UF_COB: TStringField
      FieldName = 'CL_UF_COB'
      FixedChar = True
      Size = 2
    end
    object SQLCrcDuplicataBCO_DESCRICAO: TStringField
      FieldName = 'BCO_DESCRICAO'
      Size = 35
    end
  end
  object RDBoletoBancario: TRDprint
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
    Autor = Deltress
    About = 'RDprint 3.0h - Registrado'
    Acentuacao = Transliterate
    CaptionSetup = 'Rdprint Setup'
    TitulodoRelatorio = 'Impressao boleto'
    UsaGerenciadorImpr = True
    CorForm = clBtnFace
    CorFonte = clBlack
    Impressora = Epson
    PortaComunicacao = 'LPT1'
    
    TamanhoQteLinhas = 24
    TamanhoQteColunas = 80
    TamanhoQteLPP = Seis
    
    
    
    NumerodeCopias = 1
    FonteTamanhoPadrao = S10cpp
    FonteEstiloPadrao = []
    Orientacao = poPortrait
    Left = 430
    Top = 513
  end
  object SqlCdsConfDupl: TSQLClientDataSet
    CommandText = 'select * from SYSDUPLI'
    Aggregates = <>
    Options = [poAllowCommandText]
    ObjectView = True
    Params = <>
    DBConnection = DataCadastros.SQLConnection1
    Left = 64
    Top = 511
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
  end
end
