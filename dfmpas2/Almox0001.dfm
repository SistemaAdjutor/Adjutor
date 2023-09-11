object FormCadAlmox: TFormCadAlmox
  Left = 165
  Top = 136
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Almoxarifado'
  ClientHeight = 345
  ClientWidth = 614
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnDestroy = FormDestroy
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 27
    Top = 14
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
    Left = 15
    Top = 57
    Width = 109
    Height = 13
    Caption = 'Nome do Almoxarifado:'
  end
  object Label4: TLabel
    Left = 5
    Top = 83
    Width = 120
    Height = 13
    Caption = 'Descri'#231#227'o complementar:'
  end
  object Panel3: TPanel
    Left = 0
    Top = 301
    Width = 100
    Height = 33
    BevelInner = bvLowered
    BevelOuter = bvLowered
    Caption = 'Panel3'
    Color = 10841658
    TabOrder = 0
    object Bit_Lista: TBitBtn
      Left = 5
      Top = 4
      Width = 90
      Height = 25
      Cursor = crHandPoint
      Caption = '&Consulta'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Glyph.Data = {
        CA010000424DCA01000000000000760000002800000027000000110000000100
        04000000000054010000CE0E0000D80E00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888888888888888888888888880887777777777777777888888888888888888
        8880800000000000000007888888888888888888888080888888888888880788
        8888888888888888888080FF8FF8FF8FF8FF0788888888888888888888808088
        88888888888807888888888888888888888080FF8FF8FF8FF8FF078888888888
        888888888880808888888888888807888888888888888888888080FF8FF8FF8F
        F8FF078888888888888888888880808888888888888807888888888888888888
        888080FF8FF8FF8FF8FF07888888888888888888888080000000000000000788
        8888888888888888888080FF7FF7FF7FF7FF0788888888888888888888808000
        0000000000000788888888888888888888808080CCCCCCCCCCCC078888888888
        8888888888808000000000000000088888888888888888888880888888888888
        8888888888888888888888888880}
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 0
      TabStop = False
      OnClick = Bit_ListaClick
    end
  end
  object Panel1: TPanel
    Left = 230
    Top = 301
    Width = 373
    Height = 33
    BevelInner = bvLowered
    BevelOuter = bvLowered
    Color = 10841658
    TabOrder = 1
    object Bit_Cancelar: TBitBtn
      Left = 278
      Top = 4
      Width = 90
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
      TabOrder = 2
      TabStop = False
      OnClick = Bit_CancelarClick
    end
    object Bit_Sair: TBitBtn
      Left = 278
      Top = 4
      Width = 90
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
      TabOrder = 3
      TabStop = False
      OnClick = Bit_SairClick
    end
    object Bit_Excluir: TBitBtn
      Left = 96
      Top = 4
      Width = 90
      Height = 25
      Cursor = crHandPoint
      Hint = '|Exclui registro atual..'
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
      TabOrder = 0
      TabStop = False
      OnClick = Bit_ExcluirClick
    end
    object Bit_Gravar: TBitBtn
      Left = 187
      Top = 4
      Width = 90
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
      TabOrder = 1
      TabStop = False
      OnClick = Bit_GravarClick
    end
    object Bit_novo: TBitBtn
      Left = 5
      Top = 4
      Width = 90
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
      TabOrder = 4
      TabStop = False
      OnClick = Bit_novoClick
    end
  end
  object EdtAmox_codigo: TEdit
    Left = 65
    Top = 10
    Width = 42
    Height = 21
    MaxLength = 4
    TabOrder = 2
    OnClick = EdtAmox_codigoEnter
    OnEnter = EdtAmox_codigoEnter
    OnExit = EdtAmox_codigoExit
    OnKeyPress = EdtAmox_codigoKeyPress
  end
  object DBNavigator1: TDBNavigator
    Left = 453
    Top = 7
    Width = 132
    Height = 25
    DataSource = DmProducao.DsAlmox
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    TabOrder = 4
    OnClick = DBNavigator1Click
  end
  object Panel2: TPanel
    Left = 6
    Top = 40
    Width = 593
    Height = 4
    Color = clHighlight
    TabOrder = 5
  end
  object DbeAmx_Descri: TDBEdit
    Left = 125
    Top = 54
    Width = 480
    Height = 21
    CharCase = ecUpperCase
    DataField = 'AMX_DESCRI'
    DataSource = DmProducao.DsAlmox
    TabOrder = 6
  end
  object DbeAmx_Tipo: TDBEdit
    Left = 126
    Top = 79
    Width = 480
    Height = 21
    CharCase = ecUpperCase
    DataField = 'AMX_TIPO'
    DataSource = DmProducao.DsAlmox
    TabOrder = 7
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 112
    Width = 597
    Height = 182
    Caption = 'Tipo do Almoxarifado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    object DBCheckFisico: TDBCheckBox
      Left = 20
      Top = 28
      Width = 145
      Height = 17
      Caption = 'Amoxarifado Fisico'
      DataField = 'AMX_FISICO'
      DataSource = DmProducao.DsAlmox
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object DBCheckTerceiros: TDBCheckBox
      Left = 20
      Top = 56
      Width = 257
      Height = 17
      Hint = ' de propriedade de terceiros em posse da empresa'
      Caption = 'Almoxarifado de Terceiros em sua posse'
      DataField = 'AMX_TERCEIROS'
      DataSource = DmProducao.DsAlmox
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object DBCheckForaTerceiros: TDBCheckBox
      Left = 20
      Top = 88
      Width = 233
      Height = 17
      Hint = 'de propriedade da empresa em posse de terceiros'
      Caption = 'Amoxarifado Seu em posse de Terceiros'
      DataField = 'AMX_FORATERCEIROS'
      DataSource = DmProducao.DsAlmox
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object DBCheckCirculante: TDBCheckBox
      Left = 20
      Top = 120
      Width = 217
      Height = 17
      Caption = 'Almoxarifado Circulante'
      DataField = 'AMX_CIRCULANTE'
      DataSource = DmProducao.DsAlmox
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object DBCheckVirtual: TDBCheckBox
      Left = 20
      Top = 152
      Width = 213
      Height = 17
      Caption = 'Almoxarifado Virtual (n'#227'o ativar)'
      DataField = 'AMX_VIRTUAL'
      DataSource = DmProducao.DsAlmox
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      ValueChecked = 'S'
      ValueUnchecked = 'N'
      Visible = False
    end
    object GroupBox2: TGroupBox
      Left = 251
      Top = 9
      Width = 326
      Height = 41
      Caption = 'CNPJ'
      TabOrder = 5
      object DBeCGC: TDBEdit
        Left = 3
        Top = 15
        Width = 310
        Height = 21
        CharCase = ecUpperCase
        DataField = 'AMX_CNPJ_PART'
        DataSource = DmProducao.DsAlmox
        TabOrder = 0
        OnExit = DBeCGCExit
      end
    end
    object gbInscricaoEstadual: TGroupBox
      Left = 251
      Top = 56
      Width = 326
      Height = 105
      Caption = 'Inscri'#231#227'o Estadual'
      TabOrder = 6
      object Label3: TLabel
        Left = 70
        Top = 73
        Width = 44
        Height = 13
        Caption = 'Validade:'
      end
      object Label5: TLabel
        Left = 20
        Top = 47
        Width = 94
        Height = 13
        Caption = 'N'#186' Ato Declarat'#243'rio:'
      end
      object dblcInscricaoEstadual: TDBLookupComboBox
        Left = 3
        Top = 16
        Width = 310
        Height = 21
        DataField = 'EMI_IE'
        DataSource = DmProducao.DsAlmox
        KeyField = 'EMI_CODIGO'
        ListField = 'EMI_DESCRICAO'
        ListSource = dsInscricaoEstadual
        TabOrder = 0
      end
      object dtAmxValidadeAtoDeclaratorio: TJvDateEdit
        Left = 120
        Top = 70
        Width = 113
        Height = 21
        Hint = 'Validade do Ato Declarat'#243'rio'
        DateFormat = 'YYYY'
        ParentShowHint = False
        ShowHint = True
        ShowNullDate = False
        YearDigits = dyFour
        TabOrder = 2
        OnButtonClick = dtAmxValidadeAtoDeclaratorioButtonClick
        OnKeyPress = dtAmxValidadeAtoDeclaratorioKeyPress
      end
      object dbAmxNumAtoDeclaratorio: TDBEdit
        Left = 120
        Top = 43
        Width = 193
        Height = 21
        Hint = 'N'#250'mero do Ato Declart'#243'rio'
        CharCase = ecUpperCase
        DataField = 'AMX_NUM_ATO_DECLARATORIO'
        DataSource = DmProducao.DsAlmox
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnExit = DBeCGCExit
      end
    end
  end
  object DBCheckBox1: TDBCheckBox
    Left = 117
    Top = 11
    Width = 97
    Height = 17
    Caption = 'Ativo'
    DataField = 'AMX_ATIVO'
    DataSource = DmProducao.DsAlmox
    TabOrder = 3
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object ACBrValidador1: TACBrValidador
    TipoDocto = docCNPJ
    IgnorarChar = './-'
    Left = 232
    Top = 232
  end
  object dsInscricaoEstadual: TDataSource
    DataSet = cdsInscricaoEstadual
    Left = 487
    Top = 61
  end
  object cdsInscricaoEstadual: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspInscricaoEstadual'
    Left = 407
    Top = 61
  end
  object dspInscricaoEstadual: TDataSetProvider
    DataSet = qInscricaoEstadual
    Left = 316
    Top = 61
  end
  object qInscricaoEstadual: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from EMP_MULTIPLAS_IE')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 224
    Top = 61
  end
end
