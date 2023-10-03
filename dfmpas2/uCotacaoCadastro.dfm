inherited frmCotacaoCadastro: TfrmCotacaoCadastro
  Caption = 'Gerar Solicita'#231#227'o de Compra'
  ClientHeight = 476
  ClientWidth = 992
  ExplicitWidth = 1008
  ExplicitHeight = 515
  PixelsPerInch = 96
  TextHeight = 13
  object pTop: TPanel [0]
    Left = 0
    Top = 0
    Width = 992
    Height = 228
    Align = alTop
    TabOrder = 0
    DesignSize = (
      992
      228)
    object Label1: TLabel
      Left = 255
      Top = 16
      Width = 30
      Height = 13
      Caption = 'Setor:'
    end
    object Label2: TLabel
      Left = 25
      Top = 16
      Width = 53
      Height = 13
      Caption = 'Solicitante:'
    end
    object Label3: TLabel
      Left = 16
      Top = 42
      Width = 62
      Height = 13
      Caption = 'Observa'#231#227'o:'
    end
    object Label4: TLabel
      Left = 646
      Top = 16
      Width = 95
      Height = 13
      Caption = 'Data da Solicita'#231#227'o:'
    end
    object Label8: TLabel
      Left = 23
      Top = 87
      Width = 84
      Height = 13
      Caption = 'N'#186' Pedido Venda:'
    end
    object cbSetor: TComboBoxRw
      Left = 338
      Top = 13
      Width = 271
      Height = 21
      TabOrder = 2
      OnChange = cbSetorChange
      CharCase = ecUpperCase
      LookupSelect = 'SET_CODIGO,SET_DESCRICAO'
      LookupOrderBy = 'SET_DESCRICAO'
      LookupTable = 'SETOR'
      LookupDispl = 'SET_DESCRICAO'
      GridAutoSize = False
      LookupSource = cbSetor.InternalSource
      LookupKeyField = 'SET_CODIGO'
      ShowButton = True
      LookupTableShare = 'SETORES'
      AutoF8WinTitulo = 'Setores'
      AutoF8ColumnsTitulo = 'C'#243'digo, Descricao'
      GridLeft = 0
      GridWidth = 0
      GridHeight = 100
      GridTop = 0
      GridShowWhenEnter = False
      SelectWithDoubleClick = False
      LimparCampoAoSair = True
      Tabela = 'SETOR'
      CamposCarregar = 'SET_CODIGO,SET_DESCRICAO'
      CamposRetornar = 'SET_CODIGO'
      CamposOrdernar = 'SET_DESCRICAO'
      ConexaoBanco = DataCadastros.SQLConnection1
      Compartilhar = 'SETORES'
      Localizado = False
      CodigoEmpresa = 0
      ResetaCampos = False
      MultiEmpresa = False
      Localizar = False
      CarregarCombo = False
      itemindex = 0
      style = csDropDown
    end
    object edSetCodigo: TDBEdit
      Left = 291
      Top = 13
      Width = 45
      Height = 21
      DataField = 'SET_CODIGO'
      DataSource = dsCotacao
      TabOrder = 1
      OnExit = edSetCodigoExit
    end
    object edCotSolicitante: TDBEdit
      Left = 84
      Top = 13
      Width = 164
      Height = 21
      DataField = 'COT_SOLICITANTE'
      DataSource = dsCotacao
      TabOrder = 0
    end
    object dtCotDataSolCotacao: TJvDateEdit
      Left = 743
      Top = 13
      Width = 93
      Height = 21
      DateFormat = 'YYYY'
      ShowNullDate = False
      YearDigits = dyFour
      TabOrder = 3
    end
    object gbProduto: TGroupBox
      Left = 1
      Top = 108
      Width = 990
      Height = 119
      Align = alBottom
      Caption = 'Produto'
      TabOrder = 5
      DesignSize = (
        990
        119)
      object Label5: TLabel
        Left = 13
        Top = 13
        Width = 46
        Height = 13
        Caption = 'Pesquisa:'
      end
      object Label6: TLabel
        Left = 54
        Top = 40
        Width = 50
        Height = 13
        Caption = 'Descri'#231#227'o:'
      end
      object Label7: TLabel
        Left = 230
        Top = 67
        Width = 55
        Height = 13
        Caption = 'Qtde. M'#237'n.:'
      end
      object Label9: TLabel
        Left = 412
        Top = 66
        Width = 59
        Height = 13
        Caption = 'Qtde. M'#225'x.:'
      end
      object Label10: TLabel
        Left = 60
        Top = 94
        Width = 43
        Height = 13
        Caption = 'Unidade:'
      end
      object Label11: TLabel
        Left = 234
        Top = 94
        Width = 123
        Height = 13
        Hint = 'Data em que ser'#227'o entregues os itens aprovados da cota'#231#227'o'
        Caption = 'Previs'#227'o de Necessidade:'
        ParentShowHint = False
        ShowHint = True
      end
      object Label12: TLabel
        Left = 24
        Top = 67
        Width = 80
        Height = 13
        Caption = 'Qtde. Solicitada:'
      end
      object cbProduto: TComboBoxRw
        Left = 105
        Top = 10
        Width = 552
        Height = 21
        TabOrder = 1
        OnChange = cbProdutoChange
        CharCase = ecUpperCase
        Enabled = False
        LookupSelect = 'PRD_REFER,PRD_DESCRI'
        LookupOrderBy = 'PRD_DESCRI'
        LookupTable = 'PRD0000'
        LookupDispl = 'PRD_DESCRI'
        GridAutoSize = False
        LookupSource = cbProduto.InternalSource
        LookupKeyField = 'PRD_REFER'
        ShowButton = True
        LookupTableShare = 'PRODUTOS'
        AutoF8WinTitulo = 'Produtos'
        AutoF8ColumnsTitulo = 'C'#243'digo, Descricao'
        GridLeft = 0
        GridWidth = 0
        GridHeight = 100
        GridTop = 0
        GridShowWhenEnter = False
        SelectWithDoubleClick = False
        LimparCampoAoSair = True
        Tabela = 'PRD0000'
        CamposCarregar = 'PRD_REFER,PRD_DESCRI'
        CamposRetornar = 'PRD_REFER'
        CamposOrdernar = 'PRD_DESCRI'
        ConexaoBanco = DataCadastros.SQLConnection1
        Compartilhar = 'PRODUTOS'
        Localizado = False
        CodigoEmpresa = 0
        ResetaCampos = False
        MultiEmpresa = False
        Localizar = False
        CarregarCombo = False
        itemindex = 0
        style = csDropDown
      end
      object edPrdRefer: TDBEdit
        Left = 59
        Top = 10
        Width = 45
        Height = 21
        DataField = 'PRD_REFER'
        DataSource = dsItem
        TabOrder = 0
        OnExit = edPrdReferExit
      end
      object edCitPrdDescricao: TDBEdit
        Left = 105
        Top = 37
        Width = 875
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        DataField = 'PRD_DESCRICAO'
        DataSource = dsItem
        TabOrder = 2
      end
      object edCitQtdeMin: TDBEdit
        Left = 287
        Top = 63
        Width = 102
        Height = 21
        DataField = 'CIT_QTDE_MIN'
        DataSource = dsItem
        TabOrder = 4
      end
      object edCitQtdeMax: TDBEdit
        Left = 472
        Top = 63
        Width = 93
        Height = 21
        DataField = 'CIT_QTDE_MAX'
        DataSource = dsItem
        TabOrder = 5
      end
      object cbUndMedida: TDBLookupComboBox
        Left = 104
        Top = 91
        Width = 101
        Height = 21
        DataField = 'PRD_UNISIGLA'
        DataSource = dsItem
        KeyField = 'PRD_UNISIGLA'
        ListField = 'PRD_UNIDESCRI'
        ListSource = dsUndMedida
        TabOrder = 6
      end
      object dtCitDataNecessidade: TJvDateEdit
        Left = 359
        Top = 91
        Width = 113
        Height = 21
        DateFormat = 'YYYY'
        Enabled = False
        ShowNullDate = False
        YearDigits = dyFour
        TabOrder = 7
      end
      object btAdicionarItem: TButton
        Left = 694
        Top = 90
        Width = 95
        Height = 21
        Hint = 'Incluir um novo item na cota'#231#227'o'
        Anchors = [akTop, akRight]
        Caption = 'Adicionar Item'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 9
        OnClick = btAdicionarItemClick
      end
      object btGravarItem: TButton
        Left = 791
        Top = 90
        Width = 95
        Height = 21
        Hint = 'Grava as altera'#231#245'es no item da cota'#231#227'o'
        Anchors = [akTop, akRight]
        Caption = 'Gravar Item'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 8
        OnClick = btGravarItemClick
      end
      object edCitQuantidadeSolicitada: TDBEdit
        Left = 105
        Top = 64
        Width = 100
        Height = 21
        DataField = 'CIT_QUANTIDADE_SOLICITADA'
        DataSource = dsItem
        TabOrder = 3
      end
      object btSair: TButton
        Left = 888
        Top = 90
        Width = 95
        Height = 21
        Hint = 'Grava as altera'#231#245'es no item da cota'#231#227'o'
        Anchors = [akTop, akRight]
        Caption = 'Sair'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 10
        OnClick = btSairClick
      end
      object btExcluitItem: TButton
        Left = 597
        Top = 90
        Width = 95
        Height = 21
        Caption = 'Excluir Item'
        TabOrder = 11
        OnClick = btExcluitItemClick
      end
    end
    object edCotNumero: TDBEdit
      Left = 106
      Top = 84
      Width = 96
      Height = 21
      DataField = 'COT_NUMERO'
      DataSource = dsCotacao
      TabOrder = 4
    end
    object cbCitStatus: TComboBox
      Left = 213
      Top = 84
      Width = 145
      Height = 21
      Enabled = False
      ItemIndex = 0
      TabOrder = 6
      Text = 'N'#227'o Definido'
      Items.Strings = (
        'N'#227'o Definido'
        'Aberta'
        'Rejeitada'
        'Autoriza'#231#227'o de Cota'#231#227'o'
        'Cota'#231#227'o Finalizada'
        'Autoriza'#231#227'o de Compra'
        'Conclu'#237'da'
        'Cancelada')
    end
    object DBMemo1: TDBMemo
      Left = 84
      Top = 40
      Width = 897
      Height = 36
      Anchors = [akLeft, akTop, akRight]
      DataField = 'COT_OBSERVACAO'
      DataSource = dsCotacao
      TabOrder = 7
    end
  end
  object cxGrid1: TcxGrid [1]
    Left = 0
    Top = 228
    Width = 992
    Height = 248
    Align = alClient
    TabOrder = 1
    LookAndFeel.Kind = lfStandard
    LookAndFeel.NativeStyle = False
    LookAndFeel.ScrollbarMode = sbmClassic
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
      OnCellClick = cxGrid1DBTableView1CellClick
      DataController.DataSource = dsqItem
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1COT_CODIGO: TcxGridDBColumn
        Caption = 'C'#243'd. Cota'#231#227'o'
        DataBinding.FieldName = 'COT_CODIGO'
        Visible = False
      end
      object cxGrid1DBTableView1CIT_CODIGO: TcxGridDBColumn
        Caption = 'C'#243'd. Item'
        DataBinding.FieldName = 'CIT_CODIGO'
        Visible = False
      end
      object cxGrid1DBTableView1PRD_REFER: TcxGridDBColumn
        DataBinding.FieldName = 'PRD_REFER'
      end
      object cxGrid1DBTableView1PRD_DESCRI: TcxGridDBColumn
        DataBinding.FieldName = 'PRD_DESCRI'
        Width = 276
      end
      object cxGrid1DBTableView1CIT_QUANTIDADE_SOLICITADA: TcxGridDBColumn
        Caption = 'Qtde. Solicitada'
        DataBinding.FieldName = 'CIT_QUANTIDADE_SOLICITADA'
      end
      object cxGrid1DBTableView1CIT_QTDE_MIN: TcxGridDBColumn
        DataBinding.FieldName = 'CIT_QTDE_MIN'
      end
      object cxGrid1DBTableView1CIT_QTDE_MAX: TcxGridDBColumn
        DataBinding.FieldName = 'CIT_QTDE_MAX'
      end
      object cxGrid1DBTableView1PRD_UNISIGLA: TcxGridDBColumn
        DataBinding.FieldName = 'PRD_UNISIGLA'
        Width = 52
      end
      object cxGrid1DBTableView1CIT_DATA_NECESSIDADE: TcxGridDBColumn
        Caption = 'Previs'#227'o Necessidade'
        DataBinding.FieldName = 'CIT_DATA_NECESSIDADE'
        Width = 115
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 768
    Top = 336
  end
  inherited cxLocalizer1: TcxLocalizer
    Left = 688
    Top = 336
  end
  inherited qAux: TFDQuery
    Left = 875
    Top = 416
  end
  inherited FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 944
    Top = 280
  end
  inherited FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Left = 880
    Top = 280
  end
  inherited FDTransac: TFDTransaction
    Left = 856
    Top = 336
  end
  inherited FDGUIxErrorDialog1: TFDGUIxErrorDialog
    Left = 944
    Top = 336
  end
  inherited qAux2: TFDQuery
    Left = 923
    Top = 415
  end
  inherited qAux3: TFDQuery
    Left = 963
    Top = 415
  end
  inherited qAux4: TFDQuery
    Left = 1003
    Top = 415
  end
  inherited dbConn: TFDConnection
    Params.Strings = (
      'Database=C:\Jobdados\exemplo\exemplo.fdb'
      'User_Name=sysdba'
      'Password=masterkey'
      'CharacterSet=ISO8859_1'
      'DriverID=FB')
    Left = 723
    Top = 424
  end
  inherited FDStoredProc1: TFDStoredProc
    Left = 800
    Top = 424
  end
  object tbCotacao: TFDTable
    IndexFieldNames = 'COT_CODIGO'
    Connection = DBInicio.FDACConn
    UpdateOptions.UpdateTableName = 'COTACAO'
    TableName = 'COTACAO'
    Left = 136
    Top = 224
  end
  object dsCotacao: TDataSource
    DataSet = tbCotacao
    Left = 208
    Top = 232
  end
  object dsItem: TDataSource
    DataSet = tbItem
    Left = 216
    Top = 304
  end
  object tbItem: TFDTable
    AfterInsert = tbItemAfterInsert
    IndexFieldNames = 'CIT_CODIGO'
    Connection = DBInicio.FDACConn
    UpdateOptions.UpdateTableName = 'COTACAO_ITEM'
    UpdateOptions.KeyFields = 'CIT_CODIGO'
    TableName = 'COTACAO_ITEM'
    Left = 136
    Top = 296
    object tbItemCIT_CODIGO: TIntegerField
      FieldName = 'CIT_CODIGO'
      Origin = 'CIT_CODIGO'
      Required = True
    end
    object tbItemCOT_CODIGO: TIntegerField
      FieldName = 'COT_CODIGO'
      Origin = 'COT_CODIGO'
    end
    object tbItemPRD_REFER: TStringField
      DisplayLabel = 'Refer'#234'ncia'
      FieldName = 'PRD_REFER'
      Origin = 'PRD_REFER'
    end
    object tbItemCIT_QUANTIDADE_SOLICITADA: TBCDField
      DisplayLabel = 'Qtde Solicit.'
      FieldName = 'CIT_QUANTIDADE_SOLICITADA'
      Origin = 'CIT_QUANTIDADE_SOLICITADA'
      DisplayFormat = '###,##0.0000'
      EditFormat = '###,##0.0000'
      Precision = 18
    end
    object tbItemPRD_DESCRICAO: TStringField
      DisplayLabel = 'Produto'
      DisplayWidth = 1024
      FieldName = 'PRD_DESCRICAO'
      Origin = 'PRD_DESCRICAO'
      Size = 1024
    end
    object tbItemCIT_QTDE_MIN: TBCDField
      DisplayLabel = 'Qtde. M'#237'n.'
      FieldName = 'CIT_QTDE_MIN'
      Origin = 'CIT_QTDE_MIN'
      DisplayFormat = '###,##0.0000'
      EditFormat = '###,##0.0000'
      Precision = 18
    end
    object tbItemCIT_QTDE_MAX: TBCDField
      DisplayLabel = 'Qtde. M'#225'x.'
      FieldName = 'CIT_QTDE_MAX'
      Origin = 'CIT_QTDE_MAX'
      DisplayFormat = '###,##0.0000'
      EditFormat = '###,##0.0000'
      Precision = 18
    end
    object tbItemPRD_UNISIGLA: TStringField
      DisplayLabel = 'Unidade'
      FieldName = 'PRD_UNISIGLA'
      Origin = 'PRD_UNISIGLA'
      Size = 6
    end
    object tbItemCIT_APROVADA: TStringField
      DisplayLabel = 'Aprovada'
      FieldName = 'CIT_APROVADA'
      Origin = 'CIT_APROVADA'
      Size = 1
    end
    object tbItemCIT_DATA_NECESSIDADE: TDateField
      FieldName = 'CIT_DATA_NECESSIDADE'
      Origin = 'CIT_DATA_NECESSIDADE'
    end
    object tbItemCIT_STATUS: TIntegerField
      FieldName = 'CIT_STATUS'
      Origin = 'CIT_STATUS'
    end
    object tbItemCIT_DATA_AUTORIZACAO: TDateField
      FieldName = 'CIT_DATA_AUTORIZACAO'
      Origin = 'CIT_DATA_AUTORIZACAO'
    end
    object tbItemCIT_RESPONSAVEL: TStringField
      FieldName = 'CIT_RESPONSAVEL'
      Origin = 'CIT_RESPONSAVEL'
      Size = 70
    end
    object tbItemCIT_OBS_AUTORIZACAO: TStringField
      FieldName = 'CIT_OBS_AUTORIZACAO'
      Origin = 'CIT_OBS_AUTORIZACAO'
      Size = 255
    end
  end
  object tbUndMedida: TFDTable
    CachedUpdates = True
    IndexFieldNames = 'PRD_UNISIGLA'
    Connection = DBInicio.FDACConn
    UpdateOptions.UpdateTableName = 'PRD_UNIDADE'
    TableName = 'PRD_UNIDADE'
    Left = 136
    Top = 360
  end
  object dsUndMedida: TDataSource
    DataSet = tbUndMedida
    Left = 208
    Top = 360
  end
  object qItem: TFDQuery
    Connection = dbConn
    SQL.Strings = (
      'select ci.*, '
      '  CASE WHEN ci.PRD_REFER IS NULL'
      '    THEN ci.PRD_DESCRICAO'
      '    else pr.PRD_DESCRI '
      '  END AS PRD_DESCRI'
      'from cotacao_item ci'
      'left join prd0000 pr on pr.prd_refer = ci.prd_refer'
      'order by   cot_codigo, cit_codigo')
    Left = 360
    Top = 232
    object qItemCIT_CODIGO: TIntegerField
      FieldName = 'CIT_CODIGO'
      Origin = 'CIT_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qItemCOT_CODIGO: TIntegerField
      FieldName = 'COT_CODIGO'
      Origin = 'COT_CODIGO'
    end
    object qItemPRD_REFER: TStringField
      DisplayLabel = 'Refer'#234'ncia'
      FieldName = 'PRD_REFER'
      Origin = 'PRD_REFER'
    end
    object qItemPRD_DESCRI: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Produto'
      FieldName = 'PRD_DESCRI'
      Origin = 'PRD_DESCRI'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object qItemCIT_QUANTIDADE_SOLICITADA: TBCDField
      DisplayLabel = 'Qtde. Solicit.'
      FieldName = 'CIT_QUANTIDADE_SOLICITADA'
      Origin = 'CIT_QUANTIDADE_SOLICITADA'
      Precision = 18
    end
    object qItemCIT_QTDE_MIN: TBCDField
      DisplayLabel = 'Qtde. M'#237'n.'
      FieldName = 'CIT_QTDE_MIN'
      Origin = 'CIT_QTDE_MIN'
      Precision = 18
    end
    object qItemCIT_QTDE_MAX: TBCDField
      DisplayLabel = 'Qtde. M'#225'x.'
      FieldName = 'CIT_QTDE_MAX'
      Origin = 'CIT_QTDE_MAX'
      Precision = 18
    end
    object qItemPRD_UNISIGLA: TStringField
      DisplayLabel = 'Unidade'
      FieldName = 'PRD_UNISIGLA'
      Origin = 'PRD_UNISIGLA'
      Size = 6
    end
    object qItemCIT_APROVADA: TStringField
      DisplayLabel = 'Aprovada'
      FieldName = 'CIT_APROVADA'
      Origin = 'CIT_APROVADA'
      Size = 1
    end
    object qItemCIT_DATA_NECESSIDADE: TDateField
      FieldName = 'CIT_DATA_NECESSIDADE'
      Origin = 'CIT_DATA_NECESSIDADE'
    end
  end
  object dsqItem: TDataSource
    DataSet = qItem
    Left = 424
    Top = 232
  end
end
