inherited frmInfoComplFichaTecnica: TfrmInfoComplFichaTecnica
  Caption = 'Informa'#231#245'es Complementares da Ficha T'#233'cnica'
  ClientHeight = 577
  ClientWidth = 916
  FormStyle = fsMDIChild
  Visible = True
  ExplicitWidth = 932
  ExplicitHeight = 616
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel [0]
    Left = 0
    Top = 536
    Width = 916
    Height = 41
    Align = alBottom
    TabOrder = 0
    DesignSize = (
      916
      41)
    object Bit_Sair: TBitBtn
      Left = 803
      Top = 8
      Width = 94
      Height = 25
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Cancel = True
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
      ModalResult = 1
      NumGlyphs = 2
      TabOrder = 0
      TabStop = False
      OnClick = Bit_SairClick
    end
    object Bit_Cancelar: TBitBtn
      Left = 702
      Top = 8
      Width = 95
      Height = 25
      Cursor = crHandPoint
      Hint = '|Cancela registro atual...'
      Anchors = [akTop, akRight]
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
      TabOrder = 1
      TabStop = False
    end
    object Bit_Gravar: TBitBtn
      Left = 601
      Top = 8
      Width = 95
      Height = 25
      Cursor = crHandPoint
      Hint = '|Grava registro...'
      Anchors = [akTop, akRight]
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
      TabOrder = 2
      TabStop = False
      OnClick = Bit_GravarClick
    end
  end
  object Panel2: TPanel [1]
    Left = 0
    Top = 0
    Width = 916
    Height = 55
    Align = alTop
    TabOrder = 1
    object lbReferencia: TLabel
      Left = 59
      Top = 7
      Width = 88
      Height = 19
      Caption = 'Referencia'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbDescricao: TLabel
      Left = 154
      Top = 7
      Width = 116
      Height = 19
      Caption = 'Descri'#231#227'o P.A.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbReferenciaMP: TLabel
      Left = 59
      Top = 31
      Width = 82
      Height = 18
      Caption = 'Referencia'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbDescricaoMP: TLabel
      Left = 154
      Top = 31
      Width = 111
      Height = 18
      Caption = 'Descri'#231#227'o M.P.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 14
      Top = 7
      Width = 39
      Height = 19
      Caption = 'P.A.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 15
      Top = 31
      Width = 38
      Height = 18
      Caption = 'M.P.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Panel3: TPanel [2]
    Left = 0
    Top = 55
    Width = 916
    Height = 25
    Align = alTop
    TabOrder = 2
    object Label2: TLabel
      Left = 16
      Top = 4
      Width = 96
      Height = 13
      Caption = 'Tratamento T'#233'rmico'
      FocusControl = dbFtiTratamentoTermico
    end
    object Label4: TLabel
      Left = 440
      Top = 4
      Width = 108
      Height = 13
      Caption = 'Tratamento Superficial'
      FocusControl = dbFtiTratamentoSuperficial
    end
    object Label5: TLabel
      Left = 252
      Top = 4
      Width = 49
      Height = 13
      Caption = 'Toler'#226'ncia'
      FocusControl = dbFtiTolerancia
    end
    object Label6: TLabel
      Left = 702
      Top = 4
      Width = 46
      Height = 13
      Caption = 'Grava'#231#227'o'
      FocusControl = dbFtiGravacao
    end
    object dbFtiTratamentoTermico: TcxDBTextEdit
      Left = 118
      Top = 1
      DataBinding.DataField = 'FTI_TRATAMENTO_TERMICO'
      DataBinding.DataSource = dsTbFicha
      TabOrder = 0
      Width = 121
    end
    object dbFtiTratamentoSuperficial: TcxDBTextEdit
      Left = 554
      Top = 1
      DataBinding.DataField = 'FTI_TRATAMENTO_SUPERFICIAL'
      DataBinding.DataSource = dsTbFicha
      TabOrder = 2
      Width = 121
    end
    object dbFtiTolerancia: TcxDBTextEdit
      Left = 307
      Top = 1
      DataBinding.DataField = 'FTI_TOLERANCIA'
      DataBinding.DataSource = dsTbFicha
      TabOrder = 1
      Width = 121
    end
    object dbFtiGravacao: TcxDBTextEdit
      Left = 754
      Top = 1
      DataBinding.DataField = 'FTI_GRAVACAO'
      DataBinding.DataSource = dsTbFicha
      TabOrder = 3
      Width = 121
    end
  end
  object GroupBox1: TGroupBox [3]
    Left = 0
    Top = 80
    Width = 916
    Height = 97
    Align = alTop
    Caption = 'Corte'
    TabOrder = 3
    object Label8: TLabel
      Left = 49
      Top = 15
      Width = 63
      Height = 13
      Caption = 'Comprimento'
      FocusControl = dbFtiCorteComprimento
    end
    object Label9: TLabel
      Left = 252
      Top = 15
      Width = 92
      Height = 13
      Caption = 'Quantidade Metros'
      FocusControl = dbFtiCorteQtdeMetros
    end
    object dbFtiCorteComprimento: TcxDBTextEdit
      Left = 116
      Top = 12
      DataBinding.DataField = 'FTI_CORTE_COMPRIMENTO'
      DataBinding.DataSource = dsTbFicha
      TabOrder = 0
      Width = 123
    end
    object dbFtiCorteQtdeMetros: TcxDBTextEdit
      Left = 350
      Top = 12
      DataBinding.DataField = 'FTI_CORTE_QTDE_METROS'
      DataBinding.DataSource = dsTbFicha
      TabOrder = 1
      Width = 121
    end
    object GroupBox2: TGroupBox
      Left = 2
      Top = 33
      Width = 912
      Height = 62
      Align = alBottom
      Caption = 'Observa'#231#227'o'
      TabOrder = 2
      object dbFtiCorteObservacao: TcxDBMemo
        Left = 2
        Top = 15
        Align = alClient
        DataBinding.DataField = 'FTI_CORTE_OBSERVACAO'
        DataBinding.DataSource = dsTbFicha
        TabOrder = 0
        Height = 45
        Width = 908
      end
    end
  end
  object GroupBox3: TGroupBox [4]
    Left = 0
    Top = 177
    Width = 916
    Height = 66
    Align = alTop
    Caption = 'Usinagem'
    TabOrder = 4
    object dbFtiUsinagemObservacao: TcxDBMemo
      Left = 2
      Top = 15
      Align = alClient
      DataBinding.DataField = 'FTI_USINAGEM_OBSERVACAO'
      DataBinding.DataSource = dsTbFicha
      TabOrder = 0
      Height = 49
      Width = 912
    end
  end
  object GroupBox4: TGroupBox [5]
    Left = 0
    Top = 243
    Width = 916
    Height = 144
    Align = alTop
    Caption = 'Prensa'
    TabOrder = 5
    object Label10: TLabel
      Left = 16
      Top = 13
      Width = 59
      Height = 13
      Caption = 'Tipo Cabe'#231'a'
      FocusControl = dbFtiPrensaTipoCabeca
    end
    object Label11: TLabel
      Left = 215
      Top = 13
      Width = 31
      Height = 13
      Caption = 'Chave'
      FocusControl = dbFtiPrensaChave
    end
    object Label12: TLabel
      Left = 382
      Top = 13
      Width = 56
      Height = 13
      Caption = 'Alt. Cabe'#231'a'
      FocusControl = dbFtiPrensaAltCabeca
    end
    object Label13: TLabel
      Left = 591
      Top = 13
      Width = 30
      Height = 13
      Caption = 'Massa'
      FocusControl = dbFtiPrensaMassa
    end
    object Label14: TLabel
      Left = 217
      Top = 33
      Width = 29
      Height = 13
      Caption = 'Matriz'
      FocusControl = dbFtiPrensaMatriz
    end
    object Label15: TLabel
      Left = 418
      Top = 35
      Width = 20
      Height = 13
      Caption = 'Pino'
      FocusControl = dbFtiPrensaPino
    end
    object Label16: TLabel
      Left = 592
      Top = 35
      Width = 29
      Height = 13
      Caption = 'Bucha'
      FocusControl = dbFtiPrensaBucha
    end
    object Label17: TLabel
      Left = 556
      Top = 57
      Width = 65
      Height = 13
      Caption = 'Contra Bucha'
      FocusControl = ContraBucha
    end
    object Label18: TLabel
      Left = 38
      Top = 35
      Width = 37
      Height = 13
      Caption = 'Caixa N'
      FocusControl = dbFtiPrensaCaixaN
    end
    object dbFtiPrensaTipoCabeca: TcxDBTextEdit
      Left = 81
      Top = 10
      DataBinding.DataField = 'FTI_PRENSA_TIPO_CABECA'
      DataBinding.DataSource = dsTbFicha
      TabOrder = 0
      Width = 121
    end
    object dbFtiPrensaChave: TcxDBTextEdit
      Left = 252
      Top = 10
      DataBinding.DataField = 'FTI_PRENSA_CHAVE'
      DataBinding.DataSource = dsTbFicha
      TabOrder = 1
      Width = 121
    end
    object dbFtiPrensaAltCabeca: TcxDBTextEdit
      Left = 444
      Top = 10
      DataBinding.DataField = 'FTI_PRENSA_ALT_CABECA'
      DataBinding.DataSource = dsTbFicha
      TabOrder = 2
      Width = 121
    end
    object dbFtiPrensaMassa: TcxDBTextEdit
      Left = 627
      Top = 10
      DataBinding.DataField = 'FTI_PRENSA_MASSA'
      DataBinding.DataSource = dsTbFicha
      TabOrder = 3
      Width = 121
    end
    object dbFtiPrensaMatriz: TcxDBTextEdit
      Left = 252
      Top = 32
      DataBinding.DataField = 'FTI_PRENSA_MATRIZ'
      DataBinding.DataSource = dsTbFicha
      TabOrder = 5
      Width = 121
    end
    object dbFtiPrensaPino: TcxDBTextEdit
      Left = 444
      Top = 32
      DataBinding.DataField = 'FTI_PRENSA_PINO'
      DataBinding.DataSource = dsTbFicha
      TabOrder = 6
      Width = 121
    end
    object dbFtiPrensaBucha: TcxDBTextEdit
      Left = 627
      Top = 32
      DataBinding.DataField = 'FTI_PRENSA_BUCHA'
      DataBinding.DataSource = dsTbFicha
      TabOrder = 7
      Width = 121
    end
    object ContraBucha: TcxDBTextEdit
      Left = 627
      Top = 54
      DataBinding.DataField = 'FTI_PRENSA_CONTRA_BUCHA'
      DataBinding.DataSource = dsTbFicha
      TabOrder = 8
      Width = 121
    end
    object dbFtiPrensaCaixaN: TcxDBTextEdit
      Left = 81
      Top = 32
      DataBinding.DataField = 'FTI_PRENSA_CAIXA_N'
      DataBinding.DataSource = dsTbFicha
      TabOrder = 4
      Width = 121
    end
    object GroupBox5: TGroupBox
      Left = 2
      Top = 74
      Width = 912
      Height = 68
      Align = alBottom
      Caption = 'Observa'#231#227'o'
      TabOrder = 9
      object cxDBMemo1: TcxDBMemo
        Left = 2
        Top = 15
        Align = alClient
        DataBinding.DataField = 'FTI_PRENSA_OBSERVACAO'
        DataBinding.DataSource = dsTbFicha
        TabOrder = 0
        Height = 51
        Width = 908
      end
    end
  end
  object Panel4: TPanel [6]
    Left = 0
    Top = 387
    Width = 916
    Height = 149
    Align = alClient
    TabOrder = 6
    object GroupBox6: TGroupBox
      Left = 1
      Top = 1
      Width = 914
      Height = 147
      Align = alClient
      Caption = 'Lamina'#231#227'o'
      TabOrder = 0
      object Panel5: TPanel
        Left = 2
        Top = 15
        Width = 910
        Height = 60
        Align = alTop
        TabOrder = 0
        object Label19: TLabel
          Left = 48
          Top = 13
          Width = 41
          Height = 13
          Caption = 'Caixa N.'
          FocusControl = dbFtiLaminacaoCaixaN
        end
        object Label20: TLabel
          Left = 258
          Top = 13
          Width = 44
          Height = 13
          Caption = 'Tipo Rolo'
          FocusControl = dbFtiLaminacaoTipoRolo
        end
        object Label21: TLabel
          Left = 23
          Top = 35
          Width = 67
          Height = 13
          Caption = 'Tipo de Rosca'
          FocusControl = dbFtiLaminacaoTipoRosca
        end
        object Label22: TLabel
          Left = 236
          Top = 35
          Width = 66
          Height = 13
          Caption = 'Alt. Usinagem'
          FocusControl = dbFtiLaminacaoUsinagem
        end
        object Label23: TLabel
          Left = 441
          Top = 35
          Width = 63
          Height = 13
          Caption = 'Comp. Rosca'
          FocusControl = dbFtiLaminacaoCompRosca
        end
        object dbFtiLaminacaoCaixaN: TcxDBTextEdit
          Left = 95
          Top = 10
          DataBinding.DataField = 'FTI_LAMINACAO_CAIXA_N'
          DataBinding.DataSource = dsTbFicha
          TabOrder = 0
          Width = 121
        end
        object dbFtiLaminacaoTipoRolo: TcxDBTextEdit
          Left = 305
          Top = 10
          DataBinding.DataField = 'FTI_LAMINACAO_TIPO_ROLO'
          DataBinding.DataSource = dsTbFicha
          TabOrder = 1
          Width = 121
        end
        object dbFtiLaminacaoTipoRosca: TcxDBTextEdit
          Left = 96
          Top = 32
          DataBinding.DataField = 'FTI_LAMINACAO_TIPO_ROSCA'
          DataBinding.DataSource = dsTbFicha
          TabOrder = 2
          Width = 121
        end
        object dbFtiLaminacaoUsinagem: TcxDBTextEdit
          Left = 305
          Top = 32
          DataBinding.DataField = 'FTI_LAMINACAO_ALT_USINAGEM'
          DataBinding.DataSource = dsTbFicha
          TabOrder = 3
          Width = 121
        end
        object dbFtiLaminacaoCompRosca: TcxDBTextEdit
          Left = 507
          Top = 32
          DataBinding.DataField = 'FTI_LAMINACAO_COMP_ROSCA'
          DataBinding.DataSource = dsTbFicha
          TabOrder = 4
          Width = 121
        end
      end
      object GroupBox7: TGroupBox
        Left = 2
        Top = 75
        Width = 910
        Height = 70
        Align = alClient
        Caption = 'Observa'#231#227'o'
        TabOrder = 1
        object cxDBMemo2: TcxDBMemo
          Left = 2
          Top = 15
          Align = alClient
          DataBinding.DataField = 'FTI_LAMINACAO_OBSERVACAO'
          DataBinding.DataSource = dsTbFicha
          TabOrder = 0
          Height = 53
          Width = 906
        end
      end
    end
  end
  inherited coCalcula: TACBrCalculadora
    Left = 200
    Top = 168
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 272
    Top = 168
  end
  inherited DBConn: TSQLConnection
    Params.Strings = (
      'DriverName=Firebird'
      'Database=c:\jobdados\exemplo\exemplo.fdb'
      'RoleName=RoleName'
      'User_Name=sysdba'
      'Password=masterkey'
      'ServerCharSet='
      'SQLDialect=3'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'BlobSize=-1'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'IsolationLevel=ReadCommitted'
      'Trim Char=True')
    Left = 48
    Top = 113
  end
  inherited qAux: TSQLQuery
    Left = 354
    Top = 165
  end
  inherited qAux2: TSQLQuery
    Left = 410
    Top = 164
  end
  inherited qAux3: TSQLQuery
    Left = 458
    Top = 164
  end
  object tbFicha: TSQLTable
    MaxBlobSize = 1
    SQLConnection = DBConn
    TableName = 'FTC_IT01'
    Left = 112
    Top = 112
    object tbFichaFTI_TRATAMENTO_TERMICO: TStringField
      FieldName = 'FTI_TRATAMENTO_TERMICO'
      Size = 255
    end
    object tbFichaFTI_TRATAMENTO_SUPERFICIAL: TStringField
      FieldName = 'FTI_TRATAMENTO_SUPERFICIAL'
      Size = 255
    end
    object tbFichaFTI_TOLERANCIA: TStringField
      FieldName = 'FTI_TOLERANCIA'
      Size = 255
    end
    object tbFichaFTI_GRAVACAO: TStringField
      FieldName = 'FTI_GRAVACAO'
      Size = 255
    end
    object tbFichaFTI_CORTE_QUANTIDADE: TStringField
      FieldName = 'FTI_CORTE_QUANTIDADE'
      Size = 255
    end
    object tbFichaFTI_CORTE_COMPRIMENTO: TStringField
      FieldName = 'FTI_CORTE_COMPRIMENTO'
      Size = 255
    end
    object tbFichaFTI_CORTE_QTDE_METROS: TStringField
      FieldName = 'FTI_CORTE_QTDE_METROS'
      Size = 255
    end
    object tbFichaFTI_CORTE_OBSERVACAO: TMemoField
      FieldName = 'FTI_CORTE_OBSERVACAO'
      BlobType = ftMemo
      Size = 1
    end
    object tbFichaFTI_USINAGEM_OBSERVACAO: TMemoField
      FieldName = 'FTI_USINAGEM_OBSERVACAO'
      BlobType = ftMemo
      Size = 1
    end
    object tbFichaFTI_PRENSA_TIPO_CABECA: TStringField
      FieldName = 'FTI_PRENSA_TIPO_CABECA'
      Size = 255
    end
    object tbFichaFTI_PRENSA_CHAVE: TStringField
      FieldName = 'FTI_PRENSA_CHAVE'
      Size = 255
    end
    object tbFichaFTI_PRENSA_ALT_CABECA: TStringField
      FieldName = 'FTI_PRENSA_ALT_CABECA'
      Size = 255
    end
    object tbFichaFTI_PRENSA_MASSA: TStringField
      FieldName = 'FTI_PRENSA_MASSA'
      Size = 255
    end
    object tbFichaFTI_PRENSA_CAIXA_N: TStringField
      FieldName = 'FTI_PRENSA_CAIXA_N'
      Size = 255
    end
    object tbFichaFTI_PRENSA_MATRIZ: TStringField
      FieldName = 'FTI_PRENSA_MATRIZ'
      Size = 255
    end
    object tbFichaFTI_PRENSA_PINO: TStringField
      FieldName = 'FTI_PRENSA_PINO'
      Size = 255
    end
    object tbFichaFTI_PRENSA_BUCHA: TStringField
      FieldName = 'FTI_PRENSA_BUCHA'
      Size = 255
    end
    object tbFichaFTI_PRENSA_CONTRA_BUCHA: TStringField
      FieldName = 'FTI_PRENSA_CONTRA_BUCHA'
      Size = 255
    end
    object tbFichaFTI_PRENSA_OBSERVACAO: TMemoField
      FieldName = 'FTI_PRENSA_OBSERVACAO'
      BlobType = ftMemo
      Size = 1
    end
    object tbFichaFTI_LAMINACAO_CAIXA_N: TStringField
      FieldName = 'FTI_LAMINACAO_CAIXA_N'
      Size = 255
    end
    object tbFichaFTI_LAMINACAO_TIPO_ROLO: TStringField
      FieldName = 'FTI_LAMINACAO_TIPO_ROLO'
      Size = 255
    end
    object tbFichaFTI_LAMINACAO_TIPO_ROSCA: TStringField
      FieldName = 'FTI_LAMINACAO_TIPO_ROSCA'
      Size = 255
    end
    object tbFichaFTI_LAMINACAO_ALT_USINAGEM: TStringField
      FieldName = 'FTI_LAMINACAO_ALT_USINAGEM'
      Size = 255
    end
    object tbFichaFTI_LAMINACAO_COMP_ROSCA: TStringField
      FieldName = 'FTI_LAMINACAO_COMP_ROSCA'
      Size = 255
    end
    object tbFichaFTI_LAMINACAO_OBSERVACAO: TMemoField
      FieldName = 'FTI_LAMINACAO_OBSERVACAO'
      BlobType = ftMemo
      Size = 1
    end
    object tbFichaPRD_REFER_ITENS: TStringField
      FieldName = 'PRD_REFER_ITENS'
    end
    object tbFichaPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
    end
  end
  object dsTbFicha: TDataSource
    DataSet = cdsFicha
    Left = 288
    Top = 112
  end
  object cdsFicha: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFicha'
    Left = 234
    Top = 115
    object cdsFichaFTI_TRATAMENTO_TERMICO: TStringField
      FieldName = 'FTI_TRATAMENTO_TERMICO'
      Size = 255
    end
    object cdsFichaFTI_TRATAMENTO_SUPERFICIAL: TStringField
      FieldName = 'FTI_TRATAMENTO_SUPERFICIAL'
      Size = 255
    end
    object cdsFichaFTI_TOLERANCIA: TStringField
      FieldName = 'FTI_TOLERANCIA'
      Size = 255
    end
    object cdsFichaFTI_GRAVACAO: TStringField
      FieldName = 'FTI_GRAVACAO'
      Size = 255
    end
    object cdsFichaFTI_CORTE_QUANTIDADE: TStringField
      FieldName = 'FTI_CORTE_QUANTIDADE'
      Size = 255
    end
    object cdsFichaFTI_CORTE_COMPRIMENTO: TStringField
      FieldName = 'FTI_CORTE_COMPRIMENTO'
      Size = 255
    end
    object cdsFichaFTI_CORTE_QTDE_METROS: TStringField
      FieldName = 'FTI_CORTE_QTDE_METROS'
      Size = 255
    end
    object cdsFichaFTI_CORTE_OBSERVACAO: TMemoField
      FieldName = 'FTI_CORTE_OBSERVACAO'
      BlobType = ftMemo
      Size = 1
    end
    object cdsFichaFTI_USINAGEM_OBSERVACAO: TMemoField
      FieldName = 'FTI_USINAGEM_OBSERVACAO'
      BlobType = ftMemo
      Size = 1
    end
    object cdsFichaFTI_PRENSA_TIPO_CABECA: TStringField
      FieldName = 'FTI_PRENSA_TIPO_CABECA'
      Size = 255
    end
    object cdsFichaFTI_PRENSA_CHAVE: TStringField
      FieldName = 'FTI_PRENSA_CHAVE'
      Size = 255
    end
    object cdsFichaFTI_PRENSA_ALT_CABECA: TStringField
      FieldName = 'FTI_PRENSA_ALT_CABECA'
      Size = 255
    end
    object cdsFichaFTI_PRENSA_MASSA: TStringField
      FieldName = 'FTI_PRENSA_MASSA'
      Size = 255
    end
    object cdsFichaFTI_PRENSA_CAIXA_N: TStringField
      FieldName = 'FTI_PRENSA_CAIXA_N'
      Size = 255
    end
    object cdsFichaFTI_PRENSA_MATRIZ: TStringField
      FieldName = 'FTI_PRENSA_MATRIZ'
      Size = 255
    end
    object cdsFichaFTI_PRENSA_PINO: TStringField
      FieldName = 'FTI_PRENSA_PINO'
      Size = 255
    end
    object cdsFichaFTI_PRENSA_BUCHA: TStringField
      FieldName = 'FTI_PRENSA_BUCHA'
      Size = 255
    end
    object cdsFichaFTI_PRENSA_CONTRA_BUCHA: TStringField
      FieldName = 'FTI_PRENSA_CONTRA_BUCHA'
      Size = 255
    end
    object cdsFichaFTI_PRENSA_OBSERVACAO: TMemoField
      FieldName = 'FTI_PRENSA_OBSERVACAO'
      BlobType = ftMemo
      Size = 1
    end
    object cdsFichaFTI_LAMINACAO_CAIXA_N: TStringField
      FieldName = 'FTI_LAMINACAO_CAIXA_N'
      Size = 255
    end
    object cdsFichaFTI_LAMINACAO_TIPO_ROLO: TStringField
      FieldName = 'FTI_LAMINACAO_TIPO_ROLO'
      Size = 255
    end
    object cdsFichaFTI_LAMINACAO_TIPO_ROSCA: TStringField
      FieldName = 'FTI_LAMINACAO_TIPO_ROSCA'
      Size = 255
    end
    object cdsFichaFTI_LAMINACAO_ALT_USINAGEM: TStringField
      FieldName = 'FTI_LAMINACAO_ALT_USINAGEM'
      Size = 255
    end
    object cdsFichaFTI_LAMINACAO_COMP_ROSCA: TStringField
      FieldName = 'FTI_LAMINACAO_COMP_ROSCA'
      Size = 255
    end
    object cdsFichaFTI_LAMINACAO_OBSERVACAO: TMemoField
      FieldName = 'FTI_LAMINACAO_OBSERVACAO'
      BlobType = ftMemo
      Size = 1
    end
    object cdsFichaPRD_REFER_ITENS: TStringField
      FieldName = 'PRD_REFER_ITENS'
    end
    object cdsFichaPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
    end
  end
  object dspFicha: TDataSetProvider
    DataSet = tbFicha
    Left = 178
    Top = 115
  end
end
