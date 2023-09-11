inherited frmCotacaoFornecedor: TfrmCotacaoFornecedor
  Caption = 'Cota'#231#227'o no Fornecedor'
  ClientHeight = 411
  ClientWidth = 811
  Position = poDesigned
  OnActivate = FormActivate
  ExplicitWidth = 819
  ExplicitHeight = 438
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox [0]
    Left = 0
    Top = 0
    Width = 811
    Height = 153
    Align = alTop
    Caption = 'Informa'#231#245'es do Fornecedor'
    TabOrder = 0
    object Label1: TLabel
      Left = 34
      Top = 49
      Width = 55
      Height = 13
      Caption = 'Fornecedor'
      FocusControl = edForRazao
    end
    object Label2: TLabel
      Left = 12
      Top = 22
      Width = 77
      Height = 13
      Caption = 'C'#243'd Fornecedor'
      FocusControl = edForCodigo
    end
    object Label3: TLabel
      Left = 422
      Top = 73
      Width = 42
      Height = 13
      Caption = 'Telefone'
      FocusControl = edForFone
    end
    object Label10: TLabel
      Left = 549
      Top = 70
      Width = 28
      Height = 13
      Caption = 'E-mail'
      FocusControl = edForEmail
    end
    object Label11: TLabel
      Left = 102
      Top = 73
      Width = 100
      Height = 13
      Caption = 'Nome do Fornecedor'
      FocusControl = edCofFornecedorNome
    end
    object edForRazao: TcxDBTextEdit
      Left = 102
      Top = 89
      DataBinding.DataField = 'FOR_RAZAO'
      DataBinding.DataSource = dsqCotacaoFornecedor
      Enabled = False
      Properties.ReadOnly = True
      TabOrder = 5
      Width = 314
    end
    object edForCodigo: TcxDBTextEdit
      Left = 102
      Top = 19
      DataBinding.DataField = 'FOR_CODIGO'
      DataBinding.DataSource = dsqCotacaoFornecedor
      TabOrder = 0
      OnExit = edForCodigoExit
      Width = 121
    end
    object edForFone: TcxDBTextEdit
      Left = 422
      Top = 89
      DataBinding.DataField = 'FOR_FONE'
      DataBinding.DataSource = dsqCotacaoFornecedor
      Enabled = False
      TabOrder = 6
      Width = 121
    end
    object cbFornecedor: TComboBoxRw
      Left = 102
      Top = 46
      Width = 314
      Height = 21
      TabOrder = 1
      CharCase = ecUpperCase
      LookupSelect = 'FOR_CODIGO,FOR_RAZAO'
      LookupOrderBy = 'FOR_RAZAO'
      LookupTable = 'FOR0000'
      LookupDispl = 'FOR_RAZAO'
      OnSelect = cbFornecedorSelect
      GridAutoSize = False
      LookupSource = cbFornecedor.InternalSource
      LookupKeyField = 'FOR_CODIGO'
      ShowButton = True
      LookupTableShare = 'FORNECEDORES'
      AutoF8WinTitulo = 'Fornecedores'
      AutoF8ColumnsTitulo = 'C'#243'digo, Raz'#227'o'
      GridLeft = 0
      GridWidth = 0
      GridHeight = 100
      GridShowWhenEnter = False
      SelectWithDoubleClick = False
      Tabela = 'FOR0000'
      CamposCarregar = 'FOR_CODIGO,FOR_RAZAO'
      CamposRetornar = 'FOR_CODIGO'
      CamposOrdernar = 'FOR_RAZAO'
      ConexaoBanco = DataCadastros.SQLConnection1
      Compartilhar = 'FORNECEDORES'
      Localizado = False
      CodigoEmpresa = 0
      ResetaCampos = False
      MultiEmpresa = False
      Localizar = False
      CarregarCombo = False
      itemindex = 0
      style = csDropDown
    end
    object edCofFornecedorFone: TcxDBTextEdit
      Left = 422
      Top = 116
      DataBinding.DataField = 'COF_FORNECEDOR_FONE'
      DataBinding.DataSource = dsqCotacaoFornecedor
      TabOrder = 3
      Width = 121
    end
    object edCofFornecedoreMail: TcxDBTextEdit
      Left = 544
      Top = 116
      DataBinding.DataField = 'COF_FORNECEDOR_EMAIL'
      DataBinding.DataSource = dsqCotacaoFornecedor
      TabOrder = 4
      Width = 260
    end
    object edCofFornecedorNome: TcxDBTextEdit
      Left = 102
      Top = 116
      DataBinding.DataField = 'COF_FORNECEDOR_NOME'
      DataBinding.DataSource = dsqCotacaoFornecedor
      TabOrder = 2
      Width = 314
    end
    object edForEmail: TcxDBTextEdit
      Left = 544
      Top = 89
      DataBinding.DataField = 'FOR_EMAIL'
      DataBinding.DataSource = dsqCotacaoFornecedor
      Enabled = False
      TabOrder = 7
      Width = 260
    end
  end
  object edCofCodigo: TcxDBSpinEdit [1]
    Left = 646
    Top = 14
    DataBinding.DataField = 'COF_CODIGO'
    DataBinding.DataSource = dsqCotacaoFornecedor
    Enabled = False
    Properties.ReadOnly = True
    TabOrder = 4
    Visible = False
    Width = 121
  end
  object edCitCodigo: TcxDBSpinEdit [2]
    Left = 646
    Top = 41
    DataBinding.DataField = 'CIT_CODIGO'
    DataBinding.DataSource = dsqCotacaoFornecedor
    Enabled = False
    Properties.ReadOnly = True
    TabOrder = 5
    Visible = False
    Width = 121
  end
  object GroupBox2: TGroupBox [3]
    Left = 0
    Top = 153
    Width = 811
    Height = 136
    Align = alTop
    Caption = 'Dados da Cota'#231#227'o'
    TabOrder = 1
    object Label9: TLabel
      Left = 274
      Top = 91
      Width = 64
      Height = 13
      Caption = 'Tipo do Frete'
    end
    object Label7: TLabel
      Left = 32
      Top = 91
      Width = 93
      Height = 13
      Caption = 'Prazo para Entrega'
      FocusControl = edCofDataPrazoEntrega
    end
    object Label6: TLabel
      Left = 12
      Top = 42
      Width = 109
      Height = 13
      Caption = 'Prazo para Pagamento'
    end
    object Label5: TLabel
      Left = 289
      Top = 15
      Width = 65
      Height = 13
      Caption = 'Pre'#231'o Cotado'
      FocusControl = edCofPrecoCotacao
    end
    object Label4: TLabel
      Left = 27
      Top = 15
      Width = 94
      Height = 13
      Caption = 'Quantidade Cotada'
      FocusControl = edCofQuantidadeCotada
    end
    object Label12: TLabel
      Left = 47
      Top = 66
      Width = 74
      Height = 13
      Alignment = taRightJustify
      Caption = 'Via Transporte:'
    end
    object cbCofTipoFrete: TDBComboBox
      Left = 344
      Top = 88
      Width = 137
      Height = 21
      DataField = 'COF_TIPO_FRETE'
      DataSource = dsqCotacaoFornecedor
      Items.Strings = (
        '0-Remetente (CIF)'
        '1-Destinat'#225'rio (FOB)'
        '2-Terceiros'
        '3-Pr'#243'prio por conta do remetente'
        '4-Pr'#243'prio por conta do destinat'#225'rio'
        '9-Sem frete')
      TabOrder = 6
    end
    object EdPrazoCodigo: TEdit
      Left = 135
      Top = 39
      Width = 43
      Height = 21
      CharCase = ecUpperCase
      Color = clWhite
      MaxLength = 5
      TabOrder = 2
      OnExit = EdPrazoCodigoExit
    end
    object edPrazo: TSgDbSearchCombo
      Left = 179
      Top = 39
      Width = 279
      Height = 21
      TabOrder = 3
      OnChange = edPrazoChange
      CharCase = ecUpperCase
      LookupSelect = 'pcl_codigo, pcl_nome'
      LookupOrderBy = 'pcl_nome'
      LookupTable = 'PCL0000'
      LookupDispl = 'PCL_NOME'
      GridAutoSize = False
      LookupSource = qPrazo
      LookupKeyField = 'pcl_codigo'
      FiltroTabela = 'PCL_DISPONIVEL='#39'S'#39
      ShowButton = True
      AutoF8WinTitulo = 'Prazos'
      AutoF8ColumnsTitulo = 'C'#243'digo, Nome'
      GridLeft = 0
      GridWidth = 0
      GridHeight = 100
      GridShowWhenEnter = False
      SelectWithDoubleClick = False
    end
    object edCofDataPrazoEntrega: TcxDBDateEdit
      Left = 136
      Top = 88
      DataBinding.DataField = 'COF_DATA_PRAZO_ENTREGA'
      DataBinding.DataSource = dsqCotacaoFornecedor
      TabOrder = 5
      Width = 121
    end
    object edCofPrecoCotacao: TcxDBCurrencyEdit
      Left = 360
      Top = 12
      DataBinding.DataField = 'COF_PRECO_COTACAO'
      DataBinding.DataSource = dsqCotacaoFornecedor
      TabOrder = 1
      Width = 121
    end
    object edCofQuantidadeCotada: TcxDBCurrencyEdit
      Left = 134
      Top = 12
      DataBinding.DataField = 'COF_QUANTIDADE_COTADA'
      DataBinding.DataSource = dsqCotacaoFornecedor
      TabOrder = 0
      Width = 121
    end
    object cbCofViaTransporte: TJvDBComboBox
      Left = 136
      Top = 63
      Width = 345
      Height = 21
      DataField = 'COF_VIA_TRANSPORTE'
      DataSource = dsqCotacaoFornecedor
      Items.Strings = (
        '1-Mar'#237'tima'
        '2-Fluvial'
        '3-Lacustre'
        '4-A'#233'rea'
        '5-Postal'
        '6-Ferrovi'#225'ria'
        '7-Rodovi'#225'ria'
        '8-Conduto/Rede Trans.'
        '9-Meios Pr'#243'prios'
        '10-Entrada/Sa'#237'da Ficta'
        '11-Courier'
        '12-Handcarry')
      TabOrder = 4
      Values.Strings = (
        '1'
        '2'
        '3'
        '4'
        '5'
        '6'
        '7'
        '8'
        '9'
        '10'
        '11'
        '12')
      ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
      ListSettings.OutfilteredValueFont.Color = clRed
      ListSettings.OutfilteredValueFont.Height = -11
      ListSettings.OutfilteredValueFont.Name = 'MS Sans Serif'
      ListSettings.OutfilteredValueFont.Style = []
    end
  end
  object GroupBox3: TGroupBox [4]
    Left = 0
    Top = 289
    Width = 811
    Height = 69
    Align = alTop
    Caption = 'Aprovar'
    TabOrder = 2
    ExplicitTop = 295
    object Label8: TLabel
      Left = 23
      Top = 16
      Width = 98
      Height = 13
      Caption = 'Data da Autoriza'#231#227'o'
      FocusControl = edCofDataAutorizacao
    end
    object edCofDataAutorizacao: TcxDBDateEdit
      Left = 134
      Top = 13
      DataBinding.DataField = 'COF_DATA_AUTORIZACAO'
      DataBinding.DataSource = dsqCotacaoFornecedor
      TabOrder = 0
      Width = 121
    end
    object cbCofAprovada: TDBCheckBox
      Left = 23
      Top = 40
      Width = 118
      Height = 17
      Caption = 'Cota'#231#227'o Aprovada'
      Ctl3D = True
      DataField = 'COF_APROVADA'
      DataSource = dsqCotacaoFornecedor
      ParentCtl3D = False
      TabOrder = 1
      ValueChecked = 'S'
      ValueUnchecked = 'N'
      OnClick = cbCofAprovadaClick
    end
  end
  object Panel1: TPanel [5]
    Left = 0
    Top = 370
    Width = 811
    Height = 41
    Align = alBottom
    TabOrder = 3
    ExplicitTop = 330
    object Button1: TButton
      Left = 455
      Top = 9
      Width = 75
      Height = 25
      Caption = 'Excluir'
      TabOrder = 0
      OnClick = Button1Click
    end
    object btCancelar: TButton
      Left = 351
      Top = 9
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 1
      OnClick = btCancelarClick
    end
    object btGravar: TButton
      Left = 242
      Top = 9
      Width = 75
      Height = 25
      Caption = 'Gravar'
      TabOrder = 2
      OnClick = btGravarClick
    end
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 752
    Top = 208
  end
  inherited cxLocalizer1: TcxLocalizer
    Left = 696
    Top = 208
  end
  inherited qAux: TFDQuery
    Left = 675
    Top = 256
  end
  inherited FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 784
    Top = 168
  end
  inherited FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Left = 744
    Top = 168
  end
  inherited FDTransac: TFDTransaction
    Left = 536
    Top = 208
  end
  inherited FDGUIxErrorDialog1: TFDGUIxErrorDialog
    Left = 608
    Top = 208
  end
  inherited qAux2: TFDQuery
    Left = 723
    Top = 255
  end
  inherited qAux3: TFDQuery
    Left = 763
    Top = 255
  end
  inherited qAux4: TFDQuery
    Left = 803
    Top = 255
  end
  inherited dbConn: TFDConnection
    Left = 539
    Top = 256
  end
  inherited FDStoredProc1: TFDStoredProc
    Left = 608
    Top = 256
  end
  object dsqCotacaoFornecedor: TDataSource
    DataSet = frmCotacaoPesquisa.qCotacaoFornecedor
    Left = 232
    Top = 16
  end
  object qPrazo: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select pcl_codigo, pcl_nome'
      'from prazos'
      'Where pcl_codigo='#39'-1'#39
      'order by pcl_nome'
      ''
      '')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 493
    Top = 196
  end
end
