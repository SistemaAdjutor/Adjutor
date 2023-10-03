object FrmKardex: TFrmKardex
  Left = 194
  Top = 81
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 
    'Kardex - Hist'#243'rico das movimenta'#231#245'es de entradas e saidas do est' +
    'oque'
  ClientHeight = 600
  ClientWidth = 964
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object JvLabel1: TJvLabel
    Left = 16
    Top = 16
    Width = 152
    Height = 16
    Caption = 'Movimenta'#231#227'o de Produto'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Layout = tlCenter
    ParentFont = False
    Transparent = True
    HotTrackFont.Charset = ANSI_CHARSET
    HotTrackFont.Color = clWindowText
    HotTrackFont.Height = -13
    HotTrackFont.Name = 'Arial'
    HotTrackFont.Style = []
  end
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 0
    Width = 964
    Height = 600
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = cxTabSheet1
    Properties.CustomButtons.Buttons = <>
    Properties.NavigatorPosition = npRightBottom
    LookAndFeel.Kind = lfStandard
    LookAndFeel.NativeStyle = True
    OnChange = cxPageControl1Change
    ClientRectBottom = 596
    ClientRectLeft = 4
    ClientRectRight = 960
    ClientRectTop = 25
    object cxTabSheet1: TcxTabSheet
      Caption = 'Extrato'
      ImageIndex = 0
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 956
        Height = 137
        Align = alTop
        Caption = 'Selecione o Produto e  o Almoxarifado para pesquisa'
        TabOrder = 0
        object Label2: TLabel
          Left = 521
          Top = 41
          Width = 64
          Height = 14
          Caption = 'Almoxarifado'
        end
        object Label3: TLabel
          Left = 467
          Top = 21
          Width = 98
          Height = 14
          Caption = 'Data Final do Saldo :'
        end
        object Label4: TLabel
          Left = 8
          Top = 41
          Width = 37
          Height = 14
          Caption = 'Produto'
        end
        object Label1: TLabel
          Left = 212
          Top = 21
          Width = 102
          Height = 14
          Caption = 'Data Inicial do Saldo :'
        end
        object Label5: TLabel
          Left = 12
          Top = 111
          Width = 59
          Height = 14
          Caption = 'Colaborador'
        end
        object CbAlmoxarifado: TcxLookupComboBox
          Left = 521
          Top = 57
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
          Properties.OnChange = CbAlmoxarifadoPropertiesChange
          Style.LookAndFeel.Kind = lfStandard
          StyleDisabled.LookAndFeel.Kind = lfStandard
          StyleFocused.LookAndFeel.Kind = lfStandard
          StyleHot.LookAndFeel.Kind = lfStandard
          TabOrder = 4
          OnClick = CbAlmoxarifadoClick
          OnExit = CbAlmoxarifadoExit
          Width = 317
        end
        object cxDateFinal: TcxDateEdit
          Left = 567
          Top = 17
          Properties.Kind = ckDateTime
          Style.LookAndFeel.Kind = lfStandard
          StyleDisabled.LookAndFeel.Kind = lfStandard
          StyleFocused.LookAndFeel.Kind = lfStandard
          StyleHot.LookAndFeel.Kind = lfStandard
          TabOrder = 3
          Width = 129
        end
        object cxButton1: TcxButton
          Left = 845
          Top = 15
          Width = 100
          Height = 25
          Caption = '&Pesquisar'
          Colors.Normal = clWhite
          Colors.Pressed = clSilver
          LookAndFeel.Kind = lfUltraFlat
          TabOrder = 5
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = cxButton1Click
        end
        object cxButton2: TcxButton
          Left = 845
          Top = 69
          Width = 100
          Height = 25
          Caption = '&Sair'
          Colors.Normal = clWhite
          Colors.Pressed = clSilver
          LookAndFeel.Kind = lfUltraFlat
          TabOrder = 6
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = cxButton2Click
        end
        object RbReferencia: TRadioButton
          Left = 8
          Top = 20
          Width = 113
          Height = 17
          Caption = 'Refer'#234'ncias'
          Checked = True
          TabOrder = 0
          TabStop = True
          OnClick = RbReferenciaClick
          OnEnter = RbReferenciaEnter
        end
        object RbDescricao: TRadioButton
          Left = 128
          Top = 20
          Width = 113
          Height = 17
          Caption = 'Descri'#231#227'o'
          TabOrder = 1
          OnClick = RbDescricaoClick
          OnEnter = RbDescricaoEnter
        end
        object cxDateInicial: TcxDateEdit
          Left = 317
          Top = 17
          Properties.Kind = ckDateTime
          Style.LookAndFeel.Kind = lfStandard
          StyleDisabled.LookAndFeel.Kind = lfStandard
          StyleFocused.LookAndFeel.Kind = lfStandard
          StyleHot.LookAndFeel.Kind = lfStandard
          TabOrder = 2
          Width = 129
        end
        object cxButton3: TcxButton
          Left = 845
          Top = 42
          Width = 100
          Height = 25
          Caption = '&Impress'#227'o'
          Colors.Normal = clWhite
          Colors.Pressed = clSilver
          LookAndFeel.Kind = lfUltraFlat
          TabOrder = 7
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = cxButton3Click
        end
        object EdProdutoDescricao: TEdit
          Left = 8
          Top = 83
          Width = 497
          Height = 22
          TabStop = False
          Color = 14145495
          ReadOnly = True
          TabOrder = 8
        end
        object EdAlmoxarifadoDescricao: TEdit
          Left = 521
          Top = 83
          Width = 314
          Height = 22
          TabStop = False
          Color = 14145495
          ReadOnly = True
          TabOrder = 9
        end
        object edColaborador: TSgDbSearchCombo
          Left = 77
          Top = 109
          Width = 252
          Height = 22
          TabOrder = 10
          CharCase = ecUpperCase
          LookupSelect = 'COL_CODIGO, COL_NOME, COL_FUNC, COL_SETOR'
          LookupOrderBy = 'COL_NOME'
          LookupTable = 'COLABORADOR'
          LookupDispl = 'COL_NOME'
          OnSelect = edColaboradorSelect
          GridAutoSize = False
          LookupSource = qCol
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
        object chkInativos: TCheckBox
          Left = 368
          Top = 112
          Width = 129
          Height = 17
          Caption = 'Ocultar os inativos'
          Checked = True
          State = cbChecked
          TabOrder = 11
          OnClick = chkInativosClick
        end
        object cbproduto: TcxExtLookupComboBox
          Left = 8
          Top = 57
          Properties.View = cxGrid1DBTableView1
          Properties.KeyFieldNames = 'PRD_CODIGO'
          Properties.ListFieldItem = cxGrid1DBTableView1PRD_REFER
          Properties.OnChange = cbprodutoPropertiesChange
          TabOrder = 12
          Width = 496
        end
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = 137
        Width = 956
        Height = 239
        Align = alClient
        Caption = 'Movimenta'#231#227'o do Produto'
        TabOrder = 1
        object gridExtrato: TJvDBGrid
          Left = 2
          Top = 16
          Width = 952
          Height = 221
          Align = alClient
          Ctl3D = True
          DataSource = DsKardex
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgTitleClick, dgTitleHotTrack]
          ParentCtl3D = False
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Arial'
          TitleFont.Style = []
          AutoSizeColumns = True
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          CanDelete = False
          EditControls = <>
          AutoSizeRows = False
          RowsHeight = 17
          TitleRowHeight = 17
          WordWrap = True
          Columns = <
            item
              Expanded = False
              FieldName = 'KEX_DATA_HORA'
              Title.Alignment = taCenter
              Title.Caption = 'Data Hora'
              Width = 86
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'KEX_ORIGEM'
              Title.Alignment = taCenter
              Title.Caption = 'Origem'
              Width = 107
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'KEX_DOCUMENTO'
              Title.Alignment = taCenter
              Title.Caption = 'Documento'
              Width = 58
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'KEX_TIPO'
              Title.Alignment = taCenter
              Title.Caption = 'Tipo'
              Width = 29
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'KEX_QUANTIDADE'
              Title.Alignment = taCenter
              Title.Caption = 'Quantidade'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'KEX_SALDO'
              Title.Alignment = taCenter
              Title.Caption = 'Saldo'
              Width = 75
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRDL_LOTE'
              Title.Caption = 'Lote'
              Width = 56
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRG_DESC_GRADE'
              Title.Caption = 'Grade'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'KEX_USUARIO_CODIGO'
              Title.Alignment = taCenter
              Title.Caption = 'C'#243'digo'
              Width = 37
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'KEX_USUARIO_DESCRICAO'
              Title.Alignment = taCenter
              Title.Caption = 'Usu'#225'rio'
              Width = 118
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'KEX_DETALHE'
              Title.Alignment = taCenter
              Title.Caption = 'Detalhe'
              Width = 239
              Visible = True
            end>
        end
        object cxGrid1: TcxGrid
          Left = 585
          Top = 3
          Width = 312
          Height = 200
          TabOrder = 1
          Visible = False
          LookAndFeel.Kind = lfStandard
          LookAndFeel.NativeStyle = False
          LookAndFeel.ScrollbarMode = sbmClassic
          object cxGrid1DBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            OnCustomDrawCell = cxGrid1DBTableView1CustomDrawCell
            DataController.DataSource = DsProduto
            DataController.DetailKeyFieldNames = 'PRD_CODIGO'
            DataController.KeyFieldNames = 'PRD_CODIGO'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsView.GroupByBox = False
            object cxGrid1DBTableView1PRD_REFER: TcxGridDBColumn
              Caption = 'Refer'#234'ncia'
              DataBinding.FieldName = 'PRD_REFER'
              MinWidth = 30
            end
            object cxGrid1DBTableView1PRD_DESCRI: TcxGridDBColumn
              Caption = 'Descri'#231#227'o'
              DataBinding.FieldName = 'PRD_DESCRI'
              Width = 376
            end
            object cxGrid1DBTableView1PRD_UND: TcxGridDBColumn
              Caption = 'Unidade'
              DataBinding.FieldName = 'PRD_UND'
            end
            object cxGrid1DBTableView1PRD_CODIGO: TcxGridDBColumn
              DataBinding.FieldName = 'PRD_CODIGO'
              Visible = False
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxGrid1DBTableView1
          end
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 529
        Width = 956
        Height = 42
        Align = alBottom
        TabOrder = 2
        object cxButton4: TcxButton
          Left = 668
          Top = 6
          Width = 273
          Height = 25
          Caption = '&Lan'#231'ar Entrada/Sa'#237'da Manual do Estoque'
          Colors.Normal = clWhite
          Colors.Pressed = clSilver
          LookAndFeel.Kind = lfUltraFlat
          TabOrder = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = cxButton4Click
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 376
        Width = 956
        Height = 153
        Align = alBottom
        BevelOuter = bvNone
        Caption = 'Panel2'
        TabOrder = 3
        object GroupBox3: TGroupBox
          Left = 0
          Top = 0
          Width = 377
          Height = 153
          Align = alLeft
          Caption = 'Observa'#231#227'o'
          TabOrder = 0
          object DBMemo1: TDBMemo
            Left = 2
            Top = 16
            Width = 373
            Height = 135
            Align = alClient
            DataField = 'KEX_OBSERVACAO'
            DataSource = DsKardex
            ReadOnly = True
            TabOrder = 0
          end
        end
        object GroupBox4: TGroupBox
          Left = 377
          Top = 0
          Width = 579
          Height = 153
          Align = alClient
          Caption = 'Saldos dos Almoxarifados da empresa'
          TabOrder = 1
          object JvDBGrid5: TJvDBGrid
            Left = 2
            Top = 16
            Width = 575
            Height = 135
            Align = alClient
            Ctl3D = True
            DataSource = DsSaldos
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgTitleClick, dgTitleHotTrack]
            ParentCtl3D = False
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Arial'
            TitleFont.Style = []
            AutoSizeColumns = True
            SelectColumnsDialogStrings.Caption = 'Select columns'
            SelectColumnsDialogStrings.OK = '&OK'
            SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
            CanDelete = False
            EditControls = <>
            AutoSizeRows = False
            RowsHeight = 17
            TitleRowHeight = 17
            WordWrap = True
            Columns = <
              item
                Expanded = False
                FieldName = 'AMX_CODIGO_RET'
                Title.Alignment = taCenter
                Title.Caption = 'C'#243'digo'
                Width = 81
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'AMX_DESCRI_RET'
                Title.Alignment = taCenter
                Title.Caption = 'Descri'#231#227'o'
                Width = 390
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'AMX_SALDO_RET'
                Title.Alignment = taCenter
                Title.Caption = 'Saldo'
                Width = 85
                Visible = True
              end>
          end
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'Almoxarifado'
      ImageIndex = 1
      object GroupBox5: TGroupBox
        Left = 353
        Top = 0
        Width = 610
        Height = 366
        Caption = 'Produtos do Almoxarifado'
        TabOrder = 0
        object JvDBGrid1: TJvDBGrid
          Left = 2
          Top = 16
          Width = 606
          Height = 348
          Align = alClient
          Ctl3D = True
          DataSource = DsProdutoGeral
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgTitleClick, dgTitleHotTrack]
          ParentCtl3D = False
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Arial'
          TitleFont.Style = []
          AutoSizeColumns = True
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          CanDelete = False
          EditControls = <>
          AutoSizeRows = False
          RowsHeight = 17
          TitleRowHeight = 17
          WordWrap = True
          Columns = <
            item
              Expanded = False
              FieldName = 'PRD_REFER'
              Title.Alignment = taCenter
              Title.Caption = 'Refer'#234'ncia'
              Width = 67
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRD_DESCRI'
              Title.Alignment = taCenter
              Title.Caption = 'Descri'#231#227'o'
              Width = 474
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRD_UND'
              Title.Alignment = taCenter
              Title.Caption = 'UND'
              Width = 46
              Visible = True
            end>
        end
      end
      object GroupBox6: TGroupBox
        Left = 0
        Top = 0
        Width = 353
        Height = 571
        Align = alLeft
        Caption = 'Almoxarifados'
        TabOrder = 1
        object JvDBGrid2: TJvDBGrid
          Left = 2
          Top = 16
          Width = 349
          Height = 553
          Align = alClient
          Ctl3D = True
          DataSource = DsAlmoxarifadoGeral
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgTitleClick, dgTitleHotTrack]
          ParentCtl3D = False
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Arial'
          TitleFont.Style = []
          AutoSizeColumns = True
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          CanDelete = False
          EditControls = <>
          AutoSizeRows = False
          RowsHeight = 17
          TitleRowHeight = 17
          WordWrap = True
          Columns = <
            item
              Expanded = False
              FieldName = 'AMX_CODIGO'
              Title.Alignment = taCenter
              Title.Caption = 'C'#243'digo'
              Width = 66
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'AMX_DESCRI'
              Title.Alignment = taCenter
              Title.Caption = 'Descri'#231#227'o'
              Width = 265
              Visible = True
            end>
        end
      end
      object GroupBox7: TGroupBox
        Left = 354
        Top = 367
        Width = 608
        Height = 204
        Caption = 'Estoque do Produto nos Almoxarifados'
        TabOrder = 2
        object JvDBGrid3: TJvDBGrid
          Left = 2
          Top = 16
          Width = 604
          Height = 186
          Align = alClient
          Ctl3D = True
          DataSource = DsSaldosGeral
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgTitleClick, dgTitleHotTrack]
          ParentCtl3D = False
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Arial'
          TitleFont.Style = []
          AutoSizeColumns = True
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          CanDelete = False
          EditControls = <>
          AutoSizeRows = False
          RowsHeight = 17
          TitleRowHeight = 17
          WordWrap = True
          Columns = <
            item
              Expanded = False
              FieldName = 'AMX_CODIGO_RET'
              Title.Alignment = taCenter
              Title.Caption = 'C'#243'digo'
              Width = 94
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'AMX_DESCRI_RET'
              Title.Alignment = taCenter
              Title.Caption = 'Descri'#231#227'o'
              Width = 392
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'AMX_SALDO_RET'
              Title.Alignment = taCenter
              Title.Caption = 'Saldo'
              Width = 99
              Visible = True
            end>
        end
      end
    end
  end
  object SqlCdsAlmoxarifado: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'select * from ALMOX0000 WHERE AMX_ATIVO = '#39'S'#39' order by AMX_DESCR' +
      'I'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'select * from ALMOX0000 WHERE AMX_ATIVO = '#39'S'#39' order by AMX_DESCR' +
      'I'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 79
    Top = 344
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
  object DsAlmoxarifado: TDataSource
    DataSet = SqlCdsAlmoxarifado
    Left = 56
    Top = 200
  end
  object DsProduto: TDataSource
    DataSet = SqlCdsProduto
    Left = 192
    Top = 208
  end
  object SqlCdsProduto: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 'select * from PRD0000'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'select * from PRD0000'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 111
    Top = 64
    object SqlCdsProdutoPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Required = True
      Size = 4
    end
    object SqlCdsProdutoPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object SqlCdsProdutoPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 80
    end
    object SqlCdsProdutoPRD_UND: TStringField
      FieldName = 'PRD_UND'
      Size = 3
    end
    object SqlCdsProdutoPRD_STATUS: TStringField
      FieldName = 'PRD_STATUS'
      Size = 1
    end
  end
  object SqlCdsKardex: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT * FROM pcd_kardex_extrato('#39'001'#39','#39'00024'#39','#39'468'#39',current_tim' +
      'estamp,'#39'S'#39')'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'SELECT * FROM pcd_kardex_extrato('#39'001'#39','#39'00024'#39','#39'468'#39',current_tim' +
      'estamp,'#39'S'#39')'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 439
    Top = 224
    object SqlCdsKardexKEX_REGISTRO: TIntegerField
      FieldName = 'KEX_REGISTRO'
    end
    object SqlCdsKardexKEX_DATA_HORA: TSQLTimeStampField
      FieldName = 'KEX_DATA_HORA'
    end
    object SqlCdsKardexKEX_TIPO: TStringField
      FieldName = 'KEX_TIPO'
      Size = 1
    end
    object SqlCdsKardexKEX_QUANTIDADE: TFMTBCDField
      FieldName = 'KEX_QUANTIDADE'
      Precision = 15
    end
    object SqlCdsKardexKEX_USUARIO_CODIGO: TIntegerField
      FieldName = 'KEX_USUARIO_CODIGO'
    end
    object SqlCdsKardexKEX_USUARIO_DESCRICAO: TStringField
      FieldName = 'KEX_USUARIO_DESCRICAO'
      Size = 30
    end
    object SqlCdsKardexKEX_SALDO: TFMTBCDField
      FieldName = 'KEX_SALDO'
      Precision = 15
    end
    object SqlCdsKardexKEX_ORIGEM: TStringField
      FieldName = 'KEX_ORIGEM'
      Size = 40
    end
    object SqlCdsKardexKEX_DETALHE: TStringField
      FieldName = 'KEX_DETALHE'
      Size = 255
    end
    object SqlCdsKardexKEX_OBSERVACAO: TStringField
      FieldName = 'KEX_OBSERVACAO'
      Size = 255
    end
    object SqlCdsKardexKEX_DOCUMENTO: TStringField
      FieldName = 'KEX_DOCUMENTO'
      Size = 255
    end
    object SqlCdsKardexPRDL_LOTE: TStringField
      FieldName = 'PRDL_LOTE'
      Size = 30
    end
    object SqlCdsKardexPRG_DESC_GRADE: TStringField
      FieldName = 'PRG_DESC_GRADE'
      Size = 100
    end
    object SqlCdsKardexKEX_PRECO: TFMTBCDField
      FieldName = 'KEX_PRECO'
      Size = 18
    end
    object SqlCdsKardexCOL_CODIGO: TIntegerField
      FieldName = 'COL_CODIGO'
    end
  end
  object DsKardex: TDataSource
    DataSet = SqlCdsKardex
    Left = 496
    Top = 208
  end
  object SqlSaldos: TSQLDataSet
    CommandText = 'SELECT * FROM pcd_kardex_saldo('#39'001'#39','#39'00012'#39',null)'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DataCadastros.SQLConnection1
    Left = 552
    Top = 496
    object SqlSaldosAMX_CODIGO_RET: TStringField
      DisplayWidth = 4
      FieldName = 'AMX_CODIGO_RET'
      Size = 4
    end
    object SqlSaldosAMX_DESCRI_RET: TStringField
      FieldName = 'AMX_DESCRI_RET'
      Size = 35
    end
    object SqlSaldosAMX_SALDO_RET: TFMTBCDField
      FieldName = 'AMX_SALDO_RET'
      Precision = 15
    end
  end
  object DspSaldos: TDataSetProvider
    DataSet = SqlSaldos
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 614
    Top = 497
  end
  object CdsSaldos: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'AMX_CODIGO_RET'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'AMX_DESCRI_RET'
        DataType = ftString
        Size = 35
      end
      item
        Name = 'AMX_SALDO_RET'
        DataType = ftFMTBcd
        Precision = 15
        Size = 4
      end>
    IndexDefs = <
      item
        Name = 'CdsReceberIndex1'
        Fields = 'FAT_CODIGO'
      end>
    PacketRecords = 10
    Params = <>
    ProviderName = 'DspSaldos'
    StoreDefs = True
    Left = 668
    Top = 497
    object CdsSaldosAMX_CODIGO_RET: TStringField
      DisplayWidth = 4
      FieldName = 'AMX_CODIGO_RET'
      Size = 4
    end
    object CdsSaldosAMX_DESCRI_RET: TStringField
      FieldName = 'AMX_DESCRI_RET'
      Size = 35
    end
    object CdsSaldosAMX_SALDO_RET: TFMTBCDField
      FieldName = 'AMX_SALDO_RET'
      Precision = 15
    end
  end
  object DsSaldos: TDataSource
    DataSet = CdsSaldos
    Left = 729
    Top = 497
  end
  object SqlCdsAlmoxarifadoGeral: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'select * from ALMOX0000 WHERE AMX_ATIVO = '#39'S'#39' ORDER BY AMX_DESCR' +
      'I'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'select * from ALMOX0000 WHERE AMX_ATIVO = '#39'S'#39' ORDER BY AMX_DESCR' +
      'I'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 231
    Top = 304
    object SqlCdsAlmoxarifadoGeralAMX_CODIGO: TStringField
      FieldName = 'AMX_CODIGO'
      Required = True
      Size = 4
    end
    object SqlCdsAlmoxarifadoGeralAMX_DESCRI: TStringField
      FieldName = 'AMX_DESCRI'
      Required = True
      Size = 60
    end
    object SqlCdsAlmoxarifadoGeralAMX_TIPO: TStringField
      FieldName = 'AMX_TIPO'
      Size = 60
    end
    object SqlCdsAlmoxarifadoGeralEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Required = True
      Size = 3
    end
    object SqlCdsAlmoxarifadoGeralAMX_FISICO: TStringField
      FieldName = 'AMX_FISICO'
      Size = 1
    end
    object SqlCdsAlmoxarifadoGeralAMX_TERCEIROS: TStringField
      FieldName = 'AMX_TERCEIROS'
      Size = 1
    end
    object SqlCdsAlmoxarifadoGeralAMX_FORATERCEIROS: TStringField
      FieldName = 'AMX_FORATERCEIROS'
      Size = 1
    end
    object SqlCdsAlmoxarifadoGeralAMX_CIRCULANTE: TStringField
      FieldName = 'AMX_CIRCULANTE'
      Size = 1
    end
    object SqlCdsAlmoxarifadoGeralAMX_VIRTUAL: TStringField
      FieldName = 'AMX_VIRTUAL'
      Size = 1
    end
  end
  object DsAlmoxarifadoGeral: TDataSource
    DataSet = SqlCdsAlmoxarifadoGeral
    OnDataChange = DsAlmoxarifadoGeralDataChange
    Left = 176
    Top = 48
  end
  object SqlCdsProdutoGeral: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT'#13#10'    PRD0000.PRD_CODIGO,'#13#10'    PRD0000.PRD_REFER,'#13#10'    PRD' +
      '0000.PRD_DESCRI,'#13#10'    PRD0000.PRD_UND'#13#10'FROM'#13#10'PRD0000 WHERE PRD00' +
      '00.PRD_CODIGO IN ('#13#10'SELECT'#13#10'    t1.PRD_CODIGO'#13#10'from KARDEX T1'#13#10'w' +
      'here t1.AMX_CODIGO = '#39'0001'#39#13#10'GROUP BY t1.PRD_CODIGO'#13#10')'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    PacketRecords = 50
    Params = <>
    CommandText = 
      'SELECT'#13#10'    PRD0000.PRD_CODIGO,'#13#10'    PRD0000.PRD_REFER,'#13#10'    PRD' +
      '0000.PRD_DESCRI,'#13#10'    PRD0000.PRD_UND'#13#10'FROM'#13#10'PRD0000 WHERE PRD00' +
      '00.PRD_CODIGO IN ('#13#10'SELECT'#13#10'    t1.PRD_CODIGO'#13#10'from KARDEX T1'#13#10'w' +
      'here t1.AMX_CODIGO = '#39'0001'#39#13#10'GROUP BY t1.PRD_CODIGO'#13#10')'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 63
    Top = 240
    object SqlCdsProdutoGeralPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object SqlCdsProdutoGeralPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 80
    end
    object SqlCdsProdutoGeralPRD_UND: TStringField
      FieldName = 'PRD_UND'
      Size = 3
    end
    object SqlCdsProdutoGeralPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Required = True
      Size = 4
    end
  end
  object DsProdutoGeral: TDataSource
    DataSet = SqlCdsProdutoGeral
    OnDataChange = DsProdutoGeralDataChange
    Left = 48
    Top = 168
  end
  object SqlSaldosGeral: TSQLDataSet
    CommandText = 'SELECT * FROM pcd_kardex_saldo('#39'001'#39','#39'00012'#39',null)'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DataCadastros.SQLConnection1
    Left = 528
    Top = 416
    object StringField1: TStringField
      DisplayWidth = 4
      FieldName = 'AMX_CODIGO_RET'
      Size = 4
    end
    object StringField2: TStringField
      FieldName = 'AMX_DESCRI_RET'
      Size = 35
    end
    object FMTBCDField1: TFMTBCDField
      FieldName = 'AMX_SALDO_RET'
      Precision = 15
    end
  end
  object DspSaldosGeral: TDataSetProvider
    DataSet = SqlSaldosGeral
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 614
    Top = 417
  end
  object CdsSaldosGeral: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'AMX_CODIGO_RET'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'AMX_DESCRI_RET'
        DataType = ftString
        Size = 35
      end
      item
        Name = 'AMX_SALDO_RET'
        DataType = ftFMTBcd
        Precision = 15
        Size = 4
      end>
    IndexDefs = <
      item
        Name = 'CdsReceberIndex1'
        Fields = 'FAT_CODIGO'
      end>
    PacketRecords = 10
    Params = <>
    ProviderName = 'DspSaldosGeral'
    StoreDefs = True
    Left = 700
    Top = 417
    object StringField3: TStringField
      DisplayWidth = 4
      FieldName = 'AMX_CODIGO_RET'
      Size = 4
    end
    object StringField4: TStringField
      FieldName = 'AMX_DESCRI_RET'
      Size = 35
    end
    object FMTBCDField2: TFMTBCDField
      FieldName = 'AMX_SALDO_RET'
      Precision = 15
    end
  end
  object DsSaldosGeral: TDataSource
    DataSet = CdsSaldosGeral
    Left = 785
    Top = 417
  end
  object frxKardexExtrato: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40950.646380902800000000
    ReportOptions.LastChange = 41032.426614699080000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnGetValue = frxKardexExtratoGetValue
    Left = 740
    Top = 130
    Datasets = <
      item
        DataSet = frxDBKardexExtrato
        DataSetName = 'frxDBKardexExtrato'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 49.133890000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        Stretched = True
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
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Top = 30.236239999999990000
          Width = 589.606680000000000000
          Height = 15.118120000000000000
          StretchMode = smActualHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              'Produto: [produto] de [dataInicial] at'#233' [dataFinal] - Almoxarifa' +
              'do: [almoxarifado]')
          ParentFont = False
          WordBreak = True
          VAlign = vaCenter
        end
        object SysMemo2: TfrxSysMemoView
          AllowVectorExport = True
          Left = 589.606680000000000000
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
          Left = 589.606680000000000000
          Top = 30.236240000000000000
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
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 589.606680000000000000
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
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 15.118120000000000000
        Top = 173.858380000000000000
        Width = 718.110700000000000000
        DataSet = frxDBKardexExtrato
        DataSetName = 'frxDBKardexExtrato'
        RowCount = 0
        object frxDBKardexExtratoKEX_DATA_HORA: TfrxMemoView
          AllowVectorExport = True
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          DataSet = frxDBKardexExtrato
          DataSetName = 'frxDBKardexExtrato'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBKardexExtrato."KEX_DATA_HORA"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 117.165430000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          DataField = 'KEX_ORIGEM'
          DataSet = frxDBKardexExtrato
          DataSetName = 'frxDBKardexExtrato'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBKardexExtrato."KEX_ORIGEM"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 192.756030000000000000
          Width = 26.456710000000000000
          Height = 15.118120000000000000
          DataField = 'KEX_TIPO'
          DataSet = frxDBKardexExtrato
          DataSetName = 'frxDBKardexExtrato'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBKardexExtrato."KEX_TIPO"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 219.212740000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DataField = 'KEX_QUANTIDADE'
          DataSet = frxDBKardexExtrato
          DataSetName = 'frxDBKardexExtrato'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBKardexExtrato."KEX_QUANTIDADE"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 287.244280000000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          DataField = 'KEX_DOCUMENTO'
          DataSet = frxDBKardexExtrato
          DataSetName = 'frxDBKardexExtrato'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBKardexExtrato."KEX_DOCUMENTO"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 377.953000000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DataField = 'KEX_SALDO'
          DataSet = frxDBKardexExtrato
          DataSetName = 'frxDBKardexExtrato'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBKardexExtrato."KEX_SALDO"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 457.323130000000000000
          Width = 102.047310000000000000
          Height = 15.118120000000000000
          DataField = 'KEX_USUARIO_DESCRICAO'
          DataSet = frxDBKardexExtrato
          DataSetName = 'frxDBKardexExtrato'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBKardexExtrato."KEX_USUARIO_DESCRICAO"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 559.370440000000000000
          Width = 158.740260000000000000
          Height = 15.118120000000000000
          DataField = 'KEX_DETALHE'
          DataSet = frxDBKardexExtrato
          DataSetName = 'frxDBKardexExtrato'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBKardexExtrato."KEX_DETALHE"]')
          ParentFont = False
          WordWrap = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 3.779530000000000000
        Top = 249.448980000000000000
        Width = 718.110700000000000000
        object Line2: TfrxLineView
          AllowVectorExport = True
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Style = fsDot
          Frame.Typ = [ftTop]
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 128.504020000000000000
        Width = 718.110700000000000000
        KeepChild = True
        ReprintOnNewPage = True
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 2.440940000000000000
          Width = 714.331170000000000000
          Color = clBlack
          Frame.Style = fsDot
          Frame.Typ = [ftTop]
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 1.779530000000000000
          Top = 1.779530000000000000
          Width = 79.370130000000000000
          Height = 15.118110240000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Data/Hora')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 118.944960000000000000
          Top = 1.779530000000000000
          Width = 64.252010000000000000
          Height = 15.118110236220470000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Origem')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 192.756030000000000000
          Top = 1.779530000000000000
          Width = 26.456710000000000000
          Height = 15.118110236220470000
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
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 222.992270000000000000
          Top = 1.779530000000000000
          Width = 68.031540000000000000
          Height = 15.118110240000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Quantidade')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 287.244280000000000000
          Top = 1.779530000000000000
          Width = 90.708720000000000000
          Height = 15.118110240000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Documento')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 379.732530000000000000
          Top = 1.779530000000000000
          Width = 64.252010000000000000
          Height = 15.118110240000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Saldo')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 456.543600000000000000
          Top = 1.779530000000000000
          Width = 90.708720000000000000
          Height = 15.118110240000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Usu'#225'rio')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 559.370440000000000000
          Top = 1.779530000000000000
          Width = 158.740260000000000000
          Height = 15.118110240000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Detalhe')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Left = 1.000000000000000000
          Top = 20.118120000000000000
          Width = 714.330708660000000000
          Color = clBlack
          Frame.Style = fsDot
          Frame.Typ = [ftTop]
        end
      end
    end
  end
  object frxDBKardexExtrato: TfrxDBDataset
    UserName = 'frxDBKardexExtrato'
    CloseDataSource = False
    FieldAliases.Strings = (
      'KEX_REGISTRO=KEX_REGISTRO'
      'KEX_DATA_HORA=KEX_DATA_HORA'
      'KEX_TIPO=KEX_TIPO'
      'KEX_QUANTIDADE=KEX_QUANTIDADE'
      'KEX_USUARIO_CODIGO=KEX_USUARIO_CODIGO'
      'KEX_USUARIO_DESCRICAO=KEX_USUARIO_DESCRICAO'
      'KEX_SALDO=KEX_SALDO'
      'KEX_ORIGEM=KEX_ORIGEM'
      'KEX_DETALHE=KEX_DETALHE'
      'KEX_OBSERVACAO=KEX_OBSERVACAO'
      'KEX_DOCUMENTO=KEX_DOCUMENTO')
    DataSource = DsKardex
    BCDToCurrency = False
    Left = 772
    Top = 130
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
    Creator = 'FastReport (http://www.fast-report.com)'
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
    Left = 804
    Top = 130
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
    Left = 836
    Top = 130
  end
  object qCol: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      ''
      ''
      '')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 739
    Top = 188
  end
end
