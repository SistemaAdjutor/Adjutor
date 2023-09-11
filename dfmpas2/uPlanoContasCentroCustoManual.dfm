object FrmPlanoContasCentroCustoManual: TFrmPlanoContasCentroCustoManual
  Left = 680
  Top = 292
  Caption = 'Rateio Centro de Custo Manual'
  ClientHeight = 501
  ClientWidth = 651
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object grpConta: TGroupBox
    Left = 0
    Top = 68
    Width = 651
    Height = 73
    Align = alTop
    Caption = 'Conta Financeira'
    TabOrder = 0
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
    object Label3: TLabel
      Left = 584
      Top = 24
      Width = 45
      Height = 14
      Caption = 'Reduzido'
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
      Width = 409
      Height = 22
      TabStop = False
      Color = 14145495
      ReadOnly = True
      TabOrder = 1
      Text = 'edtConta'
    end
    object edtReduzido: TEdit
      Left = 584
      Top = 40
      Width = 57
      Height = 22
      TabStop = False
      Color = 14145495
      ReadOnly = True
      TabOrder = 2
      Text = 'edtConta'
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 141
    Width = 651
    Height = 319
    Align = alClient
    Caption = 'Centro de Custos e Sub-Centros'
    TabOrder = 1
    ExplicitHeight = 372
    object dbgrdCentros: TDBGrid
      Left = 2
      Top = 16
      Width = 647
      Height = 301
      Align = alClient
      Color = 16776176
      DataSource = dsPlanoCentro
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit]
      PopupMenu = pm1
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = []
      OnDblClick = dbgrdCentrosDblClick
      OnKeyPress = dbgrdCentrosKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'Nivel'
          Title.Alignment = taCenter
          Title.Caption = 'N'#237'vel'
          Width = 92
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CentroCusto'
          Title.Alignment = taCenter
          Title.Caption = 'Centro de Custo'
          Width = 304
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Reduzido'
          Title.Alignment = taCenter
          Width = 55
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Indice'
          Title.Alignment = taCenter
          Title.Caption = '% Rateio'
          Width = 63
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Valor'
          Title.Alignment = taCenter
          Width = 95
          Visible = True
        end>
    end
  end
  object grpDuplicata: TGroupBox
    Left = 0
    Top = 0
    Width = 651
    Height = 68
    Align = alTop
    Caption = 'Informa'#231#245'es da Fatura'
    TabOrder = 2
    object Label4: TLabel
      Left = 8
      Top = 24
      Width = 31
      Height = 14
      Caption = 'Fatura'
    end
    object Label5: TLabel
      Left = 168
      Top = 24
      Width = 25
      Height = 14
      Caption = 'Valor'
    end
    object Label6: TLabel
      Left = 270
      Top = 24
      Width = 97
      Height = 14
      Caption = 'Cliente / Fornecedor'
    end
    object edtFatura: TEdit
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
    object edtValor: TEdit
      Left = 168
      Top = 40
      Width = 97
      Height = 22
      TabStop = False
      Color = 14145495
      ReadOnly = True
      TabOrder = 1
      Text = 'edtConta'
    end
    object edtClienteFornecedor: TEdit
      Left = 269
      Top = 40
      Width = 372
      Height = 22
      TabStop = False
      Color = 14145495
      ReadOnly = True
      TabOrder = 2
      Text = 'edtConta'
    end
    object VLR1: TCurrencyEdit
      Left = 408
      Top = 16
      Width = 113
      Height = 21
      AutoSize = False
      DecimalPlaces = 10
      TabOrder = 3
    end
    object VLR2: TCurrencyEdit
      Left = 528
      Top = 16
      Width = 105
      Height = 21
      AutoSize = False
      DecimalPlaces = 10
      TabOrder = 4
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 460
    Width = 651
    Height = 41
    Align = alBottom
    TabOrder = 3
    ExplicitLeft = 208
    ExplicitTop = 584
    ExplicitWidth = 185
    object lbTotal: TLabel
      Left = 288
      Top = 13
      Width = 39
      Height = 16
      Caption = 'Total: '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Bit_Gravar: TBitBtn
      Left = 439
      Top = 8
      Width = 100
      Height = 25
      Cursor = crHandPoint
      Hint = '|Grava registro...'
      Caption = '&Gravar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
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
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = Bit_GravarClick
    end
    object Bit_Cancelar: TBitBtn
      Left = 543
      Top = 8
      Width = 100
      Height = 25
      Cursor = crHandPoint
      Hint = '|Cancela registro atual...'
      Cancel = True
      Caption = '&Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
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
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = Bit_CancelarClick
    end
    object btnAdicionar: TBitBtn
      Left = 10
      Top = 8
      Width = 130
      Height = 25
      Cursor = crHandPoint
      Caption = '&Vincular Centro'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      NumGlyphs = 2
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 2
      OnClick = btnAdicionarClick
    end
    object btnRemover: TBitBtn
      Left = 143
      Top = 8
      Width = 130
      Height = 25
      Cursor = crHandPoint
      Caption = '&Remover Centro'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      NumGlyphs = 2
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 3
      OnClick = btnRemoverClick
    end
  end
  object CdsPlanoCentro: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 
      'SELECT'#13#10'    T1.FAT_REGISTRO AS REGISTRO,'#13#10'    T1.FAT_CODIGO AS F' +
      'ATURA,'#13#10'    T1.FPC_NUMER AS NUMERO,'#13#10'    T2.CLI_RAZAO AS RAZAO,'#13 +
      #10'    T1.FPC_VLPARC AS VALOR,'#13#10't3.CCT_CODIGO, t3.CCT_NIVEL, t3.CC' +
      'T_DESCRI'#13#10'FROM FAT_PC01 T1'#13#10'JOIN CLI0000 T2 ON (T2.CLI_CODIGO = ' +
      'T1.CLI_CODIGO)'#13#10'left JOIN CCT_0000 t3 on (t3.CCT_CODIGO = t1.CCT' +
      '_CODIGO)'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'SELECT'#13#10'    T1.FAT_REGISTRO AS REGISTRO,'#13#10'    T1.FAT_CODIGO AS F' +
      'ATURA,'#13#10'    T1.FPC_NUMER AS NUMERO,'#13#10'    T2.CLI_RAZAO AS RAZAO,'#13 +
      #10'    T1.FPC_VLPARC AS VALOR,'#13#10't3.CCT_CODIGO, t3.CCT_NIVEL, t3.CC' +
      'T_DESCRI'#13#10'FROM FAT_PC01 T1'#13#10'JOIN CLI0000 T2 ON (T2.CLI_CODIGO = ' +
      'T1.CLI_CODIGO)'#13#10'left JOIN CCT_0000 t3 on (t3.CCT_CODIGO = t1.CCT' +
      '_CODIGO)'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 328
    Top = 201
    object CdsPlanoCentroREGISTRO: TIntegerField
      FieldName = 'REGISTRO'
    end
    object CdsPlanoCentroFATURA: TStringField
      FieldName = 'FATURA'
      Size = 15
    end
    object CdsPlanoCentroNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 2
    end
    object CdsPlanoCentroRAZAO: TStringField
      FieldName = 'RAZAO'
      Size = 55
    end
    object CdsPlanoCentroVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Precision = 20
      Size = 5
    end
    object CdsPlanoCentroCCT_CODIGO: TStringField
      FieldName = 'CCT_CODIGO'
      Size = 3
    end
    object CdsPlanoCentroCCT_NIVEL: TStringField
      FieldName = 'CCT_NIVEL'
      Size = 19
    end
    object CdsPlanoCentroCCT_DESCRI: TStringField
      FieldName = 'CCT_DESCRI'
      Size = 82
    end
  end
  object dsPlanoCentro: TDataSource
    DataSet = CdsIndices
    Left = 488
    Top = 209
  end
  object CdsIndices: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'Nivel'
    Params = <>
    Left = 416
    Top = 209
    object CdsIndicesNivel: TStringField
      FieldName = 'Nivel'
      Size = 15
    end
    object CdsIndicesCentroCusto: TStringField
      FieldName = 'CentroCusto'
      Size = 40
    end
    object CdsIndicesReduzido: TStringField
      FieldName = 'Reduzido'
      Size = 3
    end
    object CdsIndicesIndice: TFloatField
      FieldName = 'Indice'
      DisplayFormat = '##0.00%'
      currency = True
    end
    object CdsIndicesIndiceReal: TFloatField
      FieldName = 'IndiceReal'
    end
    object CdsIndicesValor: TFloatField
      FieldName = 'Valor'
      DisplayFormat = '###,###,###,##0.00'
    end
  end
  object pm1: TPopupMenu
    Left = 240
    Top = 273
    object Adicionar1: TMenuItem
      Caption = 'Adicionar'
      OnClick = Adicionar1Click
    end
    object Remover1: TMenuItem
      Caption = 'Remover'
      OnClick = Remover1Click
    end
  end
  object CdsPercentes: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 328
    Top = 257
    object CdsPercentesNivel: TIntegerField
      FieldName = 'Nivel'
    end
    object CdsPercentessoma: TFloatField
      FieldName = 'soma'
    end
    object CdsPercentesReferente: TStringField
      FieldName = 'Referente'
      Size = 50
    end
    object CdsPercentesIndiceReal: TFloatField
      FieldName = 'IndiceReal'
    end
  end
  object CdsClone: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'Nivel'
    Params = <>
    Left = 328
    Top = 321
    object CdsCloneNivel: TStringField
      FieldName = 'Nivel'
      Size = 15
    end
    object CdsCloneindice: TFloatField
      FieldName = 'indice'
    end
    object CdsCloneReduzido: TStringField
      FieldName = 'Reduzido'
      Size = 3
    end
    object CdsCloneIndiceReal: TFloatField
      FieldName = 'IndiceReal'
    end
    object CdsCloneCentroCusto: TStringField
      FieldName = 'CentroCusto'
      Size = 40
    end
    object CdsCloneValor: TFloatField
      FieldName = 'Valor'
    end
  end
  object qAux: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DBInicio.MainDB
    Left = 448
    Top = 293
  end
  object qAux2: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DBInicio.MainDB
    Left = 504
    Top = 293
  end
end
