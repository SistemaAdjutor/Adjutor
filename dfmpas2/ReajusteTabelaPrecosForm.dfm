inherited frmReajusteTabelaPrecos: TfrmReajusteTabelaPrecos
  Caption = 'Reajuste tabela pre'#231'os'
  ClientHeight = 319
  ClientWidth = 889
  ExplicitWidth = 897
  ExplicitHeight = 346
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox [0]
    Left = 24
    Top = 32
    Width = 617
    Height = 113
    Caption = 
      'Selecione crit'#233'rios para sele'#231#227'o dos produtos cujos pre'#231'os ser'#227'o' +
      ' reajustados: ( Vazio=Todos os Produtos da Tabela )'
    TabOrder = 0
    object Label23: TLabel
      Left = 66
      Top = 35
      Width = 24
      Height = 13
      Caption = 'Tipo:'
    end
    object Label22: TLabel
      Left = 56
      Top = 58
      Width = 33
      Height = 13
      Caption = 'Grupo:'
    end
    object Label7: TLabel
      Left = 21
      Top = 83
      Width = 68
      Height = 13
      Caption = 'Marca / Linha:'
    end
    object edTipo: TSgDbSearchCombo
      Left = 95
      Top = 32
      Width = 330
      Height = 21
      EmptyText = 'Selecione..'
      TabOrder = 0
      Text = 'Selecione..'
      LookupSelect = 'PTI_CODIGO, PTI_DESCRI'
      LookupOrderBy = 'PTI_DESCRI'
      LookupTable = 'PRD_TIPO'
      LookupDispl = 'PTI_DESCRI'
      GridAutoSize = False
      LookupSource = qAux
      LookupKeyField = 'PTI_CODIGO'
      ShowButton = True
      LookupTableShare = 'TABELAS'
      AutoF8WinTitulo = 'Tipos de Produtos'
      AutoF8ColumnsTitulo = 'C'#243'digo, Descri'#231#227'o'
      GridLeft = 0
      GridWidth = 0
      GridHeight = 100
      GridShowWhenEnter = False
      SelectWithDoubleClick = False
    end
    object edLinha: TSgDbSearchCombo
      Left = 96
      Top = 80
      Width = 330
      Height = 21
      EmptyText = 'Selecione..'
      TabOrder = 1
      Text = 'Selecione..'
      LookupSelect = 'LIN_CODIGO, LIN_DESCRI'
      LookupOrderBy = 'LIN_DESCRI'
      LookupTable = 'PRD_LINHA'
      LookupDispl = 'LIN_DESCRI'
      GridAutoSize = False
      LookupSource = qAux
      LookupKeyField = 'LIN_CODIGO'
      ShowButton = True
      AutoF8ColumnsTitulo = 'C'#243'digo, descri'#231#227'o'
      GridLeft = 0
      GridWidth = 0
      GridHeight = 100
      GridShowWhenEnter = False
      SelectWithDoubleClick = False
    end
    object edGrupo: TSgDbSearchCombo
      Left = 96
      Top = 56
      Width = 330
      Height = 21
      EmptyText = 'Selecione..'
      TabOrder = 2
      Text = 'Selecione..'
      LookupSelect = 'PGR_CODIGO, PGR_DESCRI'
      LookupOrderBy = 'PGR_DESCRI'
      LookupTable = 'PRD_GRUPO'
      LookupDispl = 'PGR_DESCRI'
      GridAutoSize = False
      LookupSource = qAux
      LookupKeyField = 'PGR_CODIGO'
      ShowButton = True
      AutoF8ColumnsTitulo = 'C'#243'digo, grupo'
      GridLeft = 0
      GridWidth = 0
      GridHeight = 100
      GridShowWhenEnter = False
      SelectWithDoubleClick = False
    end
  end
  object GroupBox2: TGroupBox [1]
    Left = 24
    Top = 165
    Width = 617
    Height = 103
    Caption = 'Tipo de reajuste de pre'#231'os:'
    TabOrder = 1
    object Label1: TLabel
      Left = 352
      Top = 24
      Width = 111
      Height = 13
      Caption = 'Margem ou Percentual;'
    end
    object RadioButton1: TRadioButton
      Left = 24
      Top = 24
      Width = 265
      Height = 17
      Caption = 'Por percentual sobre o pre'#231'o atual'
      Checked = True
      TabOrder = 0
      TabStop = True
    end
    object RadioButton2: TRadioButton
      Left = 24
      Top = 68
      Width = 265
      Height = 17
      Caption = 'Por margem bruta sobre o custo (MarkUp)'
      TabOrder = 1
      Visible = False
    end
    object RadioButton3: TRadioButton
      Left = 24
      Top = 46
      Width = 265
      Height = 17
      Caption = 'Por margem bruta sobre o custo (Margem Bruta)'
      TabOrder = 2
      Visible = False
    end
    object currpercentual: TJvCalcEdit
      Left = 352
      Top = 40
      Width = 121
      Height = 21
      TabOrder = 3
      DecimalPlacesAlwaysShown = False
    end
  end
  object btnAplicar: TButton [2]
    Left = 472
    Top = 280
    Width = 75
    Height = 25
    Caption = 'Aplicar'
    TabOrder = 3
    OnClick = btnAplicarClick
  end
  object Button2: TButton [3]
    Left = 560
    Top = 280
    Width = 75
    Height = 25
    Caption = 'Sair'
    TabOrder = 2
    OnClick = Button2Click
  end
  inherited coCalcula: TACBrCalculadora
    Left = 656
    Top = 152
  end
  inherited DBConn: TSQLConnection
    Left = 600
    Top = 153
  end
  object qTipo: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DBConn
    Left = 496
    Top = 40
  end
  object qGrupo: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DBConn
    Left = 544
    Top = 72
  end
  object qLinha: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DBConn
    Left = 608
    Top = 48
  end
end
