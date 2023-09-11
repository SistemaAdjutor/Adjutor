object FrmChequeCadastro: TFrmChequeCadastro
  Left = 439
  Top = 260
  AutoSize = True
  Caption = 'Cadastro de Cheques'
  ClientHeight = 257
  ClientWidth = 655
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
  object Label1: TLabel
    Left = 6
    Top = 233
    Width = 34
    Height = 14
    Caption = 'Status:'
  end
  object Sb_ContaBanco: TSpeedButton
    Left = 297
    Top = 230
    Width = 22
    Height = 21
    Hint = 'Cadastro de  Status do Cheque'
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
    OnClick = Sb_ContaBancoClick
  end
  object grpCheque: TGroupBox
    Left = 0
    Top = 0
    Width = 655
    Height = 139
    Align = alTop
    Caption = 'Informa'#231#245'es'
    TabOrder = 0
    object Label2: TLabel
      Left = 9
      Top = 20
      Width = 34
      Height = 14
      Alignment = taRightJustify
      Caption = 'Banco:'
    end
    object Label3: TLabel
      Left = 288
      Top = 20
      Width = 43
      Height = 14
      Alignment = taRightJustify
      Caption = 'Ag'#234'ncia:'
    end
    object Label4: TLabel
      Left = 431
      Top = 20
      Width = 76
      Height = 14
      Alignment = taRightJustify
      Caption = 'Conta Corrente:'
    end
    object Label5: TLabel
      Left = 3
      Top = 45
      Width = 40
      Height = 14
      Alignment = taRightJustify
      Caption = 'N'#250'mero:'
    end
    object Label6: TLabel
      Left = 163
      Top = 45
      Width = 28
      Height = 14
      Alignment = taRightJustify
      Caption = 'S'#233'rie:'
    end
    object Label7: TLabel
      Left = 303
      Top = 44
      Width = 28
      Height = 14
      Alignment = taRightJustify
      Caption = 'Valor:'
    end
    object Label8: TLabel
      Left = 2
      Top = 69
      Width = 41
      Height = 14
      Alignment = taRightJustify
      Caption = 'Emissor:'
    end
    object Label10: TLabel
      Left = 495
      Top = 45
      Width = 43
      Height = 14
      Caption = 'Emiss'#227'o:'
    end
    object Label11: TLabel
      Left = 483
      Top = 68
      Width = 57
      Height = 14
      Caption = 'Pr'#233'-Datado:'
    end
    object Label12: TLabel
      Left = 8
      Top = 92
      Width = 35
      Height = 14
      Alignment = taRightJustify
      Caption = 'Cliente:'
    end
    object Label9: TLabel
      Left = 425
      Top = 92
      Width = 50
      Height = 14
      Alignment = taRightJustify
      Caption = 'CPF/CNPJ:'
    end
    object Label13: TLabel
      Left = 0
      Top = 115
      Width = 44
      Height = 14
      Alignment = taRightJustify
      Caption = 'Telefone:'
    end
    object cbBanco: TComboBoxRw
      Left = 46
      Top = 17
      Width = 211
      Height = 22
      TabOrder = 0
      CharCase = ecUpperCase
      LookupSelect = 'BCO_DESCRICAO'
      LookupOrderBy = 'BCO_DESCRICAO'
      LookupTable = 'BANCOS'
      GridAutoSize = False
      LookupSource = cbBanco.InternalSource
      LookupKeyField = 'BCO_CODIGO'
      ShowButton = True
      LookupTableShare = 'TABELAS'
      AutoF8WinTitulo = 'Bancos'
      AutoF8ColumnsTitulo = 'C'#243'digo, Nome'
      Tabela = 'BANCOS'
      CamposCarregar = 'BCO_DESCRICAO'
      CamposRetornar = 'BCO_CODIGO'
      CamposOrdernar = 'BCO_DESCRICAO'
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
    object edtAgencia: TEdit
      Left = 334
      Top = 16
      Width = 91
      Height = 22
      CharCase = ecUpperCase
      MaxLength = 10
      TabOrder = 1
      Text = 'EDTAGENCIA'
    end
    object edtContaCorrente: TEdit
      Left = 512
      Top = 16
      Width = 121
      Height = 22
      CharCase = ecUpperCase
      MaxLength = 15
      TabOrder = 2
      Text = 'EDIT1'
    end
    object edtNumero: TEdit
      Left = 46
      Top = 41
      Width = 115
      Height = 22
      CharCase = ecUpperCase
      MaxLength = 20
      TabOrder = 3
      Text = 'EDIT1'
    end
    object edtSerie: TEdit
      Left = 194
      Top = 41
      Width = 87
      Height = 22
      CharCase = ecUpperCase
      MaxLength = 10
      TabOrder = 4
      Text = 'EDIT1'
    end
    object CurValor: TCurrencyEdit
      Left = 334
      Top = 40
      Width = 91
      Height = 21
      AutoSize = False
      DisplayFormat = '###,###,###,##0.00'
      TabOrder = 5
    end
    object edtEmissor: TEdit
      Left = 46
      Top = 65
      Width = 379
      Height = 22
      CharCase = ecUpperCase
      MaxLength = 100
      TabOrder = 7
      Text = 'EDIT1'
    end
    object RxDataEmissao: TDateEdit
      Left = 546
      Top = 41
      Width = 88
      Height = 22
      ButtonWidth = 20
      NumGlyphs = 2
      YearDigits = dyFour
      TabOrder = 6
    end
    object RxDataPreDatado: TDateEdit
      Left = 546
      Top = 64
      Width = 89
      Height = 22
      ButtonWidth = 20
      NumGlyphs = 2
      YearDigits = dyFour
      TabOrder = 8
    end
    object CbClientes1: TComboBoxRw
      Left = 89
      Top = 89
      Width = 311
      Height = 22
      TabOrder = 10
      OnExit = CbClientes1Exit
      OnChange = CbClientes1Change
      CharCase = ecUpperCase
      LookupSelect = 'CLI_RAZAO'
      LookupOrderBy = 'CLI_RAZAO'
      LookupTable = 'CLI0000'
      GridAutoSize = False
      LookupSource = CbClientes1.InternalSource
      LookupKeyField = 'CLI_CODIGO'
      ShowButton = True
      LookupTableShare = 'CLIENTES'
      AutoF8WinTitulo = 'Clientes'
      AutoF8ColumnsTitulo = 'C'#243'digo, Nome'
      Tabela = 'CLI0000'
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
    object Edt_Lista: TEdit
      Left = 46
      Top = 89
      Width = 40
      Height = 22
      CharCase = ecUpperCase
      MaxLength = 5
      TabOrder = 9
      OnExit = Edt_ListaExit
    end
    object edtCPFCNPJ: TEdit
      Left = 481
      Top = 88
      Width = 153
      Height = 22
      CharCase = ecUpperCase
      MaxLength = 14
      TabOrder = 11
      Text = 'EDTCPFCNPJ'
    end
    object medtTelefone: TMaskEdit
      Left = 47
      Top = 113
      Width = 119
      Height = 22
      CharCase = ecUpperCase
      EditMask = '!\(99\) 0000-0000;0; '
      MaxLength = 14
      TabOrder = 12
      Text = ''
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 139
    Width = 655
    Height = 80
    Align = alTop
    Caption = 'Observa'#231#227'o'
    TabOrder = 1
    object mmoObservacao: TMemo
      Left = 2
      Top = 16
      Width = 651
      Height = 62
      Align = alClient
      Lines.Strings = (
        'mmoObservacao')
      TabOrder = 0
    end
  end
  object Bit_Gravar: TBitBtn
    Left = 446
    Top = 232
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
  object Bit_Cancelar: TBitBtn
    Left = 550
    Top = 232
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
  object cbStatus: TComboBoxRw
    Left = 43
    Top = 230
    Width = 228
    Height = 22
    TabOrder = 2
    CharCase = ecUpperCase
    LookupSelect = 'CHS_DESCRICAO'
    LookupOrderBy = 'CHS_DESCRICAO'
    LookupTable = 'CHEQUE_STATUS'
    GridAutoSize = False
    LookupSource = cbStatus.InternalSource
    LookupKeyField = 'CHS_REGISTRO'
    ShowButton = True
    LookupTableShare = 'TABELAS'
    AutoF8WinTitulo = 'Status'
    AutoF8ColumnsTitulo = 'C'#243'digo, Descri'#231#227'o'
    Tabela = 'CHEQUE_STATUS'
    CamposCarregar = 'CHS_DESCRICAO'
    CamposRetornar = 'CHS_REGISTRO'
    CamposOrdernar = 'CHS_DESCRICAO'
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
