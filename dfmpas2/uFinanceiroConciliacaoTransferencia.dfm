object FrmFinanceiroConciliacaoTransferencia: TFrmFinanceiroConciliacaoTransferencia
  Left = 368
  Top = 219
  Caption = 'Transfer'#234'ncia entre Contas'
  ClientHeight = 311
  ClientWidth = 498
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 498
    Height = 73
    Align = alTop
    Caption = 'Origem'
    TabOrder = 0
    object Label3: TLabel
      Left = 45
      Top = 22
      Width = 65
      Height = 14
      Alignment = taRightJustify
      Caption = 'Conta Banco:'
    end
    object Label4: TLabel
      Left = 80
      Top = 47
      Width = 30
      Height = 14
      Alignment = taRightJustify
      Caption = 'Saldo:'
    end
    object CbContaBancoOrigem: TComboBoxRw
      Left = 158
      Top = 19
      Width = 311
      Height = 22
      TabOrder = 1
      OnChange = CbContaBancoOrigemChange
      CharCase = ecUpperCase
      LookupSelect = 'BAN_APELIDO'
      LookupOrderBy = 'BAN_APELIDO'
      LookupTable = 'BAN0000'
      OnSelect = CbContaBancoOrigemSelect
      GridAutoSize = False
      LookupSource = CbContaBancoOrigem.InternalSource
      LookupKeyField = 'BAN_CODIGO'
      ShowButton = True
      LookupTableShare = 'BANCOS'
      AutoF8WinTitulo = 'Contas Bancarias'
      AutoF8ColumnsTitulo = 'C'#243'digo, Descri'#231#227'o'
      GridLeft = 0
      GridWidth = 0
      GridHeight = 100
      GridShowWhenEnter = False
      SelectWithDoubleClick = False
      Tabela = 'BAN0000'
      CamposCarregar = 'BAN_APELIDO'
      CamposRetornar = 'BAN_CODIGO'
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
    object EdContaBancoOrigem: TEdit
      Left = 112
      Top = 19
      Width = 43
      Height = 22
      CharCase = ecUpperCase
      Color = clWhite
      MaxLength = 4
      TabOrder = 0
      OnExit = EdContaBancoOrigemExit
    end
    object CurSaldoOrigem: TCurrencyEdit
      Left = 112
      Top = 44
      Width = 90
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 14145495
      DisplayFormat = ',0.00;-,0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
      ZeroEmpty = False
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 73
    Width = 498
    Height = 72
    Align = alTop
    Caption = 'Destino'
    TabOrder = 1
    object Label6: TLabel
      Left = 45
      Top = 22
      Width = 65
      Height = 14
      Alignment = taRightJustify
      Caption = 'Conta Banco:'
    end
    object Label7: TLabel
      Left = 80
      Top = 47
      Width = 30
      Height = 14
      Alignment = taRightJustify
      Caption = 'Saldo:'
    end
    object EdContaBancoDestino: TEdit
      Left = 112
      Top = 19
      Width = 43
      Height = 22
      CharCase = ecUpperCase
      Color = clWhite
      MaxLength = 4
      TabOrder = 0
      OnExit = EdContaBancoDestinoExit
    end
    object CbContaBancoDestino: TComboBoxRw
      Left = 158
      Top = 19
      Width = 307
      Height = 22
      TabOrder = 1
      OnChange = CbContaBancoOrigemChange
      CharCase = ecUpperCase
      LookupSelect = 'BAN_APELIDO'
      LookupOrderBy = 'BAN_APELIDO'
      LookupTable = 'BAN0000'
      OnSelect = CbContaBancoDestinoSelect
      GridAutoSize = False
      LookupSource = CbContaBancoDestino.InternalSource
      LookupKeyField = 'BAN_CODIGO'
      ShowButton = True
      LookupTableShare = 'BANCOS'
      AutoF8WinTitulo = 'Contas Bancarias'
      AutoF8ColumnsTitulo = 'C'#243'digo, Descri'#231#227'o'
      GridLeft = 0
      GridWidth = 0
      GridHeight = 100
      GridShowWhenEnter = False
      SelectWithDoubleClick = False
      Tabela = 'BAN0000'
      CamposCarregar = 'BAN_APELIDO'
      CamposRetornar = 'BAN_CODIGO'
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
    object CurSaldoDestino: TCurrencyEdit
      Left = 112
      Top = 44
      Width = 90
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 14145495
      DisplayFormat = ',0.00;-,0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
      ZeroEmpty = False
    end
  end
  object Bit_Cancelar: TBitBtn
    Left = 357
    Top = 278
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
    NumGlyphs = 2
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    OnClick = Bit_CancelarClick
  end
  object Bit_Gravar: TBitBtn
    Left = 251
    Top = 277
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
    TabOrder = 3
    OnClick = Bit_GravarClick
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 145
    Width = 498
    Height = 127
    Align = alTop
    Caption = 'Destino'
    TabOrder = 2
    object Label5: TLabel
      Left = 23
      Top = 23
      Width = 87
      Height = 14
      Caption = 'Data Lan'#231'amento:'
    end
    object Label1: TLabel
      Left = 53
      Top = 48
      Width = 57
      Height = 14
      Caption = 'Documento:'
    end
    object Label2: TLabel
      Left = 47
      Top = 99
      Width = 63
      Height = 14
      Caption = 'Observa'#231#227'o:'
    end
    object Label8: TLabel
      Left = 82
      Top = 75
      Width = 28
      Height = 14
      Alignment = taRightJustify
      Caption = 'Valor:'
    end
    object RxDataLancamento: TDateEdit
      Left = 112
      Top = 20
      Width = 88
      Height = 22
      ButtonWidth = 20
      NumGlyphs = 2
      YearDigits = dyFour
      TabOrder = 0
    end
    object EdDocumento: TEdit
      Left = 112
      Top = 45
      Width = 121
      Height = 22
      MaxLength = 12
      TabOrder = 1
    end
    object EdObservacao: TEdit
      Left = 112
      Top = 96
      Width = 377
      Height = 22
      MaxLength = 255
      TabOrder = 3
      Text = 'Transfer'#234'ncia entre contas'
    end
    object CurValorTransferencia: TCurrencyEdit
      Left = 112
      Top = 72
      Width = 90
      Height = 21
      AutoSize = False
      Color = clWhite
      DisplayFormat = ',0.00;-,0.00'
      TabOrder = 2
      ZeroEmpty = False
    end
  end
  object btManutencao: TBitBtn
    Left = 145
    Top = 277
    Width = 100
    Height = 25
    Caption = 'Manuten'#231#227'o'
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000C40E0000C40E00000000000000000000A35501A35501
      A35501A35501A35501A35501A35501A35501A35501A35501A35501A35501A355
      01A35501A35501A35501A35501FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA35501A35501FFFFFF
      FF9933FF9933FF9933FF9933FF9933FFFFFFFFFFFFFF9933FF9933FF9933FF99
      33FF9933FFFFFFA35501A35501FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA35501A35501FFFFFF
      FF9933FF9933FF9933FF9933FF9933FFFFFFFFFFFFFF9933FF9933FF9933FF99
      33FF9933FFFFFFA35501A35501FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA35501A35501A35501
      A35501A35501A35501A35501A35501A35501A35501A35501A35501A35501A355
      01A35501A35501A35501A35501FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA35501A35501FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFA35501A35501FFFFFFA49C94A49C94FFFFFFA49C94A49C94FF
      FFFFA49C94A49C94FFFFFFA49C94A49C94FFFFFFFFFFFFA35501A35501FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFA35501A35501FFFFFFC67F7FC67F7FFFFFFFFF9933FF9933FF
      FFFF2254FF2254FFFFFFFF278559278559FFFFFFFFFFFFA35501A35501FFFFFF
      C67F7FC67F7FFFFFFFFF9933FF9933FFFFFF2254FF2254FFFFFFFF2785592785
      59FFFFFFFFFFFFA35501A35501FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA35501A35501A35501
      A35501A35501A35501A35501A35501A35501A35501A35501A35501A35501A355
      01A35501A35501A35501CC6600CC6600CC6600CC6600CC6600CC6600CC6600CC
      6600CC6600CC6600CC6600CC6600CC6600CC6600CC6600CC6600}
    TabOrder = 5
    OnClick = btManutencaoClick
  end
  object btHistorico: TBitBtn
    Left = 39
    Top = 277
    Width = 100
    Height = 25
    Caption = 'Hist'#243'rico'
    Glyph.Data = {
      96040000424D9604000000000000360000002800000012000000140000000100
      18000000000060040000C40E0000C40E00000000000000000000FFFFFFFBFCFC
      FEFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFF
      FFFDFFFFFEFFFFFCFFFFFDFDFDFFFFFF0000E3F0F047A5A554908F5082835389
      93508483508584508584508584508584508584508584508584508484538D8D51
      8D8D9A9F9FFEFCFC0000D0E7E7009595396265554D54383C075556634F515450
      515550515550515550515550515550515554545845484C0011115F6D6DFEFAFA
      0000D4E8E800A9AAA8CFCEFFFCFB9C9A24FFFFFFFFFDF7FFFDF8FFFDF8FFFDF8
      FFFDF8FFFDF8FFFDF8FFFFFFA19893000A0B697B7BFFFCFC0000D3E8E700AAB1
      83AC89B3A84C838400ADAD54A6A645A6A646A6A646A6A646A6A646A6A646A6A6
      46B0AF4A7A752F00101C697B7AFFFCFC0000D3E8E800A7AA9CC3B9E6DBB79090
      1CDCDCB8D5D5A9D5D5A9D5D5A9D5D5A9D5D5A9D5D5A9D5D5A9DDDCAE928D7900
      0C12697B7AFFFCFC0000D3E8E800A8AB94BCABDED4A98C8C14D7D7ACCFCF9DCF
      CF9DCFCF9DCFCF9DCFCF9DCFCF9DD0D09ED7D6A28A8562000C15697B7AFFFCFC
      0000D3E8E800A7AA9AC1B7EEE3C9909018F0F0DFE1E1C2E1E1C3E1E1C3E1E1C3
      E1E1C3E1E1C3E1E1C3EDEDCD8F8C74000C11697B7AFFFCFC0000D3E8E700A9AE
      8FB7A1CFC68989890CCDCD99C3C383C3C384C3C384C3C384C3C384C3C384C3C3
      84CDCD8B858053000D17697B7AFFFCFC0000D3E8E800A8AC97BFB1DED3A88D8E
      1AD4D4A7CDCD9ACDCD9ACDCD9ACDCD9ACDCD9ACDCD9ACDCD9AD4D49E8D8A6E00
      0D13697B7AFFFCFC0000D3E8E800A8AC97BFB1DED3A88D8E1AD4D4A7CDCD9ACD
      CD9ACDCD9ACDCD9ACDCD9ACDCD9ACDCD9AD4D49E8D8A6E000D13697B7AFFFCFC
      0000D3E8E700A9AE8FB7A1CFC689898A0CCDCD99C3C383C3C384C3C384C3C384
      C3C384C3C384C3C384CDCD8B858053000D17697B7AFFFCFC0000D3E8E800A7AA
      9AC1B7EEE3C9909018F0F0DFE1E1C2E1E1C3E1E1C3E1E1C3E1E1C3E1E1C3E1E1
      C3EDEDCD8F8C74000C11697B7AFFFCFC0000D3E8E800A8AB94BCACDFD4A98C8D
      14D7D7ACCFCF9DCFCF9DCFCF9DCFCF9DCFCF9DCFCF9DD0D09ED7D6A28B866300
      0C15697B7AFFFCFC0000D3E8E800A8AB94BBACDCD1A38A8B11D4D4A5CDCD97CD
      CD97CDCD97CDCD97CDCD97CECE97CDCD97D3D39B8A8663000C14697B7AFFFCFC
      0000D4E8E800A4A3A9D0D5FFFFFFA6A62FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF8F7FDFFFFFF9F9AA0000808697B7BFFFCFC0000D2E7E700A5A5
      A7CAC9FFFAFF564F0B000000040403000000000000000000000000000000C5BB
      BBFCF9F99E9090000505667777FEFBFB0000D6E7E700B0B023B8B8239A9B33B7
      C79EDBDAFFFFFFF7F6F6ECECECCECECE7A70701264641CA4A425A0A01E9F9F00
      4D4D6D7777FFFCFC0000F9FAFA80CDCD4EC6C655CBCB53CFCE3C9494D8D9D9F9
      F8F8D5D5D5ADACAC1E14142A76765EDFDF55CACA53CECE65C0C0CFD9D9FFFFFF
      0000FFFFFFFFFEFEFCF8F8FEF9F9FFFCFCB2ADAD9191919494948F8F8F959595
      737272BEBABAFFFFFFFDF9F9FDF8F8FFFEFEFFFFFFFFFFFF0000}
    TabOrder = 6
    OnClick = btHistoricoClick
  end
end
