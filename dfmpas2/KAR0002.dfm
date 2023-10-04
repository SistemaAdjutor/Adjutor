inherited FrmKardexTransferencia: TFrmKardexTransferencia
  Left = 261
  Top = 81
  BorderIcons = [biSystemMenu]
  Caption = 'Transfer'#234'ncia de estoque entre Almoxarifados'
  ClientHeight = 516
  ClientWidth = 927
  Constraints.MinHeight = 543
  Constraints.MinWidth = 935
  Font.Charset = ANSI_CHARSET
  Font.Name = 'Arial'
  FormStyle = fsMDIChild
  Position = poDesktopCenter
  Visible = True
  OnResize = FormResize
  ExplicitWidth = 943
  ExplicitHeight = 555
  PixelsPerInch = 96
  TextHeight = 14
  object Panel1: TPanel [0]
    Left = 0
    Top = 0
    Width = 461
    Height = 516
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 0
    object GroupBox3: TGroupBox
      Left = 0
      Top = 376
      Width = 461
      Height = 140
      Align = alClient
      Caption = 'Observa'#231#227'o'
      TabOrder = 3
      object MemoObservacao: TMemo
        Left = 2
        Top = 16
        Width = 457
        Height = 122
        Align = alClient
        BevelInner = bvNone
        BevelOuter = bvNone
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
      end
    end
    object GroupBox4: TGroupBox
      Left = 0
      Top = 0
      Width = 461
      Height = 169
      Align = alTop
      Caption = 'Origem'
      TabOrder = 0
      TabStop = True
      object Label2: TLabel
        Left = 16
        Top = 99
        Width = 116
        Height = 14
        Caption = 'Almoxarifado de Origem'
      end
      object Label3: TLabel
        Left = 360
        Top = 99
        Width = 54
        Height = 14
        Caption = 'Saldo Atual'
      end
      object Label8: TLabel
        Left = 17
        Top = 60
        Width = 42
        Height = 14
        Caption = 'Empresa'
      end
      object Label4: TLabel
        Left = 17
        Top = 20
        Width = 37
        Height = 14
        Caption = 'Produto'
      end
      object CbAlmoxarifadoOrigem: TcxLookupComboBox
        Left = 16
        Top = 115
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
        Properties.ListSource = DsAlmoxarifadoOrigem
        Properties.OnChange = CbAlmoxarifadoOrigemPropertiesChange
        Style.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.Kind = lfStandard
        TabOrder = 3
        OnClick = CbAlmoxarifadoOrigemClick
        OnExit = CbAlmoxarifadoOrigemExit
        Width = 340
      end
      object CurSaldoOrigem: TCurrencyEdit
        Left = 360
        Top = 115
        Width = 89
        Height = 21
        TabStop = False
        AutoSize = False
        Color = 14145495
        DisplayFormat = '###,###,##0.000'
        ReadOnly = True
        TabOrder = 4
      end
      object EdAlmoxarifadoOrigemDescricao: TEdit
        Left = 16
        Top = 139
        Width = 433
        Height = 22
        TabStop = False
        Color = 14145495
        ReadOnly = True
        TabOrder = 5
      end
      object edtCodigoEmpresaOrigem: TEdit
        Left = 16
        Top = 77
        Width = 43
        Height = 22
        CharCase = ecUpperCase
        Color = clWhite
        MaxLength = 3
        TabOrder = 1
        OnExit = edtCodigoEmpresaOrigemExit
      end
      object cbEmpresaOrigem: TSgDbSearchCombo
        Left = 62
        Top = 77
        Width = 363
        Height = 22
        TabOrder = 2
        CharCase = ecUpperCase
        LookupSelect = 'EMP_RAZAO'
        LookupOrderBy = 'EMP_RAZAO'
        LookupTable = 'EMP0000'
        OnSelect = cbEmpresaOrigemSelect
        GridAutoSize = False
        LookupSource = qEmp1
        LookupKeyField = 'EMP_CODIGO'
        ShowButton = True
        AutoF8WinTitulo = 'Empresas'
        AutoF8ColumnsTitulo = 'C'#243'digo, Descri'#231#227'o'
        GridLeft = 0
        GridWidth = 0
        GridHeight = 100
        GridTop = 0
        GridShowWhenEnter = False
        SelectWithDoubleClick = False
        LimparCampoAoSair = True
      end
      object cbProduto: TSgDbSearchCombo
        Left = 17
        Top = 37
        Width = 409
        Height = 22
        TabOrder = 0
        CharCase = ecUpperCase
        LookupSelect = 'prd_refer, prd_descri, prd_und, prd_codigo, Descricao'
        LookupOrderBy = 'Descricao'
        LookupTable = 'prd0000_view'
        LookupDispl = 'DESCRICAO'
        OnSelect = cbProdutoSelect
        GridAutoSize = False
        LookupSource = qProd
        LookupKeyField = 'prd_codigo'
        ShowButton = True
        LookupTableShare = 'PRODUTOS'
        AutoF8WinTitulo = 'Produtos'
        AutoF8ColumnsTitulo = 'Refer'#234'ncia, Descri'#231#227'o, Unid., C'#243'digo'
        LookupDbGridColumns = 'prd_refer, prd_descri, prd_und'
        LookupDbGridColumnsTitle = 'Refer'#234'ncia, Descri'#231#227'o, Unid.'
        GridLeft = 0
        GridWidth = 0
        GridHeight = 300
        GridTop = 0
        GridShowWhenEnter = False
        SelectWithDoubleClick = False
        LimparCampoAoSair = True
      end
    end
    object grp1: TGroupBox
      Left = 0
      Top = 169
      Width = 461
      Height = 160
      Align = alTop
      Caption = 'Destino'
      TabOrder = 1
      TabStop = True
      object Label1: TLabel
        Left = 16
        Top = 56
        Width = 118
        Height = 14
        Caption = 'Almoxarifado de Destino'
      end
      object Label5: TLabel
        Left = 360
        Top = 56
        Width = 54
        Height = 14
        Caption = 'Saldo Atual'
      end
      object Label9: TLabel
        Left = 17
        Top = 17
        Width = 42
        Height = 14
        Caption = 'Empresa'
      end
      object Label10: TLabel
        Left = 19
        Top = 118
        Width = 37
        Height = 14
        Caption = 'Produto'
      end
      object CbAlmoxarifadoDestino: TcxLookupComboBox
        Left = 16
        Top = 72
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
        Properties.ListSource = dsAlmoxarifadoDestino
        Properties.OnChange = CbAlmoxarifadoDestinoPropertiesChange
        Style.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.Kind = lfStandard
        TabOrder = 2
        OnClick = CbAlmoxarifadoDestinoClick
        OnExit = CbAlmoxarifadoDestinoExit
        Width = 337
      end
      object CurSaldoDestino: TCurrencyEdit
        Left = 360
        Top = 72
        Width = 89
        Height = 21
        TabStop = False
        AutoSize = False
        Color = 14145495
        DisplayFormat = '###,###,##0.000'
        ReadOnly = True
        TabOrder = 3
      end
      object EdAlmoxarifadoDestinoDescricao: TEdit
        Left = 16
        Top = 96
        Width = 433
        Height = 22
        TabStop = False
        Color = 14145495
        ReadOnly = True
        TabOrder = 4
      end
      object edtCodigoEmpresaDestino: TEdit
        Left = 16
        Top = 33
        Width = 43
        Height = 22
        CharCase = ecUpperCase
        Color = clWhite
        MaxLength = 3
        TabOrder = 0
        OnExit = edtCodigoEmpresaDestinoExit
      end
      object cbEmpresaDestino: TSgDbSearchCombo
        Left = 62
        Top = 33
        Width = 363
        Height = 22
        TabOrder = 1
        CharCase = ecUpperCase
        LookupSelect = 'EMP_RAZAO'
        LookupOrderBy = 'EMP_RAZAO'
        LookupTable = 'EMP0000'
        OnSelect = cbEmpresaDestinoSelect
        GridAutoSize = False
        LookupSource = qEmp2
        LookupKeyField = 'EMP_CODIGO'
        ShowButton = True
        AutoF8WinTitulo = 'Empresa'
        AutoF8ColumnsTitulo = 'C'#243'digo, Descri'#231#227'o'
        GridLeft = 0
        GridWidth = 0
        GridHeight = 100
        GridTop = 0
        GridShowWhenEnter = False
        SelectWithDoubleClick = False
        LimparCampoAoSair = True
      end
      object cbProdutoDestino: TSgDbSearchCombo
        Left = 17
        Top = 132
        Width = 409
        Height = 22
        TabOrder = 5
        CharCase = ecUpperCase
        LookupSelect = 'prd_refer, prd_descri, prd_und, prd_codigo, Descricao'
        LookupOrderBy = 'Descricao'
        LookupTable = 'prd0000_view'
        LookupDispl = 'DESCRICAO'
        OnSelect = cbProdutoDestinoSelect
        GridAutoSize = False
        LookupSource = qProdDest
        LookupKeyField = 'prd_codigo'
        ShowButton = True
        LookupTableShare = 'PRODUTOS'
        AutoF8WinTitulo = 'Produtos'
        AutoF8ColumnsTitulo = 'Refer'#234'ncia, Descri'#231#227'o, Unid., C'#243'digo'
        LookupDbGridColumns = 'prd_refer, prd_descri, prd_und'
        LookupDbGridColumnsTitle = 'Refer'#234'ncia, Descri'#231#227'o, Unid.'
        GridLeft = 0
        GridWidth = 0
        GridHeight = 300
        GridTop = 0
        GridShowWhenEnter = False
        SelectWithDoubleClick = False
        LimparCampoAoSair = True
      end
    end
    object grp2: TGroupBox
      Left = 0
      Top = 329
      Width = 461
      Height = 47
      Align = alTop
      Caption = 'Transfer'#234'ncia'
      TabOrder = 2
      TabStop = True
      object Label7: TLabel
        Left = 16
        Top = 21
        Width = 72
        Height = 14
        Caption = 'No.documento:'
      end
      object Label6: TLabel
        Left = 202
        Top = 21
        Width = 86
        Height = 14
        Caption = 'Qtde '#224' Transferir:'
      end
      object EdDocumento: TEdit
        Left = 91
        Top = 18
        Width = 105
        Height = 22
        TabOrder = 0
      end
      object CurSaldoTransferir: TCurrencyEdit
        Left = 292
        Top = 18
        Width = 105
        Height = 21
        AutoSize = False
        DisplayFormat = '###,###,##0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
    end
  end
  object Panel2: TPanel [1]
    Left = 461
    Top = 0
    Width = 466
    Height = 516
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object Panel3: TPanel
      Left = 0
      Top = 475
      Width = 466
      Height = 41
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 0
      object Bit_Cancelar: TBitBtn
        Left = 341
        Top = 7
        Width = 100
        Height = 25
        Cursor = crHandPoint
        Cancel = True
        Caption = '&Sair'
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
        TabOrder = 0
        OnClick = Bit_CancelarClick
      end
      object Bit_Gravar: TBitBtn
        Left = 235
        Top = 7
        Width = 100
        Height = 25
        Cursor = crHandPoint
        Hint = '|Grava registro...'
        Caption = '&Transferir'
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
        OnClick = Bit_GravarClick
      end
    end
    object GroupBox2: TGroupBox
      Left = 0
      Top = 0
      Width = 466
      Height = 475
      Align = alClient
      Caption = 'Saldos dos Almoxarifados'
      TabOrder = 1
      object grProduto: TDBGrid
        Left = 2
        Top = 16
        Width = 454
        Height = 223
        DataSource = DsSaldos
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Arial'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'AMX_CODIGO_RET'
            Title.Caption = 'Almox.'
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AMX_DESCRI_RET'
            Title.Caption = 'Descri'#231#227'o Almoxarifado'
            Width = 249
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AMX_SALDO_RET'
            Title.Alignment = taRightJustify
            Title.Caption = 'Saldo '
            Width = 111
            Visible = True
          end>
      end
      object gbDestino: TGroupBox
        Left = 2
        Top = 276
        Width = 462
        Height = 197
        Align = alBottom
        Caption = 'Destino'
        TabOrder = 1
        object grProdutoDestino: TDBGrid
          Left = 0
          Top = 13
          Width = 454
          Height = 184
          DataSource = dsDesino
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Arial'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'AMX_CODIGO_RET'
              Title.Caption = 'Almox.'
              Width = 65
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'AMX_DESCRI_RET'
              Title.Caption = 'Descri'#231#227'o Almoxarifado'
              Width = 249
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'AMX_SALDO_RET'
              Title.Alignment = taRightJustify
              Title.Caption = 'Saldo '
              Width = 111
              Visible = True
            end>
        end
      end
    end
  end
  inherited coCalcula: TACBrCalculadora
    Left = 664
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 880
  end
  inherited DBConn: TSQLConnection
    Left = 616
    Top = 17
  end
  inherited qAux: TSQLQuery
    Left = 722
    Top = 21
  end
  inherited qAux2: TSQLQuery
    Left = 762
    Top = 20
  end
  inherited qAux3: TSQLQuery
    Left = 802
    Top = 20
  end
  object SqlSaldos: TSQLDataSet
    CommandText = 'SELECT * FROM pcd_kardex_saldo('#39'001'#39','#39'00012'#39',null)'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DataCadastros.SQLConnection1
    Left = 664
    Top = 88
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
      Size = 4
    end
  end
  object DspSaldos: TDataSetProvider
    DataSet = SqlSaldos
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 726
    Top = 89
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
    Left = 788
    Top = 97
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
      Size = 4
    end
  end
  object DsSaldos: TDataSource
    DataSet = CdsSaldos
    Left = 833
    Top = 97
  end
  object SqlCdsAlmoxarifadoOrigem: TSqlClientDataSet
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
    Left = 727
    Top = 168
    object SqlCdsAlmoxarifadoOrigemAMX_CODIGO: TStringField
      FieldName = 'AMX_CODIGO'
      Required = True
      Size = 3
    end
    object SqlCdsAlmoxarifadoOrigemAMX_DESCRI: TStringField
      FieldName = 'AMX_DESCRI'
      Required = True
      Size = 35
    end
    object SqlCdsAlmoxarifadoOrigemAMX_TIPO: TStringField
      FieldName = 'AMX_TIPO'
      Size = 35
    end
    object SqlCdsAlmoxarifadoOrigemEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Required = True
      Size = 3
    end
  end
  object DsAlmoxarifadoOrigem: TDataSource
    DataSet = SqlCdsAlmoxarifadoOrigem
    Left = 760
    Top = 168
  end
  object SqlCdsAlmoxarifadoDestino: TSqlClientDataSet
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
    Left = 727
    Top = 224
    object SqlCdsAlmoxarifadoDestinoAMX_CODIGO: TStringField
      FieldName = 'AMX_CODIGO'
      Required = True
      Size = 3
    end
    object SqlCdsAlmoxarifadoDestinoAMX_DESCRI: TStringField
      FieldName = 'AMX_DESCRI'
      Required = True
      Size = 35
    end
    object SqlCdsAlmoxarifadoDestinoAMX_TIPO: TStringField
      FieldName = 'AMX_TIPO'
      Size = 35
    end
    object SqlCdsAlmoxarifadoDestinoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Required = True
      Size = 3
    end
  end
  object dsAlmoxarifadoDestino: TDataSource
    DataSet = SqlCdsAlmoxarifadoDestino
    Left = 760
    Top = 224
  end
  object qEmp1: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      '')
    SQLConnection = DBConn
    Left = 714
    Top = 293
  end
  object qEmp2: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      '')
    SQLConnection = DBConn
    Left = 754
    Top = 292
  end
  object qProd: TSQLQuery
    AfterScroll = qProdAfterScroll
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      '')
    SQLConnection = DBConn
    Left = 802
    Top = 300
    object qProdPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
    end
    object qProdPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 100
    end
    object qProdprd_und: TStringField
      FieldName = 'prd_und'
      Size = 2
    end
    object qProdprd_CODIGO: TStringField
      FieldName = 'prd_CODIGO'
      Size = 5
    end
    object qProdDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
  end
  object dsDesino: TDataSource
    DataSet = cdsDestino
    Left = 761
    Top = 385
  end
  object cdsDestino: TClientDataSet
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
    ProviderName = 'dspDestino'
    StoreDefs = True
    Left = 660
    Top = 377
    object cdsDestinoAMX_CODIGO_RET: TStringField
      DisplayWidth = 4
      FieldName = 'AMX_CODIGO_RET'
      Size = 4
    end
    object cdsDestinoAMX_DESCRI_RET: TStringField
      FieldName = 'AMX_DESCRI_RET'
      Size = 35
    end
    object cdsDestinoAMX_SALDO_RET: TFMTBCDField
      FieldName = 'AMX_SALDO_RET'
      Precision = 15
      Size = 4
    end
  end
  object dspDestino: TDataSetProvider
    DataSet = qDestino
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 582
    Top = 369
  end
  object qDestino: TSQLDataSet
    CommandText = 'SELECT * FROM pcd_kardex_saldo('#39'001'#39','#39'00012'#39',null)'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DataCadastros.SQLConnection1
    Left = 520
    Top = 368
    object qDestinoAMX_CODIGO_RET: TStringField
      DisplayWidth = 4
      FieldName = 'AMX_CODIGO_RET'
      Size = 4
    end
    object qDestinoAMX_DESCRI_RET: TStringField
      FieldName = 'AMX_DESCRI_RET'
      Size = 35
    end
    object qDestinoAMX_SALDO_RET: TFMTBCDField
      FieldName = 'AMX_SALDO_RET'
      Precision = 15
      Size = 4
    end
  end
  object qProdDest: TSQLQuery
    AfterScroll = qProdAfterScroll
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      '')
    SQLConnection = DBConn
    Left = 826
    Top = 340
    object qProdDestPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
    end
    object qProdDestPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 100
    end
    object qProdDestprd_und: TStringField
      FieldName = 'prd_und'
      Size = 2
    end
    object qProdDestprd_CODIGO: TStringField
      FieldName = 'prd_CODIGO'
      Size = 5
    end
    object qProdDestDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
  end
end
