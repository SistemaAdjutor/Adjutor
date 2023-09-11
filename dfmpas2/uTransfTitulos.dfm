inherited frmTransfTitulo: TfrmTransfTitulo
  Caption = 'Selecionar op'#231#245'es transfer'#234'ncia'
  ClientHeight = 141
  ClientWidth = 464
  ExplicitWidth = 480
  ExplicitHeight = 179
  PixelsPerInch = 96
  TextHeight = 13
  object Label4: TLabel [0]
    Left = 6
    Top = 18
    Width = 33
    Height = 13
    Caption = 'Conta:'
  end
  object Label18: TLabel [1]
    Left = 8
    Top = 54
    Width = 50
    Height = 13
    Caption = 'Cobran'#231'a:'
  end
  object Label14: TLabel [2]
    Left = 256
    Top = 56
    Width = 45
    Height = 13
    Caption = 'Tipo Doc:'
  end
  object btnconfirmar: TButton [3]
    Left = 256
    Top = 104
    Width = 75
    Height = 25
    Caption = 'Confirmar'
    TabOrder = 4
    OnClick = btnconfirmarClick
  end
  object Button2: TButton [4]
    Left = 352
    Top = 104
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    ModalResult = 2
    TabOrder = 5
  end
  object CurrcodBanco: TCurrencyEdit [5]
    Left = 46
    Top = 15
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
  object CbxTipoDoc: TComboBox [6]
    Left = 307
    Top = 54
    Width = 127
    Height = 21
    Style = csDropDownList
    TabOrder = 3
    Items.Strings = (
      'DUPLICATA'
      'BOLETO'
      'RECIBO'
      'CHEQUE'
      'DINHEIRO'
      'OUTROS'
      'CREDITO CONTA')
  end
  object CbxCarteira: TComboBox [7]
    Left = 64
    Top = 52
    Width = 183
    Height = 21
    Style = csDropDownList
    CharCase = ecUpperCase
    TabOrder = 2
    Items.Strings = (
      'CARTEIRA'
      'COBRAN'#199'A SIMPLES'
      'COBRAN'#199'A CAUCIONADA'
      'COBRAN'#199'A DESCONTADA'
      'COBRAN'#199'A SEM REGISTRO'
      'COBRAN'#199'A RAPIDA'
      'CUSTODIA DE CHEQUE'
      'CHEQUE DESCONTADO')
  end
  object CbBancos: TComboBoxRw [8]
    Left = 93
    Top = 16
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
  inherited coCalcula: TACBrCalculadora
    Left = 40
    Top = 104
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 32
    Top = 112
  end
  inherited DBConn: TSQLConnection
    Left = 0
    Top = 89
  end
  inherited qAux: TSQLQuery
    Left = 18
    Top = 85
  end
  inherited qAux2: TSQLQuery
    Left = 42
    Top = 84
  end
  inherited qAux3: TSQLQuery
    Left = 18
    Top = 84
  end
end
