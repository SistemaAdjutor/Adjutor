inherited frmSelecaoProduto: TfrmSelecaoProduto
  Caption = 'frmSelecaoProduto'
  ClientHeight = 177
  ClientWidth = 434
  OnKeyPress = FormKeyPress
  ExplicitWidth = 442
  ExplicitHeight = 204
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 20
    Top = 21
    Width = 42
    Height = 13
    Caption = 'Produto:'
  end
  object lbTotal: TLabel [1]
    Left = 202
    Top = 80
    Width = 42
    Height = 13
    Alignment = taRightJustify
    Caption = 'C. Total:'
  end
  object LblLote: TLabel [2]
    Left = 37
    Top = 49
    Width = 25
    Height = 13
    Caption = 'Lote:'
  end
  object lbUnitario: TLabel [3]
    Left = 25
    Top = 79
    Width = 37
    Height = 13
    Alignment = taRightJustify
    Caption = 'C. Unit:'
  end
  object lEstoque: TLabel [4]
    Left = 218
    Top = 103
    Width = 46
    Height = 13
    Caption = 'Estoque: '
  end
  object lmaximo: TLabel [5]
    Left = 51
    Top = 107
    Width = 38
    Height = 13
    Caption = 'lmaximo'
  end
  object btnok: TButton [6]
    Left = 120
    Top = 134
    Width = 75
    Height = 25
    Caption = 'Ok'
    TabOrder = 5
    OnClick = btnokClick
  end
  object CbLoteProduto: TSgDbSearchCombo [7]
    Left = 65
    Top = 46
    Width = 320
    Height = 21
    TabOrder = 1
    LookupSelect = 
      'PRDL_LOTE,  PRDL_DATA_FABRICACAO, PRDL_DATA_VALIDADE, PRDL_SALDO' +
      ', PRDL_REGISTRO, PRD_CODIGO'
    LookupOrderBy = 'PRDL_LOTE'
    LookupTable = 'PRD_LOTE'
    LookupDispl = 'PRDL_LOTE'
    OnSelect = CbLoteProdutoSelect
    GridAutoSize = False
    LookupSource = qLoteProduto
    LookupKeyField = 'PRDL_REGISTRO'
    FiltroTabela = 'PRDL_SALDO > 0'
    ShowButton = True
    LookupTableShare = 'PRODUTOS'
    LookupWhere = 'PRDL_LOTE'
    AutoF8WinTitulo = 'Lotes do Produto '
    AutoF8ColumnsTitulo = 'Lote,Fabrica'#231#227'o, Validade, Saldo, Registro'
    LookupDbGridColumns = 
      'PRDL_LOTE,  PRDL_DATA_FABRICACAO, PRDL_DATA_VALIDADE, PRDL_SALDO' +
      ', PRDL_REGISTRO'
    LookupDbGridColumnsTitle = 'Lote,Fabrica'#231#227'o, Validade, Saldo, Registro'
    GridLeft = 0
    GridWidth = 0
    GridHeight = 100
    GridShowWhenEnter = False
    SelectWithDoubleClick = False
  end
  object edConsumoUnitario: TJvValidateEdit [8]
    Left = 65
    Top = 76
    Width = 100
    Height = 21
    CriticalPoints.MaxValueIncluded = False
    CriticalPoints.MinValueIncluded = False
    DisplayFormat = dfFloat
    DecimalPlaces = 5
    TabOrder = 3
  end
  object cbReferencia: TSgDbSearchCombo [9]
    AlignWithMargins = True
    Left = 115
    Top = 17
    Width = 270
    Height = 21
    TabOrder = 2
    CharCase = ecUpperCase
    LookupSelect = 
      'PD.PRD_CODIGO, PD.PRD_REFER, PD.PRD_DESCRI, PD.PRD_CODBARRA, PD.' +
      'PRD_PRODSERV, PD.PRD_UND, T2.LIN_DESCRI, 0.0 AS PRD_PVENDA'
    LookupOrderBy = 'PD.PRD_REFER'
    LookupTable = 
      'prd0000 PD left join PRD_LINHA T2 on (T2.LIN_CODIGO = PD.LIN_COD' +
      'IGO) '
    LookupDispl = 'PRD_DESCRI'
    OnButtonClick = cbReferenciaButtonClick
    OnSelect = cbReferenciaSelect
    GridAutoSize = False
    LookupSource = qProduto
    LookupKeyField = 'PD.PRD_REFER'
    FiltroTabela = 'PRD_STATUS = '#39'A'#39
    ShowButton = True
    LookupTableShare = 'PRODUTOS'
    LookupWhere = 'PD.PRD_REFER'
    LookupDbGridColumns = 
      'PRD_PRODSERV, PRD_REFER, PRD_DESCRI, PRD_UND, PRD_PVENDA, LIN_DE' +
      'SCRI, PRD_CODBARRA, PRDCO_CODIGO_ORIGINAL'
    LookupDbGridColumnsTitle = 
      'P/S, Refer'#234'ncia, Descri'#231#227'o, Unid., Pre'#231'o, Linha/Marca, C'#243'd.Barra' +
      's, C'#243'd.Cliente'
    GridLeft = 0
    GridWidth = 0
    GridHeight = 100
    GridShowWhenEnter = False
    SelectWithDoubleClick = False
  end
  object edConsumoTotal: TJvValidateEdit [10]
    Left = 246
    Top = 76
    Width = 99
    Height = 21
    CriticalPoints.MaxValueIncluded = False
    CriticalPoints.MinValueIncluded = False
    DisplayFormat = dfFloat
    DecimalPlaces = 5
    TabOrder = 4
  end
  object edProdutoCodigo: TEdit [11]
    Left = 65
    Top = 17
    Width = 49
    Height = 21
    CharCase = ecUpperCase
    Color = clWhite
    MaxLength = -1
    TabOrder = 0
    OnExit = edProdutoCodigoExit
  end
  object btnCancelar: TButton [12]
    Left = 218
    Top = 134
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    ModalResult = 2
    TabOrder = 6
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 16
    Top = 142
  end
  inherited cxLocalizer1: TcxLocalizer
    Left = 416
    Top = 176
  end
  inherited qAux: TFDQuery
    Left = 115
    Top = 208
  end
  inherited FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 456
    Top = 144
  end
  inherited FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Left = 24
    Top = 200
  end
  inherited FDTransac: TFDTransaction
    Left = 160
    Top = 240
  end
  inherited FDGUIxErrorDialog1: TFDGUIxErrorDialog
    Left = 80
    Top = 240
  end
  inherited qAux2: TFDQuery
    Left = 155
    Top = 207
  end
  inherited qAux3: TFDQuery
    Left = 203
    Top = 199
  end
  inherited qAux4: TFDQuery
    Left = 235
    Top = 207
  end
  inherited dbConn: TFDConnection
    Left = 75
    Top = 192
  end
  inherited FDStoredProc1: TFDStoredProc
    Left = 288
    Top = 192
  end
  object qProduto: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'select PD.PRD_CODIGO, PD.PRD_REFER, PD.PRD_DESCRI, PD.PRD_CODBAR' +
        'RA, PD.PRD_PRODSERV, PD.PRD_UND, T2.LIN_DESCRI, 0.00 as PRD_PVEN' +
        'DA'
      'from PRD0000 PD'
      'left join PRD_LINHA T2 on (T2.LIN_CODIGO = PD.LIN_CODIGO)'
      'where PRD_STATUS = '#39'Z'#39' and'
      '      (coalesce(PD.PRD_REFER, '#39#39') <> '#39#39')'
      'order by PD.PRD_REFER  ')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 298
    Top = 256
    object qProdutoPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Required = True
      Size = 5
    end
    object qProdutoPRD_REFER: TStringField
      Tag = 80
      FieldName = 'PRD_REFER'
    end
    object qProdutoPRD_DESCRI: TStringField
      Tag = 500
      FieldName = 'PRD_DESCRI'
      Size = 100
    end
    object qProdutoPRD_CODBARRA: TStringField
      Tag = 100
      FieldName = 'PRD_CODBARRA'
      Size = 13
    end
    object qProdutoPRD_PRODSERV: TStringField
      FieldName = 'PRD_PRODSERV'
      Size = 1
    end
    object qProdutoPRD_UND: TStringField
      Tag = 30
      FieldName = 'PRD_UND'
      Size = 3
    end
    object qProdutoLIN_DESCRI: TStringField
      Tag = 100
      FieldName = 'LIN_DESCRI'
      Size = 30
    end
    object qProdutoPRD_PVENDA: TFMTBCDField
      Tag = 100
      FieldName = 'PRD_PVENDA'
      Required = True
      DisplayFormat = '###,###,##0.0000'
      Precision = 18
      Size = 2
    end
  end
  object qLoteProduto: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'select PRDL_REGISTRO, PRDL_LOTE, prdl_data_fabricacao, PRDL_DATA' +
        '_VALIDADE, PRDL_SALDO, pr.prd_Descri '
      
        'from PRD_LOTE lo inner join PRD0000 pr on (pr.prd_codigo = lo.pr' +
        'd_codigo)'
      'where prdl_registro = '#39'-1'#39)
    SQLConnection = DataCadastros.SQLConnection1
    Left = 355
    Top = 46
    object qLoteProdutoPRDL_LOTE: TStringField
      Tag = 70
      FieldName = 'PRDL_LOTE'
      Size = 30
    end
    object qLoteProdutoPRDL_DATA_FABRICACAO: TDateField
      Tag = 80
      FieldName = 'PRDL_DATA_FABRICACAO'
    end
    object qLoteProdutoPRDL_DATA_VALIDADE: TDateField
      Tag = 80
      FieldName = 'PRDL_DATA_VALIDADE'
    end
    object qLoteProdutoPRDL_SALDO: TFMTBCDField
      Tag = 80
      FieldName = 'PRDL_SALDO'
      Precision = 18
      Size = 5
    end
    object qLoteProdutoPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Size = 5
    end
    object qLoteProdutoPRDL_REGISTRO: TIntegerField
      FieldName = 'PRDL_REGISTRO'
      Required = True
      Visible = False
    end
  end
  object SQLQuery1: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DataCadastros.SQLConnection1
    Left = 227
    Top = 246
  end
end
