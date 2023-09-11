inherited frmitemOrcamento: TfrmitemOrcamento
  Caption = 'frmitemOrcamento'
  ClientHeight = 400
  ClientWidth = 627
  ExplicitWidth = 635
  ExplicitHeight = 427
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Top = 369
    Width = 627
    ExplicitTop = 369
    ExplicitWidth = 627
    DesignSize = (
      627
      31)
    inherited btnConfirmar: TButton
      Left = 404
      Top = 2
      ExplicitLeft = 404
      ExplicitTop = 2
    end
    inherited btnCancelar: TButton
      Left = 513
      Top = 2
      ExplicitLeft = 513
      ExplicitTop = 2
    end
  end
  inherited pprincipal: TPanel
    Width = 627
    Height = 369
    ExplicitWidth = 627
    ExplicitHeight = 369
    object Label1: TLabel
      Left = 5
      Top = 60
      Width = 42
      Height = 13
      Caption = 'Produto:'
    end
    object Label2: TLabel
      Left = 5
      Top = 88
      Width = 39
      Height = 13
      Caption = 'Servi'#231'o:'
    end
    object Label3: TLabel
      Left = 5
      Top = 115
      Width = 47
      Height = 13
      Caption = 'Processo:'
    end
    object Label4: TLabel
      Left = 5
      Top = 145
      Width = 123
      Height = 13
      Caption = 'Descri'#231#227'o complementar :'
    end
    object Label5: TLabel
      Left = 5
      Top = 171
      Width = 53
      Height = 13
      Caption = 'Tipo pe'#231'a: '
    end
    object Label6: TLabel
      Left = 305
      Top = 171
      Width = 42
      Height = 13
      Caption = 'Material:'
    end
    object Label7: TLabel
      Left = 5
      Top = 195
      Width = 70
      Height = 13
      Caption = 'Peso Unit'#225'rio :'
    end
    object Label8: TLabel
      Left = 305
      Top = 195
      Width = 123
      Height = 13
      Caption = 'Profundidade de camada:'
    end
    object Label9: TLabel
      Left = 5
      Top = 222
      Width = 89
      Height = 13
      Caption = 'Dureza superf'#237'cial:'
    end
    object Label10: TLabel
      Left = 305
      Top = 220
      Width = 72
      Height = 13
      Caption = 'Dureza n'#250'cleo:'
    end
    object Label11: TLabel
      Left = 5
      Top = 245
      Width = 98
      Height = 13
      Caption = 'C'#243'd produto cliente:'
    end
    object Label12: TLabel
      Left = 305
      Top = 243
      Width = 73
      Height = 13
      Caption = 'Tamanho gr'#227'o:'
    end
    object Label13: TLabel
      Left = 5
      Top = 268
      Width = 23
      Height = 13
      Caption = 'EHT:'
    end
    object Label14: TLabel
      Left = 305
      Top = 266
      Width = 46
      Height = 13
      Caption = 'Desenho:'
    end
    object Label15: TLabel
      Left = 305
      Top = 292
      Width = 77
      Height = 13
      Caption = 'Valor Comercial:'
    end
    object Label16: TLabel
      Left = 225
      Top = 8
      Width = 72
      Height = 13
      Caption = 'Prazo Entrega:'
    end
    object Label17: TLabel
      Left = 7
      Top = 10
      Width = 57
      Height = 13
      Caption = 'Or'#231'amento:'
    end
    object Label18: TLabel
      Left = 4
      Top = 292
      Width = 63
      Height = 13
      Caption = 'Quantidade :'
    end
    object Label19: TLabel
      Left = 5
      Top = 314
      Width = 52
      Height = 13
      Caption = 'Peso total:'
    end
    object Label20: TLabel
      Left = 305
      Top = 314
      Width = 28
      Height = 13
      Caption = 'Total:'
    end
    object Label21: TLabel
      Left = 11
      Top = 33
      Width = 53
      Height = 13
      Caption = 'Sequencia:'
    end
    object Label22: TLabel
      Left = 196
      Top = 293
      Width = 29
      Height = 13
      Caption = 'UND.:'
    end
    object cbReferencia: TSgDbSearchCombo
      Left = 160
      Top = 56
      Width = 415
      Height = 21
      TabOrder = 4
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
        's'
      GridLeft = 0
      GridWidth = 0
      GridHeight = 100
      GridShowWhenEnter = False
      SelectWithDoubleClick = False
    end
    object cbServico: TSgDbSearchCombo
      Left = 63
      Top = 83
      Width = 512
      Height = 21
      TabOrder = 5
      CharCase = ecUpperCase
      LookupSelect = 'SRV_CODIGO, SRV_NOME'
      LookupOrderBy = 'SRV_NOME'
      LookupTable = 'SERVICO'
      LookupDispl = 'SRV_NOME'
      GridAutoSize = True
      LookupSource = qServico
      LookupKeyField = 'SRV_CODIGO'
      ShowButton = True
      LookupWhere = 'SRV_NOME'
      AutoF8WinTitulo = 'Pesquisar servi'#231'o'
      AutoF8ColumnsTitulo = 'C'#243'digo, Servi'#231'o'
      LookupDbGridColumns = 'SRV_CODIGO, SRV_NOME'
      LookupDbGridColumnsTitle = 'C'#243'digo, Servi'#231'o'
      GridLeft = 0
      GridWidth = 0
      GridHeight = 100
      GridShowWhenEnter = True
      SelectWithDoubleClick = False
    end
    object cbProcesso: TSgDbSearchCombo
      Left = 63
      Top = 112
      Width = 512
      Height = 21
      OnEnter = cbProcessoEnter
      TabOrder = 6
      CharCase = ecUpperCase
      LookupSelect = 'pro_codigo , pro_descricao, srv_codigo'
      LookupOrderBy = 'pro_codigo'
      LookupTable = 'MODL_PROCESSOS'
      LookupDispl = 'PRO_DESCRICAO'
      OnButtonClick = cbProcessoButtonClick
      GridAutoSize = False
      LookupSource = qProcessos
      LookupKeyField = 'pro_codigo'
      ShowButton = True
      LookupTableShare = 'PRODUCAO'
      LookupWhere = 'PRO_DESCRICAO, pro_codigo'
      AutoF8WinTitulo = 'Pesquisar processo'
      AutoF8ColumnsTitulo = 'C'#243'digo, Processo'
      LookupDbGridColumns = 'pro_codigo , pro_descricao'
      LookupDbGridColumnsTitle = 'C'#243'digo, Descri'#231#227'o'
      GridLeft = 0
      GridWidth = 0
      GridHeight = 100
      GridShowWhenEnter = False
      SelectWithDoubleClick = False
    end
    object edDescricao: TDBEdit
      Left = 144
      Top = 142
      Width = 449
      Height = 21
      DataField = 'OIP_DESCRICAO'
      DataSource = FrmEditOrcamentoPRO.dsEditDetail
      TabOrder = 7
    end
    object edtipo: TDBEdit
      Left = 103
      Top = 168
      Width = 182
      Height = 21
      DataField = 'OIP_TIPOPECA_TERM'
      DataSource = FrmEditOrcamentoPRO.dsEditDetail
      TabOrder = 8
    end
    object edPeso: TDBEdit
      Left = 103
      Top = 193
      Width = 182
      Height = 21
      DataField = 'OIP_PESO'
      DataSource = FrmEditOrcamentoPRO.dsEditDetail
      TabOrder = 10
      OnExit = edPesoExit
    end
    object edsuperficial: TDBEdit
      Left = 103
      Top = 219
      Width = 182
      Height = 21
      DataField = 'OIP_DUREZASUPERFICIAL_TERM'
      DataSource = FrmEditOrcamentoPRO.dsEditDetail
      TabOrder = 12
    end
    object edMaterial: TDBEdit
      Left = 432
      Top = 168
      Width = 169
      Height = 21
      DataField = 'OIP_MATERIAL_TERM'
      DataSource = FrmEditOrcamentoPRO.dsEditDetail
      TabOrder = 9
    end
    object edProfundidade: TDBEdit
      Left = 432
      Top = 192
      Width = 169
      Height = 21
      DataField = 'OIP_PROFUNDIDADE_TERM'
      DataSource = FrmEditOrcamentoPRO.dsEditDetail
      TabOrder = 11
    end
    object ednucleo: TDBEdit
      Left = 432
      Top = 217
      Width = 169
      Height = 21
      DataField = 'OIP_DUREZANUCLEO_TERM'
      DataSource = FrmEditOrcamentoPRO.dsEditDetail
      TabOrder = 13
    end
    object DBEdit8: TDBEdit
      Left = 103
      Top = 242
      Width = 182
      Height = 21
      DataField = 'PRDCO_CODIGO_ORIGINAL'
      DataSource = FrmEditOrcamentoPRO.dsEditDetail
      TabOrder = 14
    end
    object edTamanho: TDBEdit
      Left = 432
      Top = 240
      Width = 169
      Height = 21
      DataField = 'OIP_TAMANHOGRAO_TERM'
      DataSource = FrmEditOrcamentoPRO.dsEditDetail
      TabOrder = 15
    end
    object edEHT: TDBEdit
      Left = 103
      Top = 265
      Width = 182
      Height = 21
      DataField = 'OIP_EHT_TERM'
      DataSource = FrmEditOrcamentoPRO.dsEditDetail
      TabOrder = 16
    end
    object edDesenho: TDBEdit
      Left = 432
      Top = 265
      Width = 169
      Height = 21
      DataField = 'OIP_DESENHO_TERM'
      DataSource = FrmEditOrcamentoPRO.dsEditDetail
      TabOrder = 17
    end
    object DBEdit13: TDBEdit
      Left = 307
      Top = 7
      Width = 169
      Height = 21
      DataField = 'OIP_PRAZOENTREGA'
      DataSource = FrmEditOrcamentoPRO.dsEditDetail
      TabOrder = 1
    end
    object DBEdit14: TDBEdit
      Left = 76
      Top = 7
      Width = 121
      Height = 21
      DataField = 'ORC_CODIGO'
      DataSource = FrmEditOrcamentoPRO.dsEdits
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit15: TDBEdit
      Left = 76
      Top = 30
      Width = 121
      Height = 21
      DataField = 'OIP_SEQ'
      DataSource = FrmEditOrcamentoPRO.dsEditDetail
      ReadOnly = True
      TabOrder = 2
    end
    object edValorComercial: TDBEdit
      Left = 432
      Top = 289
      Width = 169
      Height = 21
      DataField = 'OIP_PRECO'
      DataSource = FrmEditOrcamentoPRO.dsEditDetail
      TabOrder = 20
      OnExit = edValorComercialExit
    end
    object edQuantidade: TDBEdit
      Left = 102
      Top = 289
      Width = 83
      Height = 21
      DataField = 'OIP_QDE'
      DataSource = FrmEditOrcamentoPRO.dsEditDetail
      TabOrder = 18
      OnExit = edQuantidadeExit
    end
    object edPesoTotal: TDBEdit
      Left = 103
      Top = 311
      Width = 185
      Height = 21
      TabStop = False
      Color = clSilver
      DataField = 'OIP_PESOTOTAL'
      DataSource = FrmEditOrcamentoPRO.dsEditDetail
      Enabled = False
      ReadOnly = True
      TabOrder = 21
    end
    object edTotal: TDBEdit
      Left = 433
      Top = 311
      Width = 169
      Height = 21
      TabStop = False
      Color = clSilver
      DataField = 'OIP_TOTAL'
      DataSource = FrmEditOrcamentoPRO.dsEditDetail
      Enabled = False
      ReadOnly = True
      TabOrder = 22
    end
    object cbUnidade: TcxDBComboBox
      Left = 229
      Top = 288
      DataBinding.DataField = 'OIP_UND'
      DataBinding.DataSource = FrmEditOrcamentoPRO.dsEditDetail
      Properties.Items.Strings = (
        'UN'
        'PC'
        'BD'
        'BR'
        'CX'
        'EMB'
        'FD'
        'FR'
        'GL'
        'GR'
        'LT'
        'ML'
        'MT'
        'M2'
        'M3'
        'MIL'
        'PCT'
        'KG'
        'RL'
        'RM'
        'CT'
        'LA'
        'T'
        'PAR'
        'PR'
        'CJ'
        'TB'
        'MM'
        'BOB'
        'HR'
        'SC'
        'KIT'
        'KWH'
        'FL'
        'EX'
        'JG'
        'DL'
        'S50'
        'SO'
        'MH'
        'TON'
        'CA')
      Properties.OnChange = cbUnidadePropertiesChange
      TabOrder = 19
      Width = 56
    end
    object edRefer: TEdit
      Left = 63
      Top = 56
      Width = 94
      Height = 21
      MaxLength = 20
      TabOrder = 3
    end
  end
  object Button1: TButton [2]
    Left = 299
    Top = 371
    Width = 104
    Height = 25
    Caption = 'Simula'#231#227'o'
    TabOrder = 2
    Visible = False
    OnClick = Button1Click
  end
  inherited cxLocalizer1: TcxLocalizer
    Left = 40
    Top = 56
  end
  inherited dbConn: TFDConnection
    Left = 43
  end
  object qProduto: TSQLQuery [14]
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
    SQLConnection = dbConn
    Left = 295
    Top = 228
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
  object qProcessos: TSQLQuery [15]
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
    SQLConnection = dbConn
    Left = 223
    Top = 204
    object qProcessosPRO_CODIGO: TIntegerField
      FieldName = 'PRO_CODIGO'
    end
    object qProcessosPRO_DESCRICAO: TStringField
      FieldName = 'PRO_DESCRICAO'
      Size = 100
    end
  end
  object qServico: TSQLQuery [16]
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
    SQLConnection = dbConn
    Left = 207
    Top = 228
    object qServicoSRV_CODIGO: TIntegerField
      FieldName = 'SRV_CODIGO'
    end
    object qServicoSRV_NOME: TStringField
      FieldName = 'SRV_NOME'
      Size = 60
    end
  end
  inherited FDStoredProc1: TFDStoredProc
    Left = 168
    Top = 176
  end
  inherited JvValidators1: TJvValidators
    Left = 201
    Top = 330
    object ValidarValorComercial: TJvCustomValidator
      ErrorControl = edValorComercial
      ControlToValidate = edValorComercial
      ErrorMessage = 'Valor comercial deve ser preenchido'
      OnValidate = ValidarValorComercialValidate
    end
    object ValidarQuantidade: TJvCustomValidator
      ErrorControl = edQuantidade
      ControlToValidate = edQuantidade
      ErrorMessage = 'Quantidade deve ser informada'
      OnValidate = ValidarQuantidadeValidate
    end
    object PesoRequerido: TJvCustomValidator
      ErrorControl = edPeso
      ControlToValidate = edPeso
      ErrorMessage = 'Peso deve ser preenchido'
      OnValidate = PesoRequeridoValidate
    end
    object ValidarDescricao: TJvCustomValidator
      ErrorControl = edDescricao
      ControlToValidate = edDescricao
      ErrorMessage = 'Descri'#231#227'o deve ser preenchida'
      OnValidate = ValidarDescricaoValidate
    end
    object ValidarMaterial: TJvCustomValidator
      ErrorControl = edMaterial
      ControlToValidate = edMaterial
      ErrorMessage = 'Material deve ser preenchido'
      OnValidate = ValidarMaterialValidate
    end
  end
  inherited JvErrorIndicator1: TJvErrorIndicator
    Left = 265
    Top = 330
  end
  inherited JvValidationSummary1: TJvValidationSummary
    Left = 232
    Top = 328
  end
end
