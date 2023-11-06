object FrmNotaFiscalServico: TFrmNotaFiscalServico
  Left = 556
  Top = 151
  BorderIcons = [biSystemMenu]
  Caption = 'Emiss'#227'o de Nota Fiscal de Servi'#231'o'
  ClientHeight = 617
  ClientWidth = 799
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 247
    Top = 17
    Width = 51
    Height = 13
    Caption = 'Emiss'#227'o:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label27: TLabel
    Left = 7
    Top = 286
    Width = 36
    Height = 15
    Alignment = taRightJustify
    Caption = 'CNAE:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 342
    Top = 286
    Width = 43
    Height = 15
    Hint = 'Item de servi'#231'o'
    Alignment = taRightJustify
    Caption = 'Servi'#231'o:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
  end
  object Label33: TLabel
    Left = 247
    Top = 48
    Width = 133
    Height = 13
    Caption = 'Natureza da Opera'#231#227'o:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbNatureza: TLabel
    Left = 247
    Top = 94
    Width = 531
    Height = 13
    Caption = 
      'A NATUREZA DA OPERA'#199#195'O FOI ALTERADA DEVIDO '#192' RETEN'#199#195'O FORA DO MU' +
      'NIC'#205'PIO.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object gbDescericao: TGroupBox
    Left = 8
    Top = 307
    Width = 785
    Height = 127
    Caption = 'Descri'#231#227'o do Servi'#231'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    object DBMemo1: TDBMemo
      Left = 2
      Top = 15
      Width = 781
      Height = 110
      Align = alClient
      DataField = 'NFSI_discriminacao'
      DataSource = dsNfse_it
      TabOrder = 0
      OnEnter = DBMemo1Enter
      OnExit = DBMemo1Exit
    end
  end
  object Tomador: TGroupBox
    Left = 8
    Top = 115
    Width = 785
    Height = 164
    Caption = 'Tomador (informa'#231#245'es que v'#227'o na nota)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object Label10: TLabel
      Left = 245
      Top = 25
      Width = 70
      Height = 13
      Caption = 'Raz'#227'o /Nome:'
    end
    object Label11: TLabel
      Left = 16
      Top = 70
      Width = 49
      Height = 13
      Caption = 'Endere'#231'o:'
    end
    object Label12: TLabel
      Left = 626
      Top = 70
      Width = 40
      Height = 13
      Caption = 'Numero:'
    end
    object Label13: TLabel
      Left = 32
      Top = 94
      Width = 32
      Height = 13
      Caption = 'Compl:'
    end
    object Label14: TLabel
      Left = 184
      Top = 94
      Width = 30
      Height = 13
      Caption = 'Bairro:'
    end
    object Label15: TLabel
      Left = 367
      Top = 94
      Width = 24
      Height = 13
      Caption = 'CEP:'
    end
    object Label16: TLabel
      Left = 555
      Top = 94
      Width = 45
      Height = 13
      Caption = 'Telefone:'
    end
    object Label17: TLabel
      Left = 35
      Top = 142
      Width = 28
      Height = 13
      Caption = 'Email:'
    end
    object Label18: TLabel
      Left = 373
      Top = 119
      Width = 17
      Height = 13
      Caption = 'UF:'
    end
    object Label26: TLabel
      Left = 16
      Top = 48
      Width = 93
      Height = 13
      Caption = 'Inscri'#231#227'o municipal:'
    end
    object Label28: TLabel
      Left = 522
      Top = 48
      Width = 89
      Height = 13
      Caption = 'Inscri'#231#227'o estadual:'
    end
    object sbCidade: TSpeedButton
      Left = 439
      Top = 115
      Width = 22
      Height = 21
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
      OnClick = sbCidadeClick
    end
    object Label30: TLabel
      Left = 29
      Top = 119
      Width = 36
      Height = 13
      Caption = 'Cidade:'
    end
    object DBEdit8: TDBEdit
      Left = 113
      Top = 22
      Width = 127
      Height = 21
      DataField = 'NFSE_cnpj_cpf'
      DataSource = dsNfse
      TabOrder = 1
    end
    object DBEdit9: TDBEdit
      Left = 320
      Top = 22
      Width = 428
      Height = 21
      DataField = 'NFSE_razaosocial'
      DataSource = dsNfse
      TabOrder = 2
    end
    object DBEdit10: TDBEdit
      Left = 67
      Top = 67
      Width = 453
      Height = 21
      DataField = 'NFSE_endereco'
      DataSource = dsNfse
      TabOrder = 5
    end
    object DBEdit11: TDBEdit
      Left = 672
      Top = 67
      Width = 76
      Height = 21
      DataField = 'NFSE_numero_end'
      DataSource = dsNfse
      TabOrder = 6
    end
    object DBEdit12: TDBEdit
      Left = 67
      Top = 91
      Width = 110
      Height = 21
      DataField = 'NFSE_complemento'
      DataSource = dsNfse
      TabOrder = 7
    end
    object DBEdit13: TDBEdit
      Left = 219
      Top = 91
      Width = 142
      Height = 21
      DataField = 'NFSE_bairro'
      DataSource = dsNfse
      TabOrder = 8
    end
    object DBEdit14: TDBEdit
      Left = 396
      Top = 91
      Width = 124
      Height = 21
      DataField = 'NFSE_cep'
      DataSource = dsNfse
      TabOrder = 9
    end
    object DBEdit15: TDBEdit
      Left = 606
      Top = 91
      Width = 142
      Height = 21
      DataField = 'NFSE_telefone'
      DataSource = dsNfse
      TabOrder = 10
    end
    object DBEdit16: TDBEdit
      Left = 67
      Top = 139
      Width = 681
      Height = 21
      DataField = 'NFSE_email'
      DataSource = dsNfse
      TabOrder = 13
    end
    object DBEdit17: TDBEdit
      Left = 396
      Top = 116
      Width = 37
      Height = 21
      DataField = 'NFSE_uf'
      DataSource = dsNfse
      TabOrder = 12
    end
    object rdgDoc: TRadioGroup
      Left = 5
      Top = 16
      Width = 108
      Height = 28
      Margins.Left = 1
      Margins.Top = 0
      Margins.Right = 1
      Margins.Bottom = 0
      Columns = 2
      Items.Strings = (
        'CPF'
        'CNPJ')
      TabOrder = 0
      OnClick = rdgDocClick
    end
    object DBEdit24: TDBEdit
      Left = 112
      Top = 45
      Width = 127
      Height = 21
      DataField = 'nfse_insc_municipal'
      DataSource = dsNfse
      TabOrder = 3
    end
    object DBEdit25: TDBEdit
      Left = 621
      Top = 45
      Width = 127
      Height = 21
      DataField = 'nfse_insc'
      DataSource = dsNfse
      TabOrder = 4
    end
    object DbeCli_cidade: TDBEdit
      Left = 68
      Top = 116
      Width = 294
      Height = 21
      TabStop = False
      CharCase = ecUpperCase
      Color = 14145495
      DataField = 'CLI_CIDADE'
      DataSource = dsNfse
      ReadOnly = True
      TabOrder = 11
    end
  end
  object Panel1: TPanel
    Left = 345
    Top = 577
    Width = 448
    Height = 33
    BevelInner = bvLowered
    BevelOuter = bvLowered
    Color = 12681984
    TabOrder = 9
    object Bit_Cancelar: TBitBtn
      Left = 314
      Top = 4
      Width = 100
      Height = 25
      Cursor = crHandPoint
      Hint = 'Cancela registro'
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
    object Bit_Excluir: TBitBtn
      Left = 7
      Top = 4
      Width = 100
      Height = 25
      Cursor = crHandPoint
      Hint = 
        'Estornar somente a nota de servi'#231'o ainda n'#227'o convertida para NFS' +
        'E'
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
      Left = 110
      Top = 4
      Width = 100
      Height = 25
      Cursor = crHandPoint
      Hint = 'Grava registro'
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
    object btnrevisado: TBitBtn
      Left = 212
      Top = 4
      Width = 100
      Height = 25
      Cursor = crHandPoint
      Hint = 
        'Est'#225' op'#231#227'o '#233' para quem faz lotes de RPS pelo contas a receber e ' +
        'quer revisar as RPS'#39's antes de enviar para prefeitura.'#13#10'Marcar c' +
        'omo Revisado para identificar na lista qual RPS j'#225' passou pela r' +
        'evis'#227'o.'
      Caption = '&Revisado'
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
      TabStop = False
      OnClick = btnrevisadoClick
    end
  end
  object chkOpSimples: TDBCheckBox
    Left = 455
    Top = 15
    Width = 161
    Height = 17
    Caption = 'Optante pelo simples nacional'
    DataField = 'NFSE_optantesimplesnacional'
    DataSource = dsNfse
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    ValueChecked = '1'
    ValueUnchecked = '2'
  end
  object dbIncetivadorCultural: TDBCheckBox
    Left = 630
    Top = 15
    Width = 161
    Height = 17
    Caption = 'Incentivador Cultural'
    DataField = 'NFSE_incentivadorcultural'
    DataSource = dsNfse
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    ValueChecked = '1'
    ValueUnchecked = '2'
  end
  object PesqCNAE: TSgDbSearchCombo
    Left = 107
    Top = 284
    Width = 207
    Height = 21
    TabOrder = 5
    CharCase = ecUpperCase
    LookupSelect = ' cnae_codigo, cnae_Descricao'
    LookupOrderBy = 'CNAE_DESCRICAO'
    LookupTable = 'cnae'
    LookupDispl = 'CNAE_DESCRICAO'
    OnSelect = PesqCNAESelect
    GridAutoSize = False
    LookupSource = qCnae
    DataField = 'CNAE_Codigo'
    DataSource = dsNfse
    LookupKeyField = 'CNAE_CODIGO'
    FiltroTabela = 'cnae_ativo = '#39'A'#39
    ShowButton = True
    AutoF8WinTitulo = 'CNAE'
    AutoF8ColumnsTitulo = 'C'#243'digo, CNAE'
    GridLeft = 0
    GridWidth = 0
    GridHeight = 100
    GridTop = 0
    GridShowWhenEnter = False
    SelectWithDoubleClick = False
    LimparCampoAoSair = True
  end
  object EdCnaeCodigo: TDBEdit
    Left = 45
    Top = 284
    Width = 61
    Height = 21
    DataField = 'CNAE_Codigo'
    DataSource = dsNfse
    TabOrder = 4
  end
  object edServicoCodigo: TDBEdit
    Left = 391
    Top = 284
    Width = 61
    Height = 21
    DataField = 'SRV_CODIGO'
    DataSource = dsNfse
    TabOrder = 6
  end
  object PesqServico: TSgDbSearchCombo
    Left = 453
    Top = 284
    Width = 276
    Height = 21
    TabOrder = 7
    CharCase = ecUpperCase
    LookupSelect = 'codigoservico, srv_codigo, srv_descricao'
    LookupOrderBy = 'srv_descricao'
    LookupTable = 'SRV0000'
    LookupDispl = 'SRV_DESCRICAO'
    OnSelect = PesqServicoSelect
    GridAutoSize = False
    LookupSource = qservico
    DataField = 'SRV_CODIGO'
    DataSource = dsNfse
    LookupKeyField = 'srv_codigo'
    ShowButton = True
    AutoF8WinTitulo = 'Item de servi'#231'o'
    AutoF8ColumnsTitulo = 'C'#243'digo, item , Servi'#231'o'
    GridLeft = 0
    GridWidth = 0
    GridHeight = 100
    GridTop = 0
    GridShowWhenEnter = False
    SelectWithDoubleClick = False
    LimparCampoAoSair = True
  end
  object gbValores: TGroupBox
    Left = 8
    Top = 440
    Width = 785
    Height = 134
    TabOrder = 10
    object Label3: TLabel
      Left = 8
      Top = 42
      Width = 79
      Height = 13
      Caption = 'Valor do servi'#231'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 10
      Top = 65
      Width = 77
      Height = 13
      Caption = 'Valor dedu'#231#245'es:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 8
      Top = 89
      Width = 79
      Height = 13
      Caption = 'Base de c'#225'lculo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 188
      Top = 42
      Width = 61
      Height = 13
      Caption = 'Aliquota ISS:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 25
      Top = 112
      Width = 62
      Height = 13
      Caption = 'Valor l'#237'quido:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label19: TLabel
      Left = 613
      Top = 57
      Width = 84
      Height = 13
      Caption = 'Outras reten'#231#245'es:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label25: TLabel
      Left = 591
      Top = 35
      Width = 106
      Height = 13
      Caption = 'Desconto condicional:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label24: TLabel
      Left = 583
      Top = 11
      Width = 114
      Height = 13
      Caption = 'Desconto incondicional:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label23: TLabel
      Left = 404
      Top = 42
      Width = 28
      Height = 13
      Caption = 'INSS:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 235
      Top = 89
      Width = 14
      Height = 13
      Caption = 'IR:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label22: TLabel
      Left = 403
      Top = 65
      Width = 29
      Height = 13
      Caption = 'CSLL:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label21: TLabel
      Left = 388
      Top = 88
      Width = 42
      Height = 13
      Caption = 'COFINS:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label20: TLabel
      Left = 229
      Top = 65
      Width = 20
      Height = 13
      Caption = 'PIS:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label31: TLabel
      Left = 599
      Top = 80
      Width = 98
      Height = 13
      Caption = 'Reten'#231#245'es Federais:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label32: TLabel
      Left = 643
      Top = 103
      Width = 54
      Height = 13
      Caption = 'ISS Retido:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBRadioGroup1: TDBRadioGroup
      Left = 4
      Top = 1
      Width = 310
      Height = 32
      Caption = 'ISS Retido'
      Columns = 2
      DataField = 'NFSI_issretido'
      DataSource = dsNfse_it
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Items.Strings = (
        'Retido na fonte'
        'N'#195'O retido na fonte.')
      ParentFont = False
      TabOrder = 0
      Values.Strings = (
        '1'
        '2')
      OnChange = DBRadioGroup1Change
    end
    object DBEdit2: TDBEdit
      Left = 93
      Top = 39
      Width = 86
      Height = 21
      DataField = 'NFSI_valorservicos'
      DataSource = dsNfse_it
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 93
      Top = 62
      Width = 86
      Height = 21
      DataField = 'NFSI_valordeducoes'
      DataSource = dsNfse_it
      TabOrder = 2
      OnChange = DBEdit3Change
    end
    object DBEdit4: TDBEdit
      Left = 93
      Top = 85
      Width = 86
      Height = 21
      Hint = 'Valor do servi'#231'o - (dedu'#231#245'es + descontos incodicionais)'
      DataField = 'NFSI_basecalculo'
      DataSource = dsNfse_it
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 253
      Top = 39
      Width = 48
      Height = 21
      DataField = 'NFSI_aliquotaiss'
      DataSource = dsNfse_it
      TabOrder = 5
    end
    object DBEdit6: TDBEdit
      Left = 93
      Top = 109
      Width = 86
      Height = 21
      Hint = 
        'Valor servi'#231'os - (PIS +CONFIS+INSS+ IR + CSLL+'#13#10' reten'#231#245'es +ISS*' +
        'caso seja retido+ descontos incodicional e condicional)'
      DataField = 'NFSI_valorliquidonfse'
      DataSource = dsNfse_it
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
    end
    object DBEdit1: TDBEdit
      Left = 699
      Top = 54
      Width = 80
      Height = 21
      DataField = 'NFSI_outrasretencoes'
      DataSource = dsNfse_it
      TabOrder = 19
    end
    object DBEdit7: TDBEdit
      Left = 699
      Top = 32
      Width = 79
      Height = 21
      DataField = 'NFSI_descontocondicionado'
      DataSource = dsNfse_it
      TabOrder = 18
    end
    object DBEdit18: TDBEdit
      Left = 699
      Top = 8
      Width = 79
      Height = 21
      DataField = 'NFSI_descontoincondicionado'
      DataSource = dsNfse_it
      TabOrder = 17
    end
    object EdAliqINSS: TDBEdit
      Left = 432
      Top = 39
      Width = 63
      Height = 21
      DataField = 'NFSI_Aliqinss'
      DataSource = dsNfse_it
      TabOrder = 11
    end
    object DBEdit19: TDBEdit
      Left = 496
      Top = 39
      Width = 79
      Height = 21
      DataField = 'NFSI_valorinss'
      DataSource = dsNfse_it
      Enabled = False
      TabOrder = 12
    end
    object DBEdit20: TDBEdit
      Left = 301
      Top = 86
      Width = 80
      Height = 21
      DataField = 'NFSI_valorir'
      DataSource = dsNfse_it
      Enabled = False
      TabOrder = 10
    end
    object edAliqIR: TDBEdit
      Left = 253
      Top = 86
      Width = 48
      Height = 21
      DataField = 'NFSI_Aliqir'
      DataSource = dsNfse_it
      TabOrder = 9
    end
    object EdAliqpis: TDBEdit
      Left = 253
      Top = 62
      Width = 48
      Height = 21
      DataField = 'NFSI_Aliqpis'
      DataSource = dsNfse_it
      TabOrder = 7
    end
    object DBEdit21: TDBEdit
      Left = 302
      Top = 62
      Width = 79
      Height = 21
      DataField = 'NFSI_valorpis'
      DataSource = dsNfse_it
      Enabled = False
      TabOrder = 8
    end
    object DBEdit22: TDBEdit
      Left = 496
      Top = 85
      Width = 79
      Height = 21
      DataField = 'NFSI_valorcofins'
      DataSource = dsNfse_it
      Enabled = False
      TabOrder = 16
    end
    object DBEdit23: TDBEdit
      Left = 496
      Top = 62
      Width = 79
      Height = 21
      DataField = 'NFSI_valorcsll'
      DataSource = dsNfse_it
      Enabled = False
      TabOrder = 14
    end
    object edAliqcofins: TDBEdit
      Left = 432
      Top = 85
      Width = 62
      Height = 21
      DataField = 'NFSI_Aliqcofins'
      DataSource = dsNfse_it
      TabOrder = 15
    end
    object edAliqCSLL: TDBEdit
      Left = 432
      Top = 62
      Width = 62
      Height = 21
      DataField = 'NFSI_Aliqcsll'
      DataSource = dsNfse_it
      TabOrder = 13
    end
    object DBEdit26: TDBEdit
      Left = 301
      Top = 39
      Width = 80
      Height = 21
      DataField = 'NFSI_valoriss'
      DataSource = dsNfse_it
      Enabled = False
      TabOrder = 6
    end
    object DBEdit27: TDBEdit
      Left = 699
      Top = 77
      Width = 80
      Height = 21
      DataField = 'NFSI_RETENCOESFEDERAIS'
      DataSource = dsNfse_it
      TabOrder = 20
    end
    object DBEdit28: TDBEdit
      Left = 699
      Top = 100
      Width = 80
      Height = 21
      DataField = 'NFSI_valorissretido'
      DataSource = dsNfse_it
      TabOrder = 21
    end
    object bitJustificativaDeducao: TBitBtn
      Left = 182
      Top = 61
      Width = 26
      Height = 25
      Caption = '?'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 22
      OnClick = bitJustificativaDeducaoClick
    end
  end
  object GroupBox1: TGroupBox
    Left = 12
    Top = 6
    Width = 229
    Height = 103
    TabOrder = 11
    object labCodVerif: TLabel
      Left = 8
      Top = 51
      Width = 78
      Height = 13
      Caption = 'Cod Verifica'#231#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBText1: TDBText
      Left = 95
      Top = 51
      Width = 93
      Height = 17
      DataField = 'NFSE_CODVERIFICACAO'
      DataSource = dsNfse
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 8
      Top = 11
      Width = 25
      Height = 13
      Caption = 'RPS:'
    end
    object Label29: TLabel
      Left = 112
      Top = 11
      Width = 27
      Height = 13
      Caption = 'S'#233'rie:'
    end
    object labNFSE: TLabel
      Left = 8
      Top = 31
      Width = 31
      Height = 13
      Caption = 'NFSE:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 45
      Top = 31
      Width = 93
      Height = 17
      DataField = 'NFSE_NUM_DANFSE'
      DataSource = dsNfse
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object labCancel: TLabel
      Left = 8
      Top = 69
      Width = 93
      Height = 13
      Caption = 'Cancelamento : '
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object edCancel: TDBText
      Left = 107
      Top = 69
      Width = 100
      Height = 17
      DataField = 'NFSE_DTCANCELADO'
      DataSource = dsNfse
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBText3: TDBText
      Left = 168
      Top = 31
      Width = 59
      Height = 17
      DataField = 'NFSE_VALORCREDITO'
      DataSource = dsNfse
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object labValorCredito: TLabel
      Left = 96
      Top = 30
      Width = 69
      Height = 13
      Caption = 'Valor Cr'#233'dito : '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object edRPS: TDBEdit
      Left = 36
      Top = 7
      Width = 72
      Height = 21
      DataField = 'RPS_CODIGO'
      DataSource = dsNfse
      TabOrder = 0
    end
    object edSerie: TDBEdit
      Left = 139
      Top = 7
      Width = 76
      Height = 21
      DataField = 'NFSE_serie'
      DataSource = dsNfse
      TabOrder = 1
    end
  end
  object dataEmissao: TJvDBDateEdit
    Left = 297
    Top = 13
    Width = 97
    Height = 21
    DataField = 'NFSE_dataemissao'
    DataSource = dsNfse
    Glyph.Data = {
      76050000424D760500000000000036000000280000001C0000000C0000000100
      2000000000004005000000000000000000000000000000000000FF00FF00FF00
      FF00FF00FF008080800080808000808080008080800080808000808080008080
      800080808000808080008080800080808000FF00FF00FF00FF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FF00FF00FF00FF000000000000000000800000000000
      0000800000008000000000000000800000000000000000000000800000008080
      8000FF00FF008080800080808000808080008080800080808000808080008080
      80008080800080808000808080008080800080808000FFFFFF00FF00FF00FF00
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
      FF00FFFFFF00FFFFFF00FFFFFF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FF00
      FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF0000000000000000000000
      0000FFFFFF00000000000000000000000000C0C0C000FFFFFF00800000008080
      8000FF00FF0080808000FFFFFF00808080008080800080808000FF00FF008080
      80008080800080808000FF00FF00FFFFFF0080808000FFFFFF00FF00FF00FF00
      FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00C0C0C000FFFFFF00C0C0
      C00000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
      FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFF
      FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00800000008080
      8000FF00FF0080808000FFFFFF00FF00FF0080808000FFFFFF00FF00FF00FF00
      FF00FFFFFF00FFFFFF0080808000FF00FF0080808000FFFFFF00FF00FF00FF00
      FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
      0000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
      FF0080808000FFFFFF00FF00FF00808080008080800080808000FF00FF00FF00
      FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF000000000000000000FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
      8000FF00FF0080808000FFFFFF008080800080808000FFFFFF00FF00FF008080
      8000FFFFFF00FFFFFF00FFFFFF00FFFFFF0080808000FFFFFF00FF00FF00FF00
      FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
      000000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
      FF0080808000FF00FF00FF00FF0080808000808080008080800080808000FF00
      FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
      8000FF00FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFFFF00FF00FF00FF00
      FF00FFFFFF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0080808000FFFFFF00FF00FF00FF00FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF00FF00FF00
      FF00FF00FF008080800080808000808080008080800080808000808080008080
      80008080800080808000808080008080800080808000FF00FF00}
    ImageKind = ikCustom
    NumGlyphs = 2
    PopupColor = clBtnFace
    ShowNullDate = False
    TabOrder = 0
  end
  object cbNatOper: TDBLookupComboBox
    Left = 247
    Top = 67
    Width = 509
    Height = 21
    DataField = 'NFSe_naturezaoperacao'
    DataSource = dsNfse
    KeyField = 'NaturezaOperacao'
    ListField = 'descri'
    ListSource = dsNatOper
    TabOrder = 12
    OnClick = cbNatOperClick
  end
  object qNfse: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmBaseDB.DBConn
    Left = 16
    Top = 384
  end
  object dspCdsNfse: TDataSetProvider
    DataSet = qNfse
    Left = 75
    Top = 382
  end
  object CdsNfse: TClientDataSet
    Aggregates = <>
    AutoCalcFields = False
    Params = <>
    ProviderName = 'dspCdsNfse'
    AfterOpen = CdsNfseAfterOpen
    Left = 136
    Top = 384
    object CdsNfseNFSE_CODIGO: TIntegerField
      FieldName = 'NFSE_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CdsNfseFAT_CODIGO: TStringField
      FieldName = 'FAT_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object CdsNfseEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object CdsNfsecli_codigo: TStringField
      FieldName = 'cli_codigo'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object CdsNfsenum_lote: TIntegerField
      FieldName = 'num_lote'
      ProviderFlags = [pfInUpdate]
    end
    object CdsNfseNFSE_serie: TStringField
      FieldName = 'NFSE_serie'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object CdsNfseNFSE_cnpj_cpf: TStringField
      FieldName = 'NFSE_cnpj_cpf'
      ProviderFlags = [pfInUpdate]
      OnChange = CdsNfseNFSE_cnpj_cpfChange
      Size = 14
    end
    object CdsNfseNFSE_razaosocial: TStringField
      FieldName = 'NFSE_razaosocial'
      ProviderFlags = [pfInUpdate]
      Size = 115
    end
    object CdsNfseNFSE_endereco: TStringField
      FieldName = 'NFSE_endereco'
      ProviderFlags = [pfInUpdate]
      Size = 125
    end
    object CdsNfseNFSE_numero_end: TStringField
      FieldName = 'NFSE_numero_end'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object CdsNfseNFSE_complemento: TStringField
      FieldName = 'NFSE_complemento'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object CdsNfseNFSE_bairro: TStringField
      FieldName = 'NFSE_bairro'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object CdsNfseNFSE_cep: TStringField
      FieldName = 'NFSE_cep'
      Size = 8
    end
    object CdsNfseNFSE_codigomunicipio: TIntegerField
      FieldName = 'NFSE_codigomunicipio'
      ProviderFlags = [pfInUpdate]
    end
    object CdsNfseNFSE_uf: TStringField
      FieldName = 'NFSE_uf'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object CdsNfseNFSE_telefone: TStringField
      FieldName = 'NFSE_telefone'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object CdsNfseNFSE_email: TStringField
      FieldName = 'NFSE_email'
      ProviderFlags = [pfInUpdate]
      OnChange = CdsNfseNFSE_emailChange
      Size = 150
    end
    object CdsNfseNFSe_naturezaoperacao: TIntegerField
      FieldName = 'NFSe_naturezaoperacao'
      ProviderFlags = [pfInUpdate]
    end
    object CdsNfseNFSE_incentivadorcultural: TIntegerField
      FieldName = 'NFSE_incentivadorcultural'
      ProviderFlags = [pfInUpdate]
    end
    object CdsNfseNFSE_optantesimplesnacional: TIntegerField
      FieldName = 'NFSE_optantesimplesnacional'
      ProviderFlags = [pfInUpdate]
    end
    object CdsNfseCNAE_Codigo: TStringField
      FieldName = 'CNAE_Codigo'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object CdsNfseSRV_CODIGO: TStringField
      FieldName = 'SRV_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object CdsNfsenfse_insc: TStringField
      FieldName = 'nfse_insc'
      Size = 14
    end
    object CdsNfsenfse_insc_municipal: TStringField
      FieldName = 'nfse_insc_municipal'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object CdsNfseCLI_CIDADE: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'CLI_CIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object CdsNfseNFSE_NUM_DANFSE: TIntegerField
      FieldName = 'NFSE_NUM_DANFSE'
      ProviderFlags = []
    end
    object CdsNfseNFSE_VALORCREDITO: TFMTBCDField
      FieldName = 'NFSE_VALORCREDITO'
      ProviderFlags = []
      Precision = 5
      Size = 18
    end
    object CdsNfseNFSE_CODVERIFICACAO: TStringField
      FieldName = 'NFSE_CODVERIFICACAO'
      ProviderFlags = []
      Size = 8
    end
    object CdsNfseNFSE_DTCANCELADO: TSQLTimeStampField
      FieldName = 'NFSE_DTCANCELADO'
      ProviderFlags = []
      DisplayFormat = 'dd/mm/yyyy hh:nn'
    end
    object CdsNfseRPS_CODIGO: TIntegerField
      FieldName = 'RPS_CODIGO'
    end
    object CdsNfseNFS_REVISADO: TStringField
      FieldName = 'NFS_REVISADO'
      Size = 1
    end
    object CdsNfseUSU_CODIGO: TIntegerField
      FieldName = 'USU_CODIGO'
    end
    object CdsNfseNFSE_dataemissao: TSQLTimeStampField
      FieldName = 'NFSE_dataemissao'
    end
  end
  object dsNfse: TDataSource
    DataSet = CdsNfse
    Left = 192
    Top = 384
  end
  object qNfse_it: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmBaseDB.DBConn
    Left = 16
    Top = 328
  end
  object dspNfse_it: TDataSetProvider
    DataSet = qNfse_it
    Left = 75
    Top = 326
  end
  object cdsNfse_it: TClientDataSet
    Aggregates = <>
    AutoCalcFields = False
    Params = <>
    ProviderName = 'dspNfse_it'
    Left = 136
    Top = 328
    object cdsNfse_itNFSI_CODIGO: TIntegerField
      FieldName = 'NFSI_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsNfse_itNFSE_CODIGO: TIntegerField
      FieldName = 'NFSE_CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsNfse_itValorServicos: TFMTBCDField
      FieldName = 'NFSI_valorservicos'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsNfse_itNFSI_AliqChange
      Precision = 5
      Size = 18
    end
    object cdsNfse_itValorDeducoes: TFMTBCDField
      FieldName = 'NFSI_valordeducoes'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsNfse_itNFSI_AliqChange
      Precision = 5
      Size = 18
    end
    object cdsNfse_itValorPIS: TFMTBCDField
      FieldName = 'NFSI_valorpis'
      ProviderFlags = [pfInUpdate]
      Precision = 5
      Size = 18
    end
    object cdsNfse_itValorCofins: TFMTBCDField
      FieldName = 'NFSI_valorcofins'
      ProviderFlags = [pfInUpdate]
      Precision = 5
      Size = 18
    end
    object cdsNfse_itValorINSS: TFMTBCDField
      FieldName = 'NFSI_valorinss'
      ProviderFlags = [pfInUpdate]
      Precision = 5
      Size = 18
    end
    object cdsNfse_itNFSI_valorir: TFMTBCDField
      FieldName = 'NFSI_valorir'
      ProviderFlags = [pfInUpdate]
      Precision = 5
      Size = 18
    end
    object cdsNfse_itValorCSLL: TFMTBCDField
      FieldName = 'NFSI_valorcsll'
      ProviderFlags = [pfInUpdate]
      Precision = 5
      Size = 18
    end
    object cdsNfse_itISSRetido: TIntegerField
      FieldName = 'NFSI_issretido'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsNfse_itISSRetidoChange
      OnValidate = cdsNfse_itISSRetidoValidate
    end
    object cdsNfse_itValorISS: TFMTBCDField
      FieldName = 'NFSI_valoriss'
      ProviderFlags = [pfInUpdate]
      Precision = 5
      Size = 18
    end
    object cdsNfse_itValorISSRetido: TFMTBCDField
      FieldName = 'NFSI_valorissretido'
      ProviderFlags = [pfInUpdate]
      Precision = 5
      Size = 18
    end
    object cdsNfse_itOutrasRetencoes: TFMTBCDField
      FieldName = 'NFSI_outrasretencoes'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsNfse_itNFSI_AliqChange
      Precision = 5
      Size = 18
    end
    object cdsNfse_itBaseCalculo: TFMTBCDField
      FieldName = 'NFSI_basecalculo'
      ProviderFlags = [pfInUpdate]
      Precision = 5
      Size = 18
    end
    object cdsNfse_itAliqISS: TFMTBCDField
      FieldName = 'NFSI_aliquotaiss'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsNfse_itNFSI_AliqChange
      DisplayFormat = '##0.00%'
      Precision = 5
      Size = 18
    end
    object cdsNfse_itValorLiquido: TFMTBCDField
      FieldName = 'NFSI_valorliquidonfse'
      ProviderFlags = [pfInUpdate]
      Precision = 5
      Size = 18
    end
    object cdsNfse_itDescontoIncodicional: TFMTBCDField
      FieldName = 'NFSI_descontoincondicionado'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsNfse_itNFSI_AliqChange
      Precision = 5
      Size = 18
    end
    object cdsNfse_itDescontoCondicional: TFMTBCDField
      FieldName = 'NFSI_descontocondicionado'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsNfse_itNFSI_AliqChange
      Precision = 5
      Size = 18
    end
    object cdsNfse_itdiscriminacao: TBlobField
      FieldName = 'NFSI_discriminacao'
      ProviderFlags = [pfInUpdate]
      Size = 4000
    end
    object cdsNfse_itNFSI_Aliqpis: TFMTBCDField
      FieldName = 'NFSI_Aliqpis'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsNfse_itNFSI_AliqChange
      DisplayFormat = '##0.00%'
      Precision = 5
      Size = 15
    end
    object cdsNfse_itNFSI_Aliqir: TFMTBCDField
      FieldName = 'NFSI_Aliqir'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsNfse_itNFSI_AliqChange
      DisplayFormat = '##0.00%'
      Precision = 5
      Size = 15
    end
    object cdsNfse_itNFSI_Aliqcofins: TFMTBCDField
      FieldName = 'NFSI_Aliqcofins'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsNfse_itNFSI_AliqChange
      DisplayFormat = '##0.00%'
      Precision = 5
      Size = 15
    end
    object cdsNfse_itNFSI_Aliqinss: TFMTBCDField
      FieldName = 'NFSI_Aliqinss'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsNfse_itNFSI_AliqChange
      DisplayFormat = '##0.00%'
      Precision = 5
      Size = 15
    end
    object cdsNfse_itNFSI_Aliqcsll: TFMTBCDField
      FieldName = 'NFSI_Aliqcsll'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsNfse_itNFSI_AliqChange
      DisplayFormat = '##0.00%'
      Precision = 5
      Size = 15
    end
    object cdsNfse_itNFSI_RETENCOESFEDERAIS: TFMTBCDField
      FieldName = 'NFSI_RETENCOESFEDERAIS'
      Precision = 15
    end
    object cdsNfse_itNFSI_JUSTIFICATIVA_DEDUCAO: TStringField
      FieldName = 'NFSI_JUSTIFICATIVA_DEDUCAO'
      Size = 255
    end
  end
  object dsNfse_it: TDataSource
    DataSet = cdsNfse_it
    Left = 192
    Top = 328
  end
  object ACBrValidador1: TACBrValidador
    TipoDocto = docEmail
    IgnorarChar = './-'
    PermiteVazio = True
    Left = 672
    Top = 129
  end
  object qCnae: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select cnae_registro, cnae_codigo, cnae_Descricao'
      'from cnae'
      '')
    SQLConnection = frmBaseDB.DBConn
    Left = 343
    Top = 388
  end
  object qservico: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT srv_codigo, srv_descricao'
      'FROM SRV0000'
      ''
      '')
    SQLConnection = frmBaseDB.DBConn
    Left = 343
    Top = 332
  end
  object cdsNatOper: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 688
    Top = 32
    object cdsNatOperNaturezaOperacao: TIntegerField
      FieldName = 'NaturezaOperacao'
    end
    object cdsNatOperdescri: TStringField
      FieldName = 'descri'
      Size = 100
    end
  end
  object dsNatOper: TDataSource
    DataSet = cdsNatOper
    Left = 624
    Top = 32
  end
  object ACBrNFSe1: TACBrNFSe
    Configuracoes.Geral.SSLLib = libCapicomDelphiSoap
    Configuracoes.Geral.SSLCryptLib = cryCapicom
    Configuracoes.Geral.SSLHttpLib = httpIndy
    Configuracoes.Geral.SSLXmlSignLib = xsMsXmlCapicom
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Geral.ValidarDigest = False
    Configuracoes.Geral.CodigoMunicipio = 0
    Configuracoes.Geral.ConsultaLoteAposEnvio = True
    Configuracoes.Geral.Emitente.DadosSenhaParams = <>
    Configuracoes.Geral.Resposta = 0
    Configuracoes.Arquivos.OrdenacaoPath = <>
    Configuracoes.Arquivos.SepararPorMes = True
    Configuracoes.Arquivos.TabServicosExt = True
    Configuracoes.WebServices.UF = 'PR'
    Configuracoes.WebServices.AguardarConsultaRet = 3000
    Configuracoes.WebServices.AjustaAguardaConsultaRet = True
    Configuracoes.WebServices.TimeOut = 10000
    Configuracoes.WebServices.QuebradeLinha = '|'
    Configuracoes.Certificados.Senha = '123456'
    Configuracoes.Certificados.VerificarValidade = False
    Left = 744
    Top = 128
  end
end
