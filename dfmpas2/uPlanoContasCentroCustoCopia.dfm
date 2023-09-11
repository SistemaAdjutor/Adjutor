object FrmPlanoContasCentroCustoCopia: TFrmPlanoContasCentroCustoCopia
  Left = 369
  Top = 414
  Caption = 'C'#243'pia de Perfil de Rateio de '
  ClientHeight = 147
  ClientWidth = 648
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Bit_Cancelar: TBitBtn
    Left = 546
    Top = 116
    Width = 95
    Height = 25
    Cursor = crHandPoint
    Hint = '|Cancela registro'
    Caption = '&Cancelar'
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
    TabStop = False
    OnClick = Bit_CancelarClick
  end
  object Bit_Gravar: TBitBtn
    Left = 451
    Top = 116
    Width = 95
    Height = 25
    Cursor = crHandPoint
    Hint = '|Grava registro'
    Caption = '&Copiar'
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
    TabStop = False
    OnClick = Bit_GravarClick
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 65
    Width = 648
    Height = 48
    Align = alTop
    Caption = 'Copiar Centros de Custo da Conta: '
    TabOrder = 2
    object CbxCtaAnalise: TSgDbSearchCombo
      Left = 9
      Top = 20
      Width = 585
      Height = 22
      TabOrder = 0
      CharCase = ecUpperCase
      LookupSelect = 'CCT_CODIGO, CCT_NIVEL, CCT_DESCRI'
      LookupOrderBy = 'CCT_DESCRI'
      LookupTable = 'CCT_0000'
      GridAutoSize = False
      LookupSource = SQLQuery1
      LookupKeyField = 'CCT_CODIGO'
      FiltroTabela = 'CCT_CONTA = '#39'E'#39' AND CCT_STATUS = '#39'L'#39
      ShowButton = True
      LookupTableShare = 'PLANODECONTAS'
      AutoF8WinTitulo = 'Plano de Contas'
      AutoF8ColumnsTitulo = 'C'#243'digo, N'#237'vel, Descri'#231#227'o'
      GridLeft = 0
      GridWidth = 0
      GridHeight = 100
      GridShowWhenEnter = False
    end
  end
  object grpConta: TGroupBox
    Left = 0
    Top = 0
    Width = 648
    Height = 65
    Align = alTop
    Caption = 'Conta Destino:'
    TabOrder = 3
    object Label1: TLabel
      Left = 8
      Top = 24
      Width = 23
      Height = 14
      Caption = 'N'#237'vel'
    end
    object Label2: TLabel
      Left = 168
      Top = 24
      Width = 49
      Height = 14
      Caption = 'Descri'#231#227'o'
    end
    object edtConta: TEdit
      Left = 8
      Top = 40
      Width = 153
      Height = 22
      TabStop = False
      Color = 14145495
      ReadOnly = True
      TabOrder = 0
      Text = 'edtConta'
    end
    object edtDescricao: TEdit
      Left = 168
      Top = 40
      Width = 449
      Height = 22
      TabStop = False
      Color = 14145495
      ReadOnly = True
      TabOrder = 1
      Text = 'edtConta'
    end
  end
  object SqlCdsCtaAnalise: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 'select * from CCT_0000'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'select * from CCT_0000'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 198
    Top = 65528
    object SqlCdsCtaAnaliseCCT_CODIGO: TStringField
      FieldName = 'CCT_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 3
    end
    object SqlCdsCtaAnaliseCCT_PROVISAO: TFMTBCDField
      FieldName = 'CCT_PROVISAO'
      Precision = 15
    end
    object SqlCdsCtaAnaliseCCT_DESCRI: TStringField
      FieldName = 'CCT_DESCRI'
      Size = 35
    end
    object SqlCdsCtaAnaliseCEC_CODIGO: TStringField
      FieldName = 'CEC_CODIGO'
      Size = 3
    end
    object SqlCdsCtaAnaliseCCT_TIPO: TStringField
      FieldName = 'CCT_TIPO'
      Size = 1
    end
    object SqlCdsCtaAnaliseCCT_CONTA: TStringField
      FieldName = 'CCT_CONTA'
      Size = 1
    end
    object SqlCdsCtaAnaliseEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlCdsCtaAnaliseCCT_NIVEL: TStringField
      FieldName = 'CCT_NIVEL'
      Size = 19
    end
    object SqlCdsCtaAnaliseCCT_STATUS: TStringField
      FieldName = 'CCT_STATUS'
      Size = 1
    end
  end
  object CdsPlanoCentro: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT T1.pcx_codigo,T2.pcx_nivel,T2.pcx_descri,T1.pcxp_indice F' +
      'ROM pcx0000_plano T1 join pcx0000 T2 ON (T2.pcx_codigo = T1.pcx_' +
      'codigo)'#13#10'WHERE T1.cct_0000 = '#39'001'#39#13#10'ORDER BY T2.pcx_nivel'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'SELECT T1.pcx_codigo,T2.pcx_nivel,T2.pcx_descri,T1.pcxp_indice F' +
      'ROM pcx0000_plano T1 join pcx0000 T2 ON (T2.pcx_codigo = T1.pcx_' +
      'codigo)'#13#10'WHERE T1.cct_0000 = '#39'001'#39#13#10'ORDER BY T2.pcx_nivel'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 240
    Top = 65529
    object CdsPlanoCentroPCX_CODIGO: TStringField
      FieldName = 'PCX_CODIGO'
      Size = 3
    end
    object CdsPlanoCentroPCX_NIVEL: TStringField
      FieldName = 'PCX_NIVEL'
      Size = 15
    end
    object CdsPlanoCentroPCX_DESCRI: TStringField
      FieldName = 'PCX_DESCRI'
      Size = 25
    end
    object CdsPlanoCentroPCXP_INDICE: TFMTBCDField
      FieldName = 'PCXP_INDICE'
      DisplayFormat = '##0.00%'
      Precision = 20
      Size = 5
    end
  end
  object SQLQuery1: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DataCadastros.SQLConnection1
    Left = 400
    Top = 16
  end
end
