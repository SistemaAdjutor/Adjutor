inherited frmFiltroExportar: TfrmFiltroExportar
  Caption = 'Filtro produto'
  ClientHeight = 103
  ClientWidth = 299
  ExplicitWidth = 307
  ExplicitHeight = 130
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 18
    Top = 18
    Width = 24
    Height = 13
    Caption = 'Tipo:'
  end
  object chkOcultarInativas: TCheckBox [1]
    Left = 18
    Top = 43
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
    TabOrder = 1
  end
  object Button2: TButton [2]
    Left = 201
    Top = 64
    Width = 75
    Height = 25
    Caption = 'pular'
    ModalResult = 2
    TabOrder = 2
  end
  object Button1: TButton [3]
    Left = 120
    Top = 64
    Width = 75
    Height = 25
    Caption = 'filtrar'
    ModalResult = 1
    TabOrder = 3
  end
  object cbTipo: TSgDbSearchCombo [4]
    Left = 48
    Top = 15
    Width = 218
    Height = 21
    EmptyText = 'TODOS OS TIPOS'
    TabOrder = 0
    CharCase = ecUpperCase
    LookupSelect = 'PTI_CODIGO, PTI_DESCRI, PTI_SIGLA, SPED_GENCODIGO'
    LookupOrderBy = 'PTI_DESCRI'
    LookupTable = 'pRD_TIPO'
    LookupDispl = 'PTI_DESCRI'
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
    GridShowWhenEnter = False
    SelectWithDoubleClick = False
  end
  inherited coCalcula: TACBrCalculadora
    Left = 432
    Top = 8
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 464
    Top = 64
  end
  inherited DBConn: TSQLConnection
    Left = 200
    Top = 17
  end
  object qTipoProduto: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DBConn
    Left = 490
    Top = 12
  end
  object SQLQuery1: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DBConn
    Left = 278
    Top = 68
  end
end
