inherited frmMonitorOperacoes: TfrmMonitorOperacoes
  Caption = 'Monitoramento das opera'#231#245'es de produ'#231#227'o'
  ClientHeight = 557
  ClientWidth = 1572
  ExplicitWidth = 1588
  ExplicitHeight = 595
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter [0]
    Left = 0
    Top = 297
    Width = 1572
    Height = 3
    Cursor = crVSplit
    Align = alTop
    ExplicitTop = 337
    ExplicitWidth = 68
  end
  object pFiltro: TPanel [1]
    Left = 0
    Top = 0
    Width = 1572
    Height = 97
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 11
      Top = 13
      Width = 47
      Height = 13
      Caption = 'Opera'#231#227'o'
    end
    object Label2: TLabel
      Left = 11
      Top = 40
      Width = 38
      Height = 13
      Caption = 'Produto'
    end
    object OP: TLabel
      Left = 11
      Top = 65
      Width = 14
      Height = 13
      Caption = 'OP'
    end
    object EdOperacaoCodigo: TEdit
      Left = 64
      Top = 10
      Width = 52
      Height = 21
      TabOrder = 0
      OnExit = EdOperacaoCodigoExit
      OnKeyDown = EdOperacaoCodigoKeyDown
    end
    object edOperacao: TSgDbSearchCombo
      Left = 117
      Top = 10
      Width = 236
      Height = 21
      TabOrder = 1
      CharCase = ecUpperCase
      LookupSelect = 'ope_codigo,ope_descricao'
      LookupOrderBy = 'ope_descricao'
      LookupTable = 'OPERACOES'
      LookupDispl = 'OPE_DESCRICAO'
      OnSelect = edOperacaoSelect
      GridAutoSize = False
      LookupSource = qOperacoes
      LookupKeyField = 'ope_codigo'
      FiltroTabela = 'ope_descricao is not null'
      ShowButton = True
      AutoF8WinTitulo = 'Opera'#231#245'es'
      AutoF8ColumnsTitulo = 'C'#243'digo, Nome'
      GridLeft = 0
      GridWidth = 0
      GridHeight = 100
      GridShowWhenEnter = False
      SelectWithDoubleClick = False
    end
    object BtnSair: TBitBtn
      Left = 704
      Top = 66
      Width = 100
      Height = 25
      Hint = 'Sair'
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = BtnSairClick
    end
    object Edt_Nome: TEdit
      Left = 64
      Top = 59
      Width = 105
      Height = 21
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnExit = Edt_NomeExit
    end
    object BitBtn1: TBitBtn
      Left = 175
      Top = 59
      Width = 75
      Height = 24
      Caption = 'Filtrar'
      TabOrder = 4
      OnClick = BitBtn1Click
    end
    object Gentrega: TGroupBox
      Left = 400
      Top = 4
      Width = 142
      Height = 87
      Caption = 'Data entrega'
      TabOrder = 5
      object ldataInicial: TLabel
        Left = 13
        Top = 18
        Width = 30
        Height = 13
        Caption = 'Inicial:'
        FocusControl = RxDataInicial
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lDataFinal: TLabel
        Left = 14
        Top = 42
        Width = 25
        Height = 13
        Caption = 'Final:'
        FocusControl = RxDataFinal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object RxDataInicial: TDateEdit
        Left = 49
        Top = 15
        Width = 90
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        GlyphKind = gkEllipsis
        ButtonWidth = 16
        NumGlyphs = 1
        ParentFont = False
        YearDigits = dyFour
        TabOrder = 0
      end
      object RxDataFinal: TDateEdit
        Left = 50
        Top = 38
        Width = 89
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        GlyphKind = gkEllipsis
        ButtonWidth = 16
        NumGlyphs = 1
        ParentFont = False
        YearDigits = dyFour
        TabOrder = 1
      end
      object btnLimpar: TBitBtn
        Left = 27
        Top = 60
        Width = 75
        Height = 24
        Caption = 'Limpar'
        TabOrder = 2
        OnClick = btnLimparClick
      end
    end
    object gConclusao: TGroupBox
      Left = 548
      Top = 4
      Width = 142
      Height = 87
      Caption = 'Data conclus'#227'o'
      TabOrder = 6
      object Label4: TLabel
        Left = 13
        Top = 18
        Width = 30
        Height = 13
        Caption = 'Inicial:'
        FocusControl = RxDataIniConclusao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 14
        Top = 42
        Width = 25
        Height = 13
        Caption = 'Final:'
        FocusControl = RxDataFinConclusao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object RxDataIniConclusao: TDateEdit
        Left = 49
        Top = 15
        Width = 90
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        GlyphKind = gkEllipsis
        ButtonWidth = 16
        NumGlyphs = 1
        ParentFont = False
        YearDigits = dyFour
        TabOrder = 0
      end
      object RxDataFinConclusao: TDateEdit
        Left = 50
        Top = 38
        Width = 89
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        GlyphKind = gkEllipsis
        ButtonWidth = 16
        NumGlyphs = 1
        ParentFont = False
        YearDigits = dyFour
        TabOrder = 1
      end
      object btnLimparConclusao: TBitBtn
        Left = 27
        Top = 60
        Width = 75
        Height = 24
        Caption = 'Limpar'
        TabOrder = 2
        OnClick = btnLimparConclusaoClick
      end
    end
    object btnPesquisar: TBitBtn
      Left = 704
      Top = 4
      Width = 100
      Height = 25
      Hint = 'Pesquisar'
      Caption = '&Pesquisar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      OnClick = btnPesquisarClick
    end
    object btnLimparTudo: TBitBtn
      Left = 704
      Top = 35
      Width = 100
      Height = 25
      Caption = 'Limpar filtros'
      TabOrder = 8
      OnClick = btnLimparTudoClick
    end
    object cbReferencia: TSgDbSearchCombo
      Left = 117
      Top = 34
      Width = 236
      Height = 21
      TabOrder = 9
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
    object edProdutoCodigo: TEdit
      Left = 64
      Top = 34
      Width = 52
      Height = 21
      CharCase = ecUpperCase
      Color = clWhite
      TabOrder = 10
      OnExit = edProdutoCodigoExit
      OnKeyDown = edProdutoCodigoKeyDown
    end
  end
  object dbgEngenharia: TDBGrid [2]
    Left = 0
    Top = 97
    Width = 1572
    Height = 200
    Align = alTop
    DataSource = dsEngenharia
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = dbgEngenhariaDblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'OP'
        Title.Caption = 'OP'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRD_REFER'
        Title.Caption = 'Refer'
        Width = 87
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRD_DESCRI'
        Width = 192
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sequencia'
        Title.Caption = 'Sequ'#234'ncia'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OPE_DESCRICAO'
        Title.Caption = 'Opera'#231#227'o'
        Width = 183
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA_INCIO'
        Title.Caption = 'In'#237'cio'
        Width = 117
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OSV_DTENTREGA'
        Width = 69
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Restantes'
        Title.Caption = 'Dias entrega'
        Width = 76
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OSV_QTDE'
        Title.Caption = 'Qtde Produzir'
        Width = 82
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FAB_PRODUZINDO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FAB_PRODUZIDA'
        Title.Caption = 'Concluida'
        Width = 58
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FAB_REFUGADA'
        Width = 56
        Visible = True
      end>
  end
  object pOcorrencias: TPanel [3]
    Left = 0
    Top = 300
    Width = 1572
    Height = 257
    Align = alClient
    TabOrder = 2
    object Label3: TLabel
      Left = 10
      Top = 5
      Width = 68
      Height = 16
      Caption = 'Ocorr'#234'ncias'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object dbgOcorrencias: TDBGrid
      Left = 1
      Top = 24
      Width = 1570
      Height = 232
      Align = alBottom
      DataSource = dsOcorrencia
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'OSV_CODIGO'
          Title.Caption = 'OP'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OCO_DESCRICAO'
          Title.Caption = 'Ocorr'#234'ncia'
          Width = 138
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OCE_MOTIVO'
          Title.Caption = 'Motivo'
          Width = 103
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COL_NOME'
          Title.Caption = 'Registrado por'
          Width = 148
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OCE_DATAOCORRENCIA'
          Title.Caption = 'Ocorrido em'
          Width = 78
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OCE_DATAPREVISAO'
          Title.Caption = 'Previs'#227'o'
          Width = 109
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OCE_DATAFIM'
          Title.Caption = 'Resolvido em'
          Width = 119
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'oce_comentario'
          Title.Caption = 'Coment'#225'rios resolu'#231#227'o'
          Width = 158
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TIPO'
          Title.Caption = 'Tipo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Apontamento_COL'
          Title.Caption = 'Apontado por'
          Width = 154
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EQP_DESCRICAO'
          Title.Caption = 'Equipamento'
          Width = 156
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OPE_DESCRICAO'
          Title.Caption = 'Opera'#231#227'o'
          Width = 130
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRD_DESCRI'
          Title.Caption = 'Produto'
          Visible = True
        end>
    end
    object chkResolvidas: TCheckBox
      Left = 160
      Top = 5
      Width = 177
      Height = 17
      Caption = 'Somente ocorr'#234'ncias resolvidas'
      TabOrder = 1
      OnClick = chkResolvidasClick
    end
  end
  object Bit_Imprimir: TBitBtn [4]
    Left = 834
    Top = 8
    Width = 100
    Height = 25
    Caption = '&Imprimir Folha'
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
      0003377777777777777308888888888888807F33333333333337088888888888
      88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
      8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
      8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
      03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
      03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
      33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
      33333337FFFF7733333333300000033333333337777773333333}
    NumGlyphs = 2
    TabOrder = 3
    TabStop = False
    OnClick = Bit_ImprimirClick
  end
  inherited coCalcula: TACBrCalculadora
    Left = 1016
    Top = 40
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 1104
    Top = 48
  end
  inherited DBConn: TSQLConnection
    Left = 24
    Top = 153
  end
  inherited qAux: TSQLQuery
    Left = 434
    Top = 141
  end
  inherited qAux2: TSQLQuery
    Left = 434
    Top = 156
  end
  inherited qAux3: TSQLQuery
    Left = 482
    Top = 156
  end
  object dsEngenharia: TDataSource
    DataSet = cdsEngenharia
    Left = 32
    Top = 224
  end
  object dspEngenharia: TDataSetProvider
    DataSet = qEngenharia
    Left = 80
    Top = 167
  end
  object cdsEngenharia: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEngenharia'
    OnFilterRecord = cdsEngenhariaFilterRecord
    Left = 127
    Top = 199
    object cdsEngenhariaOSV_CODIGO: TStringField
      DisplayLabel = 'OSV'
      FieldName = 'OP'
      Size = 12
    end
    object cdsEngenhariaOPE_DESCRICAO: TStringField
      FieldName = 'OPE_DESCRICAO'
      Size = 60
    end
    object cdsEngenhariaPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
    end
    object cdsEngenhariaPRD_DESCRI: TStringField
      DisplayLabel = 'Produto'
      FieldName = 'PRD_DESCRI'
      Size = 100
    end
    object cdsEngenhariaOSV_EMISSAO: TSQLTimeStampField
      FieldName = 'DATA_INCIO'
      DisplayFormat = 'dd/mm/yyyy hh:nn'
    end
    object cdsEngenhariaOSV_DTENTREGA: TSQLTimeStampField
      DisplayLabel = 'Entrega'
      FieldName = 'OSV_DTENTREGA'
    end
    object cdsEngenhariaOSV_QTDE: TFMTBCDField
      DisplayLabel = 'Solicitada'
      FieldName = 'OSV_QTDE'
      Size = 18
    end
    object cdsEngenhariaFAB_PRODUZINDO: TFMTBCDField
      DisplayLabel = 'Produzindo'
      FieldName = 'FAB_PRODUZINDO'
      Size = 18
    end
    object cdsEngenhariaFAB_REFUGADA: TFMTBCDField
      DisplayLabel = 'Refugada'
      FieldName = 'FAB_REFUGADA'
      Size = 18
    end
    object cdsEngenhariaFAB_PRODUZIDA: TFMTBCDField
      DisplayLabel = 'Produzida'
      FieldName = 'FAB_PRODUZIDA'
      Size = 18
    end
    object cdsEngenhariaDATA_CONCLUSAO: TSQLTimeStampField
      FieldName = 'DATA_CONCLUSAO'
    end
    object cdsEngenhariaOSV_CONCLUSAO: TSQLTimeStampField
      FieldName = 'OSV_CONCLUSAO'
    end
    object cdsEngenhariaRestantes: TLargeintField
      DisplayLabel = 'Restantes (dias)'
      FieldName = 'Restantes'
    end
    object cdsEngenhariaFAB_CODIGO: TIntegerField
      FieldName = 'FAB_CODIGO'
    end
    object cdsEngenhariaOPE_CODIGO: TIntegerField
      FieldName = 'OPE_CODIGO'
    end
    object cdsEngenhariasequencia: TIntegerField
      FieldName = 'sequencia'
    end
  end
  object qEngenharia: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'SELECT OS.OSV_CODIGO AS OP,OP.OPE_DESCRICAO, P1.PRD_REFER, P1.PR' +
        'D_DESCRI,  FB.DATA_INCIO ,  OS.OSV_DTENTREGA, OS. OSV_QTDE, FAB_' +
        'PRODUZINDO, '
      
        ' FAB_REFUGADA, FAB_PRODUZIDA, OS.OSV_CONCLUSAO, FB.DATA_CONCLUSA' +
        'O, DATEDIFF(DAY,CURRENT_DATE, OS.OSV_DTENTREGA) RESTANTES , FB.F' +
        'AB_CODIGO ,  OP.OPE_CODIGO '
      ' FROM FABRICACAO fb                                        '
      '  INNER JOIN PRD0000 P1 ON (P1.PRD_CODIGO = fb.PRD_CODIGO) '
      '  INNER JOIN OSV0001 OS ON (OS.OSV_CODIGO = FB.OSV_CODIGO)'
      '  INNER JOIN OPERACOES OP ON (FB.OPE_CODIGO = OP.OPE_CODIGO)'
      '')
    SQLConnection = DBConn
    Left = 74
    Top = 229
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
    Left = 23
    Top = 116
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
  object qOperacoes: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select ope_codigo, ope_descricao')
    SQLConnection = DBConn
    Left = 8
    Top = 65532
  end
  object qOcorrencia: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      ' SELECT OE.OCE_CODIGO, CASE oc.OCO_TIPO'
      '                       WHEN 1 THEN '#39'INFORMATIVA'#39
      '                       WHEN 2 THEN '#39'CRITICA'#39' '
      
        '                       END AS TIPO ,  OCE_ESTORNO, OCE_MOTIVO, O' +
        'CE_DATAOCORRENCIA, '
      
        ' OCE_DATAPREVISAO, OCE_DATAFIM, OCO_DESCRICAO, COL.COL_NOME, OCE' +
        '_COMENTARIO, APF.APF_INICIADA, APF.APF_REFUGADO, APF.APF_FINALIZ' +
        'ADAS, CAP.COL_NOME, EQ.EQP_DESCRICAO                            ' +
        '  '
      
        ' FROM OCORRENCIA_EVENTO OE                                      ' +
        '                                                 '
      ' INNER JOIN OCORRENCIA OC ON (OC.OCO_CODIGO = OE.OCO_CODIGO)'
      ' INNER JOIN FABRICACAO FB ON (FB.FAB_CODIGO = OE.FAB_CODIGO)'
      ' INNER JOIN OPERACOES OPE ON (FB.OPE_CODIGO = OPE.OPE_CODIGO)'
      ' LEFT JOIN COLABORADOR COL ON (COL.COL_CODIGO = OE.COL_CODIGO)'
      
        ' LEFT JOIN APONTAMENTO_FAB APF ON (APF.APF_CODIGO = OE.APF_CODIG' +
        'O)'
      ' LEFT JOIN COLABORADOR CAP ON (CAP.COL_CODIGO = APF.COL_CODIGO)'
      ' LEFT JOIN EQUIPAMENTO EQ ON (EQ.EQP_CODIGO = APF.EQP_CODIGO)'
      ' ')
    SQLConnection = DBConn
    Left = 166
    Top = 385
  end
  object dspOcorrencia: TDataSetProvider
    DataSet = qOcorrencia
    Left = 30
    Top = 433
  end
  object dsOcorrencia: TDataSource
    DataSet = cdsOcorrencia
    Left = 54
    Top = 377
  end
  object cdsOcorrencia: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspOcorrencia'
    OnFilterRecord = cdsOcorrenciaFilterRecord
    Left = 110
    Top = 385
    object cdsOcorrenciaOCE_CODIGO: TIntegerField
      FieldName = 'OCE_CODIGO'
    end
    object cdsOcorrenciaOCO_DESCRICAO: TStringField
      FieldName = 'OCO_DESCRICAO'
      Size = 60
    end
    object cdsOcorrenciaTIPO: TStringField
      FieldName = 'TIPO'
    end
    object cdsOcorrenciaRegistrado_COL: TStringField
      FieldName = 'Registrado_COL'
      Size = 40
    end
    object cdsOcorrenciaOCE_MOTIVO: TStringField
      FieldName = 'OCE_MOTIVO'
      Size = 60
    end
    object cdsOcorrenciaOCE_DATAOCORRENCIA: TSQLTimeStampField
      FieldName = 'OCE_DATAOCORRENCIA'
      DisplayFormat = 'dd/mm/yyyy hh:nn'
    end
    object cdsOcorrenciaOCE_DATAPREVISAO: TSQLTimeStampField
      FieldName = 'OCE_DATAPREVISAO'
      DisplayFormat = 'dd/mm/yyyy hh:nn'
    end
    object cdsOcorrenciaOCE_DATAFIM: TSQLTimeStampField
      FieldName = 'OCE_DATAFIM'
      DisplayFormat = 'dd/mm/yyyy hh:nn'
    end
    object cdsOcorrenciaAPF_INICIADA: TFMTBCDField
      DisplayLabel = 'Fabricando'
      FieldName = 'APF_INICIADA'
      DisplayFormat = '###,###,##0.00'
      Precision = 15
      Size = 4
    end
    object cdsOcorrenciaAPF_FINALIZADAS: TFMTBCDField
      FieldName = 'APF_FINALIZADAS'
      DisplayFormat = '###,###,##0.00'
      Precision = 15
      Size = 4
    end
    object cdsOcorrenciaAPF_REFUGADO: TFMTBCDField
      FieldName = 'APF_REFUGADO'
      DisplayFormat = '###,###,##0.00'
      Precision = 15
      Size = 4
    end
    object cdsOcorrenciaoce_comentario: TStringField
      FieldName = 'oce_comentario'
      Size = 100
    end
    object cdsOcorrenciaApontamento_COL: TStringField
      FieldName = 'Apontamento_COL'
      Size = 40
    end
    object cdsOcorrenciaEQP_DESCRICAO: TStringField
      FieldName = 'EQP_DESCRICAO'
      Size = 60
    end
    object cdsOcorrenciaOSV_CODIGO: TStringField
      FieldName = 'OSV_CODIGO'
      Size = 12
    end
    object cdsOcorrenciaOPE_CODIGO: TIntegerField
      FieldName = 'OPE_CODIGO'
    end
    object cdsOcorrenciaOPE_DESCRICAO: TStringField
      FieldName = 'OPE_DESCRICAO'
      Size = 100
    end
    object cdsOcorrenciaPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
    end
    object cdsOcorrenciaPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 100
    end
  end
  object pipCabecalho: TppDBPipeline
    DataSource = dsCabecalho
    CloseDataSource = True
    UserName = 'pipCabecalho'
    Left = 1072
    Top = 152
    object pipCabecalhoppField1: TppField
      FieldAlias = 'OP'
      FieldName = 'OP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object pipCabecalhoppField2: TppField
      FieldAlias = 'OPE_DESCRICAO'
      FieldName = 'OPE_DESCRICAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object pipCabecalhoppField3: TppField
      FieldAlias = 'PRD_REFER'
      FieldName = 'PRD_REFER'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object pipCabecalhoppField4: TppField
      FieldAlias = 'PRD_DESCRI'
      FieldName = 'PRD_DESCRI'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object pipCabecalhoppField5: TppField
      FieldAlias = 'DATA_INCIO'
      FieldName = 'DATA_INCIO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object pipCabecalhoppField6: TppField
      FieldAlias = 'OSV_DTENTREGA'
      FieldName = 'OSV_DTENTREGA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object pipCabecalhoppField7: TppField
      FieldAlias = 'OSV_QTDE'
      FieldName = 'OSV_QTDE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object pipCabecalhoppField8: TppField
      FieldAlias = 'sequencia'
      FieldName = 'sequencia'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object pipCabecalhoppField9: TppField
      FieldAlias = 'OPE_CODIGO'
      FieldName = 'OPE_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object pipCabecalhoppField10: TppField
      FieldAlias = 'FAB_CODIGO'
      FieldName = 'FAB_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object pipCabecalhoppField11: TppField
      FieldAlias = 'EQP_DESCRICAO'
      FieldName = 'EQP_DESCRICAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object pipCabecalhoppField12: TppField
      FieldAlias = 'ESP_ESBOCO'
      FieldName = 'ESP_ESBOCO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
  end
  object pRFolhaProcesso: TppReport
    AutoStop = False
    DataPipeline = pipCabecalho
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210000
    PrinterSetup.mmPaperWidth = 297000
    PrinterSetup.PaperSize = 9
    Units = utMillimeters
    AllowPrintToFile = True
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    CachePages = True
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = False
    ThumbnailSettings.DeadSpace = 30
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PreviewFormSettings.WindowState = wsMaximized
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 704
    Top = 400
    Version = '16.02'
    mmColumnWidth = 0
    DataPipelineName = 'pipCabecalho'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 47890
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        DataField = 'OP'
        DataPipeline = pipCabecalho
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pipCabecalho'
        mmHeight = 8018
        mmLeft = 257705
        mmTop = 0
        mmWidth = 26635
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Caption = 'Ordem de Prod.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 8018
        mmLeft = 226487
        mmTop = 0
        mmWidth = 31478
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Caption = 'Quantidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 8546
        mmLeft = 226484
        mmTop = 7770
        mmWidth = 31482
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        DataField = 'OSV_QTDE'
        DataPipeline = pipCabecalho
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pipCabecalho'
        mmHeight = 8546
        mmLeft = 257705
        mmTop = 7845
        mmWidth = 26635
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        DataField = 'DATA_INCIO'
        DataPipeline = pipCabecalho
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pipCabecalho'
        mmHeight = 10658
        mmLeft = 257701
        mmTop = 15964
        mmWidth = 26550
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Caption = 'Data in'#237'cio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 10658
        mmLeft = 234949
        mmTop = 15964
        mmWidth = 22929
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Caption = 'FOLHA DE PROCESSO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 16212
        mmLeft = 43039
        mmTop = 0
        mmWidth = 162102
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Caption = 'Seq'#252#234'ncia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 7852
        mmLeft = 205052
        mmTop = 0
        mmWidth = 21699
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        DataField = 'sequencia'
        DataPipeline = pipCabecalho
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pipCabecalho'
        mmHeight = 8380
        mmLeft = 204995
        mmTop = 7744
        mmWidth = 21756
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Caption = 'N'#250'mero da pe'#231'a:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        VerticalAlignment = avCenter
        mmHeight = 10583
        mmLeft = 0
        mmTop = 15964
        mmWidth = 17815
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        DataField = 'PRD_REFER'
        DataPipeline = pipCabecalho
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pipCabecalho'
        mmHeight = 10583
        mmLeft = 17640
        mmTop = 15964
        mmWidth = 34568
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        DataField = 'PRD_DESCRI'
        DataPipeline = pipCabecalho
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pipCabecalho'
        mmHeight = 10583
        mmLeft = 66146
        mmTop = 15964
        mmWidth = 60502
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Caption = 'Pe'#231'a:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 10583
        mmLeft = 52035
        mmTop = 15964
        mmWidth = 14288
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Caption = 'M'#225'quina:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 10583
        mmLeft = 126471
        mmTop = 15964
        mmWidth = 27872
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        DataField = 'EQP_DESCRICAO'
        DataPipeline = pipCabecalho
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pipCabecalho'
        mmHeight = 10583
        mmLeft = 154079
        mmTop = 15964
        mmWidth = 32277
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label9'
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Caption = 'Opera'#231#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 10583
        mmLeft = 186267
        mmTop = 15964
        mmWidth = 20638
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText8'
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        DataField = 'OPE_DESCRICAO'
        DataPipeline = pipCabecalho
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pipCabecalho'
        mmHeight = 10583
        mmLeft = 206816
        mmTop = 15964
        mmWidth = 28399
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText10'
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Color = clSilver
        DataField = 'ESP_NOME'
        DataPipeline = pipParamEsp
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        WordWrap = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pipParamEsp'
        mmHeight = 7144
        mmLeft = 44186
        mmTop = 40743
        mmWidth = 34131
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText11: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText101'
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Color = clSilver
        DataField = 'ESP_PADROES'
        DataPipeline = pipParamEsp
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        WordWrap = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pipParamEsp'
        mmHeight = 7313
        mmLeft = 78228
        mmTop = 40753
        mmWidth = 43921
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText13: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText13'
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Color = clSilver
        DataField = 'ESP_COL2'
        DataPipeline = pipParamEsp
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        WordWrap = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pipParamEsp'
        mmHeight = 7313
        mmLeft = 165365
        mmTop = 40753
        mmWidth = 25576
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText14: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText14'
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Color = clSilver
        DataField = 'ESP_COL1'
        DataPipeline = pipParamEsp
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        WordWrap = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pipParamEsp'
        mmHeight = 7313
        mmLeft = 121935
        mmTop = 40753
        mmWidth = 43921
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel20: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label20'
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Caption = 'Obj/ hora                50'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        VerticalAlignment = avCenter
        mmHeight = 6174
        mmLeft = 168899
        mmTop = 26458
        mmWidth = 22048
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel21: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label21'
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Caption = 'Opera'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 6258
        mmLeft = 6615
        mmTop = 26458
        mmWidth = 24342
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel22: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label22'
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Caption = 'Conforme PI 014 - Libera'#231#227'o de m'#225'quina'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 4055
        mmLeft = 37488
        mmTop = 32368
        mmWidth = 153459
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel23: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label23'
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Caption = 'Qualidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 6174
        mmLeft = 85020
        mmTop = 26458
        mmWidth = 48419
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel24: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label24'
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Caption = 'Esbo'#231'o/Fotos/etc.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 6258
        mmLeft = 190853
        mmTop = 26458
        mmWidth = 93486
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel25: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label25'
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Caption = 'No.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 6258
        mmLeft = 0
        mmTop = 26458
        mmWidth = 6879
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel26: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label201'
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Caption = 'Dica'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 6174
        mmLeft = 133263
        mmTop = 26458
        mmWidth = 35719
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel27: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label27'
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Caption = '1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 8656
        mmLeft = 0
        mmTop = 32367
        mmWidth = 6879
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel28: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label28'
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Caption = 'Lib. processo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 8656
        mmLeft = 6615
        mmTop = 32367
        mmWidth = 24342
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel29: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label29'
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 8462
        mmLeft = 30956
        mmTop = 32544
        mmWidth = 6879
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel30: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label30'
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Caption = 'Usar EPI : Protetor auricular, sapato e '#243'culos de seguran'#231'a.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 4583
        mmLeft = 37576
        mmTop = 36244
        mmWidth = 153459
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel31: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label31'
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Caption = 'Seguran'#231'a'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 6174
        mmLeft = 30956
        mmTop = 26458
        mmWidth = 54328
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel33: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label33'
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Caption = 'Item'
        Color = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 7144
        mmLeft = 37571
        mmTop = 40743
        mmWidth = 6879
        BandType = 0
        LayerName = Foreground
      end
      object ppImage2: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'Image2'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        Stretch = True
        Picture.Data = {
          0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000059
          000000570802000000E0637E88000000017352474200AECE1CE9000000046741
          4D410000B18F0BFC6105000000097048597300000EBC00000EBC0195BC724900
          00010249444154785EEDD2414EC4301000417ECED3430E13B516A25D2E1B4C54
          75F42896A7958F8DC3A52D3E1FCDE932AE6B31011ECD6C0D5A448BFC718BDD8C
          17A045B48816D1225A448B68112DA245B48816D1225A448B68112DA245B48816
          D1225A448B68112DA245B48816D1225A448B3C6B318FFDB7668D5F3B6F3197DD
          C56CF5CA498BB9E05E66B7A7B4C8F716F3E9EDCC7A4FF92FA2454E5AECE682BB
          98AD5E396FF10EF3AE1F66BC002DA245B48816D1225A448B68112DA245B48816
          D1225A448B68112DA245B48816D1225A448B68112DA245B48816D1225A448B5C
          D76237DB3F9AD902B4C8A52D7613E030A76BB8BAC5CAB48816D1225A448B6811
          2D0EDBF605F0E3EAA1E56FAF9C0000000049454E44AE426082}
        mmHeight = 4498
        mmLeft = 31750
        mmTop = 27252
        mmWidth = 5027
        BandType = 0
        LayerName = Foreground
      end
      object ppImage1: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'Image1'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        Stretch = True
        Picture.Data = {
          0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000059
          000000570802000000E0637E88000000017352474200AECE1CE9000000046741
          4D410000B18F0BFC6105000000097048597300000EBC00000EBC0195BC724900
          00010249444154785EEDD2414EC4301000417ECED3430E13B516A25D2E1B4C54
          75F42896A7958F8DC3A52D3E1FCDE932AE6B31011ECD6C0D5A448BFC718BDD8C
          17A045B48816D1225A448B68112DA245B48816D1225A448B68112DA245B48816
          D1225A448B68112DA245B48816D1225A448B3C6B318FFDB7668D5F3B6F3197DD
          C56CF5CA498BB9E05E66B7A7B4C8F716F3E9EDCC7A4FF92FA2454E5AECE682BB
          98AD5E396FF10EF3AE1F66BC002DA245B48816D1225A448B68112DA245B48816
          D1225A448B68112DA245B48816D1225A448B68112DA245B48816D1225A448B5C
          D76237DB3F9AD902B4C8A52D7613E030A76BB8BAC5CAB48816D1225A448B6811
          2D0EDBF605F0E3EAA1E56FAF9C0000000049454E44AE426082}
        mmHeight = 4498
        mmLeft = 31750
        mmTop = 33602
        mmWidth = 5027
        BandType = 0
        LayerName = Foreground
      end
      object ppImage3: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'Image3'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        Stretch = True
        Picture.Data = {
          0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000059
          000000570802000000E0637E88000000017352474200AECE1CE9000000046741
          4D410000B18F0BFC6105000000097048597300000EBC00000EBC0195BC724900
          00021649444154785EEDD0596A03410C45D1EC3C4B7704B9460193EE1A3454C3
          3BBF7697A4FBF59237B5706AE1D4C2A985530BA7164E2D5C758BEF0FFC7080D2
          165CFF819FBBD5B5E0EE7FF0A756452DB8F8127FED53D1825B07F04193F4165C
          398CCF3AE4B6E0BE497C5C2EB105972DE1895A592DB869030F154A69C135DB78
          AE4A7C0BEE08C2A325825B7041289ECE17D982DD13302059580BB64EC3984C31
          2DD83719C3D204B460D3128CCCB1DB821D0B3138C1560BB62BC7F868EB2DD8AB
          094B845A6CC146AD5825CE4A0B7639000B05996EC116C760AD08732D987F1EF6
          DB33D182B1A762CB0D432D98763CD65D75DF82390FC1D24B6E5A30E151587DDE
          550BDE7E200E98A4164E2D9C5A38B5706AE1AE5A18DE7E14569F77D3C230E121
          587AC97D0BC39CE3B1EEAAA11686690763D10DA32D0C338FC48A7B265AFC62F8
          49D86CDB740BC30A6760A7082B2D0C8BB46295388B2D0C1B35618950EB2D0C7B
          95637CB4AD1686ED0A3138C16E0BC38E25189923A08561D3640C4B13D3C2B06F
          1AC6640A6B61D83A01039245B630EC1E8AA7F305B7305C1084474BC4B730DCB1
          8DE7AAA4B4305CB381870A65B530DCB484276A25B6305C36898FCBE5B630DC37
          8CCF3AA4B7305C39800F9A54B430DC7A89BFF6296A61B8F81FFCA9555D0BC3DD
          1FF8B95B690BC3F57FF0C301AA5B9C4C2D9C5A38B5706AE1D4C2A985530BA716
          4E2D9C5A38B5706AE1D4C2A985530BA7164E2D9C5ABCBD5E3F353FFAC74B047A
          8B0000000049454E44AE426082}
        mmHeight = 5027
        mmLeft = 88371
        mmTop = 27252
        mmWidth = 5821
        BandType = 0
        LayerName = Foreground
      end
      object ppImage4: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'Image4'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        Stretch = True
        Picture.Data = {
          0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000059
          000000570802000000E0637E88000000017352474200AECE1CE9000000046741
          4D410000B18F0BFC6105000000097048597300000EBC00000EBC0195BC724900
          0001A549444154785EEDD051B283201005D1B7F3B77443959DDC8A25020246F0
          9E6F1D66FA6FB137B710B710B710B710B710B710B710B710B710B710B710B710
          B710B710B710B710B790BE2DFEEB30E52A8D5B70441FBCD14D9B162C7B155E6D
          ADAA05ABFD0E7B3472B205BBDC033B552B6EC1FBF7C37E150A5AF0E6BDB1EB29
          B92D786A046C5C2EDD821746C3F625122D183C266EC876D4829123E3923CD116
          0C1B1FF764D86FC198597055CA4E0B06CC85DB0E3DA545C07971DB16FC37232E
          8CFB6AC14FF3E2CE08B79067B50838758F5AF0EDECB8768F5B885B885B885B88
          5B885B885B885B885B885B885A047C3E2FEE8C700BF96A11F0D38CB8306EDB22
          E0D7E9705EDC535A70DBA19D16010366C15529FB2D02C68C8F7B32445B040C1B
          1997E4396A1130724CDC902DD12260F068D8BE44BAC58A1746C0C6E5725B043C
          756FEC7A4A418B156FDE0FFB55286EB1E2FD7B60A76A275BACD8E577D8A391AA
          161FAC76155E6DAD4D8B0F96ED8337BA69DC628323CE62CA55FAB6188B5B885B
          885B885B885B885B885B885B885B885B885B885B885B885B885B885B885B885B
          885B885BBC2DCB0B0174E2FC4BF3539C0000000049454E44AE426082}
        mmHeight = 5027
        mmLeft = 135202
        mmTop = 27252
        mmWidth = 5292
        BandType = 0
        LayerName = Foreground
      end
      object ppDBImage1: TppDBImage
        DesignLayer = ppDesignLayer1
        UserName = 'DBImage1'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        Stretch = True
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        DataField = 'EMP_LOGO'
        DataPipeline = pipParamEsp
        GraphicType = 'AutoDetect'
        ParentDataPipeline = False
        DataPipelineName = 'pipParamEsp'
        mmHeight = 16226
        mmLeft = 0
        mmTop = 0
        mmWidth = 43039
        BandType = 0
        LayerName = Foreground
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.BorderPositions = [bpLeft, bpTop]
        Border.Visible = True
        Position = lpLeft
        Weight = 0.500000000000000000
        mmHeight = 7144
        mmLeft = 7
        mmTop = 40744
        mmWidth = 5292
        BandType = 0
        LayerName = Foreground
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Border.BorderPositions = [bpLeft, bpTop]
        Border.Visible = True
        Position = lpLeft
        Weight = 0.500000000000000000
        mmHeight = 7144
        mmLeft = 6615
        mmTop = 40744
        mmWidth = 5292
        BandType = 0
        LayerName = Foreground
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line3'
        Border.BorderPositions = [bpLeft, bpTop]
        Border.Visible = True
        Position = lpLeft
        Weight = 0.500000000000000000
        mmHeight = 7144
        mmLeft = 30800
        mmTop = 40743
        mmWidth = 5292
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText17: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText9'
        DataField = 'OPE_CODIGO'
        DataPipeline = pipCabecalho
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        Visible = False
        DataPipelineName = 'pipCabecalho'
        mmHeight = 4498
        mmLeft = 226219
        mmTop = 37571
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      BeforePrint = ppDetailBand1BeforePrint
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 64294
      mmPrintPosition = 0
      object ppSubReport1: TppSubReport
        DesignLayer = ppDesignLayer1
        UserName = 'sublinhasBrancas'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ParentWidth = False
        ShiftRelativeTo = subparametros
        TraverseAllData = False
        DataPipelineName = 'pipParamOp'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 5027
        mmWidth = 191030
        BandType = 4
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = pipParamOp
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.Orientation = poLandscape
          PrinterSetup.PaperName = 'A4'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = False
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 210000
          PrinterSetup.mmPaperWidth = 297000
          PrinterSetup.PaperSize = 9
          Version = '16.02'
          mmColumnWidth = 0
          DataPipelineName = 'pipParamOp'
          object ppTitleBand1: TppTitleBand
            Visible = False
            Background.Brush.Style = bsClear
            mmBottomOffset = 0
            mmHeight = 33338
            mmPrintPosition = 0
            object ppLabel10: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'lempresa1'
              AutoSize = False
              Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
              Border.Visible = True
              Caption = 'registro dimensional (anotar 1 a cada 100 pe'#231'as)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              FormField = False
              TextAlignment = taCentered
              Transparent = True
              WordWrap = True
              VerticalAlignment = avCenter
              mmHeight = 9172
              mmLeft = 7673
              mmTop = 0
              mmWidth = 21696
              BandType = 1
              LayerName = Foreground1
            end
            object ppLine10: TppLine
              DesignLayer = ppDesignLayer2
              UserName = 'Line10'
              Border.BorderPositions = [bpLeft, bpTop]
              Border.Visible = True
              Position = lpLeft
              Weight = 0.500000000000000000
              mmHeight = 7143
              mmLeft = 0
              mmTop = 4498
              mmWidth = 5292
              BandType = 1
              LayerName = Foreground1
            end
            object ppLine11: TppLine
              DesignLayer = ppDesignLayer2
              UserName = 'Line11'
              Border.BorderPositions = [bpLeft, bpTop]
              Border.Visible = True
              Position = lpLeft
              Weight = 0.500000000000000000
              mmHeight = 7143
              mmLeft = 6615
              mmTop = 4498
              mmWidth = 5292
              BandType = 1
              LayerName = Foreground1
            end
            object ppLine12: TppLine
              DesignLayer = ppDesignLayer2
              UserName = 'Line12'
              Border.BorderPositions = [bpLeft, bpTop]
              Border.Visible = True
              Position = lpLeft
              Weight = 0.500000000000000000
              mmHeight = 7143
              mmLeft = 30692
              mmTop = 4498
              mmWidth = 5292
              BandType = 1
              LayerName = Foreground1
            end
            object ppLabel34: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label34'
              AutoSize = False
              Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
              Border.Visible = True
              Caption = 'Item'
              Color = clSilver
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              FormField = False
              TextAlignment = taCentered
              VerticalAlignment = avCenter
              mmHeight = 7144
              mmLeft = 37571
              mmTop = 4498
              mmWidth = 6879
              BandType = 1
              LayerName = Foreground1
            end
            object ppDBText22: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText22'
              Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
              Border.Visible = True
              Color = clSilver
              DataField = 'ESP_NOME'
              DataPipeline = pipParamEsp
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taCentered
              WordWrap = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pipParamEsp'
              mmHeight = 7232
              mmLeft = 44186
              mmTop = 4498
              mmWidth = 34131
              BandType = 1
              LayerName = Foreground1
            end
            object ppDBText23: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText23'
              Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
              Border.Visible = True
              Color = clSilver
              DataField = 'ESP_PADROES'
              DataPipeline = pipParamEsp
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taCentered
              WordWrap = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pipParamEsp'
              mmHeight = 7313
              mmLeft = 78317
              mmTop = 4585
              mmWidth = 43921
              BandType = 1
              LayerName = Foreground1
            end
            object ppDBText24: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText24'
              Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
              Border.Visible = True
              Color = clSilver
              DataField = 'ESP_COL1'
              DataPipeline = pipParamEsp
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taCentered
              WordWrap = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pipParamEsp'
              mmHeight = 7313
              mmLeft = 121973
              mmTop = 4585
              mmWidth = 43921
              BandType = 1
              LayerName = Foreground1
            end
            object ppDBText25: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText25'
              Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
              Border.Visible = True
              Color = clSilver
              DataField = 'ESP_COL2'
              DataPipeline = pipParamEsp
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taCentered
              WordWrap = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pipParamEsp'
              mmHeight = 7313
              mmLeft = 165365
              mmTop = 4585
              mmWidth = 43921
              BandType = 1
              LayerName = Foreground1
            end
            object ppDBText26: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText26'
              Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
              Border.Visible = True
              Color = clSilver
              DataField = 'ESP_COL2'
              DataPipeline = pipParamEsp
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taCentered
              WordWrap = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pipParamEsp'
              mmHeight = 7313
              mmLeft = 165365
              mmTop = 25929
              mmWidth = 25576
              BandType = 1
              LayerName = Foreground1
            end
          end
          object bandBrancoReg3: TppDetailBand
            Background1.Brush.Style = bsClear
            Background2.Brush.Style = bsClear
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 10319
            mmPrintPosition = 0
            object ppShape1: TppShape
              DesignLayer = ppDesignLayer2
              UserName = 'Shape1'
              mmHeight = 6586
              mmLeft = 44186
              mmTop = 0
              mmWidth = 12876
              BandType = 4
              LayerName = Foreground1
            end
            object regdim: TppVariable
              DesignLayer = ppDesignLayer2
              UserName = 'regdim'
              AutoSize = False
              Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
              Border.Visible = True
              BlankWhenZero = False
              CalcOrder = 0
              Color = clSilver
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              OnCalc = regdimCalc
              OnReset = regdimReset
              ResetType = veGroupStart
              TextAlignment = taCentered
              VerticalAlignment = avCenter
              mmHeight = 6586
              mmLeft = 37571
              mmTop = 0
              mmWidth = 6879
              BandType = 4
              LayerName = Foreground1
            end
            object ppShape2: TppShape
              DesignLayer = ppDesignLayer2
              UserName = 'Shape2'
              mmHeight = 6586
              mmLeft = 56887
              mmTop = 0
              mmWidth = 12965
              BandType = 4
              LayerName = Foreground1
            end
            object ppShape3: TppShape
              DesignLayer = ppDesignLayer2
              UserName = 'Shape3'
              mmHeight = 6586
              mmLeft = 82550
              mmTop = 0
              mmWidth = 12965
              BandType = 4
              LayerName = Foreground1
            end
            object ppShape4: TppShape
              DesignLayer = ppDesignLayer2
              UserName = 'Shape4'
              mmHeight = 6586
              mmLeft = 69850
              mmTop = 0
              mmWidth = 12965
              BandType = 4
              LayerName = Foreground1
            end
            object ppShape5: TppShape
              DesignLayer = ppDesignLayer2
              UserName = 'Shape5'
              mmHeight = 6586
              mmLeft = 95515
              mmTop = 0
              mmWidth = 12965
              BandType = 4
              LayerName = Foreground1
            end
            object ppShape6: TppShape
              DesignLayer = ppDesignLayer2
              UserName = 'Shape6'
              mmHeight = 6586
              mmLeft = 108215
              mmTop = 0
              mmWidth = 12965
              BandType = 4
              LayerName = Foreground1
            end
            object ppShape7: TppShape
              DesignLayer = ppDesignLayer2
              UserName = 'Shape7'
              mmHeight = 6586
              mmLeft = 121179
              mmTop = 0
              mmWidth = 12965
              BandType = 4
              LayerName = Foreground1
            end
            object ppShape8: TppShape
              DesignLayer = ppDesignLayer2
              UserName = 'Shape8'
              mmHeight = 6586
              mmLeft = 133879
              mmTop = 0
              mmWidth = 12965
              BandType = 4
              LayerName = Foreground1
            end
            object ppShape9: TppShape
              DesignLayer = ppDesignLayer2
              UserName = 'Shape9'
              mmHeight = 6586
              mmLeft = 146844
              mmTop = 0
              mmWidth = 12965
              BandType = 4
              LayerName = Foreground1
            end
            object ppShape58: TppShape
              DesignLayer = ppDesignLayer2
              UserName = 'Shape58'
              mmHeight = 6586
              mmLeft = 159544
              mmTop = 0
              mmWidth = 12965
              BandType = 4
              LayerName = Foreground1
            end
            object ppShape59: TppShape
              DesignLayer = ppDesignLayer2
              UserName = 'Shape59'
              mmHeight = 6586
              mmLeft = 172333
              mmTop = 0
              mmWidth = 18697
              BandType = 4
              LayerName = Foreground1
            end
            object ppLine13: TppLine
              DesignLayer = ppDesignLayer2
              UserName = 'Line101'
              Border.BorderPositions = [bpLeft, bpTop]
              Border.Visible = True
              Position = lpLeft
              Weight = 0.500000000000000000
              mmHeight = 6586
              mmLeft = 0
              mmTop = 0
              mmWidth = 5292
              BandType = 4
              LayerName = Foreground1
            end
            object ppLine14: TppLine
              DesignLayer = ppDesignLayer2
              UserName = 'Line14'
              Border.BorderPositions = [bpLeft, bpTop]
              Border.Visible = True
              Position = lpLeft
              Weight = 0.500000000000000000
              mmHeight = 6586
              mmLeft = 6615
              mmTop = 0
              mmWidth = 5292
              BandType = 4
              LayerName = Foreground1
            end
            object ppLine15: TppLine
              DesignLayer = ppDesignLayer2
              UserName = 'Line15'
              Border.BorderPositions = [bpLeft, bpTop]
              Border.Visible = True
              Position = lpLeft
              Weight = 0.500000000000000000
              mmHeight = 6586
              mmLeft = 30692
              mmTop = 0
              mmWidth = 5292
              BandType = 4
              LayerName = Foreground1
            end
            object lNumero3: TppLabel
              OnPrint = lNumero3Print
              DesignLayer = ppDesignLayer2
              UserName = 'lNumero3'
              Caption = '3'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              FormField = False
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 4233
              mmLeft = 1323
              mmTop = 1146
              mmWidth = 1852
              BandType = 4
              LayerName = Foreground1
            end
            object lregistro: TppLabel
              OnPrint = lregistroPrint
              DesignLayer = ppDesignLayer2
              UserName = 'lregistro'
              AutoSize = False
              Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
              Caption = 'registro dimensional'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              FormField = False
              TextAlignment = taCentered
              Transparent = True
              WordWrap = True
              VerticalAlignment = avCenter
              mmHeight = 6532
              mmLeft = 6969
              mmTop = 0
              mmWidth = 22928
              BandType = 4
              LayerName = Foreground1
            end
            object iqualidade: TppImage
              OnPrint = iqualidadePrint
              DesignLayer = ppDesignLayer2
              UserName = 'iqualidade'
              AlignHorizontal = ahCenter
              AlignVertical = avCenter
              MaintainAspectRatio = False
              Stretch = True
              Picture.Data = {
                0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000059
                000000570802000000E0637E88000000017352474200AECE1CE9000000046741
                4D410000B18F0BFC6105000000097048597300000EBC00000EBC0195BC724900
                00021649444154785EEDD0596A03410C45D1EC3C4B7704B9460193EE1A3454C3
                3BBF7697A4FBF59237B5706AE1D4C2A985530BA7164E2D5C758BEF0FFC7080D2
                165CFF819FBBD5B5E0EE7FF0A756452DB8F8127FED53D1825B07F04193F4165C
                398CCF3AE4B6E0BE497C5C2EB105972DE1895A592DB869030F154A69C135DB78
                AE4A7C0BEE08C2A325825B7041289ECE17D982DD13302059580BB64EC3984C31
                2DD83719C3D204B460D3128CCCB1DB821D0B3138C1560BB62BC7F868EB2DD8AB
                094B845A6CC146AD5825CE4A0B7639000B05996EC116C760AD08732D987F1EF6
                DB33D182B1A762CB0D432D98763CD65D75DF82390FC1D24B6E5A30E151587DDE
                550BDE7E200E98A4164E2D9C5A38B5706AE1AE5A18DE7E14569F77D3C230E121
                587AC97D0BC39CE3B1EEAAA11686690763D10DA32D0C338FC48A7B265AFC62F8
                49D86CDB740BC30A6760A7082B2D0C8BB46295388B2D0C1B35618950EB2D0C7B
                95637CB4AD1686ED0A3138C16E0BC38E25189923A08561D3640C4B13D3C2B06F
                1AC6640A6B61D83A01039245B630EC1E8AA7F305B7305C1084474BC4B730DCB1
                8DE7AAA4B4305CB381870A65B530DCB484276A25B6305C36898FCBE5B630DC37
                8CCF3AA4B7305C39800F9A54B430DC7A89BFF6296A61B8F81FFCA9555D0BC3DD
                1FF8B95B690BC3F57FF0C301AA5B9C4C2D9C5A38B5706AE1D4C2A985530BA716
                4E2D9C5A38B5706AE1D4C2A985530BA7164E2D9C5ABCBD5E3F353FFAC74B047A
                8B0000000049454E44AE426082}
              mmHeight = 5027
              mmLeft = 31311
              mmTop = 1058
              mmWidth = 5117
              BandType = 4
              LayerName = Foreground1
            end
          end
          object ppSummaryBand1: TppSummaryBand
            Background.Brush.Style = bsClear
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 40217
            mmPrintPosition = 0
            object ppShape34: TppShape
              DesignLayer = ppDesignLayer2
              UserName = 'Shape34'
              mmHeight = 4763
              mmLeft = 115099
              mmTop = 529
              mmWidth = 19579
              BandType = 7
              LayerName = Foreground1
            end
            object ppShape35: TppShape
              DesignLayer = ppDesignLayer2
              UserName = 'Shape35'
              mmHeight = 4763
              mmLeft = 134413
              mmTop = 529
              mmWidth = 19579
              BandType = 7
              LayerName = Foreground1
            end
            object ppShape36: TppShape
              DesignLayer = ppDesignLayer2
              UserName = 'Shape36'
              mmHeight = 4763
              mmLeft = 153992
              mmTop = 529
              mmWidth = 19579
              BandType = 7
              LayerName = Foreground1
            end
            object ppShape37: TppShape
              DesignLayer = ppDesignLayer2
              UserName = 'Shape37'
              mmHeight = 4763
              mmLeft = 173307
              mmTop = 529
              mmWidth = 17643
              BandType = 7
              LayerName = Foreground1
            end
            object ppShape38: TppShape
              DesignLayer = ppDesignLayer2
              UserName = 'Shape38'
              mmHeight = 5027
              mmLeft = 115099
              mmTop = 5027
              mmWidth = 19579
              BandType = 7
              LayerName = Foreground1
            end
            object ppShape39: TppShape
              DesignLayer = ppDesignLayer2
              UserName = 'Shape39'
              mmHeight = 5027
              mmLeft = 134413
              mmTop = 5027
              mmWidth = 19579
              BandType = 7
              LayerName = Foreground1
            end
            object ppShape40: TppShape
              DesignLayer = ppDesignLayer2
              UserName = 'Shape40'
              mmHeight = 5027
              mmLeft = 153992
              mmTop = 5027
              mmWidth = 19579
              BandType = 7
              LayerName = Foreground1
            end
            object ppShape41: TppShape
              DesignLayer = ppDesignLayer2
              UserName = 'Shape41'
              mmHeight = 5027
              mmLeft = 173307
              mmTop = 5027
              mmWidth = 17643
              BandType = 7
              LayerName = Foreground1
            end
            object ppShape42: TppShape
              DesignLayer = ppDesignLayer2
              UserName = 'Shape302'
              mmHeight = 4763
              mmLeft = 115099
              mmTop = 12965
              mmWidth = 19579
              BandType = 7
              LayerName = Foreground1
            end
            object ppShape43: TppShape
              DesignLayer = ppDesignLayer2
              UserName = 'Shape43'
              mmHeight = 4763
              mmLeft = 134413
              mmTop = 12965
              mmWidth = 19579
              BandType = 7
              LayerName = Foreground1
            end
            object ppShape44: TppShape
              DesignLayer = ppDesignLayer2
              UserName = 'Shape44'
              mmHeight = 4763
              mmLeft = 153992
              mmTop = 12965
              mmWidth = 19579
              BandType = 7
              LayerName = Foreground1
            end
            object ppShape45: TppShape
              DesignLayer = ppDesignLayer2
              UserName = 'Shape45'
              mmHeight = 4763
              mmLeft = 173307
              mmTop = 12965
              mmWidth = 17643
              BandType = 7
              LayerName = Foreground1
            end
            object ppShape46: TppShape
              DesignLayer = ppDesignLayer2
              UserName = 'Shape46'
              mmHeight = 4763
              mmLeft = 115099
              mmTop = 17727
              mmWidth = 19579
              BandType = 7
              LayerName = Foreground1
            end
            object ppShape47: TppShape
              DesignLayer = ppDesignLayer2
              UserName = 'Shape47'
              mmHeight = 4763
              mmLeft = 134413
              mmTop = 17727
              mmWidth = 19579
              BandType = 7
              LayerName = Foreground1
            end
            object ppShape48: TppShape
              DesignLayer = ppDesignLayer2
              UserName = 'Shape402'
              mmHeight = 4763
              mmLeft = 153992
              mmTop = 17727
              mmWidth = 19579
              BandType = 7
              LayerName = Foreground1
            end
            object ppShape49: TppShape
              DesignLayer = ppDesignLayer2
              UserName = 'Shape49'
              mmHeight = 4763
              mmLeft = 173307
              mmTop = 17727
              mmWidth = 17643
              BandType = 7
              LayerName = Foreground1
            end
            object ppShape50: TppShape
              DesignLayer = ppDesignLayer2
              UserName = 'Shape50'
              mmHeight = 4763
              mmLeft = 115099
              mmTop = 22490
              mmWidth = 19579
              BandType = 7
              LayerName = Foreground1
            end
            object ppShape51: TppShape
              DesignLayer = ppDesignLayer2
              UserName = 'Shape51'
              mmHeight = 4763
              mmLeft = 134413
              mmTop = 22490
              mmWidth = 19579
              BandType = 7
              LayerName = Foreground1
            end
            object ppShape52: TppShape
              DesignLayer = ppDesignLayer2
              UserName = 'Shape52'
              mmHeight = 4763
              mmLeft = 153992
              mmTop = 22490
              mmWidth = 19579
              BandType = 7
              LayerName = Foreground1
            end
            object ppShape53: TppShape
              DesignLayer = ppDesignLayer2
              UserName = 'Shape53'
              mmHeight = 4763
              mmLeft = 173307
              mmTop = 22490
              mmWidth = 17643
              BandType = 7
              LayerName = Foreground1
            end
            object ppShape54: TppShape
              DesignLayer = ppDesignLayer2
              UserName = 'Shape54'
              mmHeight = 5027
              mmLeft = 115099
              mmTop = 27252
              mmWidth = 19579
              BandType = 7
              LayerName = Foreground1
            end
            object ppShape55: TppShape
              DesignLayer = ppDesignLayer2
              UserName = 'Shape55'
              mmHeight = 5027
              mmLeft = 134413
              mmTop = 27252
              mmWidth = 19579
              BandType = 7
              LayerName = Foreground1
            end
            object ppShape56: TppShape
              DesignLayer = ppDesignLayer2
              UserName = 'Shape56'
              mmHeight = 5027
              mmLeft = 153992
              mmTop = 27252
              mmWidth = 19579
              BandType = 7
              LayerName = Foreground1
            end
            object ppShape57: TppShape
              DesignLayer = ppDesignLayer2
              UserName = 'Shape57'
              mmHeight = 5027
              mmLeft = 173307
              mmTop = 27252
              mmWidth = 17643
              BandType = 7
              LayerName = Foreground1
            end
            object ppLabel11: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label11'
              AutoSize = False
              Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
              Border.Visible = True
              Caption = 'Respons'#225'vel'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              FormField = False
              TextAlignment = taCentered
              Transparent = True
              WordWrap = True
              VerticalAlignment = avCenter
              mmHeight = 9525
              mmLeft = 6619
              mmTop = 529
              mmWidth = 24077
              BandType = 7
              LayerName = Foreground1
            end
            object ppShape10: TppShape
              DesignLayer = ppDesignLayer2
              UserName = 'Shape10'
              mmHeight = 4763
              mmLeft = 37311
              mmTop = 529
              mmWidth = 19579
              BandType = 7
              LayerName = Foreground1
            end
            object ppShape11: TppShape
              DesignLayer = ppDesignLayer2
              UserName = 'Shape11'
              mmHeight = 4763
              mmLeft = 56890
              mmTop = 529
              mmWidth = 19579
              BandType = 7
              LayerName = Foreground1
            end
            object ppShape12: TppShape
              DesignLayer = ppDesignLayer2
              UserName = 'Shape12'
              mmHeight = 4763
              mmLeft = 76469
              mmTop = 529
              mmWidth = 19579
              BandType = 7
              LayerName = Foreground1
            end
            object ppShape13: TppShape
              DesignLayer = ppDesignLayer2
              UserName = 'Shape13'
              mmHeight = 4763
              mmLeft = 96049
              mmTop = 529
              mmWidth = 19579
              BandType = 7
              LayerName = Foreground1
            end
            object ppShape14: TppShape
              DesignLayer = ppDesignLayer2
              UserName = 'Shape202'
              mmHeight = 5027
              mmLeft = 37311
              mmTop = 5027
              mmWidth = 19579
              BandType = 7
              LayerName = Foreground1
            end
            object ppShape15: TppShape
              DesignLayer = ppDesignLayer2
              UserName = 'Shape15'
              mmHeight = 5027
              mmLeft = 56890
              mmTop = 5027
              mmWidth = 19579
              BandType = 7
              LayerName = Foreground1
            end
            object ppShape16: TppShape
              DesignLayer = ppDesignLayer2
              UserName = 'Shape16'
              mmHeight = 5027
              mmLeft = 76469
              mmTop = 5027
              mmWidth = 19579
              BandType = 7
              LayerName = Foreground1
            end
            object ppShape17: TppShape
              DesignLayer = ppDesignLayer2
              UserName = 'Shape17'
              mmHeight = 5027
              mmLeft = 96049
              mmTop = 5027
              mmWidth = 19579
              BandType = 7
              LayerName = Foreground1
            end
            object ppLabel12: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label12'
              AutoSize = False
              Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
              Border.Visible = True
              Caption = 'ASS'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              FormField = False
              TextAlignment = taCentered
              Transparent = True
              WordWrap = True
              VerticalAlignment = avCenter
              mmHeight = 4763
              mmLeft = 30432
              mmTop = 529
              mmWidth = 7144
              BandType = 7
              LayerName = Foreground1
            end
            object ppLabel13: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label13'
              AutoSize = False
              Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
              Border.Visible = True
              Caption = 'data'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              FormField = False
              TextAlignment = taCentered
              Transparent = True
              WordWrap = True
              VerticalAlignment = avCenter
              mmHeight = 5027
              mmLeft = 30432
              mmTop = 5027
              mmWidth = 7144
              BandType = 7
              LayerName = Foreground1
            end
            object ppLabel14: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label14'
              AutoSize = False
              Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
              Border.Visible = True
              Caption = 'Apontamento de produ'#231#227'o'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              FormField = False
              TextAlignment = taCentered
              Transparent = True
              WordWrap = True
              VerticalAlignment = avCenter
              mmHeight = 19315
              mmLeft = 6619
              mmTop = 12965
              mmWidth = 24077
              BandType = 7
              LayerName = Foreground1
            end
            object ppShape18: TppShape
              DesignLayer = ppDesignLayer2
              UserName = 'Shape102'
              mmHeight = 4763
              mmLeft = 37311
              mmTop = 12965
              mmWidth = 19579
              BandType = 7
              LayerName = Foreground1
            end
            object ppShape19: TppShape
              DesignLayer = ppDesignLayer2
              UserName = 'Shape19'
              mmHeight = 4763
              mmLeft = 56890
              mmTop = 12965
              mmWidth = 19579
              BandType = 7
              LayerName = Foreground1
            end
            object ppShape20: TppShape
              DesignLayer = ppDesignLayer2
              UserName = 'Shape20'
              mmHeight = 4763
              mmLeft = 76469
              mmTop = 12965
              mmWidth = 19579
              BandType = 7
              LayerName = Foreground1
            end
            object ppShape21: TppShape
              DesignLayer = ppDesignLayer2
              UserName = 'Shape21'
              mmHeight = 4763
              mmLeft = 96049
              mmTop = 12965
              mmWidth = 19579
              BandType = 7
              LayerName = Foreground1
            end
            object ppShape22: TppShape
              DesignLayer = ppDesignLayer2
              UserName = 'Shape22'
              mmHeight = 4763
              mmLeft = 37311
              mmTop = 17727
              mmWidth = 19579
              BandType = 7
              LayerName = Foreground1
            end
            object ppShape23: TppShape
              DesignLayer = ppDesignLayer2
              UserName = 'Shape23'
              mmHeight = 4763
              mmLeft = 56890
              mmTop = 17727
              mmWidth = 19579
              BandType = 7
              LayerName = Foreground1
            end
            object ppShape24: TppShape
              DesignLayer = ppDesignLayer2
              UserName = 'Shape24'
              mmHeight = 4763
              mmLeft = 76469
              mmTop = 17727
              mmWidth = 19579
              BandType = 7
              LayerName = Foreground1
            end
            object ppShape25: TppShape
              DesignLayer = ppDesignLayer2
              UserName = 'Shape25'
              mmHeight = 4763
              mmLeft = 96049
              mmTop = 17727
              mmWidth = 19579
              BandType = 7
              LayerName = Foreground1
            end
            object ppLabel15: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label15'
              AutoSize = False
              Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
              Border.Visible = True
              Caption = 'data'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              FormField = False
              TextAlignment = taCentered
              Transparent = True
              WordWrap = True
              VerticalAlignment = avCenter
              mmHeight = 4763
              mmLeft = 30432
              mmTop = 12965
              mmWidth = 7144
              BandType = 7
              LayerName = Foreground1
            end
            object ppLabel16: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label16'
              AutoSize = False
              Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
              Border.Visible = True
              Caption = 'qtde'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              FormField = False
              TextAlignment = taCentered
              Transparent = True
              WordWrap = True
              VerticalAlignment = avCenter
              mmHeight = 4763
              mmLeft = 30432
              mmTop = 17727
              mmWidth = 7144
              BandType = 7
              LayerName = Foreground1
            end
            object ppShape26: TppShape
              DesignLayer = ppDesignLayer2
              UserName = 'Shape26'
              mmHeight = 4763
              mmLeft = 37311
              mmTop = 22490
              mmWidth = 19579
              BandType = 7
              LayerName = Foreground1
            end
            object ppShape27: TppShape
              DesignLayer = ppDesignLayer2
              UserName = 'Shape27'
              mmHeight = 4763
              mmLeft = 56890
              mmTop = 22490
              mmWidth = 19579
              BandType = 7
              LayerName = Foreground1
            end
            object ppShape28: TppShape
              DesignLayer = ppDesignLayer2
              UserName = 'Shape28'
              mmHeight = 4763
              mmLeft = 76469
              mmTop = 22490
              mmWidth = 19579
              BandType = 7
              LayerName = Foreground1
            end
            object ppShape29: TppShape
              DesignLayer = ppDesignLayer2
              UserName = 'Shape29'
              mmHeight = 4763
              mmLeft = 96049
              mmTop = 22490
              mmWidth = 19579
              BandType = 7
              LayerName = Foreground1
            end
            object ppShape30: TppShape
              DesignLayer = ppDesignLayer2
              UserName = 'Shape501'
              mmHeight = 5027
              mmLeft = 37311
              mmTop = 27252
              mmWidth = 19579
              BandType = 7
              LayerName = Foreground1
            end
            object ppShape31: TppShape
              DesignLayer = ppDesignLayer2
              UserName = 'Shape31'
              mmHeight = 5027
              mmLeft = 56890
              mmTop = 27252
              mmWidth = 19579
              BandType = 7
              LayerName = Foreground1
            end
            object ppShape32: TppShape
              DesignLayer = ppDesignLayer2
              UserName = 'Shape32'
              mmHeight = 5027
              mmLeft = 76469
              mmTop = 27252
              mmWidth = 19579
              BandType = 7
              LayerName = Foreground1
            end
            object ppShape33: TppShape
              DesignLayer = ppDesignLayer2
              UserName = 'Shape33'
              mmHeight = 5027
              mmLeft = 96049
              mmTop = 27252
              mmWidth = 19579
              BandType = 7
              LayerName = Foreground1
            end
            object ppLabel17: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label17'
              AutoSize = False
              Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
              Border.Visible = True
              Caption = 'resp'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              FormField = False
              TextAlignment = taCentered
              Transparent = True
              WordWrap = True
              VerticalAlignment = avCenter
              mmHeight = 4763
              mmLeft = 30432
              mmTop = 22490
              mmWidth = 7144
              BandType = 7
              LayerName = Foreground1
            end
            object ppLabel18: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label18'
              AutoSize = False
              Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
              Border.Visible = True
              Caption = 'total'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              FormField = False
              TextAlignment = taCentered
              Transparent = True
              WordWrap = True
              VerticalAlignment = avCenter
              mmHeight = 5027
              mmLeft = 30432
              mmTop = 27252
              mmWidth = 7144
              BandType = 7
              LayerName = Foreground1
            end
            object ppLabel19: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label19'
              AutoSize = False
              Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
              Border.Visible = True
              Caption = '4'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              FormField = False
              TextAlignment = taCentered
              Transparent = True
              WordWrap = True
              VerticalAlignment = avCenter
              mmHeight = 9525
              mmLeft = 0
              mmTop = 529
              mmWidth = 6879
              BandType = 7
              LayerName = Foreground1
            end
            object ppLabel35: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label35'
              AutoSize = False
              Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
              Border.Visible = True
              Caption = '5'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              FormField = False
              TextAlignment = taCentered
              Transparent = True
              WordWrap = True
              VerticalAlignment = avCenter
              mmHeight = 19315
              mmLeft = 0
              mmTop = 12965
              mmWidth = 6879
              BandType = 7
              LayerName = Foreground1
            end
          end
          object ppDesignLayers2: TppDesignLayers
            object ppDesignLayer2: TppDesignLayer
              UserName = 'Foreground1'
              LayerType = ltBanded
              Index = 0
            end
          end
        end
      end
      object subparametros: TppSubReport
        DesignLayer = ppDesignLayer1
        UserName = 'subparametros'
        ExpandAll = False
        KeepTogether = True
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ParentWidth = False
        TraverseAllData = False
        DataPipelineName = 'pipParamOp'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 0
        mmWidth = 191030
        BandType = 4
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport2: TppChildReport
          AutoStop = False
          DataPipeline = pipParamOp
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.Orientation = poLandscape
          PrinterSetup.PaperName = 'A4'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = False
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 210000
          PrinterSetup.mmPaperWidth = 297000
          PrinterSetup.PaperSize = 9
          Units = utMillimeters
          Version = '16.02'
          mmColumnWidth = 0
          DataPipelineName = 'pipParamOp'
          object ppTitleBand2: TppTitleBand
            Visible = False
            Background.Brush.Style = bsClear
            mmBottomOffset = 0
            mmHeight = 31485
            mmPrintPosition = 0
            object ppLine6: TppLine
              DesignLayer = ppDesignLayer3
              UserName = 'Line6'
              Border.BorderPositions = [bpLeft, bpTop]
              Border.Visible = True
              Position = lpLeft
              Weight = 0.500000000000000000
              mmHeight = 7143
              mmLeft = 0
              mmTop = 4498
              mmWidth = 5292
              BandType = 1
              LayerName = Foreground2
            end
            object ppLine7: TppLine
              DesignLayer = ppDesignLayer3
              UserName = 'Line7'
              Border.BorderPositions = [bpLeft, bpTop]
              Border.Visible = True
              Position = lpLeft
              Weight = 0.500000000000000000
              mmHeight = 7143
              mmLeft = 6615
              mmTop = 4498
              mmWidth = 5292
              BandType = 1
              LayerName = Foreground2
            end
            object ppLine4: TppLine
              DesignLayer = ppDesignLayer3
              UserName = 'Line4'
              Border.BorderPositions = [bpLeft, bpTop]
              Border.Visible = True
              Position = lpLeft
              Weight = 0.500000000000000000
              mmHeight = 7143
              mmLeft = 30692
              mmTop = 4498
              mmWidth = 5292
              BandType = 1
              LayerName = Foreground2
            end
            object ppLabel32: TppLabel
              DesignLayer = ppDesignLayer3
              UserName = 'Label32'
              AutoSize = False
              Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
              Border.Visible = True
              Caption = 'Item'
              Color = clSilver
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              FormField = False
              TextAlignment = taCentered
              VerticalAlignment = avCenter
              mmHeight = 7144
              mmLeft = 37571
              mmTop = 4498
              mmWidth = 6879
              BandType = 1
              LayerName = Foreground2
            end
            object ppDBText9: TppDBText
              DesignLayer = ppDesignLayer3
              UserName = 'DBText102'
              Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
              Border.Visible = True
              Color = clSilver
              DataField = 'ESP_NOME'
              DataPipeline = pipParamEsp
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taCentered
              WordWrap = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pipParamEsp'
              mmHeight = 7232
              mmLeft = 44186
              mmTop = 4498
              mmWidth = 34131
              BandType = 1
              LayerName = Foreground2
            end
            object ppDBText12: TppDBText
              DesignLayer = ppDesignLayer3
              UserName = 'DBText12'
              Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
              Border.Visible = True
              Color = clSilver
              DataField = 'ESP_PADROES'
              DataPipeline = pipParamEsp
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taCentered
              WordWrap = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pipParamEsp'
              mmHeight = 7313
              mmLeft = 78317
              mmTop = 4233
              mmWidth = 43921
              BandType = 1
              LayerName = Foreground2
            end
            object ppDBText15: TppDBText
              DesignLayer = ppDesignLayer3
              UserName = 'DBText15'
              Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
              Border.Visible = True
              Color = clSilver
              DataField = 'ESP_COL1'
              DataPipeline = pipParamEsp
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taCentered
              WordWrap = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pipParamEsp'
              mmHeight = 7313
              mmLeft = 121973
              mmTop = 4233
              mmWidth = 43921
              BandType = 1
              LayerName = Foreground2
            end
            object ppDBText27: TppDBText
              DesignLayer = ppDesignLayer3
              UserName = 'DBText27'
              Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
              Border.Visible = True
              Color = clSilver
              DataField = 'ESP_COL2'
              DataPipeline = pipParamEsp
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taCentered
              WordWrap = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pipParamEsp'
              mmHeight = 7408
              mmLeft = 165365
              mmTop = 4498
              mmWidth = 25665
              BandType = 1
              LayerName = Foreground2
            end
          end
          object ppDetailBand3: TppDetailBand
            Background1.Brush.Style = bsClear
            Background2.Brush.Style = bsClear
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 9790
            mmPrintPosition = 0
            object ppDBText18: TppDBText
              DesignLayer = ppDesignLayer3
              UserName = 'DBText18'
              Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
              Border.Visible = True
              Color = clSilver
              DataField = 'ESR_NOME'
              DataPipeline = pipParamOp
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taCentered
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pipParamOp'
              mmHeight = 5992
              mmLeft = 44274
              mmTop = 0
              mmWidth = 33867
              BandType = 4
              LayerName = Foreground2
            end
            object ppDBText19: TppDBText
              DesignLayer = ppDesignLayer3
              UserName = 'DBText19'
              Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
              Border.Visible = True
              Color = clSilver
              DataField = 'ESR_PADROES'
              DataPipeline = pipParamOp
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taCentered
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pipParamOp'
              mmHeight = 5992
              mmLeft = 77965
              mmTop = 0
              mmWidth = 43921
              BandType = 4
              LayerName = Foreground2
            end
            object ppDBText20: TppDBText
              DesignLayer = ppDesignLayer3
              UserName = 'DBText20'
              Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
              Border.Visible = True
              Color = clSilver
              DataField = 'ESR_COL1'
              DataPipeline = pipParamOp
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taCentered
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pipParamOp'
              mmHeight = 5992
              mmLeft = 121621
              mmTop = 0
              mmWidth = 43921
              BandType = 4
              LayerName = Foreground2
            end
            object ppDBText21: TppDBText
              DesignLayer = ppDesignLayer3
              UserName = 'DBText21'
              Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
              Border.Visible = True
              Color = clSilver
              DataField = 'ESR_COL2'
              DataPipeline = pipParamOp
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taCentered
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pipParamOp'
              mmHeight = 5992
              mmLeft = 165365
              mmTop = 0
              mmWidth = 25576
              BandType = 4
              LayerName = Foreground2
            end
            object numregistro: TppVariable
              DesignLayer = ppDesignLayer3
              UserName = 'numregistro'
              AutoSize = False
              Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
              Border.Visible = True
              BlankWhenZero = False
              CalcOrder = 0
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              OnCalc = numregistroCalc
              OnReset = numregistroReset
              ResetType = veGroupStart
              TextAlignment = taCentered
              Transparent = True
              VerticalAlignment = avCenter
              mmHeight = 5992
              mmLeft = 37571
              mmTop = 0
              mmWidth = 6879
              BandType = 4
              LayerName = Foreground2
            end
            object ppLine5: TppLine
              DesignLayer = ppDesignLayer3
              UserName = 'Line5'
              Border.BorderPositions = [bpLeft, bpTop]
              Border.Visible = True
              Position = lpLeft
              Weight = 0.500000000000000000
              mmHeight = 5992
              mmLeft = 30800
              mmTop = 0
              mmWidth = 2300
              BandType = 4
              LayerName = Foreground2
            end
            object ppLine8: TppLine
              DesignLayer = ppDesignLayer3
              UserName = 'Line8'
              Border.BorderPositions = [bpLeft, bpTop]
              Border.Visible = True
              Position = lpLeft
              Weight = 0.500000000000000000
              mmHeight = 5992
              mmLeft = 0
              mmTop = 0
              mmWidth = 5292
              BandType = 4
              LayerName = Foreground2
            end
            object ppLine9: TppLine
              DesignLayer = ppDesignLayer3
              UserName = 'Line9'
              Border.BorderPositions = [bpLeft, bpTop]
              Border.Visible = True
              Position = lpLeft
              Weight = 0.500000000000000000
              mmHeight = 5992
              mmLeft = 6615
              mmTop = 0
              mmWidth = 5292
              BandType = 4
              LayerName = Foreground2
            end
            object Lnumero2: TppLabel
              OnPrint = Lnumero2Print
              DesignLayer = ppDesignLayer3
              UserName = 'Lnumero2'
              Caption = '2'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              FormField = False
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3969
              mmLeft = 1323
              mmTop = 704
              mmWidth = 1852
              BandType = 4
              LayerName = Foreground2
            end
            object iespecifica2: TppImage
              OnPrint = iespecifica2Print
              DesignLayer = ppDesignLayer3
              UserName = 'iqualidade1'
              AlignHorizontal = ahCenter
              AlignVertical = avCenter
              MaintainAspectRatio = False
              Stretch = True
              Picture.Data = {
                0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000059
                000000570802000000E0637E88000000017352474200AECE1CE9000000046741
                4D410000B18F0BFC6105000000097048597300000EBC00000EBC0195BC724900
                00021649444154785EEDD0596A03410C45D1EC3C4B7704B9460193EE1A3454C3
                3BBF7697A4FBF59237B5706AE1D4C2A985530BA7164E2D5C758BEF0FFC7080D2
                165CFF819FBBD5B5E0EE7FF0A756452DB8F8127FED53D1825B07F04193F4165C
                398CCF3AE4B6E0BE497C5C2EB105972DE1895A592DB869030F154A69C135DB78
                AE4A7C0BEE08C2A325825B7041289ECE17D982DD13302059580BB64EC3984C31
                2DD83719C3D204B460D3128CCCB1DB821D0B3138C1560BB62BC7F868EB2DD8AB
                094B845A6CC146AD5825CE4A0B7639000B05996EC116C760AD08732D987F1EF6
                DB33D182B1A762CB0D432D98763CD65D75DF82390FC1D24B6E5A30E151587DDE
                550BDE7E200E98A4164E2D9C5A38B5706AE1AE5A18DE7E14569F77D3C230E121
                587AC97D0BC39CE3B1EEAAA11686690763D10DA32D0C338FC48A7B265AFC62F8
                49D86CDB740BC30A6760A7082B2D0C8BB46295388B2D0C1B35618950EB2D0C7B
                95637CB4AD1686ED0A3138C16E0BC38E25189923A08561D3640C4B13D3C2B06F
                1AC6640A6B61D83A01039245B630EC1E8AA7F305B7305C1084474BC4B730DCB1
                8DE7AAA4B4305CB381870A65B530DCB484276A25B6305C36898FCBE5B630DC37
                8CCF3AA4B7305C39800F9A54B430DC7A89BFF6296A61B8F81FFCA9555D0BC3DD
                1FF8B95B690BC3F57FF0C301AA5B9C4C2D9C5A38B5706AE1D4C2A985530BA716
                4E2D9C5A38B5706AE1D4C2A985530BA7164E2D9C5ABCBD5E3F353FFAC74B047A
                8B0000000049454E44AE426082}
              mmHeight = 5027
              mmLeft = 31925
              mmTop = 2
              mmWidth = 4765
              BandType = 4
              LayerName = Foreground2
            end
            object ldescricaope: TppDBText
              OnPrint = ldescricaopePrint
              DesignLayer = ppDesignLayer3
              UserName = 'ldescricaope'
              DataField = 'OPE_DESCRICAO'
              DataPipeline = pipCabecalho
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taCentered
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pipCabecalho'
              mmHeight = 5821
              mmLeft = 6615
              mmTop = 0
              mmWidth = 23107
              BandType = 4
              LayerName = Foreground2
            end
          end
          object ppSummaryBand2: TppSummaryBand
            Background.Brush.Style = bsClear
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 8996
            mmPrintPosition = 0
            object ppLine18: TppLine
              DesignLayer = ppDesignLayer3
              UserName = 'Line18'
              Weight = 0.750000000000000000
              mmHeight = 625
              mmLeft = 0
              mmTop = 11
              mmWidth = 191070
              BandType = 7
              LayerName = Foreground2
            end
          end
          object ppDesignLayers3: TppDesignLayers
            object ppDesignLayer3: TppDesignLayer
              UserName = 'Foreground2'
              LayerType = ltBanded
              Index = 0
            end
          end
        end
      end
      object ppDBImage2: TppDBImage
        DesignLayer = ppDesignLayer1
        UserName = 'DBImage2'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        Stretch = True
        DataField = 'ESP_ESBOCO'
        DataPipeline = pipCabecalho
        GraphicType = 'AutoDetect'
        DataPipelineName = 'pipCabecalho'
        mmHeight = 62971
        mmLeft = 191384
        mmTop = 442
        mmWidth = 90664
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 17727
      mmPrintPosition = 0
      object ppLabel36: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label36'
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Caption = 'obs:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormField = False
        Transparent = True
        WordWrap = True
        mmHeight = 14008
        mmLeft = 0
        mmTop = 1058
        mmWidth = 284428
        BandType = 8
        LayerName = Foreground
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'ppDBText17'
      BreakType = btCustomField
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      NewPage = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      NewFile = False
      object ppGroupHeaderBand1: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        Visible = False
        Background.Brush.Style = bsClear
        PrintHeight = phDynamic
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 15610
        mmPrintPosition = 0
      end
    end
    object ppDesignLayers1: TppDesignLayers
      object ppDesignLayer1: TppDesignLayer
        UserName = 'Foreground'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object qcabecalho: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'SELECT OS.OSV_CODIGO AS OP,OP.OPE_DESCRICAO, P1.PRD_REFER, P1.PR' +
        'D_DESCRI,  FB.DATA_INCIO ,  OS.OSV_DTENTREGA, OS. OSV_QTDE, FAB_' +
        'PRODUZINDO, '
      
        ' FAB_REFUGADA, FAB_PRODUZIDA, OS.OSV_CONCLUSAO, FB.DATA_CONCLUSA' +
        'O, DATEDIFF(DAY,CURRENT_DATE, OS.OSV_DTENTREGA) RESTANTES , FB.F' +
        'AB_CODIGO ,  OP.OPE_CODIGO '
      ' FROM FABRICACAO fb                                        '
      '  INNER JOIN PRD0000 P1 ON (P1.PRD_CODIGO = fb.PRD_CODIGO) '
      '  INNER JOIN OSV0001 OS ON (OS.OSV_CODIGO = FB.OSV_CODIGO)'
      '  INNER JOIN OPERACOES OP ON (FB.OPE_CODIGO = OP.OPE_CODIGO)'
      '')
    SQLConnection = DBConn
    Left = 714
    Top = 149
  end
  object cdscabecalho: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspcabecalho'
    OnFilterRecord = cdsEngenhariaFilterRecord
    Left = 911
    Top = 151
    object cdscabecalhoOP: TStringField
      DisplayLabel = 'OSV'
      FieldName = 'OP'
      Size = 12
    end
    object cdscabecalhoOPE_DESCRICAO: TStringField
      FieldName = 'OPE_DESCRICAO'
      Size = 60
    end
    object cdscabecalhoPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
    end
    object cdscabecalhoPRD_DESCRI: TStringField
      DisplayLabel = 'Produto'
      FieldName = 'PRD_DESCRI'
      Size = 100
    end
    object cdscabecalhoDATA_INCIO: TSQLTimeStampField
      FieldName = 'DATA_INCIO'
    end
    object cdscabecalhoOSV_DTENTREGA: TSQLTimeStampField
      DisplayLabel = 'Entrega'
      FieldName = 'OSV_DTENTREGA'
    end
    object cdscabecalhoOSV_QTDE: TFMTBCDField
      DisplayLabel = 'Solicitada'
      FieldName = 'OSV_QTDE'
      Size = 18
    end
    object cdscabecalhosequencia: TIntegerField
      FieldName = 'sequencia'
    end
    object cdscabecalhoOPE_CODIGO: TIntegerField
      FieldName = 'OPE_CODIGO'
    end
    object cdscabecalhoFAB_CODIGO: TIntegerField
      FieldName = 'FAB_CODIGO'
    end
    object cdscabecalhoEQP_DESCRICAO: TStringField
      FieldName = 'EQP_DESCRICAO'
      Size = 60
    end
    object cdscabecalhoESP_ESBOCO: TBlobField
      FieldName = 'ESP_ESBOCO'
      Size = 1
    end
  end
  object qParamOP: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'SELECT OS.OSV_CODIGO AS OP,OP.OPE_DESCRICAO, P1.PRD_REFER, P1.PR' +
        'D_DESCRI,  FB.DATA_INCIO ,  OS.OSV_DTENTREGA, OS. OSV_QTDE, FAB_' +
        'PRODUZINDO, '
      
        ' FAB_REFUGADA, FAB_PRODUZIDA, OS.OSV_CONCLUSAO, FB.DATA_CONCLUSA' +
        'O, DATEDIFF(DAY,CURRENT_DATE, OS.OSV_DTENTREGA) RESTANTES , FB.F' +
        'AB_CODIGO ,  OP.OPE_CODIGO '
      ' FROM FABRICACAO fb                                        '
      '  INNER JOIN PRD0000 P1 ON (P1.PRD_CODIGO = fb.PRD_CODIGO) '
      '  INNER JOIN OSV0001 OS ON (OS.OSV_CODIGO = FB.OSV_CODIGO)'
      '  INNER JOIN OPERACOES OP ON (FB.OPE_CODIGO = OP.OPE_CODIGO)'
      '')
    SQLConnection = DBConn
    Left = 714
    Top = 205
  end
  object cdsParamOP: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspParamOP'
    OnFilterRecord = cdsEngenhariaFilterRecord
    Left = 911
    Top = 207
    object cdsParamOPESR_NOME: TStringField
      FieldName = 'ESR_NOME'
      Size = 60
    end
    object cdsParamOPESR_PADROES: TStringField
      FieldName = 'ESR_PADROES'
      Size = 100
    end
    object cdsParamOPESR_COL1: TStringField
      FieldName = 'ESR_COL1'
      Size = 100
    end
    object cdsParamOPESR_COL2: TStringField
      FieldName = 'ESR_COL2'
      Size = 100
    end
    object cdsParamOPESR_COL3: TStringField
      FieldName = 'ESR_COL3'
      Size = 100
    end
    object cdsParamOPESR_COL4: TStringField
      FieldName = 'ESR_COL4'
      Size = 100
    end
    object cdsParamOPESR_COL5: TStringField
      FieldName = 'ESR_COL5'
      Size = 100
    end
    object cdsParamOPESR_COL6: TStringField
      FieldName = 'ESR_COL6'
      Size = 100
    end
    object cdsParamOPESR_COL7: TStringField
      FieldName = 'ESR_COL7'
      Size = 100
    end
    object cdsParamOPFAB_CODIGO: TIntegerField
      FieldName = 'FAB_CODIGO'
    end
  end
  object qParamEsp: TSQLQuery
    Params = <>
    Left = 708
    Top = 265
  end
  object dspParamEsp: TDataSetProvider
    DataSet = qParamEsp
    Left = 814
    Top = 265
  end
  object dspParamOP: TDataSetProvider
    DataSet = qParamOP
    Left = 814
    Top = 209
  end
  object dspcabecalho: TDataSetProvider
    DataSet = qcabecalho
    Left = 814
    Top = 153
  end
  object dsCabecalho: TDataSource
    DataSet = cdscabecalho
    Left = 990
    Top = 153
  end
  object dsParamOP: TDataSource
    DataSet = cdsParamOP
    Left = 998
    Top = 209
  end
  object dsParamEsp: TDataSource
    DataSet = cdsParamEsp
    Left = 998
    Top = 281
  end
  object cdsParamEsp: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspParamEsp'
    OnFilterRecord = cdsEngenhariaFilterRecord
    Left = 911
    Top = 271
    object cdsParamEspESP_NOME: TStringField
      FieldName = 'ESP_NOME'
      Size = 40
    end
    object cdsParamEspESP_PADROES: TStringField
      FieldName = 'ESP_PADROES'
      Size = 40
    end
    object cdsParamEspESP_COL1: TStringField
      FieldName = 'ESP_COL1'
      Size = 40
    end
    object cdsParamEspESP_COL2: TStringField
      FieldName = 'ESP_COL2'
      Size = 40
    end
    object cdsParamEspESP_COL3: TStringField
      FieldName = 'ESP_COL3'
      Size = 40
    end
    object cdsParamEspESP_COL4: TStringField
      FieldName = 'ESP_COL4'
      Size = 40
    end
    object cdsParamEspESP_COL5: TStringField
      FieldName = 'ESP_COL5'
      Size = 40
    end
    object cdsParamEspESP_COL6: TStringField
      FieldName = 'ESP_COL6'
      Size = 40
    end
    object cdsParamEspESP_COL7: TStringField
      FieldName = 'ESP_COL7'
      Size = 40
    end
    object cdsParamEspEMP_LOGO: TBlobField
      FieldName = 'EMP_LOGO'
    end
  end
  object pipParamOp: TppDBPipeline
    DataSource = dsParamOP
    CloseDataSource = True
    UserName = 'pipParamOp'
    Left = 1072
    Top = 208
    MasterDataPipelineName = 'pipCabecalho'
    object pipParamOpppField1: TppField
      FieldAlias = 'ESR_NOME'
      FieldName = 'ESR_NOME'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object pipParamOpppField2: TppField
      FieldAlias = 'ESR_PADROES'
      FieldName = 'ESR_PADROES'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object pipParamOpppField3: TppField
      FieldAlias = 'ESR_COL1'
      FieldName = 'ESR_COL1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object pipParamOpppField4: TppField
      FieldAlias = 'ESR_COL2'
      FieldName = 'ESR_COL2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object pipParamOpppField5: TppField
      FieldAlias = 'ESR_COL3'
      FieldName = 'ESR_COL3'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object pipParamOpppField6: TppField
      FieldAlias = 'ESR_COL4'
      FieldName = 'ESR_COL4'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object pipParamOpppField7: TppField
      FieldAlias = 'ESR_COL5'
      FieldName = 'ESR_COL5'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object pipParamOpppField8: TppField
      FieldAlias = 'ESR_COL6'
      FieldName = 'ESR_COL6'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object pipParamOpppField9: TppField
      FieldAlias = 'ESR_COL7'
      FieldName = 'ESR_COL7'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object pipParamOpppField10: TppField
      FieldAlias = 'FAB_CODIGO'
      FieldName = 'FAB_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object pipParamOpppMasterFieldLink1: TppMasterFieldLink
      MasterFieldName = 'FAB_CODIGO'
      GuidCollationType = gcString
      DetailFieldName = 'FAB_CODIGO'
      DetailSortOrder = soAscending
    end
  end
  object pipParamEsp: TppDBPipeline
    DataSource = dsParamEsp
    CloseDataSource = True
    UserName = 'pipParamEsp'
    Left = 1072
    Top = 272
    object pipParamEspppField1: TppField
      FieldAlias = 'ESP_NOME'
      FieldName = 'ESP_NOME'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object pipParamEspppField2: TppField
      FieldAlias = 'ESP_PADROES'
      FieldName = 'ESP_PADROES'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object pipParamEspppField3: TppField
      FieldAlias = 'ESP_COL1'
      FieldName = 'ESP_COL1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object pipParamEspppField4: TppField
      FieldAlias = 'ESP_COL2'
      FieldName = 'ESP_COL2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object pipParamEspppField5: TppField
      FieldAlias = 'ESP_COL3'
      FieldName = 'ESP_COL3'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object pipParamEspppField6: TppField
      FieldAlias = 'ESP_COL4'
      FieldName = 'ESP_COL4'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object pipParamEspppField7: TppField
      FieldAlias = 'ESP_COL5'
      FieldName = 'ESP_COL5'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object pipParamEspppField8: TppField
      FieldAlias = 'ESP_COL6'
      FieldName = 'ESP_COL6'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object pipParamEspppField9: TppField
      FieldAlias = 'ESP_COL7'
      FieldName = 'ESP_COL7'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object pipParamEspppField10: TppField
      FieldAlias = 'EMP_LOGO'
      FieldName = 'EMP_LOGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
  end
end
