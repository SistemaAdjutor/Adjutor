inherited frmRegularizacaoEstoque: TfrmRegularizacaoEstoque
  Caption = 'Regulariza'#231#227'o do Estoque'
  ClientHeight = 497
  ClientWidth = 842
  FormStyle = fsMDIChild
  Visible = True
  ExplicitWidth = 850
  ExplicitHeight = 524
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox [0]
    Left = 0
    Top = 0
    Width = 842
    Height = 73
    Align = alTop
    TabOrder = 0
    DesignSize = (
      842
      73)
    object Label1: TLabel
      Left = 19
      Top = 37
      Width = 50
      Height = 13
      Caption = 'Descri'#231#227'o:'
    end
    object Label2: TLabel
      Left = 709
      Top = 36
      Width = 29
      Height = 13
      Anchors = [akTop]
      Caption = 'UND.:'
      ExplicitLeft = 693
    end
    object Label3: TLabel
      Left = 15
      Top = 14
      Width = 56
      Height = 13
      Caption = 'Refer'#234'ncia:'
    end
    object dbPrdDescri: TDBEdit
      Left = 72
      Top = 33
      Width = 599
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      BiDiMode = bdLeftToRight
      CharCase = ecUpperCase
      DataField = 'PRD_DESCRI'
      DataSource = dsProdutos
      ParentBiDiMode = False
      ReadOnly = True
      TabOrder = 1
    end
    object edPrdRefer: TEdit
      Left = 72
      Top = 8
      Width = 141
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 20
      TabOrder = 0
      OnExit = edPrdReferExit
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox
      Left = 742
      Top = 33
      Anchors = [akTop]
      DataBinding.DataField = 'PRD_UND'
      DataBinding.DataSource = dsProdutos
      Properties.KeyFieldNames = 'PRD_UNISIGLA'
      Properties.ListColumns = <
        item
          Caption = 'Sigla'
          FieldName = 'PRD_UNISIGLA'
        end>
      Properties.ListSource = dsUnidade
      Properties.ReadOnly = True
      TabOrder = 2
      Width = 77
    end
  end
  object Panel1: TPanel [1]
    Left = 0
    Top = 456
    Width = 842
    Height = 41
    Align = alBottom
    TabOrder = 1
    DesignSize = (
      842
      41)
    object Bit_Lista: TBitBtn
      Left = 5
      Top = 7
      Width = 85
      Height = 25
      Cursor = crHandPoint
      Caption = 'C&onsulta'
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
      TabOrder = 0
      TabStop = False
      OnClick = Bit_ListaClick
    end
    object Bit_Relatorio: TBitBtn
      Left = 91
      Top = 7
      Width = 85
      Height = 25
      Cursor = crHandPoint
      Caption = '&Relat'#243'rio'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
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
    end
    object Bit_Gravar: TBitBtn
      Left = 556
      Top = 7
      Width = 92
      Height = 25
      Cursor = crHandPoint
      Hint = '|Grava registro...'
      Anchors = [akTop, akRight]
      Caption = '&Gravar'
      Enabled = False
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
      TabOrder = 2
      TabStop = False
      OnClick = Bit_GravarClick
    end
    object Bit_Cancelar: TBitBtn
      Left = 651
      Top = 7
      Width = 92
      Height = 25
      Cursor = crHandPoint
      Hint = '|Cancela registro atual...'
      Anchors = [akTop, akRight]
      Caption = '&Cancelar'
      Enabled = False
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
      TabOrder = 3
      TabStop = False
      OnClick = Bit_CancelarClick
    end
    object Bit_Sair: TBitBtn
      Left = 745
      Top = 7
      Width = 91
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
      NumGlyphs = 2
      TabOrder = 4
      TabStop = False
      OnClick = Bit_SairClick
    end
  end
  object Panel2: TPanel [2]
    Left = 0
    Top = 73
    Width = 842
    Height = 80
    Align = alTop
    TabOrder = 2
    object Label12: TLabel
      Left = 7
      Top = 14
      Width = 119
      Height = 13
      Caption = 'Almoxarifado do Produto'
    end
    object btnCadastroEnderecamento: TSpeedButton
      Left = 331
      Top = 39
      Width = 22
      Height = 21
      Hint = 'Cadastro de Endere'#231'amento do Estoque'
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
      OnClick = btnCadastroEnderecamentoClick
    end
    object Label9: TLabel
      Left = 24
      Top = 41
      Width = 102
      Height = 13
      Caption = 'Endere'#231'o do Estoque'
    end
    object cbAlmoxarifadoProduto: TComboBoxRw
      Left = 132
      Top = 11
      Width = 209
      Height = 21
      TabOrder = 0
      OnChange = cbAlmoxarifadoProdutoChange
      CharCase = ecUpperCase
      LookupSelect = 'amx_CODIGO,AMX_DESCRI'
      LookupOrderBy = 'AMX_DESCRI'
      LookupTable = 'ALMOX0000'
      LookupDispl = 'AMX_DESCRI'
      GridAutoSize = False
      LookupSource = cbAlmoxarifadoProduto.InternalSource
      DataField = 'AMX_CODIGO'
      DataSource = dsProdutos
      LookupKeyField = 'amx_CODIGO'
      ShowButton = True
      LookupTableShare = 'TABELAS'
      AutoF8WinTitulo = 'Almoxarifados'
      AutoF8ColumnsTitulo = 'C'#243'digo, Descri'#231#227'o'
      GridLeft = 0
      GridWidth = 0
      GridHeight = 100
      GridShowWhenEnter = False
      SelectWithDoubleClick = False
      Tabela = 'ALMOX0000'
      CamposCarregar = 'amx_CODIGO,AMX_DESCRI'
      CamposRetornar = 'amx_CODIGO'
      CamposOrdernar = 'AMX_DESCRI'
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
    object chkAlmoxarifadoUnico: TDBCheckBox
      Left = 379
      Top = 14
      Width = 182
      Height = 17
      Caption = 'Produto com Almoxarifado '#218'nico'
      DataField = 'PRD_ALMOX_UNICO'
      DataSource = dsProdutos
      TabOrder = 1
      ValueChecked = 'S'
      ValueUnchecked = 'N'
      OnClick = chkAlmoxarifadoUnicoClick
    end
    object lcEnderecamento: TcxDBLookupComboBox
      Left = 132
      Top = 38
      DataBinding.DataField = 'PRDE_REGISTRO'
      DataBinding.DataSource = dsProdutos
      Properties.KeyFieldNames = 'PRDE_REGISTRO'
      Properties.ListColumns = <
        item
          FieldName = 'PRDE_ENDERECO'
        end>
      Properties.ListSource = dsEnderecamento
      TabOrder = 2
      Width = 193
    end
  end
  object GroupBox2: TGroupBox [3]
    Left = 0
    Top = 153
    Width = 842
    Height = 56
    Align = alTop
    Caption = 'Informa'#231#245'es de Estoque'
    TabOrder = 3
    object Label10: TLabel
      Left = 19
      Top = 21
      Width = 78
      Height = 13
      Caption = 'Estoque M'#237'nimo:'
      FocusControl = dbPrdMinimo
    end
    object Label11: TLabel
      Left = 218
      Top = 21
      Width = 78
      Height = 13
      Caption = 'Estoque M'#225'ximo'
      FocusControl = dbPrdMaximo
    end
    object Label4: TLabel
      Left = 414
      Top = 21
      Width = 112
      Height = 13
      Caption = 'Estoque de Seguran'#231'a:'
      FocusControl = dbEstoqueSegurancaReg
    end
    object Label5: TLabel
      Left = 630
      Top = 21
      Width = 80
      Height = 13
      Caption = 'Lote de Compra:'
      FocusControl = dbLoteDeCompraReg
    end
    object dbPrdMaximo: TcxDBTextEdit
      Left = 302
      Top = 17
      DataBinding.DataField = 'PRD_MAXIMO'
      DataBinding.DataSource = dsProdutos
      TabOrder = 1
      Width = 90
    end
    object dbPrdMinimo: TcxDBTextEdit
      Left = 101
      Top = 17
      DataBinding.DataField = 'PRD_MINIMO'
      DataBinding.DataSource = dsProdutos
      TabOrder = 0
      Width = 90
    end
    object dbEstoqueSegurancaReg: TcxDBTextEdit
      Left = 532
      Top = 17
      DataBinding.DataField = 'PRD_ESTOQUE_SEGURANCA_REG'
      DataBinding.DataSource = dsProdutos
      TabOrder = 2
      Width = 90
    end
    object dbLoteDeCompraReg: TcxDBTextEdit
      Left = 712
      Top = 17
      DataBinding.DataField = 'PRD_LOTE_COMPRA_REG'
      DataBinding.DataSource = dsProdutos
      TabOrder = 3
      Width = 90
    end
  end
  object GroupBox3: TGroupBox [4]
    Left = 0
    Top = 209
    Width = 842
    Height = 209
    Align = alClient
    Caption = 'Observa'#231#227'o'
    TabOrder = 4
    object dbObservacaoReg: TcxDBMemo
      Left = 2
      Top = 15
      Align = alClient
      DataBinding.DataField = 'PRD_OBSERVACAO_REG'
      DataBinding.DataSource = dsProdutos
      TabOrder = 0
      Height = 192
      Width = 838
    end
  end
  object Panel3: TPanel [5]
    Left = 0
    Top = 418
    Width = 842
    Height = 38
    Align = alBottom
    TabOrder = 5
    object Label7: TLabel
      Left = 183
      Top = 12
      Width = 112
      Height = 13
      Caption = 'Data da Regulariza'#231#227'o:'
      FocusControl = dbDataReg
    end
    object Label8: TLabel
      Left = 15
      Top = 12
      Width = 40
      Height = 13
      Caption = 'Usu'#225'rio:'
    end
    object lbUsuario: TLabel
      Left = 61
      Top = 12
      Width = 43
      Height = 13
      Caption = 'Usu'#225'rio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dbDataReg: TcxDBDateEdit
      Left = 301
      Top = 8
      DataBinding.DataField = 'PRD_DATA_REG'
      DataBinding.DataSource = dsProdutos
      Enabled = False
      Properties.ReadOnly = True
      Properties.ShowTime = False
      StyleDisabled.ButtonStyle = btsDefault
      TabOrder = 0
      Width = 80
    end
  end
  inherited coCalcula: TACBrCalculadora
    Left = 392
    Top = 408
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 464
    Top = 408
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
    Top = 337
  end
  inherited qAux: TSQLQuery
    Left = 578
    Top = 405
  end
  inherited qAux2: TSQLQuery
    Left = 634
    Top = 404
  end
  inherited qAux3: TSQLQuery
    Left = 682
    Top = 404
  end
  object dsProdutos: TDataSource
    DataSet = cdsProdutos
    Left = 575
    Top = 22
  end
  object cdsProdutos: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'PRD_CODIGO'
        Attributes = [faRequired]
        DataType = ftString
        Size = 5
      end
      item
        Name = 'PRD_REFER'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'PRD_DESCRI'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'PRD_UND'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'PRDE_REGISTRO'
        DataType = ftInteger
      end
      item
        Name = 'PRD_MINIMO'
        DataType = ftFMTBcd
        Precision = 18
        Size = 5
      end
      item
        Name = 'PRD_MAXIMO'
        DataType = ftFMTBcd
        Precision = 18
        Size = 5
      end
      item
        Name = 'PRD_ESTOQUE_SEGURANCA_REG'
        DataType = ftFMTBcd
        Precision = 18
        Size = 4
      end
      item
        Name = 'PRD_LOTE_COMPRA_REG'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'PRD_OBSERVACAO_REG'
        DataType = ftMemo
        Size = 1
      end
      item
        Name = 'PRD_DATA_REG'
        DataType = ftDate
      end
      item
        Name = 'PRD_USU_CODIGO_REG'
        DataType = ftInteger
      end
      item
        Name = 'AMX_CODIGO'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'PRD_ALMOX_UNICO'
        DataType = ftString
        Size = 1
      end>
    IndexDefs = <>
    PacketRecords = 6
    Params = <>
    ProviderName = 'DspProdutos'
    StoreDefs = True
    AfterEdit = cdsProdutosAfterEdit
    AfterPost = cdsProdutosAfterPost
    AfterCancel = cdsProdutosAfterCancel
    AfterScroll = cdsProdutosAfterScroll
    OnReconcileError = cdsProdutosReconcileError
    Left = 504
    Top = 22
    object cdsProdutosPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 5
    end
    object cdsProdutosPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      KeyFields = 'PRD_REFER'
    end
    object cdsProdutosPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 100
    end
    object cdsProdutosPRD_UND: TStringField
      FieldName = 'PRD_UND'
      Size = 6
    end
    object cdsProdutosPRDE_REGISTRO: TIntegerField
      FieldName = 'PRDE_REGISTRO'
    end
    object cdsProdutosPRD_MINIMO: TFMTBCDField
      FieldName = 'PRD_MINIMO'
      DisplayFormat = '#,###0.0000'
      EditFormat = '#,###0.0000'
      Precision = 18
      Size = 5
    end
    object cdsProdutosPRD_MAXIMO: TFMTBCDField
      FieldName = 'PRD_MAXIMO'
      DisplayFormat = '#,###0.0000'
      EditFormat = '#,###0.0000'
      Precision = 18
      Size = 5
    end
    object cdsProdutosPRD_ESTOQUE_SEGURANCA_REG: TFMTBCDField
      FieldName = 'PRD_ESTOQUE_SEGURANCA_REG'
      OnGetText = cdsProdutosPRD_ESTOQUE_SEGURANCA_REGGetText
      DisplayFormat = '#,###0.0000'
      EditFormat = '#,###0.0000'
      Precision = 18
      Size = 4
    end
    object cdsProdutosPRD_LOTE_COMPRA_REG: TStringField
      FieldName = 'PRD_LOTE_COMPRA_REG'
      Size = 30
    end
    object cdsProdutosPRD_OBSERVACAO_REG: TMemoField
      FieldName = 'PRD_OBSERVACAO_REG'
      BlobType = ftMemo
      Size = 1
    end
    object cdsProdutosPRD_DATA_REG: TDateField
      FieldName = 'PRD_DATA_REG'
    end
    object cdsProdutosPRD_USU_CODIGO_REG: TIntegerField
      FieldName = 'PRD_USU_CODIGO_REG'
    end
    object cdsProdutosAMX_CODIGO: TStringField
      DisplayWidth = 4
      FieldName = 'AMX_CODIGO'
      Size = 4
    end
    object cdsProdutosPRD_ALMOX_UNICO: TStringField
      FieldName = 'PRD_ALMOX_UNICO'
      Size = 1
    end
  end
  object dspProdutos: TDataSetProvider
    DataSet = qProdutos
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 432
    Top = 22
  end
  object qProdutos: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM PRD0000')
    SQLConnection = DBConn
    Left = 359
    Top = 22
    object qProdutosPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 5
    end
    object qProdutosPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
    end
    object qProdutosPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 100
    end
    object qProdutosPRD_UND: TStringField
      FieldName = 'PRD_UND'
      Size = 6
    end
    object qProdutosPRDE_REGISTRO: TIntegerField
      FieldName = 'PRDE_REGISTRO'
    end
    object qProdutosPRD_MINIMO: TFMTBCDField
      FieldName = 'PRD_MINIMO'
      Precision = 18
      Size = 5
    end
    object qProdutosPRD_MAXIMO: TFMTBCDField
      FieldName = 'PRD_MAXIMO'
      Precision = 18
      Size = 5
    end
    object qProdutosPRD_ESTOQUE_SEGURANCA_REG: TFMTBCDField
      FieldName = 'PRD_ESTOQUE_SEGURANCA_REG'
      Precision = 18
      Size = 4
    end
    object qProdutosPRD_LOTE_COMPRA_REG: TStringField
      FieldName = 'PRD_LOTE_COMPRA_REG'
      Size = 30
    end
    object qProdutosPRD_OBSERVACAO_REG: TMemoField
      FieldName = 'PRD_OBSERVACAO_REG'
      BlobType = ftMemo
      Size = 1
    end
    object qProdutosPRD_DATA_REG: TDateField
      FieldName = 'PRD_DATA_REG'
    end
    object qProdutosPRD_USU_CODIGO_REG: TIntegerField
      FieldName = 'PRD_USU_CODIGO_REG'
    end
    object qProdutosAMX_CODIGO: TStringField
      FieldName = 'AMX_CODIGO'
      Size = 4
    end
    object qProdutosPRD_ALMOX_UNICO: TStringField
      FieldName = 'PRD_ALMOX_UNICO'
      Size = 1
    end
  end
  object qUnidade: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from PRD_UNIDADE')
    SQLConnection = DBConn
    Left = 463
    Top = 343
  end
  object dspunidade: TDataSetProvider
    DataSet = qUnidade
    Left = 543
    Top = 343
  end
  object cdsUnidade: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspunidade'
    Left = 615
    Top = 343
    object cdsUnidadePRD_UNICODIGO: TIntegerField
      FieldName = 'PRD_UNICODIGO'
    end
    object cdsUnidadePRD_UNISIGLA: TStringField
      FieldName = 'PRD_UNISIGLA'
      Size = 6
    end
    object cdsUnidadePRD_UNIDESCRI: TStringField
      FieldName = 'PRD_UNIDESCRI'
      Size = 30
    end
  end
  object dsUnidade: TDataSource
    DataSet = cdsUnidade
    Left = 679
    Top = 343
  end
  object qEnderecamento: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM PRD0000_ENDERECAMENTO ORDER BY PRDE_ENDERECO')
    SQLConnection = DBConn
    Left = 370
    Top = 108
  end
  object dspEnderecamento: TDataSetProvider
    DataSet = qEnderecamento
    Left = 474
    Top = 108
  end
  object cdsEnderecamento: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEnderecamento'
    Left = 570
    Top = 108
    object cdsEnderecamentoPRDE_REGISTRO: TIntegerField
      FieldName = 'PRDE_REGISTRO'
      Required = True
    end
    object cdsEnderecamentoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 4
    end
    object cdsEnderecamentoPRDE_ENDERECO: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'PRDE_ENDERECO'
      Size = 30
    end
  end
  object dsEnderecamento: TDataSource
    DataSet = cdsEnderecamento
    Left = 674
    Top = 108
  end
end
