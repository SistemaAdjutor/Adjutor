inherited formParcelaFatura: TformParcelaFatura
  BorderIcons = []
  Caption = 'Alterar parcela da fatura'
  ClientHeight = 111
  ClientWidth = 463
  ExplicitWidth = 479
  ExplicitHeight = 149
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 13
    Top = 39
    Width = 78
    Height = 14
    Alignment = taRightJustify
    Caption = 'Forma de Pagto:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel [1]
    Left = 11
    Top = 11
    Width = 29
    Height = 13
    Caption = 'Banco'
  end
  object CurrcodBanco: TCurrencyEdit [2]
    Left = 46
    Top = 8
    Width = 44
    Height = 22
    Alignment = taCenter
    AutoSize = False
    Color = clWhite
    DisplayFormat = '0000'
    MaxLength = 4
    TabOrder = 0
    OnExit = CurrcodBancoExit
  end
  object CbBancos: TComboBoxRw [3]
    Left = 92
    Top = 8
    Width = 321
    Height = 21
    TabOrder = 1
    CharCase = ecUpperCase
    LookupSelect = 'BAN_CODIGO,BAN_APELIDO,BAN_COBTIPO,BAN_COD_APELIDO'
    LookupOrderBy = 'ban_apelido'
    LookupTable = 'ban0000'
    LookupDispl = 'BAN_APELIDO'
    OnSelect = CbBancosSelect
    GridAutoSize = False
    LookupSource = CbBancos.InternalSource
    LookupKeyField = 'BAN_CODIGO'
    ShowButton = True
    LookupTableShare = 'BANCOS'
    AutoF8WinTitulo = 'Bancos'
    AutoF8ColumnsTitulo = 'C'#243'digo, Apelido'
    GridLeft = 0
    GridWidth = 0
    GridHeight = 100
    GridShowWhenEnter = False
    SelectWithDoubleClick = False
    Tabela = 'ban0000'
    CamposCarregar = 'BAN_CODIGO,BAN_APELIDO,BAN_COBTIPO,BAN_COD_APELIDO'
    CamposRetornar = 'BAN_CODIGO'
    CamposOrdernar = 'ban_apelido'
    ConexaoBanco = DBConn
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
  object edFPagto: TSgDbSearchCombo [4]
    Left = 92
    Top = 35
    Width = 321
    Height = 21
    TabOrder = 2
    CharCase = ecUpperCase
    LookupSelect = 'FPG_DESCRICAO, FPG_REGISTRO'
    LookupOrderBy = 'FPG_DESCRICAO'
    LookupTable = 'FORMA_PAGAMENTO'
    LookupDispl = 'FPG_DESCRICAO'
    GridAutoSize = False
    LookupSource = qFPagto
    LookupKeyField = 'FPG_REGISTRO'
    ShowButton = True
    AutoF8WinTitulo = 'Formas de Pagamento'
    AutoF8ColumnsTitulo = 'C'#243'digo, Descri'#231#227'o'
    GridLeft = 0
    GridWidth = 0
    GridHeight = 100
    GridShowWhenEnter = False
    SelectWithDoubleClick = False
  end
  object Bit_Gravar: TBitBtn [5]
    Left = 222
    Top = 78
    Width = 100
    Height = 25
    Cursor = crHandPoint
    Hint = '|Grava registro...'
    Caption = '&Gravar'
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
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    TabStop = False
  end
  object Bit_Cancelar: TBitBtn [6]
    Left = 328
    Top = 78
    Width = 100
    Height = 25
    Cursor = crHandPoint
    Hint = '|Cancela registro atual...'
    Caption = '&Cancelar'
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
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    TabStop = False
  end
  inherited coCalcula: TACBrCalculadora
    Left = 160
    Top = 64
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 72
    Top = 72
  end
  inherited DBConn: TSQLConnection
    Left = 16
    Top = 65
  end
  inherited qAux: TSQLQuery
    Left = 114
    Top = 77
  end
  inherited qAux2: TSQLQuery
    Left = 146
    Top = 60
  end
  inherited qAux3: TSQLQuery
    Left = 346
    Top = 68
  end
  object qFPagto: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select FPG_DESCRICAO, FPG_REGISTRO'
      'from FORMA_PAGAMENTO'
      'Where FPG_REGISTRO='#39'-1'#39
      'order by FPG_DESCRICAO'
      ''
      '')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 444
    Top = 30
  end
end
