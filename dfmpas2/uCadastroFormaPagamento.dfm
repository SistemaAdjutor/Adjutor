object FrmCadastroFormaPagamento: TFrmCadastroFormaPagamento
  Left = 443
  Top = 81
  BorderIcons = [biSystemMenu]
  Caption = 'Cadastro de Forma de Pagamento'
  ClientHeight = 466
  ClientWidth = 831
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Label1: TLabel
    Left = 6
    Top = 13
    Width = 36
    Height = 13
    Caption = 'C'#243'digo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 1
    Top = 57
    Width = 52
    Height = 14
    Alignment = taRightJustify
    Caption = 'Descri'#231#227'o:'
  end
  object TPanel
    Left = 510
    Top = 406
    Width = 311
    Height = 29
    BevelInner = bvLowered
    BevelOuter = bvLowered
    Color = 12681984
    TabOrder = 0
    object Bit_Cancelar: TBitBtn
      Left = 230
      Top = 4
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Hint = '|Cancela registro atual...'
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
      NumGlyphs = 2
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      TabStop = False
      OnClick = Bit_CancelarClick
    end
    object Bit_Sair: TBitBtn
      Left = 230
      Top = 4
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = '&Sair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Glyph.Data = {
        CA010000424DCA01000000000000760000002800000026000000110000000100
        04000000000054010000CE0E0000D80E00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888888FFFFFFFFFFFFFFFFFFF008888888888880000078FFFFFFFFFFFFFFFFF
        FF00833333333000BB03078FFFFFFFFFFFFFFFFFFF00830000000BBBBB03078F
        FFFFFFFFFFFFFFFFFF00830000000BBBBB03078FFFFFFFFFFFFFFFFFFF008300
        00000BBBBB03078FFFFFFFFFFFFFFFFFFF00830000000BBBBB03078FFFFFFFFF
        FFFFFFFFFF00830000000BBBBB03078FFFFFFFFFFFFFFFFFFF00830000000BBB
        B003008FFFFFFFFFFFFFFFFFFF00830000000BBBBB03078FFFFFFFFFFFFFFFFF
        FF00830000000BBBBB03078FFFFFFFFFFFFFFFFFFF00830000000BBBBB03078F
        FFFFFFFFFFFFFFFFFF00830000000BBBBB03078FFFFFFFFFFFFFFFFFFF008300
        00000BBBBB03078FFFFFFFFFFFFFFFFFFF00833333333000BB03078FFFFFFFFF
        FFFFFFFFFF008888888888880000088FFFFFFFFFFFFFFFFFFF00888888888888
        8888888FFFFFFFFFFFFFFFFFFF00}
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 4
      TabStop = False
      OnClick = Bit_SairClick
    end
    object Bit_Gravar: TBitBtn
      Left = 155
      Top = 4
      Width = 75
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
      TabOrder = 2
      TabStop = False
      OnClick = Bit_GravarClick
    end
    object Bit_Excluir: TBitBtn
      Left = 80
      Top = 4
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Hint = '|Exclui o registro atual'
      Cancel = True
      Caption = '&Excluir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Glyph.Data = {
        E6000000424DE60000000000000076000000280000000E0000000E0000000100
        04000000000070000000CE0E0000D80E00001000000000000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3300333333333333330033333333333333003333333333333300333333333333
        3300333333333333330033000000000033003300000000003300330000000000
        3300333333333333330033333333333333003333333333333300333333333333
        33003333333333333300}
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      TabStop = False
      OnClick = Bit_ExcluirClick
    end
    object Bit_novo: TBitBtn
      Left = 5
      Top = 4
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = '&Novo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Glyph.Data = {
        E6000000424DE60000000000000076000000280000000E0000000E0000000100
        04000000000070000000CE0E0000D80E00001000000000000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3300333333333333330033333333333333003333300033333300333330003333
        3300333330003333330033000000000333003300000000033300330000000003
        3300333330003333330033333000333333003333300033333300333333333333
        33003333333333333300}
      ParentFont = False
      TabOrder = 0
      TabStop = False
      OnClick = Bit_novoClick
    end
  end
  object DBNavigator1: TDBNavigator
    Left = 695
    Top = 9
    Width = 120
    Height = 25
    DataSource = DsFormaPagamento
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    TabOrder = 1
  end
  object Panel1: TPanel
    Left = 5
    Top = 40
    Width = 820
    Height = 4
    Color = 12681984
    TabOrder = 2
  end
  object EdtPti_codigo: TEdit
    Left = 44
    Top = 10
    Width = 41
    Height = 22
    MaxLength = 3
    TabOrder = 3
    OnClick = EdtPti_codigoClick
    OnExit = EdtPti_codigoExit
  end
  object DBePti_descri: TDBEdit
    Left = 55
    Top = 53
    Width = 284
    Height = 22
    CharCase = ecUpperCase
    DataField = 'FPG_DESCRICAO'
    DataSource = DsFormaPagamento
    TabOrder = 4
  end
  object DBCheckBox2: TDBCheckBox
    Left = 344
    Top = 80
    Width = 241
    Height = 17
    Caption = '[CB] Lan'#231'a movimento na Conta Banco'
    DataField = 'FPG_LANCA_CONTA'
    DataSource = DsFormaPagamento
    TabOrder = 5
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 176
    Width = 825
    Height = 229
    Caption = 'Listagem'
    TabOrder = 6
    object DbGradeTipoPedido: TDBGrid
      Left = 2
      Top = 16
      Width = 821
      Height = 211
      Align = alClient
      Color = 16776176
      DataSource = DsFormaPagamento
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = []
      OnDrawColumnCell = DbGradeTipoPedidoDrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'FPG_REGISTRO'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'digo'
          Width = 71
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FPG_DESCRICAO'
          Title.Alignment = taCenter
          Title.Caption = 'Descri'#231#227'o'
          Width = 357
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FPG_FLUXO_CAIXA'
          Title.Alignment = taCenter
          Title.Caption = 'FC'
          Width = 20
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FPG_LANCA_CONTA'
          Title.Alignment = taCenter
          Title.Caption = 'CB'
          Width = 20
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FPG_BOLETO'
          Title.Caption = 'BL'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CCT_CODIGO'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'digo'
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CCT_DESCRI'
          Title.Alignment = taCenter
          Title.Caption = 'Conta Financeira'
          Width = 274
          Visible = True
        end>
    end
  end
  object DBCheckBox1: TDBCheckBox
    Left = 56
    Top = 80
    Width = 281
    Height = 17
    Caption = '[FC] Participa do Fluxo de Caixa'
    DataField = 'FPG_FLUXO_CAIXA'
    DataSource = DsFormaPagamento
    TabOrder = 7
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object grpContaFinanceira: TGroupBox
    Left = 0
    Top = 122
    Width = 585
    Height = 48
    Caption = 'Conta Financeira'
    TabOrder = 8
    object EdtOpe_Codigo: TEdit
      Left = 57
      Top = 18
      Width = 48
      Height = 22
      MaxLength = 3
      TabOrder = 0
      OnChange = EdtOpe_CodigoChange
    end
    object CbxCtaAnalise: TComboBoxRw
      Left = 108
      Top = 18
      Width = 421
      Height = 22
      EmptyText = 'Selecione a conta'
      TabOrder = 1
      OnChange = CbxCtaAnaliseChange
      CharCase = ecUpperCase
      LookupSelect = 'CCT_DESCRI'
      LookupOrderBy = 'CCT_DESCRI'
      LookupTable = 'CCT_0000'
      LookupDispl = 'CCT_DESCRI'
      OnSelect = CbxCtaAnaliseSelect
      GridAutoSize = False
      LookupSource = CbxCtaAnalise.InternalSource
      LookupKeyField = 'CCT_CODIGO'
      FiltroTabela = 'CCT_CONTA = '#39'E'#39' and CCT_STATUS = '#39'L'#39
      ShowButton = True
      LookupTableShare = 'PLANODECONTAS'
      AutoF8WinTitulo = 'Contas'
      AutoF8ColumnsTitulo = 'C'#243'digo, Descri'#231#227'o'
      GridLeft = 0
      GridWidth = 0
      GridHeight = 100
      GridShowWhenEnter = False
      SelectWithDoubleClick = False
      Tabela = 'CCT_0000'
      CamposCarregar = 'CCT_DESCRI'
      CamposRetornar = 'CCT_CODIGO'
      Condicao = 'CCT_CONTA = '#39'E'#39' and CCT_STATUS = '#39'L'#39
      CamposOrdernar = 'CCT_DESCRI'
      ConexaoBanco = DataCadastros.SQLConnection1
      Compartilhar = 'PLANODECONTAS'
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
  object DBCheckBox3: TDBCheckBox
    Left = 591
    Top = 81
    Width = 228
    Height = 17
    Caption = 'Executar baixa financeira autom'#225'tica'
    DataField = 'FPG_BAIXARECEBER'
    DataSource = DsFormaPagamento
    TabOrder = 9
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object DBCheckBox4: TDBCheckBox
    Left = 57
    Top = 99
    Width = 281
    Height = 17
    Caption = '[BL] Gera Boleto / Duplicata'
    DataField = 'FPG_BOLETO'
    DataSource = DsFormaPagamento
    TabOrder = 10
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object DsFormaPagamento: TDataSource
    DataSet = CdsFormaPagamento
    Left = 520
  end
  object SqlPagamento: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'select T1.*, T2.CCT_DESCRI from FORMA_PAGAMENTO T1 LEFT JOIN CCT' +
      '_0000 T2 ON (T2.CCT_CODIGO = T1.CCT_CODIGO) order by FPG_DESCRIC' +
      'AO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DataCadastros.SQLConnection1
    Left = 232
    Top = 65534
    object SqlPagamentoFPG_REGISTRO: TIntegerField
      FieldName = 'FPG_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object SqlPagamentoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlPagamentoFPG_DESCRICAO: TStringField
      FieldName = 'FPG_DESCRICAO'
      Size = 100
    end
    object SqlPagamentoFPG_LANCA_CONTA: TStringField
      FieldName = 'FPG_LANCA_CONTA'
      Size = 1
    end
    object SqlPagamentoFPG_FLUXO_CAIXA: TStringField
      FieldName = 'FPG_FLUXO_CAIXA'
      Size = 1
    end
    object SqlPagamentoCCT_CODIGO: TStringField
      FieldName = 'CCT_CODIGO'
      Size = 3
    end
    object SqlPagamentoCCT_DESCRI: TStringField
      FieldName = 'CCT_DESCRI'
      ProviderFlags = []
      Size = 82
    end
    object SqlPagamentoFPG_BAIXARECEBER: TStringField
      FieldName = 'FPG_BAIXARECEBER'
      Size = 1
    end
    object SqlPagamentoFPG_BOLETO: TStringField
      FieldName = 'FPG_BOLETO'
      Size = 1
    end
  end
  object DspPagamento: TDataSetProvider
    DataSet = SqlPagamento
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 312
    Top = 65534
  end
  object CdsFormaPagamento: TClientDataSet
    Aggregates = <>
    PacketRecords = 10
    Params = <>
    ProviderName = 'DspPagamento'
    BeforeEdit = CdsFormaPagamentoBeforeEdit
    BeforePost = CdsFormaPagamentoBeforePost
    AfterScroll = CdsFormaPagamentoAfterScroll
    OnNewRecord = CdsFormaPagamentoNewRecord
    Left = 408
    Top = 65534
    object CdsFormaPagamentoFPG_REGISTRO: TIntegerField
      FieldName = 'FPG_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CdsFormaPagamentoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object CdsFormaPagamentoFPG_DESCRICAO: TStringField
      FieldName = 'FPG_DESCRICAO'
      Size = 100
    end
    object CdsFormaPagamentoFPG_LANCA_CONTA: TStringField
      FieldName = 'FPG_LANCA_CONTA'
      Size = 1
    end
    object CdsFormaPagamentoFPG_FLUXO_CAIXA: TStringField
      FieldName = 'FPG_FLUXO_CAIXA'
      Size = 1
    end
    object CdsFormaPagamentoCCT_CODIGO: TStringField
      FieldName = 'CCT_CODIGO'
      Size = 3
    end
    object CdsFormaPagamentoCCT_DESCRI: TStringField
      FieldName = 'CCT_DESCRI'
      ProviderFlags = []
      Size = 82
    end
    object CdsFormaPagamentoFPG_BAIXARECEBER: TStringField
      FieldName = 'FPG_BAIXARECEBER'
      Size = 1
    end
    object CdsFormaPagamentoFPG_BOLETO: TStringField
      FieldName = 'FPG_BOLETO'
      Size = 1
    end
  end
end
