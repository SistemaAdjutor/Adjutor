object FrmEntradaSaidaProdutos: TFrmEntradaSaidaProdutos
  Left = 737
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Relat'#243'rio das Entradas e Saidas do Estoque'
  ClientHeight = 400
  ClientWidth = 450
  Color = clBtnFace
  Constraints.MinHeight = 368
  Constraints.MinWidth = 458
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
    Height = 224
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
      Left = 10
      Top = 153
      Width = 23
      Height = 14
      Caption = 'Tipo:'
    end
    object Label7: TLabel
      Left = 11
      Top = 181
      Width = 62
      Height = 14
      Caption = 'Colaborador:'
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
      ItemIndex = 0
      TabOrder = 3
      Text = 'TODOS'
      Items.Strings = (
        'TODOS'
        'TRANSFER'#202'NCIAS'
        'MOVIMENTO NORMAL')
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
      Left = 84
      Top = 149
      Width = 324
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
      GridShowWhenEnter = False
      SelectWithDoubleClick = False
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
      Left = 40
      Top = 149
      Width = 41
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
      Width = 51
      Height = 22
      TabOrder = 7
      OnExit = EdColaboradorCodigoExit
    end
    object edColaborador: TSgDbSearchCombo
      Left = 140
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
      GridShowWhenEnter = False
      SelectWithDoubleClick = False
    end
  end
  object cxButton3: TcxButton
    Left = 228
    Top = 357
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
    Left = 334
    Top = 357
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
    Version = '5.3.16'
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
      OnAfterPrint = 'Page1OnAfterPrint'
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 86.929189999999990000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo1: TfrxMemoView
          Width = 589.606680000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[empresa]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Top = 15.118120000000000000
          Width = 589.606680000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Hist'#243'rico de Movimenta'#231#227'o do Estoque')
          ParentFont = False
          VAlign = vaCenter
        end
        object mFiltro: TfrxMemoView
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
          Memo.UTF8W = (
            '[Filtro]')
          ParentFont = False
          VAlign = vaCenter
        end
        object SysMemo2: TfrxSysMemoView
          Left = 918.425790000000000000
          Top = 15.118120000000000000
          Width = 128.504020000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[TIME]')
          ParentFont = False
          VAlign = vaCenter
        end
        object SysMemo3: TfrxSysMemoView
          Left = 918.425790000000000000
          Top = 34.015770000000000000
          Width = 128.504020000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[PAGE#] de [TOTALPAGES#]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line1: TfrxLineView
          Top = 67.133890000000010000
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Style = fsDot
          Frame.Typ = [ftTop]
        end
        object Memo5: TfrxMemoView
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
          Memo.UTF8W = (
            'Data')
          ParentFont = False
          VAlign = vaCenter
        end
        object SysMemo1: TfrxSysMemoView
          Left = 918.425790000000000000
          Width = 128.504020000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DATE]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line3: TfrxLineView
          Top = 82.252010000000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Style = fsDot
          Frame.Typ = [ftTop]
        end
        object Memo6: TfrxMemoView
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
          Memo.UTF8W = (
            'Refer'#234'ncia')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
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
          Memo.UTF8W = (
            'Tipo')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
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
          Memo.UTF8W = (
            'Documento')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
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
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
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
          Memo.UTF8W = (
            'Quantidade')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
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
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 3.779530000000000000
        Top = 328.819110000000000000
        Width = 1046.929810000000000000
        object Line2: TfrxLineView
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Style = fsDot
          Frame.Typ = [ftTop]
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 249.448980000000000000
        Width = 1046.929810000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1DATA_HORA: TfrxMemoView
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
          Memo.UTF8W = (
            '[frxDBDataset1."DATA_HORA"]')
          ParentFont = False
        end
        object frxDBDataset1PRD_REFER: TfrxMemoView
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
          Memo.UTF8W = (
            '[frxDBDataset1."PRD_REFER"]')
          ParentFont = False
          WordWrap = False
        end
        object frxDBDataset1PRD_DESCRI: TfrxMemoView
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
          Memo.UTF8W = (
            '[frxDBDataset1."PRD_DESCRI"]')
          ParentFont = False
          WordWrap = False
        end
        object frxDBDataset1TIPO: TfrxMemoView
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
          Memo.UTF8W = (
            '[frxDBDataset1."TIPO"]')
          ParentFont = False
          WordWrap = False
        end
        object frxDBDataset1KAR_DOCUMENTO: TfrxMemoView
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
          Memo.UTF8W = (
            '[frxDBDataset1."KAR_DOCUMENTO"]')
          ParentFont = False
          WordWrap = False
        end
        object frxDBDataset1KAR_DESCRICAO: TfrxMemoView
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
          Memo.UTF8W = (
            '[frxDBDataset1."KAR_DESCRICAO"]')
          ParentFont = False
          WordWrap = False
          Wysiwyg = False
        end
        object frxDBDataset1KAR_QUANTIDADE: TfrxMemoView
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
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."KAR_QUANTIDADE"]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 166.299320000000000000
        Width = 1046.929810000000000000
        OnAfterPrint = 'GroupHeader1OnAfterPrint'
        Condition = 'frxDBDataset1."EMP_CODIGO"'
        KeepTogether = True
        object frxDBDataset1EMP_RAZAO: TfrxMemoView
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
          Memo.UTF8W = (
            '[frxDBDataset1."EMP_RAZAO"]')
          ParentFont = False
        end
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 207.874150000000000000
        Width = 1046.929810000000000000
        OnAfterPrint = 'GroupHeader2OnAfterPrint'
        Condition = 'frxDBDataset1."KAR_ENTRADA_SAIDA"'
        object frxDBDataset1ES: TfrxMemoView
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
          Memo.UTF8W = (
            '[frxDBDataset1."ES"]')
          ParentFont = False
        end
      end
    end
  end
  object CdsEntradasSaidas: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
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
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 160
    Top = 88
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
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'select * from ALMOX0000 WHERE AMX_ATIVO = '#39'S'#39'  order by AMX_DESC' +
      'RI'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'select * from ALMOX0000 WHERE AMX_ATIVO = '#39'S'#39'  order by AMX_DESC' +
      'RI'
    DBConnection = DataCadastros.SQLConnection1
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
    Left = 384
    Top = 96
  end
  object frxRTFExport1: TfrxRTFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PictureType = gpPNG
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
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
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
