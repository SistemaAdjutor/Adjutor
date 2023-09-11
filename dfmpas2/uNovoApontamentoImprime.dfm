inherited frmNovoApontamentoImprime: TfrmNovoApontamentoImprime
  Left = 244
  Top = 219
  Caption = 'Impress'#227'o de Apontamentos'
  ClientHeight = 441
  ClientWidth = 616
  Position = poDesigned
  ExplicitWidth = 624
  ExplicitHeight = 468
  PixelsPerInch = 96
  TextHeight = 13
  object gbBotoes: TGroupBox [0]
    Left = 0
    Top = 400
    Width = 616
    Height = 41
    Align = alBottom
    TabOrder = 0
    DesignSize = (
      616
      41)
    object BitConfig: TBitBtn
      Left = 15
      Top = 11
      Width = 150
      Height = 25
      Cursor = crHandPoint
      Caption = 'Config&ura'#231#227'o de Impress'#227'o'
      TabOrder = 0
      TabStop = False
      OnClick = BitConfigClick
    end
    object BitOk: TBitBtn
      Left = 451
      Top = 11
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = '&OK'
      TabOrder = 1
      TabStop = False
      OnClick = BitOkClick
    end
    object BitCancelar: TBitBtn
      Left = 534
      Top = 11
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = '&Cancelar'
      TabOrder = 2
      TabStop = False
      OnClick = BitCancelarClick
    end
  end
  object Panel1: TPanel [1]
    Left = 0
    Top = 0
    Width = 616
    Height = 122
    Align = alTop
    TabOrder = 1
    object grp00: TGroupBox
      Left = 1
      Top = 1
      Width = 429
      Height = 120
      Align = alClient
      Caption = 'Tipos de Relat'#243'rios'
      TabOrder = 0
      object lbRelatorio: TListBox
        Left = 2
        Top = 15
        Width = 425
        Height = 103
        Style = lbOwnerDrawVariable
        Align = alClient
        Color = 11599871
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Items.Strings = (
          'Relat'#243'rio por Ordem de Produ'#231#227'o'
          'Relat'#243'rio por Per'#237'odo'
          'Relat'#243'rio por Colaborador'
          'Relat'#243'rio de Refugados'
          'Relat'#243'rio por Pedido')
        ParentFont = False
        TabOrder = 0
        OnClick = lbRelatorioClick
      end
    end
    object rgSaida: TRadioGroup
      Left = 430
      Top = 1
      Width = 185
      Height = 120
      Align = alRight
      Caption = 'Sa'#237'da Para'
      ItemIndex = 0
      Items.Strings = (
        'V'#237'deo'
        'Arquivo Texto (csv)')
      TabOrder = 1
    end
  end
  object gbPeriodo: TGroupBox [2]
    Left = 0
    Top = 272
    Width = 616
    Height = 50
    Align = alTop
    Caption = '&Per'#237'odo:'
    TabOrder = 2
    object Label1: TLabel
      Left = 10
      Top = 22
      Width = 17
      Height = 13
      Caption = '&De:'
    end
    object Label2: TLabel
      Left = 153
      Top = 22
      Width = 21
      Height = 13
      Caption = 'A&t'#233':'
    end
    object edDataInicial: TJvDateEdit
      Left = 33
      Top = 18
      Width = 100
      Height = 21
      Glyph.Data = {
        76050000424D760500000000000036000000280000001C0000000C0000000100
        2000000000004005000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF008080800080808000808080008080800080808000808080008080
        800080808000808080008080800080808000FF00FF00FF00FF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FF00FF00FF00FF000000000000000000800000000000
        0000800000008000000000000000800000000000000000000000800000008080
        8000FF00FF008080800080808000808080008080800080808000808080008080
        80008080800080808000808080008080800080808000FFFFFF00FF00FF00FF00
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
        FF00FFFFFF00FFFFFF00FFFFFF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FF00
        FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF0000000000000000000000
        0000FFFFFF00000000000000000000000000C0C0C000FFFFFF00800000008080
        8000FF00FF0080808000FFFFFF00808080008080800080808000FF00FF008080
        80008080800080808000FF00FF00FFFFFF0080808000FFFFFF00FF00FF00FF00
        FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00C0C0C000FFFFFF00C0C0
        C00000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
        FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFF
        FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF0000000000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00800000008080
        8000FF00FF0080808000FFFFFF00FF00FF0080808000FFFFFF00FF00FF00FF00
        FF00FFFFFF00FFFFFF0080808000FF00FF0080808000FFFFFF00FF00FF00FF00
        FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
        0000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
        FF0080808000FFFFFF00FF00FF00808080008080800080808000FF00FF00FF00
        FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF000000000000000000FFFF
        FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
        8000FF00FF0080808000FFFFFF008080800080808000FFFFFF00FF00FF008080
        8000FFFFFF00FFFFFF00FFFFFF00FFFFFF0080808000FFFFFF00FF00FF00FF00
        FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
        000000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
        FF0080808000FF00FF00FF00FF0080808000808080008080800080808000FF00
        FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
        8000FF00FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFFFF00FF00FF00FF00
        FF00FFFFFF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF0080808000FFFFFF00FF00FF00FF00FF000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF008080800080808000808080008080800080808000808080008080
        80008080800080808000808080008080800080808000FF00FF00}
      ImageKind = ikCustom
      NumGlyphs = 2
      PopupColor = clBtnFace
      ShowNullDate = False
      YearDigits = dyFour
      TabOrder = 0
    end
    object edDataFinal: TJvDateEdit
      Left = 180
      Top = 18
      Width = 100
      Height = 21
      Glyph.Data = {
        76050000424D760500000000000036000000280000001C0000000C0000000100
        2000000000004005000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF008080800080808000808080008080800080808000808080008080
        800080808000808080008080800080808000FF00FF00FF00FF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FF00FF00FF00FF000000000000000000800000000000
        0000800000008000000000000000800000000000000000000000800000008080
        8000FF00FF008080800080808000808080008080800080808000808080008080
        80008080800080808000808080008080800080808000FFFFFF00FF00FF00FF00
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
        FF00FFFFFF00FFFFFF00FFFFFF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FF00
        FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF0000000000000000000000
        0000FFFFFF00000000000000000000000000C0C0C000FFFFFF00800000008080
        8000FF00FF0080808000FFFFFF00808080008080800080808000FF00FF008080
        80008080800080808000FF00FF00FFFFFF0080808000FFFFFF00FF00FF00FF00
        FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00C0C0C000FFFFFF00C0C0
        C00000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
        FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFF
        FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF0000000000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00800000008080
        8000FF00FF0080808000FFFFFF00FF00FF0080808000FFFFFF00FF00FF00FF00
        FF00FFFFFF00FFFFFF0080808000FF00FF0080808000FFFFFF00FF00FF00FF00
        FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
        0000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
        FF0080808000FFFFFF00FF00FF00808080008080800080808000FF00FF00FF00
        FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF000000000000000000FFFF
        FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
        8000FF00FF0080808000FFFFFF008080800080808000FFFFFF00FF00FF008080
        8000FFFFFF00FFFFFF00FFFFFF00FFFFFF0080808000FFFFFF00FF00FF00FF00
        FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
        000000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
        FF0080808000FF00FF00FF00FF0080808000808080008080800080808000FF00
        FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
        8000FF00FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFFFF00FF00FF00FF00
        FF00FFFFFF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF0080808000FFFFFF00FF00FF00FF00FF000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF008080800080808000808080008080800080808000808080008080
        80008080800080808000808080008080800080808000FF00FF00}
      ImageKind = ikCustom
      NumGlyphs = 2
      PopupColor = clBtnFace
      ShowNullDate = False
      YearDigits = dyFour
      TabOrder = 1
    end
  end
  object gbColaborador: TGroupBox [3]
    Left = 0
    Top = 222
    Width = 616
    Height = 50
    Align = alTop
    Caption = 'Colaborador'
    TabOrder = 3
    object Label4: TLabel
      Left = 9
      Top = 22
      Width = 50
      Height = 14
      Alignment = taRightJustify
      Caption = 'Selecione:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object edColaboradorCodigo: TEdit
      Left = 62
      Top = 19
      Width = 68
      Height = 21
      CharCase = ecUpperCase
      Color = clWhite
      MaxLength = 5
      TabOrder = 0
      OnExit = edColaboradorCodigoExit
    end
    object cbColaborador: TSgDbSearchCombo
      Left = 136
      Top = 19
      Width = 289
      Height = 21
      TabOrder = 1
      OnChange = cbColaboradorChange
      LookupSelect = 'COL_CODIGO,COL_NOME'
      LookupOrderBy = 'COL_NOME'
      LookupTable = 'COLABORADOR'
      LookupDispl = 'COL_NOME'
      GridAutoSize = False
      LookupSource = qColaborador
      DataSource = dsColaborador
      LookupKeyField = 'COL_CODIGO'
      ShowButton = True
      AutoF8WinTitulo = 'Colaboradores'
      AutoF8ColumnsTitulo = 'C'#243'digo, Nome'
      GridLeft = 0
      GridWidth = 0
      GridHeight = 100
      GridShowWhenEnter = False
      SelectWithDoubleClick = False
    end
  end
  object gbOrdemProducao: TGroupBox [4]
    Left = 0
    Top = 122
    Width = 616
    Height = 50
    Align = alTop
    Caption = 'Ordem de Produ'#231#227'o'
    TabOrder = 4
    object Label3: TLabel
      Left = 26
      Top = 23
      Width = 41
      Height = 13
      Caption = 'N'#250'mero:'
    end
    object edOrdemProducao: TEdit
      Left = 79
      Top = 20
      Width = 95
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 7
      TabOrder = 0
    end
  end
  object gbPedido: TGroupBox [5]
    Left = 0
    Top = 172
    Width = 616
    Height = 50
    Align = alTop
    Caption = 'Pedido'
    TabOrder = 5
    object Label5: TLabel
      Left = 26
      Top = 23
      Width = 41
      Height = 13
      Caption = 'N'#250'mero:'
    end
    object edPedidoNumero: TEdit
      Left = 79
      Top = 20
      Width = 95
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 7
      TabOrder = 0
    end
  end
  inherited coCalcula: TACBrCalculadora
    Left = 440
    Top = 160
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 440
    Top = 216
  end
  inherited DBConn: TSQLConnection
    Params.Strings = (
      'DriverName=Firebird'
      'Database=C:\JOBDADOS\EXEMPLO\EXEMPLO.FDB'
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
    Left = 520
    Top = 137
  end
  inherited qAux: TSQLQuery
    Left = 498
  end
  inherited qAux2: TSQLQuery
    Left = 498
    Top = 60
  end
  inherited qAux3: TSQLQuery
    Left = 498
    Top = 116
  end
  object PrinterApontamento: TPrinterSetupDialog
    Left = 524
    Top = 188
  end
  object frxOPColaborador: TfrxReport
    Version = '5.3.16'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44376.640266354200000000
    ReportOptions.LastChange = 44445.429672951400000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var tempo, tempoTotal, totalColaborador : integer;'
      
        '    dataI, dataF, empresa, endereco: string;                    ' +
        '                         '
      'begin'
      ''
      'end.')
    OnBeginDoc = frxOPColaboradorBeginDoc
    OnGetValue = frxOPColaboradorGetValue
    Left = 268
    Top = 281
    Datasets = <
      item
        DataSet = frxDBOPCabecalho
        DataSetName = 'frxDBOPCabecalho'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object frxReportPage1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 279.685220000000000000
        Width = 1046.929810000000000000
        DataSet = frxDBOPCabecalho
        DataSetName = 'frxDBOPCabecalho'
        PrintChildIfInvisible = True
        PrintIfDetailEmpty = True
        RowCount = 0
        object Shape22: TfrxShapeView
          Left = 974.362236460000000000
          Width = 72.188944650000000000
          Height = 18.897650000000000000
        end
        object Shape20: TfrxShapeView
          Left = 857.173780000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
        end
        object Shape21: TfrxShapeView
          Left = 917.646260000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
        end
        object Shape19: TfrxShapeView
          Left = 789.142240000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
        end
        object Shape15: TfrxShapeView
          Left = 127.724490000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
        end
        object Shape16: TfrxShapeView
          Left = 229.771800000000000000
          Width = 279.685220000000000000
          Height = 18.897650000000000000
        end
        object Shape17: TfrxShapeView
          Left = 509.457020000000000000
          Width = 204.094620000000000000
          Height = 18.897650000000000000
        end
        object Shape23: TfrxShapeView
          Width = 127.748033940000000000
          Height = 18.897650000000000000
        end
        object Memo14: TfrxMemoView
          Left = 6.779530000000000000
          Top = 2.000000000000000000
          Width = 117.165430000000000000
          Height = 15.118120000000000000
          DataField = 'OPE_DESCRICAO'
          DataSet = frxDBOPCabecalho
          DataSetName = 'frxDBOPCabecalho'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBOPCabecalho."OPE_DESCRICAO"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 135.283550000000000000
          Top = 2.000000000000000000
          Width = 90.708720000000000000
          Height = 15.118120000000000000
          DataField = 'PRD_REFER'
          DataSet = frxDBOPCabecalho
          DataSetName = 'frxDBOPCabecalho'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBOPCabecalho."PRD_REFER"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 233.551330000000000000
          Top = 2.000000000000000000
          Width = 272.126160000000000000
          Height = 15.118120000000000000
          DataSet = frxDBOPCabecalho
          DataSetName = 'frxDBOPCabecalho'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBOPCabecalho."PRD_DESCRI"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 517.016080000000000000
          Top = 2.000000000000000000
          Width = 192.756030000000000000
          Height = 15.118120000000000000
          DataField = 'OCE_MOTIVO'
          DataSet = frxDBOPCabecalho
          DataSetName = 'frxDBOPCabecalho'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBOPCabecalho."OCE_MOTIVO"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 717.331170000000000000
          Top = 2.000000000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          DataField = 'IOP_QUANTIDADE'
          DataSet = frxDBOPCabecalho
          DataSetName = 'frxDBOPCabecalho'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBOPCabecalho."IOP_QUANTIDADE"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 797.480415040000000000
          Top = 2.000000000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          DataField = 'OPR_EMISSAO'
          DataSet = frxDBOPCabecalho
          DataSetName = 'frxDBOPCabecalho'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBOPCabecalho."OPR_EMISSAO"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 860.953310000000000000
          Top = 2.000000000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          DataSet = frxDBOPCabecalho
          DataSetName = 'frxDBOPCabecalho'
          DisplayFormat.FormatStr = 'hh:mm:ss'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBOPCabecalho."APF_DATA_INI"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 921.425790000000000000
          Top = 2.000000000000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          DataSet = frxDBOPCabecalho
          DataSetName = 'frxDBOPCabecalho'
          DisplayFormat.FormatStr = 'hh:mm:ss'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBOPCabecalho."APF_DATA_FIM"]')
          ParentFont = False
        end
        object Shape18: TfrxShapeView
          Left = 713.551640000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
        end
        object Memo23: TfrxMemoView
          Left = 986.457330000000000000
          Top = 2.779530000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          DataSet = frxDBOPCabecalho
          DataSetName = 'frxDBOPCabecalho'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[tempo]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 45.354360000000000000
        Top = 211.653680000000000000
        Width = 1046.929810000000000000
        Condition = 'frxDBOPCabecalho."OSV_CODIGO"'
        object Shape7: TfrxShapeView
          Left = 128.504020000000000000
          Top = 26.456710000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
        end
        object Shape8: TfrxShapeView
          Left = 230.551330000000000000
          Top = 26.456710000000000000
          Width = 279.685220000000000000
          Height = 18.897650000000000000
        end
        object Shape9: TfrxShapeView
          Left = 509.858267720000000000
          Top = 26.456710000000000000
          Width = 203.716535433071000000
          Height = 18.897650000000000000
        end
        object Shape10: TfrxShapeView
          Left = 713.331170000000000000
          Top = 26.456710000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
        end
        object Shape11: TfrxShapeView
          Left = 788.921770000000000000
          Top = 26.456710000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
        end
        object Shape12: TfrxShapeView
          Left = 856.953310000000000000
          Top = 26.456710000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
        end
        object Shape13: TfrxShapeView
          Left = 917.425790000000000000
          Top = 26.456710000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
        end
        object Shape14: TfrxShapeView
          Left = 974.362204720000000000
          Top = 26.456710000000000000
          Width = 72.188976380000000000
          Height = 18.897650000000000000
        end
        object Shape6: TfrxShapeView
          Top = 26.456692910000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
        end
        object Shape5: TfrxShapeView
          Width = 1046.551183540000000000
          Height = 26.456710000000000000
          Fill.BackColor = clSilver
        end
        object Memo3: TfrxMemoView
          Left = 7.559060000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'OP: [frxDBOPCabecalho."OSV_CODIGO"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 6.803149606299210000
          Top = 28.236240000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'OPERA'#199#195'O')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 135.307086614173000000
          Top = 28.236240000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'REFER'#202'NCIA')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 233.574803149606000000
          Top = 28.236240000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DESCRI'#199#195'O')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 517.039484800000000000
          Top = 28.236240000000000000
          Width = 154.960730000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'REGISTRO DE OCORR'#202'NCIA')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 718.110700000000000000
          Top = 28.236240000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'QTD. PROD.')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 796.480830000000000000
          Top = 28.236240000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DATA')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 861.732840000000000000
          Top = 28.236240000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'IN'#205'CIO')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 920.448875040000000000
          Top = 28.236240000000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'FIM')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 986.457330000000000000
          Top = 28.236240000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'TOTAL')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 17.118120000000000000
        Top = 321.260050000000000000
        Width = 1046.929810000000000000
        object Memo22: TfrxMemoView
          Left = 953.662030000000000000
          Top = 0.220470000000000000
          Width = 90.708720000000000000
          Height = 15.118120000000000000
          DataSet = frxDBOPCabecalho
          DataSetName = 'frxDBOPCabecalho'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[tempoTotal]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 858.953310000000000000
          Width = 90.708720000000000000
          Height = 15.118120000000000000
          DataSet = frxDBOPCabecalho
          DataSetName = 'frxDBOPCabecalho'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Total:')
          ParentFont = False
        end
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 162.519790000000000000
        Width = 1046.929810000000000000
        Condition = 'frxDBOPCabecalho."COL_NOME"'
        object Shape4: TfrxShapeView
          Width = 200.315090000000000000
          Height = 26.456710000000000000
          Fill.BackColor = clGray
        end
        object Memo1: TfrxMemoView
          Left = 3.000002440000000000
          Top = 3.779530000000000000
          Width = 185.196970000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Colaborador: [frxDBOPCabecalho."COL_NOME"]')
          ParentFont = False
        end
      end
      object GroupFooter2: TfrxGroupFooter
        FillType = ftBrush
        Height = 37.795300000000000000
        Top = 362.834880000000000000
        Width = 1046.929810000000000000
        object Memo24: TfrxMemoView
          Left = 818.378480000000000000
          Width = 226.771800000000000000
          Height = 15.118120000000000000
          DataSet = frxDBOPCabecalho
          DataSetName = 'frxDBOPCabecalho'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Total do Colaborador: [totalColaborador]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 18.897650000000000000
          Width = 1050.709340000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 81.858304330000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Shape26: TfrxShapeView
          Top = 60.692950000000000000
          Width = 1046.929810000000000000
          Height = 21.165354330000000000
          Fill.BackColor = clSilver
        end
        object Memo25: TfrxMemoView
          Left = 7.559060000000000000
          Top = 63.803185000000000000
          Width = 1035.591220000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Apontamento de Produ'#231#227'o por Colaborador:  [dataI] a [dataF]')
          ParentFont = False
        end
        object Shape37: TfrxShapeView
          Width = 136.063080000000000000
          Height = 60.472480000000000000
        end
        object logoEmpresa: TfrxPictureView
          Left = 1.669295000000000000
          Top = 1.779530000000000000
          Width = 132.283550000000000000
          Height = 56.692950000000000000
          Center = True
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Shape25: TfrxShapeView
          Left = 850.284015000000000000
          Width = 195.779527560000000000
          Height = 60.472480000000000000
        end
        object Memo26: TfrxMemoView
          Left = 986.347095000000000000
          Top = 3.779530000000000000
          Width = 56.692950000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'P'#193'GINA')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 986.347095000000000000
          Top = 15.118120000000000000
          Width = 56.692950000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[Page] de [TotalPages#]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo31: TfrxMemoView
          Left = 139.732375000000000000
          Top = 9.338590000000000000
          Width = 706.772110000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[empresa]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 139.732375000000000000
          Top = 31.795300000000000000
          Width = 706.772110000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[endereco]')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Left = 136.063080000000000000
          Width = 714.331170000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
    end
  end
  object qOPCabecalho: TFDQuery
    Connection = DBInicio.FDACConn
    SQL.Strings = (
      'SELECT'
      
        #9'col.COL_NOME,'#9'FB.OSV_CODIGO,'#9'OPE_DESCRICAO,'#9'P1.PRD_REFER,'#9'P1.PR' +
        'D_DESCRI,'
      
        #9'oe.OCE_MOTIVO,'#9'OS.IOP_QUANTIDADE,'#9'OPR.OPR_EMISSAO,'#9'APF.APF_DATA' +
        '_INI,'
      #9'APF.APF_DATA_FIM,'#9'APF.APF_REFUGADO, APF.APF_REBARBA,'#9
      
        #9'DATEDIFF(MINUTE,'#9'APF.APF_DATA_INI,'#9'APF.APF_DATA_FIM) AS TEMPO_E' +
        'M_MINUTOS'
      'FROM'
      #9'FABRICACAO FB'
      'JOIN PRD0000 P1 ON'#9'(P1.PRD_CODIGO = fb.PRD_CODIGO)'
      
        'JOIN ITEM_ORDEMPRODUCAO OS ON'#9'(OS.iop_CODIGO = FB.iop_CODIGO AND' +
        ' P1.PRD_codigo = os.PRD_codigo) '
      'JOIN ORDEMPRODUCAO OPR ON (OPR.OPR_CODIGO = OS.OPR_CODIGO)'
      'JOIN OPERACOES OP ON (OP.OPE_CODIGO = FB.OPE_CODIGO) '
      'JOIN APONTAMENTO_FAB APF ON'#9'(APF.FAB_CODIGO = fb.FAB_CODIGO)'
      'JOIN COLABORADOR COL ON'#9'(COL.COL_CODIGO = apf.COL_CODIGO)'
      
        'LEFT JOIN OCORRENCIA_EVENTO OE ON (OE.FAB_CODIGO = FB.FAB_CODIGO' +
        ')'
      'LEFT JOIN OCORRENCIA OC ON (OC.OCO_CODIGO = OE.OCO_CODIGO)'
      'LEFT JOIN EQUIPAMENTO EQ ON'#9'(EQ.EQP_CODIGO = APF.EQP_CODIGO)'
      'WHERE'
      #9'(apf.APF_DATA_FIM IS NOT NULL)'
      'ORDER BY'
      #9'opr.OPR_EMISSAO, fb.OSV_CODIGO, APF.APF_DATA_INI')
    Left = 156
    Top = 281
    object qOPCabecalhoCOL_NOME: TStringField
      DisplayLabel = 'Nome Colaborador'
      FieldName = 'COL_NOME'
      Origin = 'COL_NOME'
      Size = 40
    end
    object qOPCabecalhoOSV_CODIGO: TStringField
      DisplayLabel = 'O.P.'
      FieldName = 'OSV_CODIGO'
      Origin = 'OSV_CODIGO'
    end
    object qOPCabecalhoOPE_DESCRICAO: TStringField
      DisplayLabel = 'Opera'#231#227'o'
      FieldName = 'OPE_DESCRICAO'
      Origin = 'OPE_DESCRICAO'
      Size = 60
    end
    object qOPCabecalhoPRD_REFER: TStringField
      DisplayLabel = 'Refer'#234'ncia'
      FieldName = 'PRD_REFER'
      Origin = 'PRD_REFER'
    end
    object qOPCabecalhoPRD_DESCRI: TStringField
      DisplayLabel = 'Descri'#231#227'o do Produto'
      FieldName = 'PRD_DESCRI'
      Origin = 'PRD_DESCRI'
      Size = 100
    end
    object qOPCabecalhoOCE_MOTIVO: TStringField
      DisplayLabel = 'Registro de Ocorr'#234'ncia'
      FieldName = 'OCE_MOTIVO'
      Origin = 'OCE_MOTIVO'
      Size = 60
    end
    object qOPCabecalhoIOP_QUANTIDADE: TFMTBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'IOP_QUANTIDADE'
      Origin = 'IOP_QUANTIDADE'
      Precision = 18
      Size = 5
    end
    object qOPCabecalhoOPR_EMISSAO: TSQLTimeStampField
      DisplayLabel = 'Data Emiss'#227'o'
      FieldName = 'OPR_EMISSAO'
      Origin = 'OPR_EMISSAO'
    end
    object qOPCabecalhoAPF_DATA_INI: TSQLTimeStampField
      DisplayLabel = 'Data Inicial'
      FieldName = 'APF_DATA_INI'
      Origin = 'APF_DATA_INI'
    end
    object qOPCabecalhoAPF_DATA_FIM: TSQLTimeStampField
      DisplayLabel = 'Data Final'
      FieldName = 'APF_DATA_FIM'
      Origin = 'APF_DATA_FIM'
    end
    object qOPCabecalhoAPF_REFUGADO: TFMTBCDField
      DisplayLabel = 'Refugado'
      FieldName = 'APF_REFUGADO'
      Origin = 'APF_REFUGADO'
      Precision = 18
      Size = 5
    end
    object qOPCabecalhoTEMPO_EM_MINUTOS: TLargeintField
      DisplayLabel = 'Tempo'
      FieldName = 'TEMPO_EM_MINUTOS'
      Origin = 'TEMPO_EM_MINUTOS'
    end
    object qOPCabecalhoAPF_REBARBA: TFMTBCDField
      DisplayLabel = 'Rebarba'
      FieldName = 'APF_REBARBA'
      Origin = 'APF_REBARBA'
      Precision = 18
      Size = 5
    end
    object qOPCabecalhoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
  object frxDBOPCabecalho: TfrxDBDataset
    UserName = 'frxDBOPCabecalho'
    CloseDataSource = False
    FieldAliases.Strings = (
      'COL_NOME=COL_NOME'
      'OSV_CODIGO=OSV_CODIGO'
      'OPE_DESCRICAO=OPE_DESCRICAO'
      'PRD_REFER=PRD_REFER'
      'PRD_DESCRI=PRD_DESCRI'
      'OCE_MOTIVO=OCE_MOTIVO'
      'IOP_QUANTIDADE=IOP_QUANTIDADE'
      'OPR_EMISSAO=OPR_EMISSAO'
      'APF_DATA_INI=APF_DATA_INI'
      'APF_DATA_FIM=APF_DATA_FIM'
      'APF_REFUGADO=APF_REFUGADO'
      'TEMPO_EM_MINUTOS=TEMPO_EM_MINUTOS'
      'APF_REBARBA=APF_REBARBA')
    DataSet = qOPCabecalho
    BCDToCurrency = False
    Left = 156
    Top = 329
  end
  object qColaborador: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM COLABORADOR ORDER BY COL_NOME')
    SQLConnection = DBConn
    Left = 432
    Top = 288
  end
  object dsColaborador: TDataSource
    DataSet = qColaborador
    Left = 432
    Top = 336
  end
  object frxOPProducao: TfrxReport
    Version = '5.3.16'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44376.640266354200000000
    ReportOptions.LastChange = 44377.682938981500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var tempo, tempoTotal, totalColaborador : integer;'
      
        '    empresa, endereco: string;                                  ' +
        '                                                   '
      'begin'
      ''
      'end.')
    OnBeginDoc = frxOPProducaoBeginDoc
    OnGetValue = frxOPColaboradorGetValue
    Left = 268
    Top = 337
    Datasets = <
      item
        DataSet = frxDBOPCabecalho
        DataSetName = 'frxDBOPCabecalho'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object frxReportPage1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 230.551330000000000000
        Width = 1046.929810000000000000
        DataSet = frxDBOPCabecalho
        DataSetName = 'frxDBOPCabecalho'
        PrintChildIfInvisible = True
        PrintIfDetailEmpty = True
        RowCount = 0
        object Shape18: TfrxShapeView
          Left = 630.425196850394000000
          Width = 80.125984251968500000
          Height = 18.897650000000000000
        end
        object Shape22: TfrxShapeView
          Left = 959.999995120000000000
          Width = 86.551188430000000000
          Height = 18.897650000000000000
        end
        object Shape20: TfrxShapeView
          Left = 861.732283464567000000
          Width = 49.133858270000000000
          Height = 18.897650000000000000
        end
        object Shape21: TfrxShapeView
          Left = 910.866141730000000000
          Width = 49.133858270000000000
          Height = 18.897650000000000000
        end
        object Shape19: TfrxShapeView
          Left = 786.141732283465000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
        end
        object Shape15: TfrxShapeView
          Left = 229.771800000000000000
          Width = 60.472440940000000000
          Height = 18.897650000000000000
        end
        object Shape16: TfrxShapeView
          Left = 290.244280000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
        end
        object Shape17: TfrxShapeView
          Left = 464.102660000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
        end
        object Shape23: TfrxShapeView
          Width = 127.748033940000000000
          Height = 18.897650000000000000
        end
        object Memo14: TfrxMemoView
          Left = 6.779530000000000000
          Top = 2.000000000000000000
          Width = 117.165430000000000000
          Height = 15.118120000000000000
          DataField = 'OPE_DESCRICAO'
          DataSet = frxDBOPCabecalho
          DataSetName = 'frxDBOPCabecalho'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBOPCabecalho."OPE_DESCRICAO"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 237.330860000000000000
          Top = 2.000000000000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          DataField = 'PRD_REFER'
          DataSet = frxDBOPCabecalho
          DataSetName = 'frxDBOPCabecalho'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBOPCabecalho."PRD_REFER"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 294.023810000000000000
          Top = 2.000000000000000000
          Width = 166.299320000000000000
          Height = 15.118120000000000000
          DataField = 'PRD_DESCRI'
          DataSet = frxDBOPCabecalho
          DataSetName = 'frxDBOPCabecalho'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBOPCabecalho."PRD_DESCRI"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 471.661720000000000000
          Top = 2.000000000000000000
          Width = 154.960730000000000000
          Height = 15.118120000000000000
          DataField = 'OCE_MOTIVO'
          DataSet = frxDBOPCabecalho
          DataSetName = 'frxDBOPCabecalho'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBOPCabecalho."OCE_MOTIVO"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 630.803149610000000000
          Top = 2.000000000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DataField = 'IOP_QUANTIDADE'
          DataSet = frxDBOPCabecalho
          DataSetName = 'frxDBOPCabecalho'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBOPCabecalho."IOP_QUANTIDADE"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 790.141825040000000000
          Top = 2.000000000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          DataField = 'OPR_EMISSAO'
          DataSet = frxDBOPCabecalho
          DataSetName = 'frxDBOPCabecalho'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBOPCabecalho."OPR_EMISSAO"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 864.732840000000000000
          Top = 2.000000000000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          DataSet = frxDBOPCabecalho
          DataSetName = 'frxDBOPCabecalho'
          DisplayFormat.FormatStr = 'hh:mm:ss'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBOPCabecalho."APF_DATA_INI"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 913.866730000000000000
          Top = 2.000000000000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          DataSet = frxDBOPCabecalho
          DataSetName = 'frxDBOPCabecalho'
          DisplayFormat.FormatStr = 'hh:mm:ss'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBOPCabecalho."APF_DATA_FIM"]')
          ParentFont = False
        end
        object Shape2: TfrxShapeView
          Left = 128.504020000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
        end
        object Memo2: TfrxMemoView
          Left = 136.063080000000000000
          Top = 2.000000000000000000
          Width = 90.708720000000000000
          Height = 15.118120000000000000
          DataField = 'COL_NOME'
          DataSet = frxDBOPCabecalho
          DataSetName = 'frxDBOPCabecalho'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBOPCabecalho."COL_NOME"]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 967.559055120000000000
          Top = 2.779530000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          DataSet = frxDBOPCabecalho
          DataSetName = 'frxDBOPCabecalho'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[tempo]')
          ParentFont = False
        end
        object Shape4: TfrxShapeView
          Left = 710.173279610000000000
          Width = 75.968503940000000000
          Height = 18.897650000000000000
        end
        object Memo24: TfrxMemoView
          Left = 714.331170000000000000
          Top = 2.000000000000000000
          Width = 70.677165354330700000
          Height = 15.118120000000000000
          DataField = 'APF_REFUGADO'
          DataSet = frxDBOPCabecalho
          DataSetName = 'frxDBOPCabecalho'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBOPCabecalho."APF_REFUGADO"]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 45.354360000000000000
        Top = 162.519790000000000000
        Width = 1046.929810000000000000
        Condition = 'frxDBOPCabecalho."OSV_CODIGO"'
        object Shape7: TfrxShapeView
          Left = 230.551330000000000000
          Top = 26.456710000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
        end
        object Shape8: TfrxShapeView
          Left = 291.023810000000000000
          Top = 26.456710000000000000
          Width = 173.102362204724000000
          Height = 18.897650000000000000
        end
        object Shape9: TfrxShapeView
          Left = 464.125984251969000000
          Top = 26.456710000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
        end
        object Shape10: TfrxShapeView
          Left = 630.425196850394000000
          Top = 26.456710000000000000
          Width = 80.125984251968500000
          Height = 18.897650000000000000
        end
        object Shape11: TfrxShapeView
          Left = 786.142240000000000000
          Top = 26.456710000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
        end
        object Shape12: TfrxShapeView
          Left = 861.732840000000000000
          Top = 26.456710000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
        end
        object Shape13: TfrxShapeView
          Left = 910.866730000000000000
          Top = 26.456710000000000000
          Width = 49.133858270000000000
          Height = 18.897650000000000000
        end
        object Shape14: TfrxShapeView
          Left = 959.999995120000000000
          Top = 26.456692910000000000
          Width = 86.551159130000000000
          Height = 18.897650000000000000
        end
        object Shape6: TfrxShapeView
          Top = 26.456692910000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
        end
        object Shape5: TfrxShapeView
          Width = 128.125395980000000000
          Height = 26.456710000000000000
          Fill.BackColor = clGray
        end
        object Memo3: TfrxMemoView
          Left = 7.559060000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'OP: [frxDBOPCabecalho."OSV_CODIGO"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 6.803149606299210000
          Top = 28.236240000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'OPERA'#199#195'O')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 237.354396610000000000
          Top = 28.236240000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'REF.')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 294.047283150000000000
          Top = 28.236240000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DESCRI'#199#195'O')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 471.685124800000000000
          Top = 28.236240000000000000
          Width = 154.960730000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'REGISTRO DE OCORR'#202'NCIA')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 634.961040000000000000
          Top = 28.236240000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'QTD. PROD.')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 793.701300000000000000
          Top = 28.236240000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DATA')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 865.512370000000000000
          Top = 28.236240000000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'IN'#205'CIO')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 913.889815040000000000
          Top = 28.236240000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'FIM')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 971.338585120000000000
          Top = 28.015770000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'TOTAL')
          ParentFont = False
        end
        object Shape1: TfrxShapeView
          Left = 128.504020000000000000
          Top = 26.456710000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
        end
        object Memo1: TfrxMemoView
          Left = 135.307086610000000000
          Top = 28.236240000000000000
          Width = 90.708720000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'COLABORADOR')
          ParentFont = False
        end
        object Shape3: TfrxShapeView
          Left = 710.551640000000000000
          Top = 26.456710000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
        end
        object Memo7: TfrxMemoView
          Left = 714.331170000000000000
          Top = 28.236240000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'REFUGADO')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 272.126160000000000000
        Width = 1046.929810000000000000
        object Shape24: TfrxShapeView
          Left = 630.425199290000000000
          Width = 80.125984250000000000
          Height = 18.897650000000000000
        end
        object Shape36: TfrxShapeView
          Left = 710.173282050000000000
          Width = 75.968503940000000000
          Height = 18.897650000000000000
        end
        object Shape27: TfrxShapeView
          Left = 959.999997560000000000
          Width = 86.551188430000000000
          Height = 18.897650000000000000
        end
        object Memo22: TfrxMemoView
          Left = 967.780150000000000000
          Top = 2.000000000000000000
          Width = 67.275590550000000000
          Height = 15.118120000000000000
          DataSet = frxDBOPCabecalho
          DataSetName = 'frxDBOPCabecalho'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[tempoTotal]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 631.181510000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DataSet = frxDBOPCabecalho
          DataSetName = 'frxDBOPCabecalho'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            
              '[MAX(<frxDBOPCabecalho."IOP_QUANTIDADE">, 0, 0) - SUM(<frxDBOPCa' +
              'becalho."APF_REFUGADO">, 0, 0)]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 714.331170000000000000
          Width = 70.677165350000000000
          Height = 15.118120000000000000
          DataSet = frxDBOPCabecalho
          DataSetName = 'frxDBOPCabecalho'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBOPCabecalho."APF_REFUGADO">, 0, 0)]')
          ParentFont = False
        end
        object Shape28: TfrxShapeView
          Left = 861.732285910000000000
          Width = 49.133858270000000000
          Height = 18.897650000000000000
        end
        object Shape29: TfrxShapeView
          Left = 910.866144170000000000
          Width = 49.133858270000000000
          Height = 18.897650000000000000
        end
        object Shape30: TfrxShapeView
          Left = 786.141734720000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
        end
        object Shape31: TfrxShapeView
          Left = 229.771802440000000000
          Width = 60.472440940000000000
          Height = 18.897650000000000000
        end
        object Shape32: TfrxShapeView
          Left = 290.244282440000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
        end
        object Shape33: TfrxShapeView
          Left = 464.102662440000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
        end
        object Shape34: TfrxShapeView
          Width = 127.748033940000000000
          Height = 18.897650000000000000
        end
        object Shape35: TfrxShapeView
          Left = 128.504022440000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
        end
        object Memo30: TfrxMemoView
          Left = 551.811380000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'TOTAL')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 81.960654330000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Shape37: TfrxShapeView
          Left = 0.110235000000000000
          Top = 2.000000000000000000
          Width = 136.063080000000000000
          Height = 60.472480000000000000
        end
        object logoEmpresa: TfrxPictureView
          Left = 1.779530000000000000
          Top = 3.779530000000000000
          Width = 132.283550000000000000
          Height = 56.692950000000000000
          Center = True
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Shape25: TfrxShapeView
          Left = 850.394250000000000000
          Top = 2.000000000000000000
          Width = 195.779527560000000000
          Height = 60.472480000000000000
        end
        object Shape26: TfrxShapeView
          Top = 60.795300000000000000
          Width = 1046.173228350000000000
          Height = 21.165354330000000000
          Fill.BackColor = clSilver
        end
        object Memo25: TfrxMemoView
          Left = 291.023810000000000000
          Top = 63.905535000000000000
          Width = 377.953000000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Apontamento de Produ'#231#227'o por OP')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 986.457330000000000000
          Top = 5.779530000000000000
          Width = 56.692950000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'P'#193'GINA')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 986.457330000000000000
          Top = 17.118120000000000000
          Width = 56.692950000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[Page] de [TotalPages#]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Line1: TfrxLineView
          Left = 136.063080000000000000
          Top = 1.779530000000000000
          Width = 714.331170000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo31: TfrxMemoView
          Left = 139.842610000000000000
          Top = 11.338590000000000000
          Width = 706.772110000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[empresa]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 139.842610000000000000
          Top = 33.795300000000000000
          Width = 706.772110000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[endereco]')
          ParentFont = False
        end
      end
    end
  end
  object frxOPPeriodo: TfrxReport
    Version = '5.3.16'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44376.640266354200000000
    ReportOptions.LastChange = 44377.682938981500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var tempo, tempoTotal, totalColaborador : integer;'
      
        '    dataI, dataF: string;                                       ' +
        '                                    '
      'begin'
      ''
      'end.')
    OnBeginDoc = frxOPPeriodoBeginDoc
    OnGetValue = frxOPColaboradorGetValue
    Left = 348
    Top = 337
    Datasets = <
      item
        DataSet = frxDBOPCabecalho
        DataSetName = 'frxDBOPCabecalho'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object frxReportPage1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 230.551330000000000000
        Width = 1046.929810000000000000
        DataSet = frxDBOPCabecalho
        DataSetName = 'frxDBOPCabecalho'
        PrintChildIfInvisible = True
        PrintIfDetailEmpty = True
        RowCount = 0
        object Shape18: TfrxShapeView
          Left = 706.771653543307000000
          Width = 79.370078740157500000
          Height = 18.897650000000000000
        end
        object Shape22: TfrxShapeView
          Left = 959.999995120000000000
          Width = 86.551188430000000000
          Height = 18.897650000000000000
        end
        object Shape20: TfrxShapeView
          Left = 861.732283464567000000
          Width = 49.133858270000000000
          Height = 18.897650000000000000
        end
        object Shape21: TfrxShapeView
          Left = 910.866141730000000000
          Width = 49.133858270000000000
          Height = 18.897650000000000000
        end
        object Shape19: TfrxShapeView
          Left = 786.141732283465000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
        end
        object Shape15: TfrxShapeView
          Left = 306.897637795276000000
          Width = 58.960629921259800000
          Height = 18.897650000000000000
        end
        object Shape16: TfrxShapeView
          Left = 365.834880000000000000
          Width = 174.614173230000000000
          Height = 18.897650000000000000
        end
        object Shape17: TfrxShapeView
          Left = 540.472489760000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
        end
        object Shape23: TfrxShapeView
          Width = 74.834613940000000000
          Height = 18.897650000000000000
        end
        object Memo14: TfrxMemoView
          Left = 6.779530000000000000
          Top = 2.000000000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          DataSet = frxDBOPCabecalho
          DataSetName = 'frxDBOPCabecalho'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBOPCabecalho."OSV_CODIGO"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 312.921460000000000000
          Top = 2.000000000000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          DataField = 'PRD_REFER'
          DataSet = frxDBOPCabecalho
          DataSetName = 'frxDBOPCabecalho'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBOPCabecalho."PRD_REFER"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 369.614410000000000000
          Top = 2.000000000000000000
          Width = 166.299320000000000000
          Height = 15.118120000000000000
          DataField = 'PRD_DESCRI'
          DataSet = frxDBOPCabecalho
          DataSetName = 'frxDBOPCabecalho'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBOPCabecalho."PRD_DESCRI"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 547.252320000000000000
          Top = 2.000000000000000000
          Width = 154.960730000000000000
          Height = 15.118120000000000000
          DataField = 'OCE_MOTIVO'
          DataSet = frxDBOPCabecalho
          DataSetName = 'frxDBOPCabecalho'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBOPCabecalho."OCE_MOTIVO"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 709.772110000000000000
          Top = 2.000000000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DataField = 'IOP_QUANTIDADE'
          DataSet = frxDBOPCabecalho
          DataSetName = 'frxDBOPCabecalho'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBOPCabecalho."IOP_QUANTIDADE"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 790.141825040000000000
          Top = 2.000000000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          DataField = 'OPR_EMISSAO'
          DataSet = frxDBOPCabecalho
          DataSetName = 'frxDBOPCabecalho'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBOPCabecalho."OPR_EMISSAO"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 864.732840000000000000
          Top = 2.000000000000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          DataSet = frxDBOPCabecalho
          DataSetName = 'frxDBOPCabecalho'
          DisplayFormat.FormatStr = 'hh:mm:ss'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBOPCabecalho."APF_DATA_INI"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 913.866730000000000000
          Top = 2.000000000000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          DataSet = frxDBOPCabecalho
          DataSetName = 'frxDBOPCabecalho'
          DisplayFormat.FormatStr = 'hh:mm:ss'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBOPCabecalho."APF_DATA_FIM"]')
          ParentFont = False
        end
        object Shape2: TfrxShapeView
          Left = 204.094620000000000000
          Width = 102.803149606299000000
          Height = 18.897650000000000000
        end
        object Memo2: TfrxMemoView
          Left = 211.653680000000000000
          Top = 2.000000000000000000
          Width = 90.708720000000000000
          Height = 15.118120000000000000
          DataField = 'COL_NOME'
          DataSet = frxDBOPCabecalho
          DataSetName = 'frxDBOPCabecalho'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBOPCabecalho."COL_NOME"]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 967.559055120000000000
          Top = 2.779530000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          DataSet = frxDBOPCabecalho
          DataSetName = 'frxDBOPCabecalho'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[tempo]')
          ParentFont = False
        end
        object Shape4: TfrxShapeView
          Left = 74.834645670000000000
          Width = 129.259842520000000000
          Height = 18.897650000000000000
        end
        object Memo24: TfrxMemoView
          Left = 74.834645670000000000
          Top = 2.000000000000000000
          Width = 124.724490000000000000
          Height = 15.118120000000000000
          DataSet = frxDBOPCabecalho
          DataSetName = 'frxDBOPCabecalho'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBOPCabecalho."OPE_DESCRICAO"]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 45.354360000000000000
        Top = 162.519790000000000000
        Width = 1046.929810000000000000
        Condition = 'Copy(<frxDBOPCabecalho."OPR_EMISSAO">,1,10)'
        object Shape7: TfrxShapeView
          Left = 306.141930000000000000
          Top = 26.456710000000000000
          Width = 59.716535430000000000
          Height = 18.897650000000000000
        end
        object Shape8: TfrxShapeView
          Left = 365.858316540000000000
          Top = 26.456710000000000000
          Width = 174.614173230000000000
          Height = 18.897650000000000000
        end
        object Shape9: TfrxShapeView
          Left = 540.472790000000000000
          Top = 26.456710000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
        end
        object Shape10: TfrxShapeView
          Left = 706.772110000000000000
          Top = 26.456710000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
        end
        object Shape11: TfrxShapeView
          Left = 786.142240000000000000
          Top = 26.456710000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
        end
        object Shape12: TfrxShapeView
          Left = 861.732840000000000000
          Top = 26.456710000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
        end
        object Shape13: TfrxShapeView
          Left = 910.866730000000000000
          Top = 26.456710000000000000
          Width = 49.133858270000000000
          Height = 18.897650000000000000
        end
        object Shape14: TfrxShapeView
          Left = 959.999995120000000000
          Top = 26.456692910000000000
          Width = 86.551159130000000000
          Height = 18.897650000000000000
        end
        object Shape6: TfrxShapeView
          Top = 26.456692910000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
        end
        object Shape5: TfrxShapeView
          Width = 135.684455980000000000
          Height = 26.456710000000000000
          Fill.BackColor = clGray
        end
        object Memo3: TfrxMemoView
          Left = 7.559060000000000000
          Top = 3.779530000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[Copy(<frxDBOPCabecalho."OPR_EMISSAO">,1,10)]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 6.803149610000000000
          Top = 28.236240000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'O.P.')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 312.944996610000000000
          Top = 28.236240000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'REF.')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 369.637883150000000000
          Top = 28.236240000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DESCRI'#199#195'O')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 547.275724800000000000
          Top = 28.236240000000000000
          Width = 154.960730000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'REGISTRO DE OCORR'#202'NCIA')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 710.551640000000000000
          Top = 28.236240000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'QTD. PROD.')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 793.701300000000000000
          Top = 28.236240000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DATA')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 865.512370000000000000
          Top = 28.236240000000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'IN'#205'CIO')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 913.889815040000000000
          Top = 28.236240000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'FIM')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 971.338585120000000000
          Top = 28.015770000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'TOTAL')
          ParentFont = False
        end
        object Shape1: TfrxShapeView
          Left = 204.094620000000000000
          Top = 26.456710000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
        end
        object Memo1: TfrxMemoView
          Left = 210.897686610000000000
          Top = 28.236240000000000000
          Width = 90.708720000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'COLABORADOR')
          ParentFont = False
        end
        object Shape3: TfrxShapeView
          Left = 75.590600000000000000
          Top = 26.456710000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
        end
        object Memo7: TfrxMemoView
          Left = 78.614219610000000000
          Top = 28.236257090000000000
          Width = 90.708720000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'OPERA'#199#195'O')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 17.118120000000000000
        Top = 272.126160000000000000
        Width = 1046.929810000000000000
        object Memo22: TfrxMemoView
          Left = 944.662030000000000000
          Top = 2.000000000000000000
          Width = 90.708720000000000000
          Height = 15.118120000000000000
          DataSet = frxDBOPCabecalho
          DataSetName = 'frxDBOPCabecalho'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[tempoTotal]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 850.394250000000000000
          Top = 1.779530000000000000
          Width = 90.708720000000000000
          Height = 15.118120000000000000
          DataSet = frxDBOPCabecalho
          DataSetName = 'frxDBOPCabecalho'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Tempo Total :')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 81.976424330000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Shape24: TfrxShapeView
          Top = 60.472440944881890000
          Width = 1046.173228350000000000
          Height = 21.165354330000000000
          Fill.BackColor = clSilver
        end
        object Memo25: TfrxMemoView
          Left = 143.622140000000000000
          Top = 60.472440940000000000
          Width = 706.772110000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Apontamento de Produ'#231#227'o por Per'#237'odo: [dataI] a [dataF]')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Left = 136.063080000000000000
          Width = 714.331170000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Shape37: TfrxShapeView
          Width = 136.063080000000000000
          Height = 60.472480000000000000
        end
        object logoEmpresa: TfrxPictureView
          Left = 1.669295000000000000
          Top = 1.779530000000000000
          Width = 132.283550000000000000
          Height = 56.692950000000000000
          Center = True
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Shape25: TfrxShapeView
          Left = 850.284015000000000000
          Width = 195.779527560000000000
          Height = 60.472480000000000000
        end
        object Memo26: TfrxMemoView
          Left = 986.347095000000000000
          Top = 3.779530000000000000
          Width = 56.692950000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'P'#193'GINA')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 986.347095000000000000
          Top = 15.118120000000000000
          Width = 56.692950000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[Page] de [TotalPages#]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo31: TfrxMemoView
          Left = 139.732375000000000000
          Top = 9.338590000000000000
          Width = 706.772110000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[empresa]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 139.732375000000000000
          Top = 31.795300000000000000
          Width = 706.772110000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[endereco]')
          ParentFont = False
        end
      end
    end
  end
  object dsqOPCabecalho: TDataSource
    DataSet = qOPCabecalho
    Left = 72
    Top = 280
  end
  object frxOPRefugado: TfrxReport
    Version = '5.3.16'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44376.640266354200000000
    ReportOptions.LastChange = 44377.682938981500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      
        'var empresa, endereco, tempo, tempoTotal, totalColaborador : int' +
        'eger;'
      
        '    dataI, dataF: string;                                       ' +
        '                                    '
      'begin'
      ''
      'end.')
    OnBeginDoc = frxOPRefugadoBeginDoc
    OnGetValue = frxOPColaboradorGetValue
    Left = 348
    Top = 281
    Datasets = <
      item
        DataSet = frxDBOPCabecalho
        DataSetName = 'frxDBOPCabecalho'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object frxReportPage1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 204.094620000000000000
        Width = 1046.929810000000000000
        DataSet = frxDBOPCabecalho
        DataSetName = 'frxDBOPCabecalho'
        PrintChildIfInvisible = True
        PrintIfDetailEmpty = True
        RowCount = 0
        object Shape4: TfrxShapeView
          Left = 74.834645670000000000
          Width = 117.921252520000000000
          Height = 18.897650000000000000
        end
        object Shape20: TfrxShapeView
          Left = 944.881943460000000000
          Width = 101.669291338583000000
          Height = 18.897650000000000000
        end
        object Shape15: TfrxShapeView
          Left = 420.283537800000000000
          Width = 183.685039370079000000
          Height = 18.897650000000000000
        end
        object Shape16: TfrxShapeView
          Left = 872.291900000000000000
          Width = 72.566863230000000000
          Height = 18.897650000000000000
        end
        object Shape23: TfrxShapeView
          Width = 74.834613940000000000
          Height = 18.897650000000000000
        end
        object Memo14: TfrxMemoView
          Left = 6.779530000000000000
          Top = 2.000000000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          DataSet = frxDBOPCabecalho
          DataSetName = 'frxDBOPCabecalho'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBOPCabecalho."OSV_CODIGO"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 426.307360000000000000
          Top = 2.000000000000000000
          Width = 162.519790000000000000
          Height = 15.118120000000000000
          DataField = 'OPE_DESCRICAO'
          DataSet = frxDBOPCabecalho
          DataSetName = 'frxDBOPCabecalho'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBOPCabecalho."OPE_DESCRICAO"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 876.071430000000000000
          Top = 2.000000000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DataSet = frxDBOPCabecalho
          DataSetName = 'frxDBOPCabecalho'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBOPCabecalho."APF_REFUGADO"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 79.590185040000000000
          Top = 2.000000000000000000
          Width = 109.606370000000000000
          Height = 15.118120000000000000
          DataField = 'OPR_EMISSAO'
          DataSet = frxDBOPCabecalho
          DataSetName = 'frxDBOPCabecalho'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBOPCabecalho."OPR_EMISSAO"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 946.780150000000000000
          Top = 2.000000000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          DataSet = frxDBOPCabecalho
          DataSetName = 'frxDBOPCabecalho'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBOPCabecalho."APF_REBARBA"]')
          ParentFont = False
        end
        object Shape2: TfrxShapeView
          Left = 192.756030000000000000
          Width = 227.527639610000000000
          Height = 18.897650000000000000
        end
        object Memo2: TfrxMemoView
          Left = 198.535560000000000000
          Top = 2.000000000000000000
          Width = 211.653680000000000000
          Height = 15.118120000000000000
          DataField = 'COL_NOME'
          DataSet = frxDBOPCabecalho
          DataSetName = 'frxDBOPCabecalho'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBOPCabecalho."COL_NOME"]')
          ParentFont = False
        end
        object Shape11: TfrxShapeView
          Left = 603.968503937007900000
          Width = 268.346630000000000000
          Height = 18.897650000000000000
        end
        object Memo11: TfrxMemoView
          Left = 612.283860000000000000
          Top = 2.000000000000000000
          Width = 257.008040000000000000
          Height = 15.118120000000000000
          DataField = 'PRD_DESCRI'
          DataSet = frxDBOPCabecalho
          DataSetName = 'frxDBOPCabecalho'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBOPCabecalho."PRD_DESCRI"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 124.724490000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Shape12: TfrxShapeView
          Left = 603.968503937007900000
          Top = 105.826840000000000000
          Width = 268.346456692913400000
          Height = 18.897650000000000000
        end
        object Shape24: TfrxShapeView
          Top = 60.472440944881900000
          Width = 1046.173228350000000000
          Height = 21.165354330000000000
          Fill.BackColor = clSilver
        end
        object Memo25: TfrxMemoView
          Left = 143.622140000000000000
          Top = 60.472440940000000000
          Width = 706.772110000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Apontamento de Refugados. Per'#237'odo: [dataI] a [dataF]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Line2: TfrxLineView
          Left = 136.063080000000000000
          Width = 714.331170000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Shape37: TfrxShapeView
          Width = 136.063080000000000000
          Height = 60.472480000000000000
        end
        object logoEmpresa: TfrxPictureView
          Left = 1.669295000000000000
          Top = 1.779530000000000000
          Width = 132.283550000000000000
          Height = 56.692950000000000000
          Center = True
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Shape25: TfrxShapeView
          Left = 850.284015000000000000
          Width = 195.779527560000000000
          Height = 60.472480000000000000
        end
        object Memo26: TfrxMemoView
          Left = 986.347095000000000000
          Top = 3.779530000000000000
          Width = 56.692950000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'P'#193'GINA')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 986.347095000000000000
          Top = 15.118120000000000000
          Width = 56.692950000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[Page] de [TotalPages#]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo31: TfrxMemoView
          Left = 139.732375000000000000
          Top = 9.338590000000000000
          Width = 706.772110000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[empresa]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 139.732375000000000000
          Top = 31.795300000000000000
          Width = 706.772110000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[endereco]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 7.559060000000000000
          Top = 105.826840000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'OP.')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 79.370130000000000000
          Top = 105.826840000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DATA EMISS'#195'O')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 196.535560000000000000
          Top = 105.826840000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'COLABORADOR')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 427.086890000000000000
          Top = 105.826840000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'APONTAMENTO')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 880.850960000000000000
          Top = 105.826840000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'REFUGO')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 944.882500000000000000
          Top = 105.826840000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'REBARBA KG')
          ParentFont = False
        end
        object Shape5: TfrxShapeView
          Left = 74.834645670000000000
          Top = 105.826840000000000000
          Width = 117.921252520000000000
          Height = 18.897650000000000000
        end
        object Shape6: TfrxShapeView
          Left = 944.881943460000000000
          Top = 105.826840000000000000
          Width = 101.669291340000000000
          Height = 18.897650000000000000
        end
        object Shape7: TfrxShapeView
          Left = 420.283537800000000000
          Top = 105.826840000000000000
          Width = 183.685119920000000000
          Height = 18.897650000000000000
        end
        object Shape8: TfrxShapeView
          Left = 872.291900000000000000
          Top = 105.826840000000000000
          Width = 72.566863230000000000
          Height = 18.897650000000000000
        end
        object Shape9: TfrxShapeView
          Top = 105.826840000000000000
          Width = 74.834613940000000000
          Height = 18.897650000000000000
        end
        object Shape10: TfrxShapeView
          Left = 192.756030000000000000
          Top = 105.826840000000000000
          Width = 227.527559055118000000
          Height = 18.897650000000000000
        end
        object Memo12: TfrxMemoView
          Left = 611.149606300000000000
          Top = 105.826840000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'PRODUTO')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 245.669450000000000000
        Width = 1046.929810000000000000
        object Shape1: TfrxShapeView
          Left = 944.661473460000000000
          Top = 0.779530000000000000
          Width = 101.669291338583000000
          Height = 18.897650000000000000
        end
        object Memo28: TfrxMemoView
          Left = 773.803650000000000000
          Top = 2.779530000000000000
          Width = 90.708720000000000000
          Height = 15.118120000000000000
          DataSet = frxDBOPCabecalho
          DataSetName = 'frxDBOPCabecalho'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Totais :')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 875.850960000000000000
          Top = 2.779530000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DataSet = frxDBOPCabecalho
          DataSetName = 'frxDBOPCabecalho'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBOPCabecalho."APF_REFUGADO">, 0, 0)]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 947.662030000000000000
          Top = 2.779530000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          DataSet = frxDBOPCabecalho
          DataSetName = 'frxDBOPCabecalho'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBOPCabecalho."APF_REBARBA">, 0, 0)]')
          ParentFont = False
        end
        object Shape3: TfrxShapeView
          Left = 872.071430000000000000
          Top = 0.779530000000000000
          Width = 72.566863230000000000
          Height = 18.897650000000000000
        end
        object Memo10: TfrxMemoView
          Left = 1016.473100000000000000
          Top = 1.779530000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'KG')
          ParentFont = False
        end
      end
    end
  end
  object qOPPedido: TFDQuery
    Connection = DBInicio.FDACConn
    SQL.Strings = (
      'SELECT'
      '  opr.EMP_CODIGO ,'
      '  opr.PED_CODIGO ,'
      '  c.CLI_RAZAO ,'
      '  R.REP_NOME ,'
      '  FB.OSV_CODIGO,'
      '  P1.PRD_REFER,'
      '  P1.PRD_DESCRI,'
      '  OS.IOP_QUANTIDADE,'
      '  OPR.OPR_EMISSAO + 5 AS OPR_EMISSAO, '
      '  OPR.OPR_EMISSAO AS ENTREGA, '
      '  COL.COL_NOME ,'
      '  OP.OPE_CODIGO,'
      '  OP.OPE_DESCRICAO, '
      '  EQ.EQP_DESCRICAO '
      'FROM  FABRICACAO FB'
      'JOIN PRD0000 P1 ON  (P1.PRD_CODIGO = fb.PRD_CODIGO)'
      
        'JOIN ITEM_ORDEMPRODUCAO OS ON  (OS.iop_CODIGO = FB.iop_CODIGO   ' +
        ' AND P1.PRD_codigo = os.PRD_codigo)'
      'JOIN ORDEMPRODUCAO OPR ON  (OPR.OPR_CODIGO = OS.OPR_CODIGO)'
      'JOIN CLI0000 c ON (c.CLI_CODIGO = OPR.CLI_CODIGO)'
      'JOIN PED0000 p ON (p.PED_CODIGO = opr.PED_CODIGO)'
      'JOIN REP0000 r ON (r.REP_CODIGO = p.REP_CODIGO)'
      'JOIN OPERACOES OP ON  (OP.OPE_CODIGO = FB.OPE_CODIGO)'
      'JOIN APONTAMENTO_FAB APF ON  (APF.FAB_CODIGO = fb.FAB_CODIGO)'
      'JOIN COLABORADOR COL ON  (COL.COL_CODIGO = apf.COL_CODIGO)'
      'LEFT JOIN EQUIPAMENTO EQ ON  (EQ.EQP_CODIGO = APF.EQP_CODIGO)'
      'WHERE    (opr.PED_CODIGO = '#39'002922'#39')'
      '     AND APF.APF_DATA_INI = '
      '       (SELECT max(apf2.APF_DATA_INI) '
      '         FROM APONTAMENTO_FAB APF2 '
      '         JOIN FABRICACAO FB2 ON fb2.FAB_CODIGO = apf2.FAB_CODIGO'
      '         WHERE APF2.FAB_CODIGO = FB.FAB_CODIGO '
      '       )              '
      'ORDER BY  apf.APF_DATA_INI ')
    Left = 316
    Top = 25
    object qOPPedidoPED_CODIGO: TStringField
      DisplayLabel = 'Pedidio'
      FieldName = 'PED_CODIGO'
      Origin = 'PED_CODIGO'
      Size = 7
    end
    object qOPPedidoCLI_RAZAO: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'CLI_RAZAO'
      Origin = 'CLI_RAZAO'
      Size = 70
    end
    object qOPPedidoREP_NOME: TStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'REP_NOME'
      Origin = 'REP_NOME'
      Size = 35
    end
    object qOPPedidoOSV_CODIGO: TStringField
      DisplayLabel = 'O.P.'
      FieldName = 'OSV_CODIGO'
      Origin = 'OSV_CODIGO'
    end
    object qOPPedidoPRD_REFER: TStringField
      DisplayLabel = 'Refer'#234'ncia'
      FieldName = 'PRD_REFER'
      Origin = 'PRD_REFER'
    end
    object qOPPedidoPRD_DESCRI: TStringField
      DisplayLabel = 'Produto'
      FieldName = 'PRD_DESCRI'
      Origin = 'PRD_DESCRI'
      Size = 100
    end
    object qOPPedidoIOP_QUANTIDADE: TFMTBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'IOP_QUANTIDADE'
      Origin = 'IOP_QUANTIDADE'
      Precision = 18
      Size = 5
    end
    object qOPPedidoOPR_EMISSAO: TSQLTimeStampField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'OPR_EMISSAO'
      Origin = 'OPR_EMISSAO'
    end
    object qOPPedidoENTREGA: TSQLTimeStampField
      FieldName = 'ENTREGA'
      Origin = 'ENTREGA'
    end
    object qOPPedidoCOL_NOME: TStringField
      DisplayLabel = 'Colaborador'
      FieldName = 'COL_NOME'
      Origin = 'COL_NOME'
      Size = 40
    end
    object qOPPedidoOPE_CODIGO: TIntegerField
      DisplayLabel = 'Opera'#231#227'o'
      FieldName = 'OPE_CODIGO'
      Origin = 'OPE_CODIGO'
      Required = True
    end
    object qOPPedidoOPE_DESCRICAO: TStringField
      DisplayLabel = 'Desc. Opera'#231#227'o'
      FieldName = 'OPE_DESCRICAO'
      Origin = 'OPE_DESCRICAO'
      Size = 60
    end
    object qOPPedidoEQP_DESCRICAO: TStringField
      DisplayLabel = 'Equipamento'
      FieldName = 'EQP_DESCRICAO'
      Origin = 'EQP_DESCRICAO'
      Size = 60
    end
    object qOPPedidoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Origin = 'EMP_CODIGO'
      Required = True
      Size = 3
    end
  end
  object frxDBOPPedido: TfrxDBDataset
    UserName = 'frxDBOPPedido'
    CloseDataSource = False
    FieldAliases.Strings = (
      'PED_CODIGO=PED_CODIGO'
      'CLI_RAZAO=CLI_RAZAO'
      'REP_NOME=REP_NOME'
      'OSV_CODIGO=OSV_CODIGO'
      'PRD_REFER=PRD_REFER'
      'PRD_DESCRI=PRD_DESCRI'
      'IOP_QUANTIDADE=IOP_QUANTIDADE'
      'OPR_EMISSAO=OPR_EMISSAO'
      'ENTREGA=ENTREGA'
      'COL_NOME=COL_NOME'
      'OPE_CODIGO=OPE_CODIGO'
      'OPE_DESCRICAO=OPE_DESCRICAO'
      'EQP_DESCRICAO=EQP_DESCRICAO'
      'EMP_CODIGO=EMP_CODIGO')
    DataSet = qOPPedido
    BCDToCurrency = False
    Left = 316
    Top = 81
  end
  object frxOPPedido: TfrxReport
    Version = '5.3.16'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44376.640266354200000000
    ReportOptions.LastChange = 45061.397814826390000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var tempo, tempoTotal, totalColaborador : integer;'
      
        '    empresa, endereco: string;                                  ' +
        '                                                   '
      'begin'
      ''
      'end.')
    OnBeginDoc = frxOPPedidoBeginDoc
    OnGetValue = frxOPColaboradorGetValue
    Left = 316
    Top = 137
    Datasets = <
      item
        DataSet = frxDBOPPedido
        DataSetName = 'frxDBOPPedido'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object frxReportPage1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 230.551330000000000000
        Width = 1046.929810000000000000
        DataSet = frxDBOPPedido
        DataSetName = 'frxDBOPPedido'
        PrintChildIfInvisible = True
        PrintIfDetailEmpty = True
        RowCount = 0
        object Shape18: TfrxShapeView
          Left = 396.094488190000000000
          Width = 65.007864250000000000
          Height = 18.897650000000000000
        end
        object Shape20: TfrxShapeView
          Left = 774.889673460000000000
          Width = 117.165398270000000000
          Height = 18.897650000000000000
        end
        object Shape21: TfrxShapeView
          Left = 891.968503937008000000
          Width = 154.582677165354000000
          Height = 18.897650000000000000
        end
        object Shape19: TfrxShapeView
          Left = 460.346456690000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
        end
        object Shape16: TfrxShapeView
          Left = 136.078850000000000000
          Width = 260.031496062992000000
          Height = 18.897650000000000000
        end
        object Shape23: TfrxShapeView
          Width = 71.811004090000000000
          Height = 18.897650000000000000
        end
        object Memo14: TfrxMemoView
          Left = 6.779530000000000000
          Top = 2.000000000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          DataSet = frxDBOPCabecalho
          DataSetName = 'frxDBOPCabecalho'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBOPPedido."OSV_CODIGO"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 139.858380000000000000
          Top = 2.000000000000000000
          Width = 257.008040000000000000
          Height = 15.118120000000000000
          DataSet = frxDBOPCabecalho
          DataSetName = 'frxDBOPCabecalho'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBOPPedido."PRD_DESCRI"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 401.842419610000000000
          Top = 2.000000000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          DataSet = frxDBOPCabecalho
          DataSetName = 'frxDBOPCabecalho'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBOPPedido."IOP_QUANTIDADE"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 465.370025040000000000
          Top = 1.889763780000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          DataSet = frxDBOPCabecalho
          DataSetName = 'frxDBOPCabecalho'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBOPPedido."OPR_EMISSAO"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 777.890230000000000000
          Top = 2.000000000000000000
          Width = 109.606370000000000000
          Height = 15.118120000000000000
          DataSet = frxDBOPCabecalho
          DataSetName = 'frxDBOPCabecalho'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBOPPedido."OPE_CODIGO"] - [frxDBOPPedido."OPE_DESCRICAO"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo21: TfrxMemoView
          Left = 894.512370000000000000
          Top = 2.000000000000000000
          Width = 147.401670000000000000
          Height = 15.118120000000000000
          DataSet = frxDBOPCabecalho
          DataSetName = 'frxDBOPCabecalho'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBOPPedido."EQP_DESCRICAO"]')
          ParentFont = False
        end
        object Shape2: TfrxShapeView
          Left = 71.669291340000000000
          Width = 64.251968500000000000
          Height = 18.897650000000000000
        end
        object Memo2: TfrxMemoView
          Left = 72.425196850000000000
          Top = 2.000000000000000000
          Width = 62.362204720000000000
          Height = 15.118120000000000000
          DataSet = frxDBOPCabecalho
          DataSetName = 'frxDBOPCabecalho'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBOPPedido."PRD_REFER"]')
          ParentFont = False
        end
        object Shape4: TfrxShapeView
          Left = 611.905511811024000000
          Width = 162.519670390000000000
          Height = 18.897650000000000000
        end
        object Memo24: TfrxMemoView
          Left = 617.740570000000000000
          Top = 2.000000000000000000
          Width = 153.826825350000000000
          Height = 15.118120000000000000
          DataSet = frxDBOPCabecalho
          DataSetName = 'frxDBOPCabecalho'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBOPPedido."COL_NOME"]')
          ParentFont = False
        end
        object Shape12: TfrxShapeView
          Left = 536.314960629921000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
        end
        object Memo11: TfrxMemoView
          Left = 541.716828350000000000
          Top = 1.889763780000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          DataSet = frxDBOPCabecalho
          DataSetName = 'frxDBOPCabecalho'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBOPPedido."ENTREGA"]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 44.976407250000000000
        Top = 162.519790000000000000
        Width = 1046.929810000000000000
        Condition = '<frxDBOPPedido."PED_CODIGO">'
        object Shape7: TfrxShapeView
          Left = 71.826840000000000000
          Top = 26.078757250000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
        end
        object Shape8: TfrxShapeView
          Left = 135.921259840000000000
          Top = 26.078757250000000000
          Width = 260.031552200000000000
          Height = 18.897650000000000000
        end
        object Shape10: TfrxShapeView
          Left = 395.992155280000000000
          Top = 26.078757250000000000
          Width = 65.007864250000000000
          Height = 18.897650000000000000
        end
        object Shape11: TfrxShapeView
          Left = 460.496092280000000000
          Top = 26.078757250000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
        end
        object Shape13: TfrxShapeView
          Left = 774.890230000000000000
          Top = 26.078757250000000000
          Width = 117.165398270000000000
          Height = 18.897650000000000000
        end
        object Shape14: TfrxShapeView
          Left = 891.968455120000000000
          Top = 26.078757250000000000
          Width = 154.582699130000000000
          Height = 18.897650000000000000
        end
        object Shape6: TfrxShapeView
          Left = 128.504020000000000000
          Width = 464.882190000000000000
          Height = 26.078740160000000000
        end
        object Shape5: TfrxShapeView
          Top = 0.000017089999999997
          Width = 128.125395980000000000
          Height = 26.456710000000000000
          Fill.BackColor = clGray
        end
        object Memo3: TfrxMemoView
          Left = 7.559060000000000000
          Top = 3.779547090000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Pedido:  [frxDBOPPedido."PED_CODIGO"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 135.307169610000000000
          Top = 5.559077090000000000
          Width = 434.645950000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'CLIENTE: [frxDBOPPedido."CLI_RAZAO"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 78.629906610000000000
          Top = 26.078757247480300000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'REF.')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 139.322793150000000000
          Top = 26.078757247480300000
          Width = 207.874150000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DESCRI'#199#195'O')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 401.441250000000000000
          Top = 26.078757250000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'QTD. PROD.')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 468.811380000000000000
          Top = 26.078757250000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'EMISS'#195'O')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 777.913315040000000000
          Top = 26.078757250000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'OPERA'#199#195'O')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 899.527515120000000000
          Top = 26.078757250000000000
          Width = 117.165430000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'EQUIPAMENTO')
          ParentFont = False
        end
        object Shape1: TfrxShapeView
          Top = 26.078757250000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
        end
        object Memo1: TfrxMemoView
          Left = 18.141656610000000000
          Top = 26.078757247480300000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'O.P.')
          ParentFont = False
        end
        object Shape3: TfrxShapeView
          Left = 611.842920000000000000
          Top = 26.078757250000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
        end
        object Memo7: TfrxMemoView
          Left = 627.181510000000000000
          Top = 26.078757250000000000
          Width = 90.708720000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'COLABORADOR')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 604.724800000000000000
          Top = 5.779547090000000000
          Width = 434.645950000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'VENDEDOR: [frxDBOPPedido."REP_NOME"]')
          ParentFont = False
        end
        object Shape38: TfrxShapeView
          Left = 593.268090000000000000
          Top = 0.000017089999999997
          Width = 453.543600000000000000
          Height = 26.078740160000000000
        end
        object Shape9: TfrxShapeView
          Left = 535.937007874015700000
          Top = 25.700787401574800000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
        end
        object Memo8: TfrxMemoView
          Left = 544.788077720000000000
          Top = 25.456727090000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'ENTREGA')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 81.960654330000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Shape37: TfrxShapeView
          Left = 0.110235000000000000
          Top = 2.000000000000000000
          Width = 136.063080000000000000
          Height = 60.472480000000000000
        end
        object logoEmpresa: TfrxPictureView
          Left = 1.779530000000000000
          Top = 3.779530000000000000
          Width = 132.283550000000000000
          Height = 56.692950000000000000
          Center = True
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Shape25: TfrxShapeView
          Left = 850.394250000000000000
          Top = 2.000000000000000000
          Width = 195.779527560000000000
          Height = 60.472480000000000000
        end
        object Shape26: TfrxShapeView
          Top = 60.795300000000000000
          Width = 1046.173228350000000000
          Height = 21.165354330000000000
          Fill.BackColor = clSilver
        end
        object Memo25: TfrxMemoView
          Left = 291.023810000000000000
          Top = 63.905535000000000000
          Width = 377.953000000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Apontamento de Produ'#231#227'o por Pedido')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 986.457330000000000000
          Top = 5.779530000000000000
          Width = 56.692950000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'P'#193'GINA')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 986.457330000000000000
          Top = 17.118120000000000000
          Width = 56.692950000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[Page] de [TotalPages#]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Line1: TfrxLineView
          Left = 136.063080000000000000
          Top = 1.779530000000000000
          Width = 714.331170000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo31: TfrxMemoView
          Left = 139.842610000000000000
          Top = 11.338590000000000000
          Width = 706.772110000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[empresa]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 139.842610000000000000
          Top = 33.795300000000000000
          Width = 706.772110000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[endereco]')
          ParentFont = False
        end
      end
    end
  end
  object dsOPPedido: TDataSource
    DataSet = qOPPedido
    Left = 233
    Top = 25
  end
end
