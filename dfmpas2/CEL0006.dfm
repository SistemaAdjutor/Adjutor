object FormMetasGrid: TFormMetasGrid
  Left = 42
  Top = 126
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta de Metas por C'#233'lulas'
  ClientHeight = 379
  ClientWidth = 633
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Gr_Mes: TGroupBox
    Left = 157
    Top = 0
    Width = 69
    Height = 46
    Caption = 'Ano/M'#234's'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    object Edt_Mes: TEdit
      Left = 40
      Top = 18
      Width = 22
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 2
      ParentFont = False
      TabOrder = 1
      OnEnter = Edt_MesEnter
      OnExit = Edt_MesExit
      OnKeyPress = Edt_MesKeyPress
    end
    object Edt_Ano: TEdit
      Left = 3
      Top = 18
      Width = 36
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 4
      ParentFont = False
      TabOrder = 0
      OnEnter = Edt_AnoEnter
      OnExit = Edt_AnoExit
      OnKeyPress = Edt_MesKeyPress
    end
  end
  object Gr_pesquisa: TGroupBox
    Left = 157
    Top = 0
    Width = 316
    Height = 46
    Caption = 'Informe o nome da C'#233'lula'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Cb_lista: TComboBox
      Left = 34
      Top = 18
      Width = 278
      Height = 21
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 35
      ParentFont = False
      TabOrder = 1
      OnClick = Cb_listaClick
      OnEnter = Cb_listaEnter
      OnExit = Cb_listaExit
      Items.Strings = (
        'TODAS AS CELULAS')
    end
    object Edt_Lista: TEdit
      Left = 6
      Top = 18
      Width = 27
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 3
      ParentFont = False
      TabOrder = 0
      OnEnter = Edt_ListaEnter
      OnExit = Edt_ListaExit
      OnKeyPress = Edt_MesKeyPress
    end
  end
  object BitCancelar: TBitBtn
    Left = 533
    Top = 1
    Width = 100
    Height = 21
    Caption = '&Cancelar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHighlight
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = BitCancelarClick
  end
  object BitPesquisar: TBitBtn
    Left = 533
    Top = 1
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
  object DBGridMetas: TDBGrid
    Left = 0
    Top = 48
    Width = 633
    Height = 329
    Color = 16776176
    DataSource = DsPesquisa
    FixedColor = 10841658
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMoneyGreen
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindow
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    OnDblClick = DBGridMetasDblClick
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CME_ANO_CC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Caption = 'Ano'
        Width = 29
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CME_MES_CC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Caption = 'M'#234's'
        Width = 27
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CEL_CODIGO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Caption = 'C'#243'd'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CEL_NOME'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Caption = 'C'#233'lula'
        Width = 180
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CME_DIASUTEIS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Caption = 'Dias Uteis'
        Width = 62
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CME_TUPMETAMES'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Caption = 'T.U.P. Mensal'
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CME_TUPACRECENT'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Caption = 'Cr'#233'ditos de TUP'
        Width = 97
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CME_TUPNEGATIVO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Caption = 'T.U.P. Negativo'
        Width = 96
        Visible = True
      end>
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 156
    Height = 46
    Caption = 'Pesquisa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object RadMes: TRadioButton
      Left = 7
      Top = 19
      Width = 50
      Height = 17
      Caption = 'M'#234's'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = RadMesClick
    end
    object RadCelula: TRadioButton
      Left = 76
      Top = 19
      Width = 53
      Height = 17
      Caption = 'C'#233'lula'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      TabStop = True
      OnClick = RadCelulaClick
    end
  end
  object BitSair: TBitBtn
    Left = 533
    Top = 23
    Width = 100
    Height = 21
    Caption = '&Sair'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHighlight
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = BitSairClick
  end
  object SqlCdsPesquisa: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'select P1.*, CEL_NOME from CEL_ME02 P1,CEL0000 where '#13#10'CEL_ME02.' +
      'CEL_CODIGO = CEL0000 .CEL_CODIGO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    OnCalcFields = SqlCdsPesquisaCalcFields
    CommandText = 
      'select P1.*, CEL_NOME from CEL_ME02 P1,CEL0000 where '#13#10'CEL_ME02.' +
      'CEL_CODIGO = CEL0000 .CEL_CODIGO'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 120
    Top = 120
    object SqlCdsPesquisaCME_CODIGO: TStringField
      FieldName = 'CME_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 9
    end
    object SqlCdsPesquisaCME_MES_CC: TStringField
      FieldKind = fkCalculated
      FieldName = 'CME_MES_CC'
      Calculated = True
    end
    object SqlCdsPesquisaCME_ANO_CC: TStringField
      FieldKind = fkCalculated
      FieldName = 'CME_ANO_CC'
      Calculated = True
    end
    object SqlCdsPesquisaCEL_CODIGO: TStringField
      FieldName = 'CEL_CODIGO'
      Size = 3
    end
    object SqlCdsPesquisaCME_DIASUTEIS: TFMTBCDField
      FieldName = 'CME_DIASUTEIS'
      Precision = 15
    end
    object SqlCdsPesquisaCME_TUPMETAMES: TFMTBCDField
      FieldName = 'CME_TUPMETAMES'
      DisplayFormat = '#,##0'
      EditFormat = '#,##0'
      Precision = 15
    end
    object SqlCdsPesquisaCME_TUPACRECENT: TFMTBCDField
      FieldName = 'CME_TUPACRECENT'
      DisplayFormat = '#,##0'
      EditFormat = '#,##0'
      Precision = 15
    end
    object SqlCdsPesquisaCME_TUPNEGATIVO: TFMTBCDField
      FieldName = 'CME_TUPNEGATIVO'
      DisplayFormat = '#,##0'
      EditFormat = '#,##0'
      Precision = 15
    end
    object SqlCdsPesquisaCME_TUPREALIZADO: TFMTBCDField
      FieldName = 'CME_TUPREALIZADO'
      Precision = 15
    end
    object SqlCdsPesquisaCME_FATURAMENTO: TFMTBCDField
      FieldName = 'CME_FATURAMENTO'
      Precision = 15
    end
    object SqlCdsPesquisaCME_PERCPATICIPA: TFMTBCDField
      FieldName = 'CME_PERCPATICIPA'
      Precision = 15
    end
    object SqlCdsPesquisaCME_TOT_DIAS_COMP: TFMTBCDField
      FieldName = 'CME_TOT_DIAS_COMP'
      Precision = 15
    end
    object SqlCdsPesquisaCEL_NOME: TStringField
      FieldName = 'CEL_NOME'
      Size = 35
    end
  end
  object DsPesquisa: TDataSource
    DataSet = SqlCdsPesquisa
    Left = 152
    Top = 120
  end
  object SqlCdsCelula: TSqlClientDataSet
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
    Left = 368
    Top = 8
    object SqlCdsCelulaCEL_CODIGO: TStringField
      FieldName = 'CEL_CODIGO'
      Required = True
      Size = 3
    end
    object SqlCdsCelulaCEL_NOME: TStringField
      FieldName = 'CEL_NOME'
      Size = 35
    end
  end
end
