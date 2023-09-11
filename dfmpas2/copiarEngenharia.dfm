inherited frmCopiarEngenharia: TfrmCopiarEngenharia
  Caption = 'Copiar engenharia para...'
  ClientHeight = 154
  ClientWidth = 437
  ExplicitWidth = 453
  ExplicitHeight = 192
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 17
    Top = 37
    Width = 38
    Height = 13
    Caption = 'Produto'
  end
  object btnConfirmar: TButton [1]
    Left = 223
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Confirma'
    TabOrder = 2
    OnClick = btnConfirmarClick
  end
  object btnCancelar: TButton [2]
    Left = 304
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 3
    OnClick = btnCancelarClick
  end
  object edProdutoCodigo: TEdit [3]
    Left = 65
    Top = 33
    Width = 52
    Height = 21
    CharCase = ecUpperCase
    Color = clWhite
    TabOrder = 0
    OnExit = edProdutoCodigoExit
    OnKeyDown = edProdutoCodigoKeyDown
  end
  object cbReferencia: TSgDbSearchCombo [4]
    Left = 119
    Top = 33
    Width = 236
    Height = 21
    TabOrder = 1
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
      'SCRI, PRD_CODBARRA'
    LookupDbGridColumnsTitle = 
      'P/S, Refer'#234'ncia, Descri'#231#227'o, Unid., Pre'#231'o, Linha/Marca, C'#243'd.Barra' +
      's, C'#243'd.Cliente'
    GridLeft = 0
    GridWidth = 0
    GridHeight = 100
    GridShowWhenEnter = False
    SelectWithDoubleClick = False
  end
  inherited coCalcula: TACBrCalculadora
    Left = 40
    Top = 72
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 88
    Top = 96
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
    SQLConnection = DBConn
    Left = 295
    Top = 44
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
end
