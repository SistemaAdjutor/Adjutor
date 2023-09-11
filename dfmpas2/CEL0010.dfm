object FormCelPesquisa: TFormCelPesquisa
  Left = 38
  Top = 128
  Caption = 'FormCelPesquisa'
  ClientHeight = 332
  ClientWidth = 569
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object BitCancelar: TBitBtn
    Left = 468
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
    TabOrder = 3
    OnClick = BitCancelarClick
  end
  object BitPesquisar: TBitBtn
    Left = 468
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
    TabOrder = 2
    OnClick = BitPesquisarClick
  end
  object GroupBox1: TGroupBox
    Left = 0
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
    TabOrder = 0
    object RadNome: TRadioButton
      Left = 8
      Top = 26
      Width = 81
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
    end
    object RadRazao: TRadioButton
      Left = 71
      Top = 26
      Width = 61
      Height = 17
      Caption = '&Raz'#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
  end
  object GbPesquisa: TGroupBox
    Left = 139
    Top = 0
    Width = 263
    Height = 50
    Caption = '&Informe o Nome da C'#233'lula:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Edt_Lista: TEdit
      Left = 5
      Top = 25
      Width = 252
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
    end
  end
  object DBGridComponetes: TDBGrid
    Left = 0
    Top = 56
    Width = 568
    Height = 275
    Color = 16776176
    DataSource = DsPesqCelula
    FixedColor = 10841658
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clInfoText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    TabOrder = 4
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
        FieldName = 'CEL_CODIGO'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CEL_NOME'
        Title.Alignment = taCenter
        Title.Caption = 'Nome da C'#233'lula'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 167
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CEL_RAZAO'
        Title.Alignment = taCenter
        Title.Caption = 'Raz'#227'o Social'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 321
        Visible = True
      end>
  end
  object BitSair: TBitBtn
    Left = 468
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
  object SqlcdsPesCelula: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 'select CEL_CODIGO, CEL_NOME, CEL_RAZAO from CEL0000'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'select CEL_CODIGO, CEL_NOME, CEL_RAZAO from CEL0000'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 176
    Top = 112
    object SqlcdsPesCelulaCEL_CODIGO: TStringField
      FieldName = 'CEL_CODIGO'
      Size = 3
    end
    object SqlcdsPesCelulaCEL_NOME: TStringField
      FieldName = 'CEL_NOME'
      Size = 35
    end
    object SqlcdsPesCelulaCEL_RAZAO: TStringField
      FieldName = 'CEL_RAZAO'
      Size = 40
    end
  end
  object DsPesqCelula: TDataSource
    DataSet = SqlcdsPesCelula
    Left = 232
    Top = 112
  end
end
