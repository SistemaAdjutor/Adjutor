inherited frmRequisicaoMaterialCadastraItem: TfrmRequisicaoMaterialCadastraItem
  Caption = 'Requisi'#231#227'o de Material - Cadastro de Itens'
  ClientHeight = 354
  ClientWidth = 576
  ExplicitWidth = 584
  ExplicitHeight = 381
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel [0]
    Left = 0
    Top = 318
    Width = 576
    Height = 36
    Align = alBottom
    TabOrder = 0
    object btCancela: TBitBtn
      Left = 386
      Top = 4
      Width = 85
      Height = 25
      Cursor = crHandPoint
      Hint = '|Cancela registro atual...'
      Caption = '&Cancelar'
      Enabled = False
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
      TabOrder = 0
      TabStop = False
      OnClick = btCancelaClick
    end
    object btSalva: TBitBtn
      Left = 291
      Top = 4
      Width = 85
      Height = 25
      Cursor = crHandPoint
      Hint = '|Grava registro...'
      Caption = '&Salvar'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
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
      OnClick = btSalvaClick
    end
    object btExclui: TBitBtn
      Left = 197
      Top = 4
      Width = 85
      Height = 25
      Cursor = crHandPoint
      Hint = '|Exclui registro atual..'
      Caption = 'Excluir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Arial'
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
      TabOrder = 2
      TabStop = False
      OnClick = btExcluiClick
    end
    object btNovo: TBitBtn
      Left = 7
      Top = 4
      Width = 85
      Height = 25
      Cursor = crHandPoint
      Caption = '&Novo'
      Glyph.Data = {
        E6000000424DE60000000000000076000000280000000E0000000E0000000100
        04000000000070000000CE0E0000D80E00001000000000000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3300333333333333330033333333333333003333300033333300333330003333
        3300333330003333330033000000000333003300000000033300330000000003
        3300333330003333330033333000333333003333300033333300333333333333
        33003333333333333300}
      TabOrder = 3
      TabStop = False
      OnClick = btNovoClick
    end
    object btEdita: TBitBtn
      Left = 102
      Top = 4
      Width = 85
      Height = 25
      Cursor = crHandPoint
      Hint = 'Edita Pedido'
      Caption = 'Editar'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      Glyph.Data = {
        36060000424D3606000000000000360400002800000020000000100000000100
        0800000000000002000000000000000000000001000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
        A6000020400000206000002080000020A0000020C0000020E000004000000040
        20000040400000406000004080000040A0000040C0000040E000006000000060
        20000060400000606000006080000060A0000060C0000060E000008000000080
        20000080400000806000008080000080A0000080C0000080E00000A0000000A0
        200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
        200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
        200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
        20004000400040006000400080004000A0004000C0004000E000402000004020
        20004020400040206000402080004020A0004020C0004020E000404000004040
        20004040400040406000404080004040A0004040C0004040E000406000004060
        20004060400040606000406080004060A0004060C0004060E000408000004080
        20004080400040806000408080004080A0004080C0004080E00040A0000040A0
        200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
        200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
        200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
        20008000400080006000800080008000A0008000C0008000E000802000008020
        20008020400080206000802080008020A0008020C0008020E000804000008040
        20008040400080406000804080008040A0008040C0008040E000806000008060
        20008060400080606000806080008060A0008060C0008060E000808000008080
        20008080400080806000808080008080A0008080C0008080E00080A0000080A0
        200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
        200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
        200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
        2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
        2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
        2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
        2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
        2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
        2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
        2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF000300000000A4
        00000000A4000303030303A4A4A4A4A4A4A4A4A4A4A4FF0303030300F6F6F6F6
        0008A4A400A40303030303A4FF030303A4FF0303A4A4FF0303030300F6F6F6F6
        00F6072F2F000303030303A4FF030303A4FF030303A4FF0303030300F6A4A4F6
        0007FB1D2F2F0003030303A4FF030303A4FF03030303A4FF03030300F6F6F6F6
        F600FBFB1D2F9000030303A4FF03030303A4FF03030303A4FF030300F6A4A4A4
        A4F600FBFBF79090000303A4FF0303030303A4FF03030303A4FF0300F6F6F6F6
        F6F6F600FBF71E0D0D0003A4FF030303030303A4FF03030303A40300FFA4A4A4
        A4A4A4F600F70DA7A70003A4FF03030303030303A4FF030303A40300FFF6F6F6
        F6F6F6F6F60067AF160003A4FF0303030303030303A4FFFFFFA40300FFA4A4A4
        A4A4A4A4F6A40000000303A4FF0303030303030303A4A4A4A4FF0300FFFFFFF6
        F6F6F6F6F6000303030303A4FF0303030303030303A4FF0303030300FFA4A4A4
        A4F6F6F6F6000303030303A4FF0303030303030303A4FF0303030300FFFFFFFF
        FFF6000000000303030303A4FF0303030303A4A4A4A4FF0303030300FFA4A4A4
        A4FF00F600030303030303A4FF0303030303A4FFA4FF030303030300FFFFFFFF
        FFFF000003030303030303A4FFFFFFFFFFFFA4A4FF0303030303030000000000
        0000030303030303030303A4A4A4A4A4A4A4FF03030303030303}
      NumGlyphs = 2
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      TabStop = False
      OnClick = btEditaClick
    end
    object btSai: TBitBtn
      Left = 478
      Top = 4
      Width = 85
      Height = 25
      Cursor = crHandPoint
      Caption = '&Sair'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000C40E0000C40E00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333330
        0000333333333333777711111111000BB030377777777777337F1EEEEEEE0BBB
        B030373333333733337F1EEEEEEE0BBBB03037F333333733337F1EEEEEEE0BBB
        B03037F333333733337F1EEEEEEE0BBBB03037F333333733337F1EEEEEEE0BBB
        B03037F3333337F3337F1EEEEEEE0BBB003037F3333337F3377F1EEEEEEE0BBB
        B03037F3333337F3337F1EEEEEEE0BBBB03037F3333337F3337F1EEEEEEE0BBB
        B03037F3333337F3337F1EEEEEEE0BBBB03037F3333337F3337F1EEEEEEE0BBB
        B03037FFFFFF37FF337F11111111000BB030377777777777337F333333333330
        0000333333333333777733333333333333333333333333333333}
      NumGlyphs = 2
      TabOrder = 5
      TabStop = False
      OnClick = btSaiClick
    end
  end
  object Panel2: TPanel [1]
    Left = 0
    Top = 0
    Width = 576
    Height = 89
    Align = alTop
    TabOrder = 1
    object lbDescCodigo: TLabel
      Left = 16
      Top = 12
      Width = 106
      Height = 13
      Caption = 'C'#243'digo da Requisi'#231#227'o:'
    end
    object lbRemCodigo: TLabel
      Left = 128
      Top = 12
      Width = 74
      Height = 13
      Caption = 'lbRemCodigo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object GroupBox1: TGroupBox
      Left = 16
      Top = 31
      Width = 497
      Height = 52
      TabOrder = 0
      object Label1: TLabel
        Left = 5
        Top = 29
        Width = 112
        Height = 13
        Caption = 'Refer'#234'ncia do Produto:'
      end
      object Label2: TLabel
        Left = 416
        Top = 11
        Width = 56
        Height = 13
        Caption = 'Quantidade'
      end
      object cbProduto: TSgDbSearchCombo
        Left = 180
        Top = 26
        Width = 196
        Height = 21
        TabOrder = 0
        CharCase = ecUpperCase
        LookupSelect = 'PRD_REFER,PRD_DESCRI'
        LookupOrderBy = 'PRD_DESCRI'
        LookupTable = 'PRD0000'
        LookupDispl = 'PRD_DESCRI'
        OnSelect = cbProdutoSelect
        GridAutoSize = False
        LookupSource = qAux3
        LookupKeyField = 'PRD_REFER'
        ShowButton = True
        LookupTableShare = 'TABELAS'
        AutoF8WinTitulo = 'Produtos'
        AutoF8ColumnsTitulo = 'Refer'#234'ncia, Descri'#231#227'o'
        GridLeft = 0
        GridWidth = 0
        GridHeight = 100
        GridShowWhenEnter = False
        SelectWithDoubleClick = False
      end
      object dbPrdRefer: TDBEdit
        Left = 122
        Top = 26
        Width = 52
        Height = 21
        DataField = 'PRD_REFER'
        DataSource = dsItem
        TabOrder = 1
        OnChange = dbPrdReferChange
        OnExit = dbPrdReferExit
      end
      object JvDBSpinEdit1: TJvDBSpinEdit
        Left = 415
        Top = 26
        Width = 70
        Height = 21
        Decimal = 4
        ValueType = vtFloat
        TabOrder = 2
        DataField = 'RMI_QUANTIDADE'
        DataSource = dsItem
      end
    end
  end
  object cxGrid1: TcxGrid [2]
    Left = 0
    Top = 89
    Width = 576
    Height = 229
    Align = alClient
    TabOrder = 2
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.First.Visible = True
      Navigator.Buttons.PriorPage.Visible = True
      Navigator.Buttons.Prior.Visible = True
      Navigator.Buttons.Next.Visible = True
      Navigator.Buttons.NextPage.Visible = True
      Navigator.Buttons.Last.Visible = True
      Navigator.Buttons.Insert.Visible = True
      Navigator.Buttons.Append.Visible = False
      Navigator.Buttons.Delete.Visible = True
      Navigator.Buttons.Edit.Visible = True
      Navigator.Buttons.Post.Visible = True
      Navigator.Buttons.Cancel.Visible = True
      Navigator.Buttons.Refresh.Visible = True
      Navigator.Buttons.SaveBookmark.Visible = True
      Navigator.Buttons.GotoBookmark.Visible = True
      Navigator.Buttons.Filter.Visible = True
      OnCellDblClick = cxGrid1DBTableView1CellDblClick
      DataController.DataSource = dsItem
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1RMI_CODIGO: TcxGridDBColumn
        Caption = 'Chave Prim'#225'ria'
        DataBinding.FieldName = 'RMI_CODIGO'
        Visible = False
        Options.Editing = False
        Width = 89
      end
      object cxGrid1DBTableView1REM_CODIGO: TcxGridDBColumn
        Caption = 'C'#243'd. Requisi'#231#227'o'
        DataBinding.FieldName = 'REM_CODIGO'
        Options.Editing = False
        Width = 88
      end
      object cxGrid1DBTableView1PRD_REFER: TcxGridDBColumn
        Caption = 'Desci'#231#227'o do Produto'
        DataBinding.FieldName = 'PRD_REFER'
        OnGetDataText = cxGrid1DBTableView1PRD_REFERGetDataText
        Options.Editing = False
        Width = 298
      end
      object cxGrid1DBTableView1RMI_QUANTIDADE: TcxGridDBColumn
        Caption = 'Quantidade'
        DataBinding.FieldName = 'RMI_QUANTIDADE'
        Options.Editing = False
        Width = 72
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  inherited coCalcula: TACBrCalculadora
    Left = 88
    Top = 240
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 160
    Top = 240
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
    Left = 24
    Top = 241
  end
  inherited qAux: TSQLQuery
    Left = 274
    Top = 237
  end
  inherited qAux2: TSQLQuery
    Left = 330
    Top = 236
  end
  inherited qAux3: TSQLQuery
    Left = 394
  end
  object qItem: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM REQUISICAO_MATERIAL_ITEM')
    SQLConnection = DBConn
    Left = 56
    Top = 136
  end
  object dspItem: TDataSetProvider
    DataSet = qItem
    Left = 120
    Top = 136
  end
  object cdsItem: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspItem'
    Left = 192
    Top = 136
    object cdsItemRMI_CODIGO: TIntegerField
      FieldName = 'RMI_CODIGO'
      Required = True
    end
    object cdsItemREM_CODIGO: TIntegerField
      FieldName = 'REM_CODIGO'
    end
    object cdsItemPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
    end
    object cdsItemRMI_QUANTIDADE: TFMTBCDField
      FieldName = 'RMI_QUANTIDADE'
      DisplayFormat = '#,###0.0000'
      EditFormat = '#,###0.0000'
      Precision = 18
      Size = 5
    end
  end
  object dsItem: TDataSource
    DataSet = cdsItem
    Left = 256
    Top = 136
  end
  object qItemAut: TSQLTable
    MaxBlobSize = -1
    SQLConnection = DBConn
    TableName = 'REQUISICAO_MATERIAL_AUT'
    Left = 56
    Top = 182
  end
  object dspItemAut: TDataSetProvider
    DataSet = qItemAut
    Left = 120
    Top = 184
  end
  object cdsItemAut: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspItemAut'
    Left = 192
    Top = 184
    object cdsItemAutRMA_CODIGO: TIntegerField
      FieldName = 'RMA_CODIGO'
      Required = True
    end
    object cdsItemAutRMI_CODIGO: TIntegerField
      FieldName = 'RMI_CODIGO'
    end
    object cdsItemAutUSU_NOME: TStringField
      FieldName = 'USU_NOME'
      Size = 40
    end
    object cdsItemAutRMA_SITUACAO: TStringField
      FieldName = 'RMA_SITUACAO'
      Size = 1
    end
    object cdsItemAutRMA_STATUS: TStringField
      FieldName = 'RMA_STATUS'
      Size = 1
    end
    object cdsItemAutRMA_DATA: TDateField
      FieldName = 'RMA_DATA'
    end
  end
  object dsItemAut: TDataSource
    DataSet = cdsItemAut
    Left = 256
    Top = 184
  end
end
