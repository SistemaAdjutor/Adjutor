inherited frmApontamento: TfrmApontamento
  Caption = 'Apontamento'
  ClientHeight = 562
  ClientWidth = 1485
  WindowState = wsMaximized
  ExplicitWidth = 1501
  ExplicitHeight = 600
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter [0]
    Left = 786
    Top = 76
    Width = 6
    Height = 445
    ExplicitLeft = 681
    ExplicitTop = 68
    ExplicitHeight = 389
  end
  object Panel1: TPanel [1]
    Left = 792
    Top = 76
    Width = 693
    Height = 445
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 0
    object Splitter2: TSplitter
      Left = 1
      Top = 178
      Width = 691
      Height = 7
      Cursor = crVSplit
      Align = alTop
      ResizeStyle = rsLine
      ExplicitLeft = 0
      ExplicitTop = 185
      ExplicitWidth = 466
    end
    object pApontamento: TPanel
      Left = 1
      Top = 1
      Width = 691
      Height = 177
      Align = alTop
      TabOrder = 0
      object dbgApontamentos: TDBGrid
        Left = 1
        Top = 22
        Width = 689
        Height = 128
        Align = alClient
        DataSource = dsapontar
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        PopupMenu = pmApontamentos
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'COL_NOME'
            Width = 116
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'APF_DATA_INI'
            Width = 92
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'APF_DATA_FIM'
            Width = 98
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'APF_INICIADA'
            Title.Caption = 'Produzindo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'APF_FINALIZADAS'
            Title.Caption = 'Concluida'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'APF_REFUGADO'
            Title.Caption = 'Refugadas'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'APF_CANCELADO'
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EQP_DESCRICAO'
            Title.Caption = 'Equipamento'
            Width = 220
            Visible = True
          end>
      end
      object pBotaoApt: TPanel
        Left = 1
        Top = 150
        Width = 689
        Height = 26
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 1
        object btnApontarIncluir: TBitBtn
          Tag = 1
          Left = 2
          Top = 1
          Width = 87
          Height = 24
          Cursor = crHandPoint
          Hint = 'Apontar (F2)'
          Caption = 'Apontar'
          Glyph.Data = {
            E6000000424DE60000000000000076000000280000000E0000000E0000000100
            04000000000070000000CE0E0000D80E00001000000000000000000000000000
            BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            3300333333333333330033333333333333003333300033333300333330003333
            3300333330003333330033000000000333003300000000033300330000000003
            3300333330003333330033333000333333003333300033333300333333333333
            33003333333333333300}
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          TabStop = False
          OnClick = btnEngProcessoClick
        end
        object btnFinalizarApt: TBitBtn
          Tag = 1
          Left = 94
          Top = 1
          Width = 78
          Height = 24
          Cursor = crHandPoint
          Hint = 'Finaliza o apontamento (selecione um apontamento)'
          Caption = 'Finalizar'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          TabStop = False
          OnClick = btnFinalizarAptClick
        end
        object btnCancelar: TBitBtn
          Tag = 1
          Left = 178
          Top = 1
          Width = 78
          Height = 24
          Cursor = crHandPoint
          Hint = 
            'Cancela o apontamento e a sua quantidade em produ'#231#227'o ser'#225' estorn' +
            'ada'
          Caption = 'Cancelar'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          TabStop = False
          OnClick = btnCancelarClick
        end
        object btnOcorrenciaApontamento: TBitBtn
          Tag = 1
          Left = 261
          Top = 1
          Width = 196
          Height = 24
          Cursor = crHandPoint
          Hint = 
            'Registra uma ocorr'#234'ncia para o apontamento (selecione um apontam' +
            'ento) '
          Caption = 'Registrar ocorr'#234'ncia no apontamento'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          TabStop = False
          OnClick = btnOcorrenciaApontamentoClick
        end
        object btnAltColaborador: TBitBtn
          Tag = 1
          Left = 461
          Top = 0
          Width = 196
          Height = 24
          Cursor = crHandPoint
          Hint = 'Altarea'#231#227'o do colaborador ou Equipamento'
          Caption = 'Alterar colaborador ou equipamento'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          TabStop = False
          OnClick = btnAltColaboradorClick
        end
      end
      object Panel4: TPanel
        Left = 1
        Top = 1
        Width = 689
        Height = 21
        Align = alTop
        TabOrder = 2
        object Label3: TLabel
          Left = 3
          Top = 3
          Width = 106
          Height = 13
          Caption = 'Apontamentos da OP:'
        end
        object DBText1: TDBText
          Left = 110
          Top = 3
          Width = 112
          Height = 17
          DataField = 'OSV_CODIGO'
          DataSource = dsEngenharia
        end
        object DBText3: TDBText
          Left = 272
          Top = 3
          Width = 65
          Height = 17
          DataField = 'OPE_DESCRICAO'
          DataSource = dsEngenharia
        end
        object Label6: TLabel
          Left = 219
          Top = 3
          Width = 51
          Height = 13
          Caption = 'Opera'#231#227'o:'
        end
      end
    end
    object TPanel
      Left = 1
      Top = 185
      Width = 691
      Height = 259
      Align = alClient
      Caption = 'Ocorr'#234'ncias'
      TabOrder = 1
      object Panel2: TPanel
        Left = 1
        Top = 1
        Width = 689
        Height = 257
        Align = alClient
        Caption = 'Panel2'
        TabOrder = 0
        object dbgEngGeral: TDBGrid
          Left = 1
          Top = 23
          Width = 687
          Height = 233
          Align = alClient
          DataSource = dsEngeGeral
          PopupMenu = pmEngenharia
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'SEQUENCIA'
              Title.Caption = 'Sequ'#234'ncia'
              Width = 51
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OPE_CODIGO'
              Title.Caption = 'C'#243'd.'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OPE_DESCRICAO'
              Title.Caption = 'Opera'#231#227'o'
              Width = 93
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
              FieldName = 'PRD_DESCRI'
              Width = 192
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Restantes'
              Title.Caption = 'Dias'
              Width = 55
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OSV_QTDE'
              Title.Caption = 'Qtde Produzir'
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
              Width = 53
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FAB_REFUGADA'
              Width = 51
              Visible = True
            end>
        end
        object pcabecalhoeng: TPanel
          Left = 1
          Top = 1
          Width = 687
          Height = 22
          Align = alTop
          TabOrder = 1
          object Label2: TLabel
            Left = 2
            Top = 2
            Width = 197
            Height = 13
            Caption = 'Engenharia de processo completo da OP:'
          end
          object edOSV_CODIGO: TDBText
            Left = 205
            Top = 2
            Width = 112
            Height = 17
            DataField = 'OSV_CODIGO'
            DataSource = dsEngenharia
          end
        end
      end
    end
  end
  object pEsquerda: TPanel [2]
    Left = 0
    Top = 76
    Width = 786
    Height = 445
    Align = alLeft
    Caption = 'pEsquerda'
    TabOrder = 1
    object Splitter3: TSplitter
      Left = 1
      Top = 175
      Width = 784
      Height = 9
      Cursor = crVSplit
      Align = alTop
      ResizeStyle = rsLine
      ExplicitLeft = -31
      ExplicitTop = 166
      ExplicitWidth = 678
    end
    object pocorrencias: TPanel
      Left = 1
      Top = 184
      Width = 784
      Height = 260
      Align = alClient
      TabOrder = 0
      object Panel3: TPanel
        Left = 1
        Top = 1
        Width = 782
        Height = 21
        Align = alTop
        TabOrder = 0
        object Label4: TLabel
          Left = 9
          Top = 2
          Width = 93
          Height = 13
          Caption = 'Ocorr'#234'ncias da OP:'
        end
        object DBText2: TDBText
          Left = 104
          Top = 2
          Width = 112
          Height = 17
          DataField = 'OSV_CODIGO'
          DataSource = dsEngenharia
        end
      end
      object pBotaoOcorrencia: TPanel
        Left = 1
        Top = 228
        Width = 782
        Height = 31
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 1
        DesignSize = (
          782
          31)
        object btnResolver: TBitBtn
          Tag = 1
          Left = 0
          Top = 4
          Width = 134
          Height = 24
          Cursor = crHandPoint
          Hint = 'Marca ocorr'#234'ncia resolvida'
          Anchors = [akLeft, akBottom]
          Caption = 'Resolver ocorr'#234'ncia'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          TabStop = False
          OnClick = btnResolverClick
        end
      end
      object dbgOcorrencias: TDBGrid
        Left = 1
        Top = 22
        Width = 782
        Height = 206
        Align = alClient
        DataSource = dsOcorrencia
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        PopupMenu = pmOcorrencia
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'OCO_DESCRICAO'
            Title.Caption = 'Ocorrido'
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
            Title.Caption = 'Respons'#225'vel'
            Width = 148
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OCE_DATAOCORRENCIA'
            Title.Caption = 'Ocorrido'
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
            Title.Caption = 'Resolvido'
            Width = 119
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OCE_COMENTARIO'
            Title.Caption = 'Coment'#225'rios resolu'#231#227'o'
            Visible = True
          end>
      end
    end
    object PTarefas: TPanel
      Left = 1
      Top = 1
      Width = 784
      Height = 174
      Align = alTop
      TabOrder = 1
      object pocorrenciatitulo: TPanel
        Left = 1
        Top = 1
        Width = 782
        Height = 21
        Align = alTop
        TabOrder = 0
        object Label5: TLabel
          Left = 9
          Top = 3
          Width = 116
          Height = 13
          Caption = 'Processos de fabrica'#231#227'o'
        end
      end
      object dbgEngenharia: TDBGrid
        Left = 1
        Top = 22
        Width = 782
        Height = 151
        Align = alClient
        DataSource = dsEngenharia
        PopupMenu = pmEngenharia
        TabOrder = 1
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
            FieldName = 'OSV_DTENTREGA'
            Width = 69
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRD_REFER'
            Title.Caption = 'Refer'#234'ncia'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRD_DESCRI'
            Width = 156
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Restantes'
            PopupMenu = pmApontamentos
            Title.Caption = 'Dias'
            Width = 46
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OSV_QTDE'
            Title.Caption = 'Qtde Produzir'
            Width = 73
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
            Width = 51
            Visible = True
          end>
      end
    end
  end
  object pbotoes: TPanel [3]
    Left = 0
    Top = 521
    Width = 1485
    Height = 41
    Align = alBottom
    TabOrder = 2
    DesignSize = (
      1485
      41)
    object btnIncluirOcorrencia: TBitBtn
      Tag = 1
      Left = 11
      Top = 6
      Width = 222
      Height = 24
      Cursor = crHandPoint
      Hint = 'registrar alguma ocorr'#234'ncia na opera'#231#227'o (F3)'
      Caption = 'Registrar ocorr'#234'ncia na opera'#231#227'o (F3)'
      Glyph.Data = {
        E6000000424DE60000000000000076000000280000000E0000000E0000000100
        04000000000070000000CE0E0000D80E00001000000000000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3300333333333333330033333333333333003333300033333300333330003333
        3300333330003333330033000000000333003300000000033300330000000003
        3300333330003333330033333000333333003333300033333300333333333333
        33003333333333333300}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      TabStop = False
      OnClick = btnIncluirOcorrenciaClick
    end
    object BtnSair: TBitBtn
      Left = 1369
      Top = 6
      Width = 100
      Height = 25
      Hint = 'Sair'
      Anchors = [akTop, akRight]
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = BtnSairClick
    end
  end
  object pFiltro: TPanel [4]
    Left = 0
    Top = 0
    Width = 1485
    Height = 76
    Align = alTop
    TabOrder = 3
    object Label1: TLabel
      Left = 11
      Top = 13
      Width = 47
      Height = 13
      Caption = 'Opera'#231#227'o'
    end
    object OP: TLabel
      Left = 393
      Top = 13
      Width = 14
      Height = 13
      Caption = 'OP'
    end
    object Label7: TLabel
      Left = 17
      Top = 37
      Width = 38
      Height = 13
      Caption = 'Produto'
    end
    object EdOperacaoCodigo: TEdit
      Left = 65
      Top = 10
      Width = 51
      Height = 21
      TabOrder = 0
      OnExit = EdOperacaoCodigoExit
      OnKeyDown = EdOperacaoCodigoKeyDown
    end
    object edOperacao: TSgDbSearchCombo
      Left = 118
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
    object rgFiltrarStatus: TRadioGroup
      Left = 757
      Top = 5
      Width = 185
      Height = 62
      Caption = 'Filtrar'
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Todas'
        'Conclu'#237'das'
        'Pendentes')
      TabOrder = 2
      OnClick = rgFiltrarStatusClick
    end
    object edProdutoCodigo: TEdit
      Left = 65
      Top = 33
      Width = 52
      Height = 21
      CharCase = ecUpperCase
      Color = clWhite
      TabOrder = 3
      OnExit = edProdutoCodigoExit
      OnKeyDown = edProdutoCodigoKeyDown
    end
    object cbReferencia: TSgDbSearchCombo
      Left = 119
      Top = 33
      Width = 236
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
        's, C'#243'd.Cliente'
      GridLeft = 0
      GridWidth = 0
      GridHeight = 100
      GridShowWhenEnter = False
      SelectWithDoubleClick = False
    end
    object Edt_Nome: TEdit
      Left = 416
      Top = 10
      Width = 105
      Height = 21
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnExit = Edt_NomeExit
    end
    object btnFiltrar: TBitBtn
      Left = 948
      Top = 9
      Width = 75
      Height = 24
      Caption = 'Filtrar'
      TabOrder = 6
      OnClick = btnFiltrarClick
    end
    object btnLimparTudo: TBitBtn
      Left = 948
      Top = 39
      Width = 75
      Height = 25
      Caption = 'Limpar filtros'
      TabOrder = 7
      OnClick = btnLimparTudoClick
    end
    object Gentrega: TGroupBox
      Left = 525
      Top = 3
      Width = 228
      Height = 71
      Caption = 'Data entrega'
      TabOrder = 8
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
        Left = 13
        Top = 41
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
        Left = 49
        Top = 37
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
        Left = 145
        Top = 11
        Width = 75
        Height = 24
        Caption = 'Filtrar'
        TabOrder = 2
        OnClick = btnLimparClick
      end
      object btnHoje: TBitBtn
        Left = 144
        Top = 36
        Width = 75
        Height = 24
        Caption = 'Hoje'
        TabOrder = 3
        OnClick = btnHojeClick
      end
    end
  end
  inherited coCalcula: TACBrCalculadora
    Left = 1080
    Top = 65528
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 1056
    Top = 8
  end
  inherited DBConn: TSQLConnection
    Left = 56
    Top = 121
  end
  inherited qAux: TSQLQuery
    Left = 626
    Top = 65533
  end
  inherited qAux2: TSQLQuery
    Left = 1258
    Top = 28
  end
  inherited qAux3: TSQLQuery
    Left = 1274
    Top = 4
  end
  object qOperacoes: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select ope_codigo, ope_descricao')
    SQLConnection = DBConn
    Left = 1304
    Top = 28
  end
  object qEngenharia: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      '')
    SQLConnection = DBConn
    Left = 98
    Top = 125
  end
  object dspEngenharia: TDataSetProvider
    DataSet = qEngenharia
    Left = 8
    Top = 111
  end
  object cdsEngenharia: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEngenharia'
    AfterScroll = cdsEngenhariaAfterScroll
    OnFilterRecord = cdsEngenhariaFilterRecord
    Left = 71
    Top = 175
    object cdsEngenhariaOSV_CODIGO: TStringField
      DisplayLabel = 'OSV'
      FieldName = 'OSV_CODIGO'
      Size = 12
    end
    object cdsEngenhariaOSV_QTDE: TFMTBCDField
      DisplayLabel = 'Solicitada'
      FieldName = 'OSV_QTDE'
      Size = 18
    end
    object cdsEngenhariaOSV_DTENTREGA: TSQLTimeStampField
      DisplayLabel = 'Entrega'
      FieldName = 'OSV_DTENTREGA'
    end
    object cdsEngenhariaFAB_PRODUZINDO: TFMTBCDField
      DisplayLabel = 'Produzindo'
      FieldName = 'FAB_PRODUZINDO'
      DisplayFormat = '###,###,##0.00'
      Precision = 15
      Size = 4
    end
    object cdsEngenhariaFAB_PRODUZIDA: TFMTBCDField
      DisplayLabel = 'Produzida'
      FieldName = 'FAB_PRODUZIDA'
      DisplayFormat = '###,###,##0.00'
      Precision = 15
      Size = 4
    end
    object cdsEngenhariaFAB_REFUGADA: TFMTBCDField
      DisplayLabel = 'Refugada'
      FieldName = 'FAB_REFUGADA'
      DisplayFormat = '###,###,##0.00'
      Precision = 15
      Size = 4
    end
    object cdsEngenhariaPRD_DESCRI: TStringField
      DisplayLabel = 'Produto'
      FieldName = 'PRD_DESCRI'
      Size = 100
    end
    object cdsEngenhariaRestantes: TLargeintField
      DisplayLabel = 'Restantes (dias)'
      FieldName = 'Restantes'
    end
    object cdsEngenhariaFAB_CODIGO: TIntegerField
      FieldName = 'FAB_CODIGO'
    end
    object cdsEngenhariaDATA_CONCLUSAO: TSQLTimeStampField
      FieldName = 'DATA_CONCLUSAO'
    end
    object cdsEngenhariaDATA_INCIO: TSQLTimeStampField
      FieldName = 'DATA_INCIO'
    end
    object cdsEngenhariaOPE_DESCRICAO: TStringField
      FieldName = 'OPE_DESCRICAO'
      Size = 60
    end
    object cdsEngenhariaPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
    end
    object cdsEngenhariaEQP_CODIGO: TIntegerField
      FieldName = 'EQP_CODIGO'
    end
  end
  object dsEngenharia: TDataSource
    DataSet = cdsEngenharia
    Left = 16
    Top = 176
  end
  object dsapontar: TDataSource
    DataSet = cdsApontar
    Left = 696
    Top = 112
  end
  object cdsApontar: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspApontar'
    Left = 743
    Top = 119
    object cdsApontarAPF_CODIGO: TIntegerField
      FieldName = 'APF_CODIGO'
    end
    object cdsApontarFAB_CODIGO: TIntegerField
      FieldName = 'FAB_CODIGO'
    end
    object cdsApontarCOL_CODIGO: TIntegerField
      FieldName = 'COL_CODIGO'
    end
    object cdsApontarAPF_DATA_INI: TSQLTimeStampField
      DisplayLabel = 'In'#237'cio'
      FieldName = 'APF_DATA_INI'
      DisplayFormat = 'dd/mm/yyyy hh:nn'
    end
    object cdsApontarAPF_DATA_FIM: TSQLTimeStampField
      DisplayLabel = 'Fim'
      FieldName = 'APF_DATA_FIM'
      DisplayFormat = 'dd/mm/yyyy hh:nn'
    end
    object cdsApontarCOL_NOME: TStringField
      DisplayLabel = 'Colaborador'
      FieldName = 'COL_NOME'
      Size = 40
    end
    object cdsApontarAPF_INICIADA: TFMTBCDField
      DisplayLabel = 'Fabricando'
      FieldName = 'APF_INICIADA'
      Size = 18
    end
    object cdsApontarAPF_CANCELADO: TStringField
      DisplayLabel = 'Cancelado'
      FieldName = 'APF_CANCELADO'
    end
    object cdsApontarAPF_MOTIVOCANCELAMENTO: TStringField
      DisplayLabel = 'Motivo cancelamento'
      FieldName = 'APF_MOTIVOCANCELAMENTO'
      Size = 60
    end
    object cdsApontarAPF_FINALIZADAS: TFMTBCDField
      FieldName = 'APF_FINALIZADAS'
      Size = 18
    end
    object cdsApontarAPF_REFUGADO: TFMTBCDField
      FieldName = 'APF_REFUGADO'
    end
    object cdsApontarEQP_CODIGO: TIntegerField
      FieldName = 'EQP_CODIGO'
    end
    object cdsApontarEQP_DESCRICAO: TStringField
      FieldName = 'EQP_DESCRICAO'
      Size = 60
    end
  end
  object qApontar: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      ''
      'SELECT  APF_CODIGO, FAB_CODIGO, '
      
        '       COL_CODIGO, COL_NOME,  APF_DATA_INI, APF_DATA_FIM, APF_IN' +
        'ICIADA, APF_CANCELADO, APF_MOTIVOCANCELAMENTO '
      
        'FROM APONTAMENTO_FAB APF INNER JOIN COLABORADOR COL ON (COL.COL_' +
        'CODIGO = APF.COL_CODIGO)')
    SQLConnection = DBConn
    Left = 762
    Top = 165
  end
  object dspApontar: TDataSetProvider
    DataSet = qApontar
    Left = 704
    Top = 159
  end
  object pmEngenharia: TPopupMenu
    Left = 408
    Top = 200
    object Apontar1: TMenuItem
      Caption = 'Apontar'
      OnClick = Apontar1Click
    end
    object Registrarocorrncia1: TMenuItem
      Caption = 'Registrar ocorr'#234'ncia'
    end
  end
  object pmApontamentos: TPopupMenu
    Left = 1040
    Top = 136
    object miApontar: TMenuItem
      Caption = 'Apontar'
      ShortCut = 113
      OnClick = miApontarClick
    end
    object miFinalizar: TMenuItem
      Caption = 'Finalizar'
      OnClick = miFinalizarClick
    end
    object miCancelar: TMenuItem
      Caption = 'Cancelar'
      OnClick = miCancelarClick
    end
  end
  object pmOcorrencia: TPopupMenu
    Left = 928
    Top = 336
    object Incluirumaocorrncia1: TMenuItem
      Caption = 'Incluir uma ocorr'#234'ncia'
      ShortCut = 114
      OnClick = Incluirumaocorrncia1Click
    end
    object Incluirumaocorrnciaatodosprocessos1: TMenuItem
      Caption = 'Incluir uma ocorr'#234'ncia a todos processos da tela'
      Visible = False
    end
    object Marcaocorrnciaresolvida1: TMenuItem
      Caption = 'Marca ocorr'#234'ncia resolvida'
    end
  end
  object dsOcorrencia: TDataSource
    DataSet = cdsOcorrencia
    Left = 582
    Top = 329
  end
  object cdsOcorrencia: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspOcorrencia'
    Left = 518
    Top = 369
    object cdsOcorrenciaOCO_DESCRICAO: TStringField
      FieldName = 'OCO_DESCRICAO'
      Size = 60
    end
    object cdsOcorrenciaCOL_NOME: TStringField
      FieldName = 'COL_NOME'
      Size = 40
    end
    object cdsOcorrenciaOCE_CODIGO: TIntegerField
      FieldName = 'OCE_CODIGO'
    end
    object cdsOcorrenciaFAB_CODIGO: TIntegerField
      FieldName = 'FAB_CODIGO'
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
    object cdsOcorrenciaOCE_ESTORNO: TIntegerField
      FieldName = 'OCE_ESTORNO'
    end
    object cdsOcorrenciaOCE_COMENTARIO: TStringField
      FieldName = 'OCE_COMENTARIO'
      Size = 100
    end
  end
  object dspOcorrencia: TDataSetProvider
    DataSet = qOcorrencia
    Left = 510
    Top = 313
  end
  object qOcorrencia: TSQLQuery
    Params = <>
    Left = 590
    Top = 361
    object qOcorrenciaOCO_DESCRICAO: TStringField
      FieldName = 'OCO_DESCRICAO'
      Size = 60
    end
    object qOcorrenciaCOL_NOME: TStringField
      FieldName = 'COL_NOME'
      Size = 40
    end
    object qOcorrenciaOCE_CODIGO: TIntegerField
      FieldName = 'OCE_CODIGO'
    end
    object qOcorrenciaFAB_CODIGO: TIntegerField
      FieldName = 'FAB_CODIGO'
    end
    object qOcorrenciaOCE_MOTIVO: TStringField
      FieldName = 'OCE_MOTIVO'
      Size = 60
    end
    object qOcorrenciaOCE_DATAOCORRENCIA: TSQLTimeStampField
      FieldName = 'OCE_DATAOCORRENCIA'
    end
    object qOcorrenciaOCE_DATAPREVISAO: TSQLTimeStampField
      FieldName = 'OCE_DATAPREVISAO'
    end
    object qOcorrenciaOCE_DATAFIM: TSQLTimeStampField
      FieldName = 'OCE_DATAFIM'
    end
    object qOcorrenciaOCE_ESTORNO: TIntegerField
      FieldName = 'OCE_ESTORNO'
    end
    object qOcorrenciaoce_comentario: TStringField
      FieldName = 'oce_comentario'
      Size = 100
    end
  end
  object dspEngGeral: TDataSetProvider
    DataSet = qEngeGeral
    Left = 1296
    Top = 351
  end
  object dsEngeGeral: TDataSource
    DataSet = cdsEngGeral
    Left = 1248
    Top = 384
  end
  object cdsEngGeral: TClientDataSet
    Aggregates = <>
    AutoCalcFields = False
    Params = <>
    ProviderName = 'dspEngGeral'
    Left = 1335
    Top = 375
    object cdsEngGeralOPE_DESCRICAO: TStringField
      FieldName = 'OPE_DESCRICAO'
      Size = 60
    end
    object cdsEngGeralSEQUENCIA: TIntegerField
      FieldName = 'SEQUENCIA'
    end
    object cdsEngGeralOSV_QTDE: TFMTBCDField
      DisplayLabel = 'Solicitada'
      FieldName = 'OSV_QTDE'
      Size = 18
    end
    object cdsEngGeralOSV_DTENTREGA: TSQLTimeStampField
      DisplayLabel = 'Entrega'
      FieldName = 'OSV_DTENTREGA'
    end
    object cdsEngGeralFAB_PRODUZINDO: TFMTBCDField
      DisplayLabel = 'Produzindo'
      FieldName = 'FAB_PRODUZINDO'
      Size = 18
    end
    object cdsEngGeralFAB_PRODUZIDA: TFMTBCDField
      DisplayLabel = 'Produzida'
      FieldName = 'FAB_PRODUZIDA'
      Size = 18
    end
    object cdsEngGeralFAB_REFUGADA: TFMTBCDField
      DisplayLabel = 'Refugada'
      FieldName = 'FAB_REFUGADA'
      Size = 18
    end
    object cdsEngGeralPRD_DESCRI: TStringField
      DisplayLabel = 'Produto'
      FieldName = 'PRD_DESCRI'
      Size = 100
    end
    object cdsEngGeralRestantes: TLargeintField
      DisplayLabel = 'Restantes (dias)'
      FieldName = 'Restantes'
    end
    object cdsEngGeralFAB_CODIGO: TIntegerField
      FieldName = 'FAB_CODIGO'
    end
    object cdsEngGeralOPE_CODIGO: TIntegerField
      FieldName = 'OPE_CODIGO'
    end
  end
  object qEngeGeral: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      '')
    SQLConnection = DBConn
    Left = 1330
    Top = 333
  end
  object QExport4XLS1: TQExport4XLS
    About = '(About EMS AdvancedExport)'
    _Version = '4.11.1.1'
    Formats.DecimalSeparator = ','
    Formats.ThousandSeparator = '.'
    Formats.DateSeparator = '/'
    Formats.TimeSeparator = ':'
    Formats.BooleanTrue = 'true'
    Formats.BooleanFalse = 'false'
    Formats.IntegerFormat = '#,###,##0'
    Formats.FloatFormat = '#,###,##0.00'
    Formats.DateFormat = 'dd/MM/yyyy'
    Formats.TimeFormat = 'hh:mm'
    Formats.DateTimeFormat = 'dd/MM/yyyy hh:mm:ss'
    Formats.CurrencyFormat = 'R$ #,###,##0.00'
    AutoCalcColWidth = True
    Options.PageFooter = 'Page &P of &N'
    Options.SheetTitle = 'Sheet 1'
    Options.CaptionsFormat.Font.Style = [xfsBold]
    Options.HyperlinkFormat.Font.Color = clrBlue
    Options.HyperlinkFormat.Font.Underline = fulSingle
    Options.NoteFormat.Alignment.Horizontal = halLeft
    Options.NoteFormat.Alignment.Vertical = valTop
    Options.NoteFormat.Font.Size = 8
    Options.NoteFormat.Font.Style = [xfsBold]
    Options.NoteFormat.Font.Name = 'Tahoma'
    FieldFormats = <>
    StripStyles = <>
    Hyperlinks = <>
    Notes = <>
    Charts = <>
    Sheets = <>
    Pictures = <>
    Images = <>
    Cells = <>
    Aggregates = <>
    MergedCells = <>
    DefRowHeight = 12.750000000000000000
    Left = 1140
    Top = 10
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
