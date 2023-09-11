inherited frmBaseDB3: TfrmBaseDB3
  Caption = 'frmBaseDB3'
  ClientHeight = 432
  ClientWidth = 1046
  ExplicitWidth = 1062
  ExplicitHeight = 470
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel [0]
    Left = 0
    Top = 0
    Width = 1046
    Height = 29
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label13: TLabel
      Left = 114
      Top = 9
      Width = 32
      Height = 13
      Caption = 'Fatura'
    end
    object Label1: TLabel
      Left = 231
      Top = 9
      Width = 54
      Height = 13
      Caption = 'Parcela N'#186':'
    end
    object DBEdit2: TDBEdit
      Left = 150
      Top = 6
      Width = 75
      Height = 21
      TabStop = False
      Color = 14145495
      DataField = 'PAG_CODIGO'
      DataSource = DataMovimento.DsPagarParc
      MaxLength = 13
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit1: TDBEdit
      Left = 286
      Top = 6
      Width = 43
      Height = 21
      TabStop = False
      Color = 14145495
      DataField = 'N_PARC_CC'
      DataSource = DataMovimento.DsPagarParc
      MaxLength = 13
      ReadOnly = True
      TabOrder = 1
    end
    object DBChk_Previsao: TDBCheckBox
      Left = 680
      Top = 9
      Width = 78
      Height = 17
      Caption = 'Pre&vis'#227'o'
      DataField = 'PPC_PREVISAO'
      DataSource = DataMovimento.DsPagarParc
      TabOrder = 3
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object DBCheckBox1: TDBCheckBox
      Left = 592
      Top = 9
      Width = 78
      Height = 17
      Caption = 'Reembolso'
      DataField = 'PPC_REEMBOLSO'
      DataSource = DataMovimento.DsPagarParc
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
  end
  object Panel2: TPanel [1]
    Left = 0
    Top = 396
    Width = 1046
    Height = 36
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object Bit_Excluir: TBitBtn
      Left = 407
      Top = 6
      Width = 90
      Height = 25
      Cursor = crHandPoint
      Hint = '|Exclui registro atual..'
      Caption = '&Excluir'
      Glyph.Data = {
        E6000000424DE60000000000000076000000280000000E0000000E0000000100
        04000000000070000000CE0E0000D80E00001000000000000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3300333333333333330033333333333333003333333333333300333333333333
        3300333333333333330033000000000033003300000000003300330000000000
        3300333333333333330033333333333333003333333333333300333333333333
        33003333333333333300}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      TabStop = False
    end
    object Bit_Gravar: TBitBtn
      Left = 497
      Top = 6
      Width = 90
      Height = 25
      Cursor = crHandPoint
      Hint = '|Grava registro...'
      Caption = '&Salvar'
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
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      TabStop = False
    end
    object Bit_Cancelar: TBitBtn
      Left = 587
      Top = 6
      Width = 90
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
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      TabStop = False
    end
    object Bit_Sair: TBitBtn
      Left = 677
      Top = 6
      Width = 90
      Height = 25
      Cursor = crHandPoint
      Caption = '&Sair'
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
      TabOrder = 3
      TabStop = False
    end
  end
  object GroupBox1: TGroupBox [2]
    Left = 0
    Top = 29
    Width = 1046
    Height = 212
    Align = alTop
    Caption = 'Informa'#231#245'es'
    TabOrder = 2
    object Label2: TLabel
      Left = 92
      Top = 45
      Width = 59
      Height = 13
      Caption = 'Vencimento:'
    end
    object Label7: TLabel
      Left = 106
      Top = 93
      Width = 45
      Height = 13
      Caption = 'Cedente:'
    end
    object Label3: TLabel
      Left = 373
      Top = 44
      Width = 81
      Height = 13
      Caption = 'Valor da Parcela:'
    end
    object Label6: TLabel
      Left = 125
      Top = 186
      Width = 24
      Height = 13
      Caption = 'OBS:'
    end
    object Label5: TLabel
      Left = 92
      Top = 115
      Width = 58
      Height = 13
      Caption = 'Pagamento:'
    end
    object Label4: TLabel
      Left = 371
      Top = 115
      Width = 55
      Height = 13
      Caption = 'Valor Pago:'
    end
    object Label8: TLabel
      Left = 70
      Top = 70
      Width = 79
      Height = 13
      Caption = 'Banco de Pagto:'
    end
    object Label10: TLabel
      Left = 629
      Top = 89
      Width = 30
      Height = 13
      Caption = 'Multa:'
    end
    object Label24: TLabel
      Left = 608
      Top = 113
      Width = 49
      Height = 13
      Caption = 'Desconto:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label19: TLabel
      Left = 118
      Top = 140
      Width = 33
      Height = 13
      Caption = 'Status:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 628
      Top = 137
      Width = 28
      Height = 13
      Caption = 'Juros:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 353
      Top = 94
      Width = 76
      Height = 13
      Caption = 'Nosso N'#250'mero: '
    end
    object Label14: TLabel
      Left = 55
      Top = 163
      Width = 96
      Height = 13
      Alignment = taRightJustify
      Caption = 'N'#250'mero do Cheque:'
    end
    object Label28: TLabel
      Left = 114
      Top = 20
      Width = 37
      Height = 13
      Alignment = taRightJustify
      Caption = 'Cliente:'
    end
    object DbePpc_Banco: TDBEdit
      Left = 152
      Top = 89
      Width = 130
      Height = 21
      CharCase = ecUpperCase
      DataField = 'PPC_BANCO'
      DataSource = DataMovimento.DsPagarParc
      TabOrder = 5
    end
    object DbePpc_Vlparc: TDBEdit
      Left = 456
      Top = 41
      Width = 100
      Height = 21
      DataField = 'PPC_VLPARC'
      DataSource = DataMovimento.DsPagarParc
      MaxLength = 13
      TabOrder = 2
    end
    object DbePpc_Obs: TDBEdit
      Left = 152
      Top = 183
      Width = 607
      Height = 21
      DataField = 'PPC_OBS'
      DataSource = DataMovimento.DsPagarParc
      TabOrder = 10
    end
    object DbePpc_Vlpago: TDBEdit
      Left = 428
      Top = 112
      Width = 127
      Height = 21
      TabStop = False
      Color = 14145495
      DataField = 'PPC_VLPAGO'
      DataSource = DataMovimento.DsPagarParc
      MaxLength = 13
      ReadOnly = True
      TabOrder = 12
    end
    object DBPPC_MULTA: TDBEdit
      Left = 661
      Top = 85
      Width = 100
      Height = 21
      TabStop = False
      Color = 14145495
      DataField = 'PPC_MULTA'
      DataSource = DataMovimento.DsPagarParc
      ReadOnly = True
      TabOrder = 13
    end
    object DBePpc_decto: TDBEdit
      Left = 660
      Top = 110
      Width = 100
      Height = 21
      TabStop = False
      Color = 14145495
      DataField = 'PPC_DESCTO'
      DataSource = DataMovimento.DsPagarParc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 13
      ParentFont = False
      ReadOnly = True
      TabOrder = 14
    end
    object DBEPPC_STATUS: TDBComboBox
      Left = 152
      Top = 136
      Width = 166
      Height = 21
      DataField = 'PPC_STATUS'
      DataSource = DataMovimento.DsPagarParc
      Items.Strings = (
        'Bloqueada'
        'Cancelada'
        'Cart'#243'rio'
        'Devolu'#231#227'o'
        'Indicado C'
        'Liquidada'
        'Outros'
        'Pendente'
        'Protestada'
        'Parcial')
      TabOrder = 7
    end
    object DbePpc_Juros: TDBEdit
      Left = 659
      Top = 133
      Width = 101
      Height = 21
      TabStop = False
      Color = 14145495
      DataField = 'PPC_JUROS'
      DataSource = DataMovimento.DsPagarParc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 13
      ParentFont = False
      ReadOnly = True
      TabOrder = 15
    end
    object DbeBan_Codigo: TDBEdit
      Left = 152
      Top = 65
      Width = 35
      Height = 21
      DataField = 'BAN_CODIGO'
      DataSource = DataMovimento.DsPagarParc
      TabOrder = 3
    end
    object DBEPPC_NOSSONUM: TDBEdit
      Left = 428
      Top = 89
      Width = 129
      Height = 21
      CharCase = ecUpperCase
      DataField = 'PPC_NOSSONUM'
      DataSource = DataMovimento.DsPagarParc
      TabOrder = 6
    end
    object DbDtPPC_VENCTO: TDBDateEdit
      Left = 152
      Top = 42
      Width = 100
      Height = 21
      DataField = 'PPC_VENCTO'
      DataSource = DataMovimento.DsPagarParc
      NumGlyphs = 2
      TabOrder = 1
      YearDigits = dyFour
    end
    object DbDtPPC_PAGTO: TDBDateEdit
      Left = 152
      Top = 112
      Width = 100
      Height = 21
      TabStop = False
      DataField = 'PPC_PAGTO'
      DataSource = DataMovimento.DsPagarParc
      ReadOnly = True
      Color = 14145495
      NumGlyphs = 2
      TabOrder = 11
      YearDigits = dyFour
    end
    object DBEdit4: TDBEdit
      Left = 152
      Top = 160
      Width = 100
      Height = 21
      TabStop = False
      Color = 14145495
      DataField = 'PPC_NUM_CHEQUE'
      DataSource = DataMovimento.DsPagarParc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 13
      ParentFont = False
      ReadOnly = True
      TabOrder = 8
    end
    object DBEdit5: TDBEdit
      Left = 256
      Top = 160
      Width = 17
      Height = 21
      TabStop = False
      Color = 14145495
      DataField = 'PPC_NUM_CHEQUE_DV'
      DataSource = DataMovimento.DsPagarParc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 13
      ParentFont = False
      ReadOnly = True
      TabOrder = 9
    end
    object EdFornecedor: TEdit
      Left = 152
      Top = 17
      Width = 609
      Height = 21
      TabStop = False
      Color = 14145495
      ReadOnly = True
      TabOrder = 0
      Text = 'EdFornecedor'
    end
    object CbxBco: TSgDbSearchCombo
      Left = 188
      Top = 65
      Width = 345
      Height = 21
      TabOrder = 4
      LookupSelect = 'BAN_CODIGO, BAN_APELIDO'
      LookupOrderBy = 'BAN_APELIDO'
      LookupTable = 'ban0000'
      LookupDispl = 'BAN_APELIDO'
      GridAutoSize = False
      LookupSource = qBan
      DataField = 'BAN_CODIGO'
      DataSource = DataMovimento.DsPagarParc
      LookupKeyField = 'BAN_CODIGO'
      ShowButton = True
      LookupTableShare = 'BANCOS'
      AutoF8WinTitulo = 'Bancos'
      AutoF8ColumnsTitulo = 'C'#243'digo, Banco'
      DataFieldFormat = '0000'
    end
  end
  object GrpExclusao: TGroupBox [3]
    Left = 0
    Top = 362
    Width = 1046
    Height = 34
    Align = alBottom
    TabOrder = 3
    Visible = False
    object Label34: TLabel
      Left = 143
      Top = 11
      Width = 27
      Height = 13
      Caption = 'Data:'
    end
    object Label35: TLabel
      Left = 242
      Top = 11
      Width = 40
      Height = 13
      Caption = 'Usu'#225'rio:'
    end
    object Label36: TLabel
      Left = 464
      Top = 11
      Width = 36
      Height = 13
      Caption = 'Motivo:'
    end
    object DBCheckBox2: TDBCheckBox
      Left = 5
      Top = 9
      Width = 123
      Height = 17
      TabStop = False
      Caption = 'Registro Exclu'#237'do'
      DataField = 'PPC_EXCLUSAO'
      DataSource = DataMovimento.DsPagarParc
      ReadOnly = True
      TabOrder = 0
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object DBEdit3: TDBEdit
      Left = 174
      Top = 9
      Width = 65
      Height = 21
      TabStop = False
      Color = 14145495
      DataField = 'PPC_DATA_EXCLUSAO'
      DataSource = DataMovimento.DsPagarParc
      ReadOnly = True
      TabOrder = 1
    end
    object Edt_Usu_Cod: TDBEdit
      Left = 289
      Top = 9
      Width = 40
      Height = 21
      TabStop = False
      Color = 14145495
      DataField = 'USU_CODIGO'
      DataSource = DataMovimento.DsPagarParc
      ReadOnly = True
      TabOrder = 2
    end
    object Edt_Usu_Nome: TDBEdit
      Left = 330
      Top = 9
      Width = 130
      Height = 21
      TabStop = False
      Color = 14145495
      DataField = 'USU_LOGIN'
      DataSource = DataMovimento.DsPagarParc
      ReadOnly = True
      TabOrder = 3
    end
    object DBEdt_Motivo: TDBEdit
      Left = 506
      Top = 9
      Width = 253
      Height = 21
      TabStop = False
      Color = 14145495
      DataField = 'PPC_MOTIVO_EXCLUSAO'
      DataSource = DataMovimento.DsPagarParc
      ReadOnly = True
      TabOrder = 4
    end
  end
  inherited coCalcula: TACBrCalculadora
    Left = 272
    Top = 288
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 320
    Top = 296
  end
  inherited DBConn: TSQLConnection
    Left = 216
    Top = 289
  end
  inherited qAux: TSQLQuery
    Left = 818
    Top = 133
  end
  inherited qAux2: TSQLQuery
    Left = 858
    Top = 132
  end
  inherited qAux3: TSQLQuery
    Left = 898
    Top = 132
  end
  object qBan: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DBConn
    Left = 880
    Top = 277
  end
end
