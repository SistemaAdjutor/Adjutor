object FormRepres: TFormRepres
  Left = 174
  Top = 126
  ActiveControl = EdtRep_codigo
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Vendedores'
  ClientHeight = 530
  ClientWidth = 587
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = True
  Position = poDesktopCenter
  Visible = True
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Label2: TLabel
    Left = 187
    Top = 7
    Width = 33
    Height = 14
    Caption = 'Grupo:'
  end
  object Label4: TLabel
    Left = 9
    Top = 255
    Width = 97
    Height = 14
    Caption = 'Supervisionado por:'
  end
  object Label1: TLabel
    Left = 67
    Top = 7
    Width = 36
    Height = 14
    Caption = 'C'#243'digo:'
  end
  object Label13: TLabel
    Left = 13
    Top = 440
    Width = 92
    Height = 14
    Caption = 'Observa'#231#227'o/Setor:'
  end
  object Label17: TLabel
    Left = 185
    Top = 160
    Width = 36
    Height = 14
    Caption = 'Regi'#227'o:'
  end
  object Label5: TLabel
    Left = 50
    Top = 47
    Width = 53
    Height = 14
    Caption = 'Vendedor :'
  end
  object Label6: TLabel
    Left = 13
    Top = 69
    Width = 90
    Height = 14
    Caption = 'Nome da Empresa:'
  end
  object Label7: TLabel
    Left = 54
    Top = 114
    Width = 49
    Height = 14
    Caption = 'Endere'#231'o:'
  end
  object Label3: TLabel
    Left = 67
    Top = 137
    Width = 36
    Height = 14
    Caption = 'Cidade:'
  end
  object Label8: TLabel
    Left = 390
    Top = 139
    Width = 16
    Height = 14
    Caption = 'UF:'
  end
  object Label9: TLabel
    Left = 81
    Top = 160
    Width = 22
    Height = 14
    Caption = 'CEP:'
  end
  object Label10: TLabel
    Left = 76
    Top = 183
    Width = 27
    Height = 14
    Caption = 'Fone:'
  end
  object Label11: TLabel
    Left = 319
    Top = 183
    Width = 24
    Height = 14
    Caption = 'Fax :'
  end
  object Label12: TLabel
    Left = 73
    Top = 206
    Width = 30
    Height = 14
    Caption = 'Email :'
  end
  object Label14: TLabel
    Left = 2
    Top = 229
    Width = 100
    Height = 14
    Caption = 'N'#186'. de Dependentes:'
  end
  object Label15: TLabel
    Left = 286
    Top = 229
    Width = 59
    Height = 14
    Caption = 'Nascimento:'
  end
  object TLabel
    Left = 53
    Top = 303
    Width = 49
    Height = 14
    Caption = 'Meta m'#234's:'
  end
  object Label16: TLabel
    Left = 48
    Top = 92
    Width = 50
    Height = 14
    Caption = 'CNPJ\CPF:'
  end
  object Label18: TLabel
    Left = 292
    Top = 91
    Width = 26
    Height = 14
    Caption = 'INSC:'
  end
  object Label19: TLabel
    Left = 200
    Top = 183
    Width = 21
    Height = 14
    Caption = 'Cel :'
  end
  object Label24: TLabel
    Left = 45
    Top = 328
    Width = 59
    Height = 14
    Caption = 'Dados para '
  end
  object Label25: TLabel
    Left = 13
    Top = 343
    Width = 91
    Height = 14
    Caption = 'dep'#243'sito em conta:'
  end
  object Label26: TLabel
    Left = 27
    Top = 278
    Width = 78
    Height = 14
    Caption = 'Gerenciado por:'
  end
  object Label27: TLabel
    Left = 262
    Top = 302
    Width = 50
    Height = 14
    Caption = 'Comiss'#227'o:'
  end
  object Label28: TLabel
    Left = 281
    Top = 7
    Width = 39
    Height = 14
    Caption = 'Mercos:'
  end
  object DbeRep_grupo: TDBEdit
    Left = 221
    Top = 3
    Width = 30
    Height = 22
    CharCase = ecUpperCase
    DataField = 'REP_GRUPO'
    DataSource = DataCadastros.DsRepresentante
    TabOrder = 1
  end
  object EdtRep_codigo: TEdit
    Left = 105
    Top = 3
    Width = 49
    Height = 22
    MaxLength = 3
    TabOrder = 0
    OnClick = EdtRep_codigoEnter
    OnEnter = EdtRep_codigoEnter
    OnExit = EdtRep_codigoExit
    OnKeyPress = EdtRep_codigoKeyPress
  end
  object TPanel
    Left = 190
    Top = 491
    Width = 391
    Height = 33
    BevelInner = bvLowered
    BevelOuter = bvLowered
    Color = 12681984
    TabOrder = 29
    object Bit_Cancelar: TBitBtn
      Left = 290
      Top = 4
      Width = 95
      Height = 25
      Cursor = crHandPoint
      Hint = '|Cancela registro atual...'
      Caption = '&Cancelar'
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000010000000000000000000
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
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = Bit_CancelarClick
    end
    object Bit_Sair: TBitBtn
      Left = 290
      Top = 4
      Width = 95
      Height = 25
      Cursor = crHandPoint
      Caption = '&Sair'
      Glyph.Data = {
        CA010000424DCA01000000000000760000002800000026000000110000000100
        0400000000005401000000000000000000001000000010000000000000000000
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
      TabOrder = 4
      TabStop = False
      OnClick = Bit_SairClick
    end
    object Bit_Gravar: TBitBtn
      Left = 195
      Top = 4
      Width = 95
      Height = 25
      Cursor = crHandPoint
      Hint = '|Grava registro...'
      Caption = '&Gravar'
      Enabled = False
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000010000000000000000000
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
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      TabStop = False
      OnClick = Bit_GravarClick
    end
    object Bit_Excluir: TBitBtn
      Left = 100
      Top = 4
      Width = 95
      Height = 25
      Cursor = crHandPoint
      Hint = '|Exclui registro atual..'
      Caption = '&Excluir'
      Glyph.Data = {
        E6000000424DE60000000000000076000000280000000E0000000E0000000100
        0400000000007000000000000000000000001000000010000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3300333333333333330033333333333333003333333333333300333333333333
        3300333333333333330033000000000033003300000000003300330000000000
        3300333333333333330033333333333333003333333333333300333333333333
        33003333333333333300}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      TabStop = False
      OnClick = Bit_ExcluirClick
    end
    object Bit_novo: TBitBtn
      Left = 5
      Top = 4
      Width = 95
      Height = 25
      Cursor = crHandPoint
      Caption = '&Novo'
      Glyph.Data = {
        E6000000424DE60000000000000076000000280000000E0000000E0000000100
        0400000000007000000000000000000000001000000010000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3300333333333333330033333333333333003333300033333300333330003333
        3300333330003333330033000000000333003300000000033300330000000003
        3300333330003333330033333000333333003333300033333300333333333333
        33003333333333333300}
      TabOrder = 0
      TabStop = False
      OnClick = Bit_novoClick
    end
  end
  object DBNavigator1: TDBNavigator
    Left = 453
    Top = 5
    Width = 120
    Height = 25
    DataSource = DataCadastros.DsRepresentante
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    ConfirmDelete = False
    TabOrder = 30
    OnClick = DBNavigator1Click
  end
  object Panel2: TPanel
    Left = 5
    Top = 35
    Width = 575
    Height = 4
    BevelInner = bvRaised
    BevelOuter = bvNone
    Color = 12681984
    TabOrder = 31
  end
  object DbeRep_nome: TDBEdit
    Left = 105
    Top = 42
    Width = 330
    Height = 22
    CharCase = ecUpperCase
    DataField = 'REP_NOME'
    DataSource = DataCadastros.DsRepresentante
    TabOrder = 2
  end
  object DbeRep_razao: TDBEdit
    Left = 105
    Top = 65
    Width = 330
    Height = 22
    CharCase = ecUpperCase
    DataField = 'REP_RAZAO'
    DataSource = DataCadastros.DsRepresentante
    TabOrder = 3
  end
  object DbeRep_email: TDBEdit
    Left = 105
    Top = 203
    Width = 330
    Height = 22
    CharCase = ecLowerCase
    DataField = 'REP_EMAIL'
    DataSource = DataCadastros.DsRepresentante
    TabOrder = 15
  end
  object DbeRep_Cidade: TDBEdit
    Left = 105
    Top = 134
    Width = 250
    Height = 22
    CharCase = ecUpperCase
    DataField = 'REP_CIDADE'
    DataSource = DataCadastros.DsRepresentante
    TabOrder = 7
  end
  object DbeRep_uf: TDBEdit
    Left = 410
    Top = 134
    Width = 25
    Height = 22
    CharCase = ecUpperCase
    DataField = 'REP_UF'
    DataSource = DataCadastros.DsRepresentante
    TabOrder = 8
  end
  object DbeRep_cep: TDBEdit
    Left = 105
    Top = 157
    Width = 72
    Height = 22
    CharCase = ecUpperCase
    DataField = 'REP_CEP'
    DataSource = DataCadastros.DsRepresentante
    MaxLength = 9
    TabOrder = 9
  end
  object DbeRep_fone: TDBEdit
    Left = 105
    Top = 180
    Width = 87
    Height = 22
    CharCase = ecUpperCase
    DataField = 'REP_FONE'
    DataSource = DataCadastros.DsRepresentante
    MaxLength = 14
    TabOrder = 12
  end
  object DbeRep_fax: TDBEdit
    Left = 346
    Top = 180
    Width = 89
    Height = 22
    CharCase = ecUpperCase
    DataField = 'REP_FAX'
    DataSource = DataCadastros.DsRepresentante
    MaxLength = 14
    TabOrder = 14
  end
  object DbeRep_endere: TDBEdit
    Left = 105
    Top = 111
    Width = 330
    Height = 22
    CharCase = ecUpperCase
    DataField = 'REP_ENDERE'
    DataSource = DataCadastros.DsRepresentante
    TabOrder = 6
  end
  object DBeRep_NDepend: TDBEdit
    Left = 105
    Top = 226
    Width = 30
    Height = 22
    CharCase = ecUpperCase
    DataField = 'REP_NDEPEND'
    DataSource = DataCadastros.DsRepresentante
    MaxLength = 2
    TabOrder = 16
  end
  object DbrFuncao: TDBRadioGroup
    Left = 450
    Top = 42
    Width = 124
    Height = 152
    Caption = 'Fun'#231#227'o'
    DataField = 'REP_FUNCAO'
    DataSource = DataCadastros.DsRepresentante
    Items.Strings = (
      'Vendedor'
      'Televendas'
      'Supervisor'
      'Gerente')
    TabOrder = 26
    TabStop = True
    Values.Strings = (
      'R'
      'T'
      'S'
      'G')
  end
  object DbrTipo: TDBRadioGroup
    Left = 450
    Top = 200
    Width = 125
    Height = 98
    Caption = 'Pessoa'
    DataField = 'REP_TIPO'
    DataSource = DataCadastros.DsRepresentante
    Items.Strings = (
      'Jur'#237'dica'
      'F'#237'sica')
    TabOrder = 27
    TabStop = True
    Values.Strings = (
      'J'
      'F')
  end
  object DbrSituacao: TDBRadioGroup
    Left = 450
    Top = 315
    Width = 125
    Height = 96
    Caption = 'Situa'#231#227'o'
    DataField = 'REP_SITUACAO'
    DataSource = DataCadastros.DsRepresentante
    Items.Strings = (
      'Ativo'
      'Inativo')
    TabOrder = 28
    TabStop = True
    Values.Strings = (
      'A'
      'I')
    OnClick = DbrSituacaoClick
  end
  object TDBEdit
    Left = 105
    Top = 300
    Width = 100
    Height = 22
    CharCase = ecUpperCase
    DataField = 'REP_QUOTA'
    DataSource = DataCadastros.DsRepresentante
    MaxLength = 13
    TabOrder = 22
  end
  object DbeRep_CGC: TDBEdit
    Left = 105
    Top = 88
    Width = 110
    Height = 22
    CharCase = ecUpperCase
    DataField = 'REP_CGC'
    DataSource = DataCadastros.DsRepresentante
    MaxLength = 18
    TabOrder = 4
    OnEnter = DbeRep_CGCEnter
    OnExit = DbeRep_CGCExit
  end
  object DbeRep_INSC: TDBEdit
    Left = 325
    Top = 88
    Width = 110
    Height = 22
    CharCase = ecUpperCase
    DataField = 'REP_INSC'
    DataSource = DataCadastros.DsRepresentante
    TabOrder = 5
  end
  object DBMemo1: TDBMemo
    Left = 108
    Top = 437
    Width = 471
    Height = 48
    DataField = 'REP_OBS'
    DataSource = DataCadastros.DsRepresentante
    TabOrder = 25
  end
  object Panel3: TPanel
    Left = 6
    Top = 491
    Width = 177
    Height = 33
    BevelInner = bvLowered
    BevelOuter = bvLowered
    Color = 12681984
    TabOrder = 32
    object Bit_Lista: TBitBtn
      Left = 5
      Top = 4
      Width = 82
      Height = 25
      Cursor = crHandPoint
      Caption = 'C&onsulta'
      Glyph.Data = {
        CA010000424DCA01000000000000760000002800000027000000110000000100
        0400000000005401000000000000000000001000000010000000000000000000
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
      TabOrder = 0
      TabStop = False
      OnClick = Bit_ListaClick
    end
    object bit_Relatorio: TBitBtn
      Left = 87
      Top = 4
      Width = 85
      Height = 25
      Cursor = crHandPoint
      Caption = '&Relat'#243'rios'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000010000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
        8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
        8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
        8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
      TabOrder = 1
      TabStop = False
      OnClick = bit_RelatorioClick
    end
  end
  object Panel4: TPanel
    Left = 456
    Top = 41
    Width = 40
    Height = 17
    BevelOuter = bvNone
    Caption = 'Fun'#231#227'o'
    TabOrder = 33
  end
  object Panel5: TPanel
    Left = 456
    Top = 196
    Width = 39
    Height = 17
    BevelOuter = bvNone
    Caption = 'Pessoa'
    TabOrder = 34
  end
  object Panel6: TPanel
    Left = 456
    Top = 311
    Width = 46
    Height = 17
    BevelOuter = bvNone
    Caption = 'Situa'#231#227'o'
    TabOrder = 35
  end
  object DBEdit1: TDBEdit
    Left = 224
    Top = 180
    Width = 90
    Height = 22
    CharCase = ecUpperCase
    DataField = 'REP_CELULAR'
    DataSource = DataCadastros.DsRepresentante
    MaxLength = 14
    TabOrder = 13
  end
  object GroupBox1: TGroupBox
    Left = 105
    Top = 320
    Width = 332
    Height = 90
    TabOrder = 24
    object Label20: TLabel
      Left = 16
      Top = 14
      Width = 31
      Height = 14
      Caption = 'Conta:'
    end
    object Label21: TLabel
      Left = 10
      Top = 38
      Width = 37
      Height = 14
      Caption = 'Banco :'
    end
    object Label22: TLabel
      Left = 216
      Top = 14
      Width = 43
      Height = 14
      Caption = 'Ag'#234'ncia:'
    end
    object Label23: TLabel
      Left = 10
      Top = 64
      Width = 36
      Height = 14
      Caption = 'Credor:'
    end
    object DBEdit2: TDBEdit
      Left = 49
      Top = 11
      Width = 110
      Height = 22
      CharCase = ecUpperCase
      DataField = 'REP_CONTA'
      DataSource = DataCadastros.DsRepresentante
      TabOrder = 0
    end
    object DBEdit3: TDBEdit
      Left = 49
      Top = 36
      Width = 271
      Height = 22
      CharCase = ecUpperCase
      DataField = 'REP_BANCO'
      DataSource = DataCadastros.DsRepresentante
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 260
      Top = 11
      Width = 60
      Height = 22
      CharCase = ecUpperCase
      DataField = 'REP_AGENCIA'
      DataSource = DataCadastros.DsRepresentante
      TabOrder = 1
    end
    object DBEdit5: TDBEdit
      Left = 49
      Top = 61
      Width = 271
      Height = 22
      CharCase = ecUpperCase
      DataField = 'REP_BANCOFAVOR'
      DataSource = DataCadastros.DsRepresentante
      TabOrder = 3
    end
  end
  object CbxRegiao: TComboBox
    Left = 255
    Top = 157
    Width = 180
    Height = 22
    CharCase = ecUpperCase
    ItemIndex = 0
    MaxLength = 30
    TabOrder = 11
    OnClick = CbxRegiaoClick
    Items.Strings = (
      '')
  end
  object CbSuper: TComboBox
    Left = 139
    Top = 253
    Width = 297
    Height = 22
    CharCase = ecUpperCase
    MaxLength = 50
    TabOrder = 19
    OnClick = CbSuperClick
  end
  object CbGerente: TComboBox
    Left = 139
    Top = 276
    Width = 297
    Height = 22
    CharCase = ecUpperCase
    MaxLength = 50
    TabOrder = 21
    OnClick = CbGerenteClick
  end
  object DbeRep_Sup: TDBEdit
    Left = 105
    Top = 253
    Width = 33
    Height = 22
    CharCase = ecUpperCase
    DataField = 'REP_SUPERVISAO'
    DataSource = DataCadastros.DsRepresentante
    TabOrder = 18
    OnClick = DbeRep_SupClick
    OnEnter = DbeRep_SupEnter
    OnExit = DbeRep_SupExit
    OnKeyPress = DbeRep_SupKeyPress
  end
  object DbeRep_Ger: TDBEdit
    Left = 105
    Top = 276
    Width = 33
    Height = 22
    CharCase = ecUpperCase
    DataField = 'REP_GERENTE'
    DataSource = DataCadastros.DsRepresentante
    TabOrder = 20
    OnClick = DbeRep_GerClick
    OnEnter = DbeRep_GerEnter
    OnExit = DbeRep_GerExit
    OnKeyPress = DbeRep_SupKeyPress
  end
  object DBEREG_CODIGO: TDBEdit
    Left = 224
    Top = 157
    Width = 30
    Height = 22
    CharCase = ecUpperCase
    DataField = 'REG_CODIGO'
    DataSource = DataCadastros.DsRepresentante
    TabOrder = 10
    OnEnter = DBEREG_CODIGOEnter
    OnExit = DBEREG_CODIGOExit
    OnKeyPress = DbeRep_SupKeyPress
  end
  object DBEdit6: TDBEdit
    Left = 313
    Top = 298
    Width = 120
    Height = 22
    CharCase = ecUpperCase
    DataField = 'REP_COMISSAO'
    DataSource = DataCadastros.DsRepresentante
    TabOrder = 23
  end
  object cxDBCheckBox1: TcxDBCheckBox
    Left = 100
    Top = 412
    Caption = 'Habilitar Verba na venda'
    DataBinding.DataField = 'GERAR_VERBA'
    DataBinding.DataSource = DataCadastros.DsRepresentante
    Properties.ValueChecked = '1'
    Properties.ValueUnchecked = '0'
    TabOrder = 36
    Width = 154
  end
  object DbDtREP_DTNASC: TJvDBDateEdit
    Left = 347
    Top = 226
    Width = 90
    Height = 22
    DataField = 'REP_DTNASC'
    DataSource = DataCadastros.DsRepresentante
    Glyph.Data = {
      4E000000424D4E000000000000003E000000280000000F000000040000000100
      010000000000100000000000000000000000020000000200000000000000FFFF
      FF00FFFE00009CE600009CE60000FFFE0000}
    ImageKind = ikCustom
    PopupColor = clBtnFace
    ShowNullDate = False
    YearDigits = dyFour
    TabOrder = 17
    OnExit = DbDtREP_DTNASCExit
  end
  object DBEdit7: TDBEdit
    Left = 326
    Top = 3
    Width = 121
    Height = 22
    DataField = 'MER_VENDEDOR_ID'
    DataSource = DataCadastros.DsRepresentante
    TabOrder = 37
  end
  object SqlCdsRegiao: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 'select REG_CODIGO,REG_DESCRI FROM REG0000'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'select REG_CODIGO,REG_DESCRI FROM REG0000'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 360
    Top = 80
    object SqlCdsRegiaoREG_CODIGO: TStringField
      FieldName = 'REG_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object SqlCdsRegiaoREG_DESCRI: TStringField
      FieldName = 'REG_DESCRI'
      Size = 30
    end
  end
  object SqlCdsSup: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'select REP_CODIGO, REP_NOME, REP_FUNCAO, REP_SITUACAO from REP00' +
      '00'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'select REP_CODIGO, REP_NOME, REP_FUNCAO, REP_SITUACAO from REP00' +
      '00'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 272
    Top = 254
    object SqlCdsSupREP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object SqlCdsSupREP_NOME: TStringField
      FieldName = 'REP_NOME'
      Size = 35
    end
    object SqlCdsSupREP_SITUACAO: TStringField
      FieldName = 'REP_SITUACAO'
      Size = 1
    end
    object SqlCdsSupREP_FUNCAO: TStringField
      FieldName = 'REP_FUNCAO'
      Size = 1
    end
  end
  object SqlCdsGer: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'select REP_CODIGO, REP_NOME, REP_FUNCAO, REP_SITUACAO from REP00' +
      '00'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'select REP_CODIGO, REP_NOME, REP_FUNCAO, REP_SITUACAO from REP00' +
      '00'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 360
    Top = 268
    object SqlCdsGerREP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      Required = True
      Size = 3
    end
    object SqlCdsGerREP_NOME: TStringField
      FieldName = 'REP_NOME'
      Size = 35
    end
    object SqlCdsGerREP_SITUACAO: TStringField
      FieldName = 'REP_SITUACAO'
      Size = 1
    end
    object SqlCdsGerREP_FUNCAO: TStringField
      FieldName = 'REP_FUNCAO'
      Size = 1
    end
  end
end
