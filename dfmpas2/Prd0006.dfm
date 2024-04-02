inherited FormProdutoGrid: TFormProdutoGrid
  Left = 213
  Top = 168
  Caption = 'Pesquisa de Produtos'
  ClientHeight = 602
  ClientWidth = 1152
  Font.Charset = ANSI_CHARSET
  Font.Name = 'Arial'
  KeyPreview = True
  Position = poDesktopCenter
  ShowHint = True
  WindowState = wsMaximized
  ExplicitWidth = 1168
  ExplicitHeight = 641
  PixelsPerInch = 96
  TextHeight = 14
  object pn1: TPanel [0]
    Left = 0
    Top = 0
    Width = 1152
    Height = 138
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      1152
      138)
    object GroupBox2: TGroupBox
      Left = 3
      Top = 1
      Width = 294
      Height = 133
      Caption = 'Filtro'
      TabOrder = 0
      object Label1: TLabel
        Left = 18
        Top = 18
        Width = 23
        Height = 14
        Caption = 'Tipo:'
      end
      object Label2: TLabel
        Left = 8
        Top = 53
        Width = 33
        Height = 14
        Caption = 'Grupo:'
      end
      object Label3: TLabel
        Left = 12
        Top = 90
        Width = 29
        Height = 14
        Caption = 'Linha:'
      end
      object EdtTipo: TEdit
        Left = 44
        Top = 15
        Width = 29
        Height = 22
        MaxLength = 3
        TabOrder = 0
        OnExit = EdtTipoExit
      end
      object EdtGrupo: TEdit
        Left = 44
        Top = 50
        Width = 29
        Height = 22
        MaxLength = 3
        TabOrder = 2
        OnExit = EdtGrupoExit
      end
      object EdtLinha: TEdit
        Left = 44
        Top = 87
        Width = 29
        Height = 22
        MaxLength = 3
        TabOrder = 4
        OnExit = EdtLinhaExit
      end
      object cbTipo: TSgDbSearchCombo
        Left = 74
        Top = 15
        Width = 192
        Height = 22
        EmptyText = 'TODOS OS TIPOS'
        TabOrder = 1
        CharCase = ecUpperCase
        LookupSelect = 'PTI_CODIGO, PTI_DESCRI, PTI_SIGLA, SPED_GENCODIGO'
        LookupOrderBy = 'PTI_DESCRI'
        LookupTable = 'pRD_TIPO'
        LookupDispl = 'PTI_DESCRI'
        OnSelect = cbTipoSelect
        GridAutoSize = False
        LookupSource = qTipoProduto
        LookupKeyField = 'PTI_CODIGO'
        ShowButton = True
        LookupTableShare = 'TABELAS'
        AutoF8WinTitulo = 'Tipos de Produtos'
        AutoF8ColumnsTitulo = 'C'#243'digo, Descri'#231#227'o, Sigla'
        GridLeft = 0
        GridWidth = 0
        GridHeight = 100
        GridTop = 0
        GridShowWhenEnter = False
        SelectWithDoubleClick = False
        LimparCampoAoSair = True
      end
      object CbGrupo: TSgDbSearchCombo
        Left = 74
        Top = 50
        Width = 191
        Height = 22
        EmptyText = 'TODOS OS GRUPOS'
        TabOrder = 3
        CharCase = ecUpperCase
        LookupSelect = 'PGR_CODIGO, PGR_DESCRI'
        LookupOrderBy = 'PGR_DESCRI'
        LookupTable = 'PRD_GRUPO'
        LookupDispl = 'PGR_DESCRI'
        OnSelect = CbGrupoSelect
        GridAutoSize = False
        LookupSource = qGrupo
        DataField = 'PGR_CODIGO'
        LookupKeyField = 'PGR_CODIGO'
        ShowButton = True
        LookupTableShare = 'TABELAS'
        AutoF8WinTitulo = 'Grupos de Produtos'
        AutoF8ColumnsTitulo = 'C'#243'digo, Descri'#231#227'o'
        GridLeft = 0
        GridWidth = 0
        GridHeight = 100
        GridTop = 0
        GridShowWhenEnter = False
        SelectWithDoubleClick = False
        LimparCampoAoSair = True
      end
      object CBLinha: TSgDbSearchCombo
        Left = 74
        Top = 87
        Width = 191
        Height = 22
        EmptyText = 'TODAS AS LINHAS'
        TabOrder = 5
        OnKeyPress = CBLinhakeyPress
        CharCase = ecUpperCase
        LookupSelect = 'lin_codigo,lin_descri'
        LookupOrderBy = 'lin_descri'
        LookupTable = 'PRD_LINHA'
        LookupDispl = 'LIN_DESCRI'
        OnSelect = CBLinhaSelect
        GridAutoSize = False
        LookupSource = qLinha
        DataField = 'LIN_CODIGO'
        LookupKeyField = 'lin_codigo'
        ShowButton = True
        LookupTableShare = 'TABELAS'
        AutoF8WinTitulo = 'Marcas/Linhas de Produtos'
        AutoF8ColumnsTitulo = 'C'#243'digo, Descri'#231#227'o'
        GridLeft = 0
        GridWidth = 0
        GridHeight = 100
        GridTop = 0
        GridShowWhenEnter = False
        SelectWithDoubleClick = False
        LimparCampoAoSair = True
      end
    end
    object GroupBox1: TGroupBox
      Left = 298
      Top = 1
      Width = 283
      Height = 133
      Caption = 'Pesquisar'
      Color = clBtnFace
      ParentColor = False
      TabOrder = 1
      TabStop = True
      object RadNome: TRadioButton
        Left = 149
        Top = 16
        Width = 74
        Height = 17
        Caption = '&Descri'#231#227'o'
        TabOrder = 1
        OnClick = RadNomeClick
        OnExit = RadNomeExit
      end
      object RadRefer: TRadioButton
        Left = 4
        Top = 16
        Width = 74
        Height = 17
        Caption = '&Refer'#234'ncia'
        Checked = True
        TabOrder = 0
        TabStop = True
        OnClick = RadReferClick
        OnExit = RadReferExit
      end
      object RadCodigoOriginal: TRadioButton
        Left = 5
        Top = 40
        Width = 132
        Height = 17
        Caption = '&C'#243'digo Original'
        TabOrder = 2
        OnClick = RadNomeClick
        OnExit = RadNomeExit
      end
      object rbCodigoFornecedor: TRadioButton
        Left = 149
        Top = 39
        Width = 117
        Height = 17
        Caption = '&C'#243'digo Fornecedor'
        TabOrder = 3
        OnClick = RadNomeClick
        OnExit = RadNomeExit
      end
      object RadComplemento: TRadioButton
        Left = 5
        Top = 64
        Width = 92
        Height = 17
        Caption = 'Complemento'
        TabOrder = 4
        OnClick = RadNomeClick
        OnExit = RadNomeExit
      end
      object RadDescricaoFornecedor: TRadioButton
        Left = 5
        Top = 88
        Width = 131
        Height = 17
        Caption = 'Descri'#231#227'o Fornecedor '
        TabOrder = 5
        OnClick = RadNomeClick
        OnExit = RadNomeExit
      end
      object RbEnderecamento: TRadioButton
        Left = 149
        Top = 65
        Width = 117
        Height = 17
        Caption = 'Endere'#231'amento'
        TabOrder = 6
        OnClick = RadNomeClick
        OnExit = RadNomeExit
      end
      object RbNcm: TRadioButton
        Left = 149
        Top = 88
        Width = 117
        Height = 17
        Caption = 'NCM'
        TabOrder = 7
        OnClick = RadNomeClick
        OnExit = RadNomeExit
      end
      object RadPRD_CODIGO: TRadioButton
        Left = 5
        Top = 109
        Width = 132
        Height = 17
        Hint = 'C'#243'digo interno que vai no sped'
        Caption = '&C'#243'digo sped'
        TabOrder = 8
        OnClick = RadNomeClick
        OnExit = RadNomeExit
      end
    end
    object GbPesquisa: TGroupBox
      Left = 587
      Top = 0
      Width = 273
      Height = 44
      Caption = 'Informe a Refer'#234'ncia do produto :'
      TabOrder = 2
      TabStop = True
      object Edt_Nome: TEdit
        Left = 3
        Top = 18
        Width = 260
        Height = 22
        Hint = 'Tecle ENTER para pesquisar'
        CharCase = ecUpperCase
        TabOrder = 0
        OnChange = Edt_NomeChange
        OnEnter = Edt_NomeEnter
        OnExit = Edt_NomeExit
        OnKeyPress = Edt_NomeKeyPress
      end
    end
    object BitPesquisar: TBitBtn
      Left = 1043
      Top = 5
      Width = 97
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'P&esquisar'
      TabOrder = 3
      OnClick = BitPesquisarClick
    end
    object BitSair: TBitBtn
      Left = 1043
      Top = 36
      Width = 97
      Height = 25
      Anchors = [akTop, akRight]
      Caption = '&Sair'
      TabOrder = 4
      OnClick = BitSairClick
    end
    object chkOcultarInativas: TCheckBox
      Left = 760
      Top = 99
      Width = 97
      Height = 17
      Caption = 'Ocultar Inativos'
      Checked = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 5
    end
    object cbFicha: TCheckBox
      Left = 587
      Top = 100
      Width = 174
      Height = 17
      Caption = 'Filtrar Itens Com Ficha T'#233'cnica'
      TabOrder = 6
      OnClick = cbFichaClick
    end
    object pMedidas: TPanel
      Left = 587
      Top = 48
      Width = 270
      Height = 44
      TabOrder = 7
      object lbDesc1: TLabel
        Left = 2
        Top = 0
        Width = 39
        Height = 14
        Caption = 'lbDesc1'
        FocusControl = cbMedInterno
      end
      object lbDesc2: TLabel
        Left = 49
        Top = 0
        Width = 39
        Height = 14
        Caption = 'lbDesc2'
        FocusControl = cbMedExterno
      end
      object lbDesc3: TLabel
        Left = 99
        Top = 0
        Width = 39
        Height = 14
        Caption = 'lbDesc3'
        FocusControl = cbMedAltura1
      end
      object lbDesc4: TLabel
        Left = 145
        Top = 0
        Width = 39
        Height = 14
        Caption = 'lbDesc4'
        FocusControl = cbMedAltura2
      end
      object Label7: TLabel
        Left = 206
        Top = 0
        Width = 56
        Height = 14
        Caption = 'Varia'#231#227'o %'
        FocusControl = cbMedAltura2
      end
      object cbMedInterno: TSgDbSearchCombo
        Left = 2
        Top = 20
        Width = 46
        Height = 22
        TabOrder = 0
        CharCase = ecUpperCase
        LookupSelect = 
          'PD.PRD_CODIGO, PD.PRD_REFER, PD.PRD_DESCRI, PD.PRD_CODBARRA, PD.' +
          'PRD_PRODSERV, PD.PRD_UND, T2.LIN_DESCRI, 0.0 AS PRD_PVENDA'
        LookupOrderBy = 'PD.PRD_DESCRI'
        LookupTable = 
          'prd0000 PD INNER JOIN PRD_TIPO pt ON (pd.PTI_CODIGO = pt.PTI_COD' +
          'IGO AND pti_disponivel_vendas = '#39'S'#39')  left join PRD_LINHA T2 on ' +
          '(T2.LIN_CODIGO = PD.LIN_CODIGO)'
        LookupDispl = 'INTERNO'
        GridAutoSize = False
        LookupKeyField = 'PD.PRD_CODIGO'
        FiltroTabela = 'PRD_STATUS = '#39'A'#39
        ShowButton = False
        LookupTableShare = 'PRODUTOS'
        LookupWhere = 'INTERNO'
        DataFieldFormat = '###0.000'
        LookupDbGridColumns = 
          'PRD_PRODSERV, PRD_REFER, PRD_DESCRI, PRD_UND, PRD_PVENDA, LIN_DE' +
          'SCRI, PRD_CODBARRA, PRDCO_CODIGO_ORIGINAL'
        LookupDbGridColumnsTitle = 
          'P/S, Refer'#234'ncia, Descri'#231#227'o, Unid., Pre'#231'o, Linha/Marca, C'#243'd.Barra' +
          's, C'#243'd.Cliente'
        GridLeft = 0
        GridWidth = 0
        GridHeight = 100
        GridTop = 0
        GridShowWhenEnter = False
        SelectWithDoubleClick = False
        LimparCampoAoSair = True
      end
      object cbMedExterno: TSgDbSearchCombo
        Left = 49
        Top = 20
        Width = 46
        Height = 22
        TabOrder = 1
        CharCase = ecUpperCase
        LookupSelect = 
          'PD.PRD_CODIGO, PD.PRD_REFER, PD.PRD_DESCRI, PD.PRD_CODBARRA, PD.' +
          'PRD_PRODSERV, PD.PRD_UND, T2.LIN_DESCRI, 0.0 AS PRD_PVENDA'
        LookupOrderBy = 'PD.PRD_DESCRI'
        LookupTable = 
          'prd0000 PD INNER JOIN PRD_TIPO pt ON (pd.PTI_CODIGO = pt.PTI_COD' +
          'IGO AND pti_disponivel_vendas = '#39'S'#39')  left join PRD_LINHA T2 on ' +
          '(T2.LIN_CODIGO = PD.LIN_CODIGO)'
        LookupDispl = 'INTERNO'
        GridAutoSize = False
        LookupKeyField = 'PD.PRD_CODIGO'
        FiltroTabela = 'PRD_STATUS = '#39'A'#39
        ShowButton = False
        LookupTableShare = 'PRODUTOS'
        LookupWhere = 'externo'
        LookupDbGridColumns = 
          'PRD_PRODSERV, PRD_REFER, PRD_DESCRI, PRD_UND, PRD_PVENDA, LIN_DE' +
          'SCRI, PRD_CODBARRA, PRDCO_CODIGO_ORIGINAL'
        LookupDbGridColumnsTitle = 
          'P/S, Refer'#234'ncia, Descri'#231#227'o, Unid., Pre'#231'o, Linha/Marca, C'#243'd.Barra' +
          's, C'#243'd.Cliente'
        GridLeft = 0
        GridWidth = 0
        GridHeight = 100
        GridTop = 0
        GridShowWhenEnter = False
        SelectWithDoubleClick = False
        LimparCampoAoSair = True
      end
      object cbMedAltura1: TSgDbSearchCombo
        Left = 97
        Top = 20
        Width = 46
        Height = 22
        TabOrder = 2
        CharCase = ecUpperCase
        LookupSelect = 
          'PD.PRD_CODIGO, PD.PRD_REFER, PD.PRD_DESCRI, PD.PRD_CODBARRA, PD.' +
          'PRD_PRODSERV, PD.PRD_UND, T2.LIN_DESCRI, 0.0 AS PRD_PVENDA'
        LookupOrderBy = 'PD.PRD_DESCRI'
        LookupTable = 
          'prd0000 PD INNER JOIN PRD_TIPO pt ON (pd.PTI_CODIGO = pt.PTI_COD' +
          'IGO AND pti_disponivel_vendas = '#39'S'#39')  left join PRD_LINHA T2 on ' +
          '(T2.LIN_CODIGO = PD.LIN_CODIGO)'
        LookupDispl = 'INTERNO'
        GridAutoSize = False
        LookupKeyField = 'PD.PRD_CODIGO'
        FiltroTabela = 'PRD_STATUS = '#39'A'#39
        ShowButton = False
        LookupTableShare = 'PRODUTOS'
        LookupWhere = 'altura1'
        LookupDbGridColumns = 
          'PRD_PRODSERV, PRD_REFER, PRD_DESCRI, PRD_UND, PRD_PVENDA, LIN_DE' +
          'SCRI, PRD_CODBARRA, PRDCO_CODIGO_ORIGINAL'
        LookupDbGridColumnsTitle = 
          'P/S, Refer'#234'ncia, Descri'#231#227'o, Unid., Pre'#231'o, Linha/Marca, C'#243'd.Barra' +
          's, C'#243'd.Cliente'
        GridLeft = 0
        GridWidth = 0
        GridHeight = 100
        GridTop = 0
        GridShowWhenEnter = False
        SelectWithDoubleClick = False
        LimparCampoAoSair = True
      end
      object cbMedAltura2: TSgDbSearchCombo
        Left = 145
        Top = 20
        Width = 46
        Height = 22
        TabOrder = 3
        CharCase = ecUpperCase
        LookupSelect = 
          'PD.PRD_CODIGO, PD.PRD_REFER, PD.PRD_DESCRI, PD.PRD_CODBARRA, PD.' +
          'PRD_PRODSERV, PD.PRD_UND, T2.LIN_DESCRI, 0.0 AS PRD_PVENDA'
        LookupOrderBy = 'PD.PRD_DESCRI'
        LookupTable = 
          'prd0000 PD INNER JOIN PRD_TIPO pt ON (pd.PTI_CODIGO = pt.PTI_COD' +
          'IGO AND pti_disponivel_vendas = '#39'S'#39')  left join PRD_LINHA T2 on ' +
          '(T2.LIN_CODIGO = PD.LIN_CODIGO)'
        LookupDispl = 'INTERNO'
        GridAutoSize = False
        LookupKeyField = 'PD.PRD_CODIGO'
        FiltroTabela = 'PRD_STATUS = '#39'A'#39
        ShowButton = False
        LookupTableShare = 'PRODUTOS'
        LookupWhere = 'altura2'
        LookupDbGridColumns = 
          'PRD_PRODSERV, PRD_REFER, PRD_DESCRI, PRD_UND, PRD_PVENDA, LIN_DE' +
          'SCRI, PRD_CODBARRA, PRDCO_CODIGO_ORIGINAL'
        LookupDbGridColumnsTitle = 
          'P/S, Refer'#234'ncia, Descri'#231#227'o, Unid., Pre'#231'o, Linha/Marca, C'#243'd.Barra' +
          's, C'#243'd.Cliente'
        GridLeft = 0
        GridWidth = 0
        GridHeight = 100
        GridTop = 0
        GridShowWhenEnter = False
        SelectWithDoubleClick = False
        LimparCampoAoSair = True
      end
      object EdVariacao: TEdit
        Left = 206
        Top = 20
        Width = 46
        Height = 22
        TabOrder = 4
      end
    end
    object btnLimpar: TBitBtn
      Left = 1043
      Top = 67
      Width = 97
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Cancelar pesquisa'
      TabOrder = 8
      OnClick = btnLimparClick
    end
    object GroupBox3: TGroupBox
      Left = 866
      Top = 1
      Width = 135
      Height = 75
      Caption = 'Data do Cadastro'
      TabOrder = 9
      object Label4: TLabel
        Left = 6
        Top = 21
        Width = 24
        Height = 14
        Caption = 'In'#237'cio'
      end
      object Label5: TLabel
        Left = 14
        Top = 49
        Width = 16
        Height = 14
        Caption = 'Fim'
      end
      object dtInicial: TJvDateEdit
        Left = 36
        Top = 18
        Width = 85
        Height = 22
        ShowNullDate = False
        TabOrder = 0
      end
      object dtFinal: TJvDateEdit
        Left = 36
        Top = 46
        Width = 85
        Height = 22
        ShowNullDate = False
        TabOrder = 1
      end
    end
  end
  object GrpProdutos: TGroupBox [1]
    Left = 0
    Top = 138
    Width = 1152
    Height = 342
    Align = alClient
    TabOrder = 1
    TabStop = True
    object DbProdutoGrid: TDBGrid
      Left = 2
      Top = 16
      Width = 1148
      Height = 324
      Align = alClient
      Color = 16776176
      DataSource = DsRefer
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = []
      OnDrawColumnCell = DbProdutoGridDrawColumnCell
      OnDblClick = DbProdutoGridDblClick
      OnKeyDown = DbProdutoGridKeyDown
      Columns = <
        item
          Expanded = False
          FieldName = 'PRD_REFER'
          Title.Alignment = taCenter
          Title.Caption = 'Refer'#234'ncia'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 119
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRDE_ENDERECO'
          Title.Alignment = taCenter
          Title.Caption = 'Endere'#231'o'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRD_DESCRI'
          Title.Alignment = taCenter
          Title.Caption = 'Descri'#231#227'o do Produto'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 384
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRD_ESTOQUE'
          Title.Alignment = taCenter
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IPI_CODIGO'
          Title.Alignment = taCenter
          Title.Caption = 'NCM'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 66
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LIN_DESCRI'
          Title.Alignment = taCenter
          Title.Caption = 'Marca / Linha'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 139
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRD_CODORIGINAL'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'digo Original'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 99
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRD_UND'
          Title.Caption = 'Und'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Color = clYellow
          Expanded = False
          FieldName = 'PRD_MARGEMVENDA'
          Title.Alignment = taCenter
          Title.Caption = 'Margem %'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRD_PVENDA'
          Title.Alignment = taCenter
          Title.Caption = 'Pre'#231'o Venda'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 85
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRD_PVENDA2'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRD_PVENDA3'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRD_PVENDA4'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRD_PVENDA5'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRD_PVENDA6'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRD_PENDENTE'
          Title.Alignment = taCenter
          Title.Caption = 'Compras '
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 72
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRD_PCUSTO'
          Title.Alignment = taCenter
          Title.Caption = 'Pre'#231'o Custo'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 88
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLI_RAZAO'
          Title.Caption = 'Cliente (Relativo ao C'#243'digo Original)'
          Visible = True
        end>
    end
  end
  object GroupBox4: TGroupBox [2]
    Left = 0
    Top = 480
    Width = 1152
    Height = 122
    Align = alBottom
    Caption = 'Estoque do Produto'
    TabOrder = 2
    object JvDBGrid5: TJvDBGrid
      Left = 2
      Top = 16
      Width = 1148
      Height = 104
      Align = alClient
      Color = 16776176
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
      TitleRowHeight = 24
      WordWrap = True
      Columns = <
        item
          Expanded = False
          FieldName = 'AMX_CODIGO_RET'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'digo'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 188
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AMX_DESCRI_RET'
          Title.Alignment = taCenter
          Title.Caption = 'Nome do Almoxarifado'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 741
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AMX_SALDO_RET'
          Title.Alignment = taCenter
          Title.Caption = 'Saldo'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 200
          Visible = True
        end>
    end
  end
  inherited coCalcula: TACBrCalculadora
    Left = 896
    Top = 208
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    AllowDefault = False
    EnterAsTab = False
    Left = 968
    Top = 216
  end
  inherited DBConn: TSQLConnection
    Left = 840
    Top = 233
  end
  inherited qAux: TSQLQuery
    Left = 314
    Top = 205
  end
  inherited qAux2: TSQLQuery
    Left = 354
    Top = 204
  end
  inherited qAux3: TSQLQuery
    Left = 394
    Top = 204
  end
  object DsRefer: TDataSource
    DataSet = cdsRefer
    Left = 232
    Top = 168
  end
  object DspSaldos: TDataSetProvider
    DataSet = sqlSaldos
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 614
    Top = 377
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
    Left = 700
    Top = 377
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
    Left = 785
    Top = 377
  end
  object qTipoProduto: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DBConn
    Left = 936
    Top = 319
  end
  object qGrupo: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DBConn
    Left = 1000
    Top = 335
  end
  object qLinha: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DBConn
    Left = 1056
    Top = 319
  end
  object sqlSaldos: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DBConn
    Left = 552
    Top = 375
  end
  object cdsRefer: TFDQuery
    AfterScroll = cdsReferAfterScroll
    Connection = DBInicio.FDACConn
    Left = 168
    Top = 170
    object cdsReferPTI_CODIGO: TStringField
      FieldName = 'PTI_CODIGO'
      Size = 3
    end
    object cdsReferPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object cdsReferPRD_ESTOQUE: TFMTBCDField
      DisplayLabel = 'Estoque'
      FieldName = 'PRD_ESTOQUE'
      DisplayFormat = '#,##0.0000'
      Precision = 15
    end
    object cdsReferPRD_ENTRADA: TFMTBCDField
      FieldName = 'PRD_ENTRADA'
      Precision = 15
    end
    object cdsReferPRD_SAIDA: TFMTBCDField
      FieldName = 'PRD_SAIDA'
      Precision = 15
    end
    object cdsReferPRD_PENDENTE: TFMTBCDField
      FieldName = 'PRD_PENDENTE'
      DisplayFormat = '#,##0.0000'
      Precision = 15
    end
    object cdsReferPRD_PCUSTO: TFMTBCDField
      FieldName = 'PRD_PCUSTO'
      OnGetText = cdsReferPRD_PCUSTOGetText
      DisplayFormat = '#,##0.0000'
      Precision = 15
    end
    object cdsReferPRD_PVENDA: TFMTBCDField
      FieldName = 'PRD_PVENDA'
      DisplayFormat = '#,##0.0000'
      Precision = 15
    end
    object cdsReferPRD_RESERVA: TFMTBCDField
      FieldName = 'PRD_RESERVA'
      Precision = 15
    end
    object cdsReferPRD_EMPENHO: TFMTBCDField
      FieldName = 'PRD_EMPENHO'
      Precision = 15
    end
    object cdsReferPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 80
    end
    object cdsReferPRD_UND: TStringField
      FieldName = 'PRD_UND'
      Size = 3
    end
    object cdsReferPRD_CODIGO: TStringField
      DisplayWidth = 5
      FieldName = 'PRD_CODIGO'
      Required = True
      Size = 5
    end
    object cdsReferPRD_CODORIGINAL: TStringField
      FieldName = 'PRD_CODORIGINAL'
      Size = 50
    end
    object cdsReferPRD_STATUS: TStringField
      FieldName = 'PRD_STATUS'
      Size = 1
    end
    object cdsReferLIN_DESCRI: TStringField
      FieldName = 'LIN_DESCRI'
      Size = 30
    end
    object cdsReferIPI_CODIGO: TStringField
      FieldName = 'IPI_CODIGO'
      Size = 8
    end
    object cdsReferPRDE_ENDERECO: TStringField
      FieldName = 'PRDE_ENDERECO'
      Size = 30
    end
    object cdsReferCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Size = 55
    end
    object cdsReferPRD_PVENDA2: TFMTBCDField
      FieldName = 'PRD_PVENDA2'
      Precision = 15
    end
    object cdsReferPRD_PVENDA3: TFMTBCDField
      FieldName = 'PRD_PVENDA3'
      Precision = 15
    end
    object cdsReferPRD_PVENDA4: TFMTBCDField
      FieldName = 'PRD_PVENDA4'
      Precision = 15
    end
    object cdsReferPRD_PVENDA5: TFMTBCDField
      FieldName = 'PRD_PVENDA5'
      Precision = 15
    end
    object cdsReferPRD_PVENDA6: TFMTBCDField
      FieldName = 'PRD_PVENDA6'
      Precision = 15
    end
    object cdsReferPRD_MARGEMVENDA: TFMTBCDField
      FieldName = 'PRD_MARGEMVENDA'
      DisplayFormat = '#,##0.0000'
      Precision = 15
    end
  end
end
