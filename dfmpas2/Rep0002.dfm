object FormRepresGrid: TFormRepresGrid
  Left = 202
  Top = 326
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Lista de Vendedores'
  ClientHeight = 509
  ClientWidth = 820
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = True
  Position = poDesktopCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object BitCancelar: TBitBtn
    Left = 694
    Top = 16
    Width = 100
    Height = 25
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
    Left = 694
    Top = 16
    Width = 100
    Height = 25
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
    Left = 6
    Top = 0
    Width = 499
    Height = 41
    Caption = 'Pesquisa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object RadNome: TRadioButton
      Left = 5
      Top = 18
      Width = 50
      Height = 17
      Caption = 'No&me'
      Checked = True
      Color = clBtnFace
      Ctl3D = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      TabStop = True
      OnClick = RadNomeClick
    end
    object RadCodigo: TRadioButton
      Left = 74
      Top = 18
      Width = 58
      Height = 17
      Caption = 'C'#243'&digo'
      Color = clBtnFace
      Ctl3D = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
      OnClick = RadCodigoClick
    end
    object RadCgc: TRadioButton
      Left = 144
      Top = 18
      Width = 49
      Height = 17
      Caption = 'C&NPJ'
      Color = clBtnFace
      Ctl3D = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
      OnClick = RadCgcClick
    end
    object RadCPF: TRadioButton
      Left = 214
      Top = 18
      Width = 42
      Height = 17
      Caption = 'CP&F'
      Color = clBtnFace
      Ctl3D = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 3
      OnClick = RadCPFClick
    end
    object cb1: TCheckBox
      Left = 352
      Top = 15
      Width = 97
      Height = 17
      Caption = 'Ocultar Inativos'
      TabOrder = 4
    end
  end
  object GbPesquisa: TGroupBox
    Left = 6
    Top = 41
    Width = 499
    Height = 41
    Caption = 'Digite Nome do Vendedor'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Msk_nome: TMaskEdit
      Left = 8
      Top = 16
      Width = 112
      Height = 21
      CharCase = ecUpperCase
      EditMask = '99.999.999/9999-99;0;_'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 18
      ParentFont = False
      TabOrder = 0
      Text = ''
      OnEnter = Msk_nomeEnter
      OnExit = Msk_nomeExit
      OnKeyPress = Msk_nomeKeyPress
    end
  end
  object DBGridRepres: TDBGrid
    Left = 5
    Top = 86
    Width = 805
    Height = 418
    Color = 16776176
    DataSource = DsConsRep
    FixedColor = 12681984
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ReadOnly = True
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    OnDrawColumnCell = DBGridRepresDrawColumnCell
    OnDblClick = DBGridRepresDblClick
    OnKeyPress = DBGridRepresKeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'REP_CODIGO'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 46
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REP_NOME'
        Title.Alignment = taCenter
        Title.Caption = 'Vendedor'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 305
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REP_FONE'
        Title.Alignment = taCenter
        Title.Caption = 'Fone'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 83
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REP_GRUPO'
        Title.Alignment = taCenter
        Title.Caption = 'Grupo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 55
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REP_QUOTA'
        Title.Alignment = taCenter
        Title.Caption = 'Quota'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 67
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REP_FUNCAO_CC'
        Title.Alignment = taCenter
        Title.Caption = 'Fun'#231#227'o'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 126
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REP_SITUACAO_CC'
        Title.Alignment = taCenter
        Title.Caption = 'Situa'#231#227'o'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 79
        Visible = True
      end>
  end
  object BitSair: TBitBtn
    Left = 694
    Top = 43
    Width = 100
    Height = 25
    Caption = '&Sair'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHighlight
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = BitSairClick
  end
  object SqlCdsConsRep: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'select REP_CODIGO, REP_NOME, REP_FONE, REP_GRUPO, REP_QUOTA, REP' +
      '_FUNCAO, REP_SITUACAO,REP_CGC from REP0000'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    OnCalcFields = SqlCdsConsRepCalcFields
    CommandText = 
      'select REP_CODIGO, REP_NOME, REP_FONE, REP_GRUPO, REP_QUOTA, REP' +
      '_FUNCAO, REP_SITUACAO,REP_CGC from REP0000'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 184
    Top = 200
    object SqlCdsConsRepREP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object SqlCdsConsRepREP_NOME: TStringField
      FieldName = 'REP_NOME'
      Size = 35
    end
    object SqlCdsConsRepREP_FONE: TStringField
      FieldName = 'REP_FONE'
      EditMask = '!\(999\)9999-9999;0;_'
      Size = 11
    end
    object SqlCdsConsRepREP_GRUPO: TStringField
      FieldName = 'REP_GRUPO'
      Size = 2
    end
    object SqlCdsConsRepREP_QUOTA: TFMTBCDField
      FieldName = 'REP_QUOTA'
      DisplayFormat = '#,###0.00'
      Precision = 15
    end
    object SqlCdsConsRepREP_FUNCAO: TStringField
      FieldName = 'REP_FUNCAO'
      Size = 1
    end
    object SqlCdsConsRepREP_SITUACAO: TStringField
      FieldName = 'REP_SITUACAO'
      Size = 1
    end
    object SqlCdsConsRepREP_CGC: TStringField
      FieldName = 'REP_CGC'
      Size = 14
    end
    object SqlCdsConsRepREP_SITUACAO_CC: TStringField
      FieldKind = fkCalculated
      FieldName = 'REP_SITUACAO_CC'
      Calculated = True
    end
    object SqlCdsConsRepREP_FUNCAO_CC: TStringField
      FieldKind = fkCalculated
      FieldName = 'REP_FUNCAO_CC'
      Calculated = True
    end
  end
  object DsConsRep: TDataSource
    DataSet = SqlCdsConsRep
    Left = 216
    Top = 200
  end
end
