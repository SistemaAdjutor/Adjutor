object formContasReceberAgrupa: TformContasReceberAgrupa
  Left = 188
  Top = 82
  Caption = 'Contas '#224' Receber - Tela de Agrupamento'
  ClientHeight = 464
  ClientWidth = 919
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 919
    Height = 270
    Align = alClient
    Caption = 'Parcelas '
    TabOrder = 0
    object Label5: TLabel
      Left = 21
      Top = 23
      Width = 68
      Height = 14
      Alignment = taRightJustify
      Caption = 'Parcelamento:'
    end
    object DBGrid1: TDBGrid
      Left = 2
      Top = 47
      Width = 960
      Height = 413
      Hint = 
        'Para descartar uma parcela que n'#227'o deseje baixar pressione  bot'#227 +
        'o direito do mouse sobre a parcela e selecione descartar'
      Align = alCustom
      DataSource = DsRecebimentos
      ParentShowHint = False
      PopupMenu = PopupMenu1
      ShowHint = True
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = []
      OnExit = DBGrid1Exit
      Columns = <
        item
          Expanded = False
          FieldName = 'Fatura'
          ReadOnly = True
          Title.Alignment = taCenter
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Parcela'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'PC'
          Width = 25
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Vencimento'
          ReadOnly = True
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Valor'
          ReadOnly = True
          Title.Alignment = taCenter
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Pendente'
          ReadOnly = True
          Title.Alignment = taCenter
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Cliente'
          ReadOnly = True
          Title.Alignment = taCenter
          Width = 204
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Banco'
          Title.Alignment = taCenter
          Title.Caption = 'Conta Banco'
          Visible = True
        end>
    end
    object cbParcela: TSgDbSearchCombo
      Left = 129
      Top = 19
      Width = 320
      Height = 22
      TabOrder = 1
      CharCase = ecUpperCase
      LookupSelect = 'PCL_CODIGO, PCL_NOME'
      LookupOrderBy = 'PCL_NOME'
      LookupTable = 'PCL0000'
      OnSelect = cbParcelaSelect
      GridAutoSize = False
      LookupSource = qParcelamento
      LookupKeyField = 'PCL_CODIGO'
      ShowButton = True
      LookupTableShare = 'TABELAS'
      AutoF8WinTitulo = 'Parcelamentos'
      AutoF8ColumnsTitulo = 'C'#243'digo, Descri'#231#227'o'
      GridLeft = 0
      GridWidth = 0
      GridHeight = 100
      GridShowWhenEnter = False
      SelectWithDoubleClick = False
    end
    object edParcela: TEdit
      Left = 90
      Top = 19
      Width = 33
      Height = 22
      TabOrder = 2
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 270
    Width = 919
    Height = 107
    Align = alBottom
    Caption = 'Informa'#231#245'es da baixa'
    TabOrder = 1
    object Label7: TLabel
      Left = 34
      Top = 24
      Width = 65
      Height = 14
      Alignment = taRightJustify
      Caption = 'Conta Banco:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 442
      Top = 24
      Width = 104
      Height = 14
      Alignment = taRightJustify
      Caption = 'Forma de Pagamento:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 50
      Top = 78
      Width = 45
      Height = 14
      Caption = 'Tipo Doc:'
    end
    object Label4: TLabel
      Left = 492
      Top = 75
      Width = 50
      Height = 14
      Caption = 'Cobran'#231'a:'
    end
    object Sb_FormaPagamento: TSpeedButton
      Left = 868
      Top = 20
      Width = 22
      Height = 21
      Hint = 'Cadastro de Forma de Pagamento'
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
      OnClick = Sb_FormaPagamentoClick
    end
    object Label6: TLabel
      Left = 11
      Top = 48
      Width = 84
      Height = 14
      Alignment = taRightJustify
      Caption = 'Conta Financeira:'
    end
    object lblProjcx: TLabel
      Left = 465
      Top = 46
      Width = 81
      Height = 14
      Caption = 'Centro de Custo:'
    end
    object CbContaBanco: TComboBoxRw
      Left = 145
      Top = 20
      Width = 265
      Height = 22
      TabOrder = 0
      OnChange = CbContaBancoChange
      CharCase = ecUpperCase
      LookupSelect = 'BAN_APELIDO'
      LookupOrderBy = 'BAN_APELIDO'
      LookupTable = 'BAN0000'
      GridAutoSize = False
      LookupSource = CbContaBanco.InternalSource
      LookupKeyField = 'BAN_CODIGO'
      FiltroTabela = 'BAN_ATIVO = '#39'S'#39
      ShowButton = True
      LookupTableShare = 'BANCOS'
      AutoF8WinTitulo = 'Contas Banc'#225'rias'
      AutoF8ColumnsTitulo = 'C'#243'digo, Descri'#231#227'o'
      GridLeft = 0
      GridWidth = 0
      GridHeight = 100
      GridShowWhenEnter = False
      SelectWithDoubleClick = False
      Tabela = 'BAN0000'
      CamposCarregar = 'BAN_APELIDO'
      CamposRetornar = 'BAN_CODIGO'
      Condicao = 'BAN_ATIVO = '#39'S'#39
      CamposOrdernar = 'BAN_APELIDO'
      ConexaoBanco = DataCadastros.SQLConnection1
      Compartilhar = 'BANCOS'
      Localizado = False
      CodigoEmpresa = 0
      ResetaCampos = False
      MultiEmpresa = False
      Localizar = False
      CarregarCombo = False
      itemindex = 0
      style = csDropDown
    end
    object EdContaBanco: TEdit
      Left = 101
      Top = 20
      Width = 43
      Height = 22
      CharCase = ecUpperCase
      Color = clWhite
      MaxLength = 5
      TabOrder = 1
      OnExit = EdContaBancoExit
    end
    object EdFormaPagamento: TEdit
      Left = 548
      Top = 20
      Width = 43
      Height = 22
      CharCase = ecUpperCase
      Color = clWhite
      MaxLength = 5
      TabOrder = 2
      OnExit = EdFormaPagamentoExit
    end
    object CBFormaPagamento: TComboBoxRw
      Left = 593
      Top = 20
      Width = 249
      Height = 22
      TabOrder = 3
      OnChange = CBFormaPagamentoChange
      CharCase = ecUpperCase
      LookupSelect = 'FPG_DESCRICAO'
      LookupOrderBy = 'FPG_DESCRICAO'
      LookupTable = 'FORMA_PAGAMENTO'
      GridAutoSize = False
      LookupSource = CBFormaPagamento.InternalSource
      LookupKeyField = 'FPG_REGISTRO'
      ShowButton = True
      LookupTableShare = 'TABELAS'
      AutoF8WinTitulo = 'Formas de Pagamento'
      AutoF8ColumnsTitulo = 'C'#243'digo, Descri'#231#227'o'
      GridLeft = 0
      GridWidth = 0
      GridHeight = 100
      GridShowWhenEnter = False
      SelectWithDoubleClick = False
      Tabela = 'FORMA_PAGAMENTO'
      CamposCarregar = 'FPG_DESCRICAO'
      CamposRetornar = 'FPG_REGISTRO'
      CamposOrdernar = 'FPG_DESCRICAO'
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
    object cbTipoDoc: TComboBox
      Left = 101
      Top = 70
      Width = 170
      Height = 22
      Style = csDropDownList
      TabOrder = 4
      Items.Strings = (
        ''
        'DUPLICATA'
        'BOLETO'
        'RECIBO'
        'CHEQUE'
        'DINHEIRO'
        'OUTROS'
        'CREDITO CONTA')
    end
    object cbCarteira: TComboBox
      Left = 548
      Top = 70
      Width = 170
      Height = 22
      Style = csDropDownList
      CharCase = ecUpperCase
      TabOrder = 5
      Items.Strings = (
        ''
        'CARTEIRA'
        'COBRAN'#199'A SIMPLES'
        'COBRAN'#199'A CAUCIONADA'
        'COBRAN'#199'A DESCONTADA'
        'COBRAN'#199'A SEM REGISTRO'
        'COBRAN'#199'A RAPIDA'
        'CUSTODIA DE CHEQUE'
        'CHEQUE DESCONTADO')
    end
    object cbContaFinanceira: TSgDbSearchCombo
      Left = 145
      Top = 45
      Width = 265
      Height = 22
      TabOrder = 6
      OnChange = cbContaFinanceiraChange
      CharCase = ecUpperCase
      LookupSelect = 'CCT_CODIGO, CCT_DESCRI'
      LookupOrderBy = 'CCT_DESCRI'
      LookupTable = 'CCT_0000'
      GridAutoSize = False
      LookupSource = qContaFinanceira
      LookupKeyField = 'CCT_CODIGO'
      FiltroTabela = 'CCT_CONTA = '#39'E'#39' AND CCT_STATUS = '#39'L'#39
      ShowButton = True
      LookupTableShare = 'TABELAS'
      AutoF8WinTitulo = 'Contas Financeiras'
      AutoF8ColumnsTitulo = 'C'#243'digo, Descri'#231#227'o'
      GridLeft = 0
      GridWidth = 0
      GridHeight = 100
      GridShowWhenEnter = False
      SelectWithDoubleClick = False
    end
    object edContaFinanceira: TEdit
      Left = 101
      Top = 45
      Width = 43
      Height = 22
      CharCase = ecUpperCase
      Color = clWhite
      MaxLength = 5
      TabOrder = 7
      OnExit = edContaFinanceiraExit
    end
    object cbCentroCusto: TSgDbSearchCombo
      Left = 593
      Top = 46
      Width = 249
      Height = 22
      TabOrder = 8
      OnChange = cbCentroCustoChange
      CharCase = ecUpperCase
      LookupSelect = 'PCX_CODIGO, PCX_DESCRI'
      LookupOrderBy = 'PCX_DESCRI'
      LookupTable = 'PCX0000'
      GridAutoSize = False
      LookupSource = qCentroCusto
      LookupKeyField = 'PCX_CODIGO'
      ShowButton = True
      LookupTableShare = 'TABELAS'
      AutoF8WinTitulo = 'Centros de Custo'
      AutoF8ColumnsTitulo = 'C'#243'digo, Descri'#231#227'o'
      GridLeft = 0
      GridWidth = 0
      GridHeight = 100
      GridShowWhenEnter = False
      SelectWithDoubleClick = False
    end
    object edCentroCusto: TEdit
      Left = 548
      Top = 46
      Width = 43
      Height = 22
      CharCase = ecUpperCase
      Color = clWhite
      MaxLength = 5
      TabOrder = 9
      OnExit = edCentroCustoExit
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 377
    Width = 919
    Height = 46
    Align = alBottom
    Caption = 'Totais'
    Enabled = False
    TabOrder = 2
    object Label10: TLabel
      Left = 5
      Top = 19
      Width = 58
      Height = 14
      Caption = 'Quantidade:'
    end
    object Label8: TLabel
      Left = 129
      Top = 17
      Width = 94
      Height = 16
      Caption = 'Total '#224' Receber:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object CurrTotalQuantidade: TCurrencyEdit
      Left = 64
      Top = 16
      Width = 54
      Height = 21
      TabStop = False
      Alignment = taCenter
      AutoSize = False
      Color = 14145495
      DecimalPlaces = 0
      DisplayFormat = '00000'
      ReadOnly = True
      TabOrder = 0
    end
    object CurrTotalReceber: TCurrencyEdit
      Left = 224
      Top = 14
      Width = 115
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 14145495
      DisplayFormat = ',0.00;-,0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 423
    Width = 919
    Height = 41
    Align = alBottom
    TabOrder = 3
    object Bit_Gravar: TBitBtn
      Left = 703
      Top = 9
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
      NumGlyphs = 2
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = Bit_GravarClick
    end
    object Bit_Cancelar: TBitBtn
      Left = 806
      Top = 9
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
  end
  object DsRecebimentos: TDataSource
    DataSet = CDSRecebimentos
    Left = 704
    Top = 96
  end
  object CDSRecebimentos: TSqlClientDataSet
    Aggregates = <>
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    BeforeInsert = CDSRecebimentosBeforeInsert
    AfterPost = CDSRecebimentosAfterPost
    CommandText = ''
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 553
    Top = 96
    object CDSRecebimentosFatura: TStringField
      FieldName = 'Fatura'
      Size = 10
    end
    object CDSRecebimentosParcela: TStringField
      FieldName = 'Parcela'
      Size = 5
    end
    object CDSRecebimentosVencimento: TDateField
      FieldName = 'Vencimento'
    end
    object CDSRecebimentosValor: TFloatField
      FieldName = 'Valor'
      DisplayFormat = '###,###,###,##0.00'
    end
    object CDSRecebimentosPendente: TFloatField
      FieldName = 'Pendente'
      DisplayFormat = '###,###,###,##0.00'
    end
    object CDSRecebimentosCliente: TStringField
      FieldName = 'Cliente'
      Size = 100
    end
    object CDSRecebimentosFatRegistro: TIntegerField
      FieldName = 'FatRegistro'
    end
    object CDSRecebimentosBanco: TStringField
      FieldName = 'Banco'
      Size = 40
    end
    object CDSRecebimentosClienteCodigo: TStringField
      FieldName = 'ClienteCodigo'
      Size = 5
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 712
    Top = 192
    object Descartar1: TMenuItem
      Caption = 'Descartar'
      OnClick = Descartar1Click
    end
  end
  object qParcelamento: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DBInicio.MainDB
    Left = 480
    Top = 16
  end
  object qContaFinanceira: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DBInicio.MainDB
    Left = 392
    Top = 336
  end
  object qCentroCusto: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DBInicio.MainDB
    Left = 840
    Top = 344
  end
  object qAux2: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DBInicio.MainDB
    Left = 288
    Top = 96
  end
  object qAux: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DBInicio.MainDB
    Left = 232
    Top = 96
  end
end
