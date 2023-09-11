object FrmEmissaoDuplicata: TFrmEmissaoDuplicata
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Emiss'#227'o [Duplicatas/Boleto Bancario/Recibo]'
  ClientHeight = 523
  ClientWidth = 792
  Color = 12615680
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
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
    Top = 491
    Width = 682
    Height = 7
    Shape = bsTopLine
  end
  object RxLabel1: TRxLabel
    Left = 8
    Top = 486
    Width = 118
    Height = 13
      
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ShadowColor = clSilver
  end
  object GroupBox1: TGroupBox
    Left = 1
    Top = 63
    Width = 790
    Height = 421
    Color = clBtnFace
    ParentColor = False
    TabOrder = 0
    object Notebook: TNotebook
      Left = 4
      Top = 10
      Width = 786
      Height = 410
      TabOrder = 0
      object TPage
        Left = 0
        Top = 0
        Caption = 'Default'
        object GroupBox2: TGroupBox
          Left = 2
          Top = 2
          Width = 783
          Height = 401
          Caption = 'Sele'#231#227'o para Emiss'#227'o das Duplicatas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          object Label7: TLabel
            Left = 193
            Top = 64
            Width = 104
            Height = 13
            Caption = '&Banco p/Emiss'#227'o:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Panemissao: TPanel
            Left = 189
            Top = 31
            Width = 459
            Height = 25
            BevelOuter = bvNone
            TabOrder = 8
            object Label2: TLabel
              Left = 6
              Top = 9
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
              Left = 264
              Top = 10
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
              Left = 116
              Top = 4
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
              Left = 373
              Top = 4
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
          object PanDuplicata: TPanel
            Left = 189
            Top = 31
            Width = 260
            Height = 25
            BevelOuter = bvNone
            TabOrder = 9
            object Label13: TLabel
              Left = 2
              Top = 7
              Width = 95
              Height = 13
              Caption = 'N'#186' da Duplicata:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label14: TLabel
              Left = 164
              Top = 7
              Width = 48
              Height = 13
              Caption = 'Parcela:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object EdtDuplicata: TEdit
              Left = 116
              Top = 4
              Width = 45
              Height = 21
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              MaxLength = 6
              ParentFont = False
              TabOrder = 0
            end
            object EditParcela: TEdit
              Left = 215
              Top = 4
              Width = 25
              Height = 21
              CharCase = ecUpperCase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              MaxLength = 2
              ParentFont = False
              TabOrder = 1
            end
          end
          object CbBancos: TComboBox
            Left = 352
            Top = 61
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
            TabOrder = 0
            OnClick = CbBancosClick
          end
          object BoxDuplicata: TGroupBox
            Left = 2
            Top = 90
            Width = 778
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
            TabOrder = 3
            object DBGridDuplicata: TDBGrid
              Left = 2
              Top = 15
              Width = 774
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
                  Title.Alignment = taCenter
                  Title.Caption = 'Duplicata'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clWhite
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Visible = True
                end
                item
                  Expanded = False
                  Title.Alignment = taCenter
                  Title.Caption = 'Parc'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clWhite
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 34
                  Visible = True
                end
                item
                  Expanded = False
                  Title.Alignment = taCenter
                  Title.Caption = 'Emiss'#227'o'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clWhite
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Visible = True
                end
                item
                  Expanded = False
                  Title.Alignment = taCenter
                  Title.Caption = 'C'#243'digo'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clWhite
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 48
                  Visible = True
                end
                item
                  Expanded = False
                  Title.Alignment = taCenter
                  Title.Caption = 'Raz'#227'o Social'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clWhite
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 284
                  Visible = True
                end
                item
                  Expanded = False
                  Title.Alignment = taCenter
                  Title.Caption = 'Valor'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clWhite
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Visible = True
                end
                item
                  Expanded = False
                  Title.Alignment = taCenter
                  Title.Caption = 'C'#243'digo'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clWhite
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 43
                  Visible = True
                end
                item
                  Expanded = False
                  Title.Alignment = taCenter
                  Title.Caption = 'Banco'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clWhite
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 134
                  Visible = True
                end>
            end
          end
          object GbTipo: TGroupBox
            Left = 2
            Top = 328
            Width = 778
            Height = 33
            Caption = 'Tipo'
            TabOrder = 4
            object RadBoletoBanco: TRadioButton
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
              Left = 673
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
              Left = 479
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
            end
            object RadBoletoBarras: TRadioButton
              Left = 192
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
            Top = 363
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
            TabOrder = 5
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
            Left = 680
            Top = 371
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
            TabOrder = 6
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
            Left = 679
            Top = 33
            Width = 100
            Height = 25
            Caption = '&Pesquisa'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnClick = BitPesquisaClick
          end
          object BitCancelar: TBitBtn
            Left = 679
            Top = 59
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
            TabOrder = 2
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
          object Group00: TGroupBox
            Left = 4
            Top = 21
            Width = 182
            Height = 65
            Caption = 'Filtro'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            TabOrder = 7
            object RadData: TRadioButton
              Left = 16
              Top = 15
              Width = 102
              Height = 17
              Caption = '&Data de emiss'#227'o'
              Checked = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              TabStop = True
              OnClick = RadDataClick
            end
            object RadDuplicata: TRadioButton
              Left = 16
              Top = 40
              Width = 98
              Height = 17
              Caption = '&N'#186' da Duplicata'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              OnClick = RadDataClick
            end
          end
          object EdtBanco: TEdit
            Left = 305
            Top = 61
            Width = 45
            Height = 21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxLength = 4
            ParentFont = False
            TabOrder = 10
          end
        end
      end
    end
  end
  object BitSair: TBitBtn
    Left = 690
    Top = 496
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
    Width = 792
    Height = 60
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = clWhite
    TabOrder = 2
    object LblMensagem: TLabel
      Left = 7
      Top = 18
      Width = 271
      Height = 13
      Caption = 'Emiss'#227'o de Duplicatas/Boleto Bancario/Recibo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object ImgLog: TImage
      Left = 733
      Top = 2
      Width = 55
      Height = 55
    end
  end
  object SQLCdsBancos: TSQLClientDataSet
    CommandText = 'select BAN_APELIDO, BAN_CODIGO, BAN_COD_APELIDO from BAN0000'
    Aggregates = <>
    Options = [poAllowCommandText]
    ObjectView = True
    Params = <>
    DBConnection = DataCadastros.SQLConnection1
    Left = 2
    Top = 496
    object SQLCdsBancosBAN_APELIDO: TStringField
      FieldName = 'BAN_APELIDO'
      Size = 14
    end
    object SQLCdsBancosBAN_CODIGO: TStringField
      FieldName = 'BAN_CODIGO'
      Required = True
      Size = 4
    end
    object SQLCdsBancosBAN_COD_APELIDO: TIntegerField
      FieldName = 'BAN_COD_APELIDO'
    end
  end
  object DSCrcDuplicata: TDataSource
    DataSet = SQLCrcDuplicata
    Left = 258
    Top = 496
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
    Left = 230
    Top = 496
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
    Left = 286
    Top = 497
  end
  object SqlCdsConfImpr: TSQLClientDataSet
    CommandText = 'select * from SYSBOLETO'
    Aggregates = <>
    Options = [poAllowCommandText]
    ObjectView = True
    Params = <>
    DBConnection = DataCadastros.SQLConnection1
    Left = 80
    Top = 496
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
  object SqlCdsBoleto: TSQLClientDataSet
    CommandText = 
      'SELECT'#13#10'P1.FAT_CODIGO,'#13#10'P1.FPC_NUMER,'#13#10'P1.BAN_CODIGO,'#13#10'P1.CLI_CO' +
      'DIGO,'#13#10'P1.FPC_DTEMIS,'#13#10'P1.FPC_VENCTO,'#13#10'P1.FPC_VLPARC,'#13#10'P1.EMP_CO' +
      'DIGO,'#13#10'B1.BAN_JUROMES,'#13#10'C1.CLI_RAZAO,'#13#10'C1.CLI_ENDERE,'#13#10'C1.CLI_EN' +
      'DFAT,'#13#10'C1.CLI_CIDADE,'#13#10'C1.CLI_CIDFAT,'#13#10'C1.CLI_CEP,'#13#10'C1.CLI_CEPFA' +
      'T,'#13#10'C1.CLI_UF,'#13#10'C1.CLI_UFFAT,'#13#10'C1.CLI_CGC'#13#10'FROM fat_pc01 P1'#13#10'JOI' +
      'N ban0000 B1 ON B1.ban_codigo = P1.ban_codigo'#13#10'JOIN CLI0000 C1 O' +
      'N C1.cli_codigo = P1.cli_codigo'#13#10
    Aggregates = <>
    Options = [poAllowCommandText]
    ObjectView = True
    Params = <>
    DBConnection = DataCadastros.SQLConnection1
    Left = 112
    Top = 496
    object SqlCdsBoletoFAT_CODIGO: TStringField
      FieldName = 'FAT_CODIGO'
      ProviderFlags = []
      Size = 6
    end
    object SqlCdsBoletoFPC_NUMER: TStringField
      FieldName = 'FPC_NUMER'
      ProviderFlags = []
      Size = 2
    end
    object SqlCdsBoletoBAN_CODIGO: TStringField
      FieldName = 'BAN_CODIGO'
      ProviderFlags = []
      Size = 4
    end
    object SqlCdsBoletoCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      ProviderFlags = []
      Size = 5
    end
    object SqlCdsBoletoFPC_DTEMIS: TSQLTimeStampField
      FieldName = 'FPC_DTEMIS'
      ProviderFlags = []
    end
    object SqlCdsBoletoFPC_VENCTO: TSQLTimeStampField
      FieldName = 'FPC_VENCTO'
      ProviderFlags = []
    end
    object SqlCdsBoletoFPC_VLPARC: TFMTBCDField
      FieldName = 'FPC_VLPARC'
      ProviderFlags = []
      Precision = 15
      Size = 8
    end
    object SqlCdsBoletoBAN_JUROMES: TFMTBCDField
      FieldName = 'BAN_JUROMES'
      ProviderFlags = []
      Precision = 15
      Size = 8
    end
    object SqlCdsBoletoCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      ProviderFlags = []
      Size = 52
    end
    object SqlCdsBoletoCLI_ENDERE: TStringField
      FieldName = 'CLI_ENDERE'
      ProviderFlags = []
      Size = 52
    end
    object SqlCdsBoletoCLI_ENDFAT: TStringField
      FieldName = 'CLI_ENDFAT'
      ProviderFlags = []
      Size = 52
    end
    object SqlCdsBoletoCLI_CIDADE: TStringField
      FieldName = 'CLI_CIDADE'
      ProviderFlags = []
      Size = 30
    end
    object SqlCdsBoletoCLI_CIDFAT: TStringField
      FieldName = 'CLI_CIDFAT'
      ProviderFlags = []
      Size = 30
    end
    object SqlCdsBoletoCLI_CEP: TStringField
      FieldName = 'CLI_CEP'
      ProviderFlags = []
      Size = 8
    end
    object SqlCdsBoletoCLI_CEPFAT: TStringField
      FieldName = 'CLI_CEPFAT'
      ProviderFlags = []
      Size = 8
    end
    object SqlCdsBoletoCLI_UF: TStringField
      FieldName = 'CLI_UF'
      ProviderFlags = []
      Size = 2
    end
    object SqlCdsBoletoCLI_UFFAT: TStringField
      FieldName = 'CLI_UFFAT'
      ProviderFlags = []
      Size = 2
    end
    object SqlCdsBoletoCLI_CGC: TStringField
      FieldName = 'CLI_CGC'
      ProviderFlags = []
      Size = 14
    end
  end
  object RDPrintBoleto: TRDprint
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
    UsaGerenciadorImpr = True
    CorForm = clBtnFace
    CorFonte = clBlack
    Impressora = Epson
    PortaComunicacao = 'LPT1'
    
    TamanhoQteLinhas = 66
    TamanhoQteColunas = 80
    TamanhoQteLPP = Oito
    
    
    
    NumerodeCopias = 1
    FonteTamanhoPadrao = S10cpp
    FonteEstiloPadrao = []
    Orientacao = poPortrait
    Left = 144
    Top = 496
  end
end
