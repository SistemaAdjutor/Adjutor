object FrmEntradaSaidaProdutos: TFrmEntradaSaidaProdutos
  Left = 737
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Relat'#243'rio das Entradas e Saidas do Estoque'
  ClientHeight = 435
  ClientWidth = 450
  Color = clBtnFace
  Constraints.MinHeight = 474
  Constraints.MinWidth = 466
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object grpEmpresa: TGroupBox
    Left = 0
    Top = 0
    Width = 450
    Height = 113
    Align = alTop
    Caption = 'Empresas'
    TabOrder = 0
    object lstEmpresa: TJvCheckListBox
      Left = 2
      Top = 16
      Width = 446
      Height = 95
      Align = alClient
      DoubleBuffered = False
      ItemHeight = 14
      Items.Strings = (
        'Empresa 1')
      ParentDoubleBuffered = False
      ScrollWidth = 69
      TabOrder = 0
      MultiSelect = True
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 113
    Width = 450
    Height = 280
    Align = alTop
    Caption = 'Ope'#231#245'es'
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 24
      Width = 96
      Height = 14
      Caption = 'Data Inicial do Saldo'
    end
    object Label3: TLabel
      Left = 139
      Top = 24
      Width = 92
      Height = 14
      Caption = 'Data Final do Saldo'
    end
    object Label2: TLabel
      Left = 274
      Top = 24
      Width = 89
      Height = 14
      Caption = 'Tipo de Movimento'
    end
    object Label4: TLabel
      Left = 8
      Top = 64
      Width = 78
      Height = 14
      Caption = 'Filtrar Opera'#231#227'o'
    end
    object Label5: TLabel
      Left = 9
      Top = 105
      Width = 64
      Height = 14
      Caption = 'Almoxarifado'
    end
    object Label6: TLabel
      Left = 59
      Top = 152
      Width = 23
      Height = 14
      Caption = 'Tipo:'
    end
    object Label7: TLabel
      Left = 20
      Top = 180
      Width = 62
      Height = 14
      Caption = 'Colaborador:'
    end
    object Label8: TLabel
      Left = 42
      Top = 208
      Width = 40
      Height = 14
      Caption = 'Produto:'
    end
    object Label9: TLabel
      Left = 49
      Top = 236
      Width = 33
      Height = 14
      Caption = 'Grupo:'
    end
    object cxDateInicial: TcxDateEdit
      Left = 8
      Top = 40
      Properties.Kind = ckDateTime
      Style.LookAndFeel.Kind = lfStandard
      StyleDisabled.LookAndFeel.Kind = lfStandard
      StyleFocused.LookAndFeel.Kind = lfStandard
      StyleHot.LookAndFeel.Kind = lfStandard
      TabOrder = 0
      Width = 129
    end
    object cxDateFinal: TcxDateEdit
      Left = 139
      Top = 40
      Properties.Kind = ckDateTime
      Style.LookAndFeel.Kind = lfStandard
      StyleDisabled.LookAndFeel.Kind = lfStandard
      StyleFocused.LookAndFeel.Kind = lfStandard
      StyleHot.LookAndFeel.Kind = lfStandard
      TabOrder = 1
      Width = 129
    end
    object cbbTipoES: TComboBox
      Left = 272
      Top = 40
      Width = 161
      Height = 22
      Style = csOwnerDrawFixed
      ItemIndex = 0
      TabOrder = 2
      Text = 'TODOS'
      Items.Strings = (
        'TODOS'
        'ENTRADAS'
        'SAIDAS')
    end
    object cbbListar: TComboBox
      Left = 8
      Top = 80
      Width = 425
      Height = 22
      Style = csDropDownList
      TabOrder = 3
      Items.Strings = (
        'TODOS'
        'TRANSFER'#202'NCIAS'
        'MOVIMENTO NORMAL'
        'MOVIMENTO MANUAL')
    end
    object CbAlmoxarifado: TcxLookupComboBox
      Left = 8
      Top = 121
      Properties.KeyFieldNames = 'AMX_CODIGO'
      Properties.ListColumns = <
        item
          Caption = 'C'#243'digo'
          FieldName = 'AMX_CODIGO'
        end
        item
          Caption = 'Descri'#231#227'o'
          FieldName = 'AMX_DESCRI'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListSource = DsAlmoxarifado
      Style.LookAndFeel.Kind = lfStandard
      StyleDisabled.LookAndFeel.Kind = lfStandard
      StyleFocused.LookAndFeel.Kind = lfStandard
      StyleHot.LookAndFeel.Kind = lfStandard
      TabOrder = 4
      OnExit = CbAlmoxarifadoExit
      Width = 425
    end
    object cbTipoProduto: TComboBoxRw
      Left = 139
      Top = 149
      Width = 269
      Height = 22
      TabOrder = 5
      CharCase = ecUpperCase
      LookupSelect = 'PTI_CODIGO, PTI_DESCRI, PTI_SIGLA'
      LookupOrderBy = 'PTI_DESCRI'
      LookupTable = 'PRD_TIPO'
      LookupDispl = 'PTI_DESCRI'
      OnSelect = cbTipoProdutoSelect
      GridAutoSize = False
      LookupSource = qTipoProduto
      LookupKeyField = 'PTI_CODIGO'
      FiltroTabela = 'PTI_ATUALIZAR_ESTOQUE = '#39'S'#39
      ShowButton = True
      LookupTableShare = 'TABELAS'
      AutoF8WinTitulo = 'Tipo de Produto'
      AutoF8ColumnsTitulo = 'C'#243'digo, Descri'#231#227'o, Sigla'
      GridLeft = 0
      GridWidth = 0
      GridHeight = 100
      GridTop = 0
      GridShowWhenEnter = False
      SelectWithDoubleClick = False
      LimparCampoAoSair = True
      Tabela = 'PRD_TIPO'
      CamposCarregar = 'PTI_CODIGO, PTI_DESCRI, PTI_SIGLA'
      CamposRetornar = 'PTI_CODIGO'
      Condicao = 'PTI_ATUALIZAR_ESTOQUE = '#39'S'#39
      CamposOrdernar = 'PTI_DESCRI'
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
    object EdTipoCodigo: TEdit
      Left = 88
      Top = 149
      Width = 50
      Height = 22
      CharCase = ecUpperCase
      Color = clWhite
      MaxLength = 5
      TabOrder = 6
      OnExit = EdTipoCodigoExit
    end
    object EdColaboradorCodigo: TEdit
      Left = 88
      Top = 177
      Width = 50
      Height = 22
      TabOrder = 7
      OnExit = EdColaboradorCodigoExit
    end
    object edColaborador: TSgDbSearchCombo
      Left = 139
      Top = 177
      Width = 268
      Height = 22
      TabOrder = 8
      CharCase = ecUpperCase
      LookupSelect = 'COL_CODIGO, COL_NOME, COL_FUNC, COL_SETOR'
      LookupOrderBy = 'COL_NOME'
      LookupTable = 'COLABORADOR'
      LookupDispl = 'COL_NOME'
      OnSelect = edColaboradorSelect
      GridAutoSize = False
      LookupSource = qColaborador
      LookupKeyField = 'COL_CODIGO'
      ShowButton = True
      AutoF8WinTitulo = 'Colaborador'
      AutoF8ColumnsTitulo = 'C'#243'digo, Nome, Fun'#231#227'o, Setor'
      GridLeft = 0
      GridWidth = 0
      GridHeight = 100
      GridTop = 0
      GridShowWhenEnter = False
      SelectWithDoubleClick = False
      LimparCampoAoSair = True
    end
    object cbProduto: TComboBoxRw
      Left = 139
      Top = 205
      Width = 269
      Height = 22
      TabOrder = 9
      CharCase = ecUpperCase
      LookupSelect = 'PRD_REFER,PRD_DESCRI'
      LookupOrderBy = 'PRD_DESCRI'
      LookupTable = 'PRD0000'
      LookupDispl = 'PRD_DESCRI'
      OnSelect = cbProdutoSelect
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
    object edProduto: TEdit
      Left = 88
      Top = 205
      Width = 50
      Height = 22
      TabOrder = 10
      OnExit = edProdutoExit
    end
    object cbGrupo: TComboBoxRw
      Left = 138
      Top = 233
      Width = 269
      Height = 22
      TabOrder = 11
      CharCase = ecUpperCase
      LookupSelect = 'PGR_CODIGO,PGR_DESCRI'
      LookupOrderBy = 'PGR_DESCRI'
      LookupTable = 'PRD_GRUPO'
      LookupDispl = 'PGR_DESCRI'
      OnSelect = cbGrupoSelect
      GridAutoSize = False
      LookupSource = cbProduto.InternalSource
      LookupKeyField = 'PGR_CODIGO'
      ShowButton = True
      LookupTableShare = 'GRUPOS'
      AutoF8WinTitulo = 'Produtos'
      AutoF8ColumnsTitulo = 'C'#243'digo, Descricao'
      GridLeft = 0
      GridWidth = 0
      GridHeight = 100
      GridTop = 0
      GridShowWhenEnter = False
      SelectWithDoubleClick = False
      LimparCampoAoSair = True
      Tabela = 'PRD_GRUPO'
      CamposCarregar = 'PGR_CODIGO,PGR_DESCRI'
      CamposRetornar = 'PGR_CODIGO'
      CamposOrdernar = 'PGR_DESCRI'
      ConexaoBanco = DataCadastros.SQLConnection1
      Compartilhar = 'GRUPOS'
      Localizado = False
      CodigoEmpresa = 0
      ResetaCampos = False
      MultiEmpresa = False
      Localizar = False
      CarregarCombo = False
      itemindex = 0
      style = csDropDown
    end
    object edGrupo: TEdit
      Left = 88
      Top = 233
      Width = 50
      Height = 22
      TabOrder = 12
      OnExit = edGrupoExit
    end
  end
  object cxButton3: TcxButton
    Left = 236
    Top = 399
    Width = 100
    Height = 25
    Caption = '&Impress'#227'o'
    Colors.Normal = clWhite
    Colors.Pressed = clSilver
    LookAndFeel.Kind = lfUltraFlat
    TabOrder = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = cxButton3Click
  end
  object cxButton2: TcxButton
    Left = 342
    Top = 399
    Width = 100
    Height = 25
    Caption = '&Sair'
    Colors.Normal = clWhite
    Colors.Pressed = clSilver
    LookAndFeel.Kind = lfUltraFlat
    TabOrder = 3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = cxButton2Click
  end
  object frxReport1: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41428.664459826400000000
    ReportOptions.LastChange = 41428.715100717590000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var'
      '       sTipo:String;                                     '
      ''
      ''
      'procedure GroupHeader2OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      '       if (<frxDBDataset1."KAR_ENTRADA_SAIDA"> = '#39'E'#39') then'
      '               sTipo := '#39'ENTRADA'#39
      '       else'
      
        '               sTipo := '#39'SA'#205'DA'#39';                                ' +
        '                    '
      'end;'
      ''
      'procedure GroupHeader1OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      '       if (<frxDBDataset1."KAR_ENTRADA_SAIDA"> = '#39'E'#39') then'
      '               sTipo := '#39'ENTRADA'#39
      '       else'
      '               sTipo := '#39'SA'#205'DA'#39';           '
      'end;'
      ''
      'procedure Memo3OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      ''
      'end;'
      ''
      'procedure Page1OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      ''
      'end;'
      ''
      'procedure Memo3OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      ''
      'end;'
      ''
      'begin'
      ''
      'end.')
    OnGetValue = frxReport1GetValue
    OnPreview = frxReport1Preview
    Left = 269
    Top = 27
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      OnAfterPrint = 'Page1OnAfterPrint'
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 86.929189999999990000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Width = 589.606680000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[empresa]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Top = 15.118120000000000000
          Width = 589.606680000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Hist'#243'rico de Movimenta'#231#227'o do Estoque')
          ParentFont = False
          VAlign = vaCenter
        end
        object mFiltro: TfrxMemoView
          AllowVectorExport = True
          Top = 34.015770000000000000
          Width = 910.866730000000000000
          Height = 15.118120000000000000
          OnAfterPrint = 'Memo3OnAfterPrint'
          OnBeforePrint = 'Memo3OnBeforePrint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Filtro]')
          ParentFont = False
          VAlign = vaCenter
        end
        object SysMemo2: TfrxSysMemoView
          AllowVectorExport = True
          Left = 918.425790000000000000
          Top = 15.118120000000000000
          Width = 128.504020000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[TIME]')
          ParentFont = False
          VAlign = vaCenter
        end
        object SysMemo3: TfrxSysMemoView
          AllowVectorExport = True
          Left = 918.425790000000000000
          Top = 34.015770000000000000
          Width = 128.504020000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[PAGE#] de [TOTALPAGES#]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Top = 67.133890000000010000
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Style = fsDot
          Frame.Typ = [ftTop]
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 45.354360000000000000
          Top = 67.133890000000010000
          Width = 68.031540000000010000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Data')
          ParentFont = False
          VAlign = vaCenter
        end
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 918.425790000000000000
          Width = 128.504020000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DATE]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Top = 82.252010000000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Style = fsDot
          Frame.Typ = [ftTop]
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 117.165430000000000000
          Top = 67.133890000000010000
          Width = 86.929190000000010000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Refer'#234'ncia')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 408.189240000000000000
          Top = 67.133890000000010000
          Width = 124.724490000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Tipo')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 536.693260000000000000
          Top = 67.133890000000010000
          Width = 90.708720000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Documento')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 702.992580000000000000
          Top = 67.133890000000010000
          Width = 336.378170000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 631.181510000000000000
          Top = 67.133890000000010000
          Width = 68.031540000000010000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Quantidade')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 207.874150000000000000
          Top = 67.133890000000010000
          Width = 196.535560000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 3.779530000000000000
        Top = 328.819110000000000000
        Width = 1046.929810000000000000
        object Line2: TfrxLineView
          AllowVectorExport = True
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Style = fsDot
          Frame.Typ = [ftTop]
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 249.448980000000000000
        Width = 1046.929810000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1DATA_HORA: TfrxMemoView
          AllowVectorExport = True
          Left = 45.354360000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."DATA_HORA"]')
          ParentFont = False
        end
        object frxDBDataset1PRD_REFER: TfrxMemoView
          AllowVectorExport = True
          Left = 117.165430000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataField = 'PRD_REFER'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."PRD_REFER"]')
          ParentFont = False
          WordWrap = False
        end
        object frxDBDataset1PRD_DESCRI: TfrxMemoView
          AllowVectorExport = True
          Left = 207.874150000000000000
          Width = 196.535560000000000000
          Height = 18.897650000000000000
          DataField = 'PRD_DESCRI'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."PRD_DESCRI"]')
          ParentFont = False
          WordWrap = False
        end
        object frxDBDataset1TIPO: TfrxMemoView
          AllowVectorExport = True
          Left = 408.189240000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DataField = 'TIPO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."TIPO"]')
          ParentFont = False
          WordWrap = False
        end
        object frxDBDataset1KAR_DOCUMENTO: TfrxMemoView
          AllowVectorExport = True
          Left = 536.693260000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataField = 'KAR_DOCUMENTO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."KAR_DOCUMENTO"]')
          ParentFont = False
          WordWrap = False
        end
        object frxDBDataset1KAR_DESCRICAO: TfrxMemoView
          AllowVectorExport = True
          Left = 702.992580000000000000
          Width = 343.937230000000000000
          Height = 18.897650000000000000
          DataField = 'KAR_DESCRICAO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."KAR_DESCRICAO"]')
          ParentFont = False
          WordWrap = False
          Wysiwyg = False
        end
        object frxDBDataset1KAR_QUANTIDADE: TfrxMemoView
          AllowVectorExport = True
          Left = 627.401980000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataField = 'KAR_QUANTIDADE'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."KAR_QUANTIDADE"]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 166.299320000000000000
        Width = 1046.929810000000000000
        OnAfterPrint = 'GroupHeader1OnAfterPrint'
        Condition = 'frxDBDataset1."EMP_CODIGO"'
        KeepTogether = True
        object frxDBDataset1EMP_RAZAO: TfrxMemoView
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          DataField = 'EMP_RAZAO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."EMP_RAZAO"]')
          ParentFont = False
        end
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 207.874150000000000000
        Width = 1046.929810000000000000
        OnAfterPrint = 'GroupHeader2OnAfterPrint'
        Condition = 'frxDBDataset1."KAR_ENTRADA_SAIDA"'
        object frxDBDataset1ES: TfrxMemoView
          AllowVectorExport = True
          Left = 30.236240000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'ES'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."ES"]')
          ParentFont = False
        end
      end
    end
  end
  object CdsEntradasSaidas: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 
      'SELECT'#13#10'T1.emp_codigo,'#13#10'E1.emp_razao,'#13#10'P1.prd_refer,'#13#10'P1.prd_des' +
      'cri,'#13#10't1.kar_entrada_saida,'#13#10't1.kar_quantidade,'#13#10't1.data_hora,'#13#10 +
      't1.kar_descricao,'#13#10'case'#13#10'    when (T1.kar_tipo_registro = '#39'ENF'#39')' +
      ' then'#13#10'        '#39'ENTRADA NOTA FISCAL'#39#13#10'    when (T1.kar_tipo_regi' +
      'stro = '#39'PED'#39') then'#13#10'        '#39'PEDIDO'#39#13#10'    when (T1.kar_tipo_regi' +
      'stro = '#39'NF'#39') then'#13#10'        '#39'NOTA FISCAL SAIDA'#39#13#10'    when (T1.kar' +
      '_tipo_registro = '#39'MAN'#39') then'#13#10'        '#39'MANUAL'#39#13#10'    when (T1.kar' +
      '_tipo_registro = '#39'BAL'#39' and T1.kar_descricao = '#39'ZERAR'#39') then'#13#10'   ' +
      '     '#39'ZERADO'#39#13#10'    when (T1.kar_tipo_registro = '#39'BAL'#39' and T1.kar' +
      '_descricao = '#39'ZERAR'#39') then'#13#10'        '#39'BALAN'#195#8225'O'#39#13#10'    when (T1.kar' +
      '_tipo_registro = '#39'TRA'#39') then'#13#10'        '#39'TRANSFERENCIA'#39#13#10'end as ti' +
      'po,'#13#10't1.kar_documento'#13#10#13#10'FROM'#13#10'kardex T1'#13#10'JOIN prd0000 P1 ON (P1' +
      '.prd_codigo = T1.prd_codigo)'#13#10'JOIN emp0000 E1 ON (T1.emp_codigo ' +
      '= E1.emp_codigo)'#13#10'order by t1.emp_codigo, t1.kar_entrada_saida,t' +
      '1.data_hora'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    OnCalcFields = CdsEntradasSaidasCalcFields
    CommandText = 
      'SELECT'#13#10'T1.emp_codigo,'#13#10'E1.emp_razao,'#13#10'P1.prd_refer,'#13#10'P1.prd_des' +
      'cri,'#13#10't1.kar_entrada_saida,'#13#10't1.kar_quantidade,'#13#10't1.data_hora,'#13#10 +
      't1.kar_descricao,'#13#10'case'#13#10'    when (T1.kar_tipo_registro = '#39'ENF'#39')' +
      ' then'#13#10'        '#39'ENTRADA NOTA FISCAL'#39#13#10'    when (T1.kar_tipo_regi' +
      'stro = '#39'PED'#39') then'#13#10'        '#39'PEDIDO'#39#13#10'    when (T1.kar_tipo_regi' +
      'stro = '#39'NF'#39') then'#13#10'        '#39'NOTA FISCAL SAIDA'#39#13#10'    when (T1.kar' +
      '_tipo_registro = '#39'MAN'#39') then'#13#10'        '#39'MANUAL'#39#13#10'    when (T1.kar' +
      '_tipo_registro = '#39'BAL'#39' and T1.kar_descricao = '#39'ZERAR'#39') then'#13#10'   ' +
      '     '#39'ZERADO'#39#13#10'    when (T1.kar_tipo_registro = '#39'BAL'#39' and T1.kar' +
      '_descricao = '#39'ZERAR'#39') then'#13#10'        '#39'BALAN'#195#8225'O'#39#13#10'    when (T1.kar' +
      '_tipo_registro = '#39'TRA'#39') then'#13#10'        '#39'TRANSFERENCIA'#39#13#10'end as ti' +
      'po,'#13#10't1.kar_documento'#13#10#13#10'FROM'#13#10'kardex T1'#13#10'JOIN prd0000 P1 ON (P1' +
      '.prd_codigo = T1.prd_codigo)'#13#10'JOIN emp0000 E1 ON (T1.emp_codigo ' +
      '= E1.emp_codigo)'#13#10'order by t1.emp_codigo, t1.kar_entrada_saida,t' +
      '1.data_hora'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 104
    Top = 64
    object CdsEntradasSaidasEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object CdsEntradasSaidasEMP_RAZAO: TStringField
      FieldName = 'EMP_RAZAO'
      Size = 45
    end
    object CdsEntradasSaidasPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object CdsEntradasSaidasPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 100
    end
    object CdsEntradasSaidasKAR_ENTRADA_SAIDA: TStringField
      FieldName = 'KAR_ENTRADA_SAIDA'
      Size = 1
    end
    object CdsEntradasSaidasKAR_QUANTIDADE: TFMTBCDField
      FieldName = 'KAR_QUANTIDADE'
      Precision = 20
      Size = 4
    end
    object CdsEntradasSaidasDATA_HORA: TSQLTimeStampField
      FieldName = 'DATA_HORA'
    end
    object CdsEntradasSaidasKAR_DESCRICAO: TStringField
      FieldName = 'KAR_DESCRICAO'
      Size = 255
    end
    object CdsEntradasSaidasTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 19
    end
    object CdsEntradasSaidasKAR_DOCUMENTO: TStringField
      FieldName = 'KAR_DOCUMENTO'
      Size = 60
    end
    object CdsEntradasSaidasES: TStringField
      FieldKind = fkCalculated
      FieldName = 'ES'
      Size = 15
      Calculated = True
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'EMP_CODIGO=EMP_CODIGO'
      'EMP_RAZAO=EMP_RAZAO'
      'PRD_REFER=PRD_REFER'
      'PRD_DESCRI=PRD_DESCRI'
      'KAR_ENTRADA_SAIDA=KAR_ENTRADA_SAIDA'
      'KAR_QUANTIDADE=KAR_QUANTIDADE'
      'DATA_HORA=DATA_HORA'
      'KAR_DESCRICAO=KAR_DESCRICAO'
      'TIPO=TIPO'
      'KAR_DOCUMENTO=KAR_DOCUMENTO'
      'ES=ES')
    DataSet = CdsEntradasSaidas
    BCDToCurrency = False
    Left = 208
    Top = 80
  end
  object DsAlmoxarifado: TDataSource
    DataSet = SqlCdsAlmoxarifado
    Left = 216
    Top = 40
  end
  object SqlCdsAlmoxarifado: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 
      'select * from ALMOX0000 WHERE AMX_ATIVO = '#39'S'#39'  order by AMX_DESC' +
      'RI'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'select * from ALMOX0000 WHERE AMX_ATIVO = '#39'S'#39'  order by AMX_DESC' +
      'RI'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 167
    Top = 40
    object SqlCdsAlmoxarifadoAMX_CODIGO: TStringField
      DisplayWidth = 4
      FieldName = 'AMX_CODIGO'
      Required = True
      Size = 4
    end
    object SqlCdsAlmoxarifadoAMX_DESCRI: TStringField
      FieldName = 'AMX_DESCRI'
      Required = True
      Size = 35
    end
    object SqlCdsAlmoxarifadoAMX_TIPO: TStringField
      FieldName = 'AMX_TIPO'
      Size = 35
    end
    object SqlCdsAlmoxarifadoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Required = True
      Size = 3
    end
  end
  object qTipoProduto: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    Left = 374
    Top = 277
  end
  object frxXLSExport1: TfrxXLSExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ExportEMF = True
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = True
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 328
    Top = 88
  end
  object frxMailExport1: TfrxMailExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ShowExportDialog = True
    SmtpPort = 25
    UseIniFile = True
    TimeOut = 60
    ConfurmReading = False
    UseMAPI = SMTP
    MAPISendFlag = 0
    Left = 384
    Top = 96
  end
  object frxRTFExport1: TfrxRTFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PictureType = gpPNG
    OpenAfterExport = False
    Wysiwyg = True
    Creator = 'FastReport'
    SuppressPageHeadersFooters = False
    HeaderFooterMode = hfText
    AutoSize = False
    Left = 384
    Top = 153
  end
  object frxCSVExport1: TfrxCSVExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Separator = ';'
    OEMCodepage = False
    UTF8 = False
    OpenAfterExport = False
    NoSysSymbols = True
    ForcedQuotes = False
    Left = 336
    Top = 145
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    InteractiveFormsFontSubset = 'A-Z,a-z,0-9,#43-#47 '
    OpenAfterExport = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    PDFStandard = psNone
    PDFVersion = pv17
    Left = 320
    Top = 201
  end
  object qColaborador: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT COL_CODIGO, COL_nome,COL_FUNC,COL_SETOR FROM COLABORADOR')
    Left = 128
    Top = 188
  end
end
