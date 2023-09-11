object FormComponenteGrid: TFormComponenteGrid
  Left = 244
  Top = 50
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Lista de Integrantes das Celulas/Fac'#231#227'o'
  ClientHeight = 391
  ClientWidth = 696
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object BitCancelar: TBitBtn
    Left = 597
    Top = 5
    Width = 100
    Height = 21
    Caption = '&Cancelar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHighlight
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = BitCancelarClick
  end
  object BitPesquisar: TBitBtn
    Left = 597
    Top = 5
    Width = 100
    Height = 21
    Caption = '&Pesquisar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHighlight
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = BitPesquisarClick
  end
  object GroupBox1: TGroupBox
    Left = 189
    Top = 0
    Width = 138
    Height = 50
    Caption = 'Pesquisa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object RadNome: TRadioButton
      Left = 8
      Top = 23
      Width = 52
      Height = 17
      Caption = '&Nome'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TabStop = True
      OnClick = RadNomeClick
    end
    object RadCodigo: TRadioButton
      Left = 71
      Top = 23
      Width = 61
      Height = 17
      Caption = '&C'#243'digo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = RadCodigoClick
    end
  end
  object GbPesquisa: TGroupBox
    Left = 328
    Top = 0
    Width = 265
    Height = 50
    Caption = '&Informe o Nome Integrante:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object Edt_Lista: TEdit
      Left = 5
      Top = 20
      Width = 256
      Height = 21
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 45
      ParentFont = False
      TabOrder = 0
      OnClick = Edt_ListaClick
      OnEnter = Edt_ListaEnter
      OnExit = Edt_ListaExit
      OnKeyPress = Edt_ListaKeyPress
    end
  end
  object GroupBox2: TGroupBox
    Left = 3
    Top = 0
    Width = 185
    Height = 50
    Caption = '&Filtro'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Cbfiltra: TComboBox
      Left = 4
      Top = 20
      Width = 177
      Height = 21
      AutoDropDown = True
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemIndex = 0
      ParentFont = False
      TabOrder = 0
      Text = 'TODOS INTEGRANTES'
      OnClick = CbfiltraClick
      OnEnter = CbfiltraEnter
      OnExit = CbfiltraClick
      Items.Strings = (
        'TODOS INTEGRANTES')
    end
  end
  object DBGridComponetes: TDBGrid
    Left = 0
    Top = 52
    Width = 696
    Height = 340
    Color = 16776176
    DataSource = DsFiltra
    FixedColor = 10841658
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    OnDblClick = DBGridComponetesDblClick
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CCP_CODIGO'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CCP_NOME'
        Title.Alignment = taCenter
        Title.Caption = 'Nome'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 216
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CCP_TUPDIARIO'
        Title.Alignment = taCenter
        Title.Caption = 'TUP Di'#225'rio'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CCP_FUNCAO'
        Title.Alignment = taCenter
        Title.Caption = 'Fun'#231#227'o'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 119
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CEL_NOME'
        Title.Alignment = taCenter
        Title.Caption = 'C'#233'lula'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 195
        Visible = True
      end>
  end
  object BitSair: TBitBtn
    Left = 597
    Top = 27
    Width = 100
    Height = 21
    Caption = '&Sair'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHighlight
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = BitSairClick
  end
  object DsFiltra: TDataSource
    DataSet = SqlCdsInt
    Left = 288
    Top = 112
  end
  object SqlCdsFiltra: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 'select CEL_CODIGO, CEL_NOME from CEL0000'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'select CEL_CODIGO, CEL_NOME from CEL0000'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 120
    Top = 16
    object SqlCdsFiltraCEL_CODIGO: TStringField
      FieldName = 'CEL_CODIGO'
      Size = 3
    end
    object SqlCdsFiltraCEL_NOME: TStringField
      FieldName = 'CEL_NOME'
      Size = 35
    end
  end
  object SqlCdsInt: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'select P1.*, CEL_NOME from CEL_CP01 P1,CEL0000 where '#13#10'CEL_CP01.' +
      'CEL_CODIGO = CEL0000 .CEL_CODIGO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'select P1.*, CEL_NOME from CEL_CP01 P1,CEL0000 where '#13#10'CEL_CP01.' +
      'CEL_CODIGO = CEL0000 .CEL_CODIGO'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 256
    Top = 112
    object SqlCdsIntCCP_CODIGO: TStringField
      FieldName = 'CCP_CODIGO'
      Size = 4
    end
    object SqlCdsIntCCP_NOME: TStringField
      FieldName = 'CCP_NOME'
      Size = 30
    end
    object SqlCdsIntCCP_FUNCAO: TStringField
      FieldName = 'CCP_FUNCAO'
      Size = 18
    end
    object SqlCdsIntCCP_TUPDIARIO: TFloatField
      FieldName = 'CCP_TUPDIARIO'
    end
    object SqlCdsIntCEL_CODIGO: TStringField
      FieldName = 'CEL_CODIGO'
      Size = 3
    end
    object SqlCdsIntEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlCdsIntCEL_NOME: TStringField
      FieldName = 'CEL_NOME'
      Size = 35
    end
  end
end
