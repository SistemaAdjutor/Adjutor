object FormTransportGrid: TFormTransportGrid
  Left = 177
  Top = 158
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Lista de Transportadoras'
  ClientHeight = 488
  ClientWidth = 615
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Lb_Lista: TLabel
    Left = 243
    Top = 17
    Width = 3
    Height = 13
  end
  object BitCancelar: TBitBtn
    Left = 512
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
    Left = 512
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
    Width = 153
    Height = 46
    Caption = 'Op'#231#245'es de Pesquisa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object RadNome: TRadioButton
      Left = 88
      Top = 21
      Width = 49
      Height = 17
      Caption = 'No&me'
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
      Left = 8
      Top = 21
      Width = 57
      Height = 17
      Caption = 'C'#243'&digo'
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
  object GroupBox2: TGroupBox
    Left = 0
    Top = 48
    Width = 615
    Height = 437
    Caption = 'Resultado da Pesquisa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    object Label1: TLabel
      Left = 11
      Top = 299
      Width = 75
      Height = 13
      Alignment = taRightJustify
      Caption = 'Transportadora:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 46
      Top = 322
      Width = 40
      Height = 13
      Alignment = taRightJustify
      Caption = 'Contato:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 446
      Top = 324
      Width = 27
      Height = 13
      Alignment = taRightJustify
      Caption = 'Fone:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 25
      Top = 347
      Width = 61
      Height = 13
      Alignment = taRightJustify
      Caption = 'Observa'#231#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBGridTransport: TDBGrid
      Left = 5
      Top = 16
      Width = 604
      Height = 274
      Color = 16776176
      DataSource = DsConsTransp
      FixedColor = 12681984
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
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      OnDrawColumnCell = DBGridTransportDrawColumnCell
      OnDblClick = DBGridTransportDblClick
      OnKeyPress = DBGridTransportKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'TRP_CODIGO'
          Title.Caption = 'C'#243'digo'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 45
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TRP_RAZAO'
          Title.Alignment = taCenter
          Title.Caption = 'Transportadora'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 228
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TRP_CONTATO'
          Title.Alignment = taCenter
          Title.Caption = 'Contato'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 165
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TRP_FONE'
          Title.Alignment = taCenter
          Title.Caption = 'Fone'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 87
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CC_ATIVO'
          Title.Alignment = taCenter
          Title.Caption = 'Status'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 42
          Visible = True
        end>
    end
    object DBEdit1: TDBEdit
      Left = 86
      Top = 296
      Width = 505
      Height = 21
      TabStop = False
      Color = 14145495
      DataField = 'TRP_RAZAO'
      DataSource = DsConsTransp
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 86
      Top = 320
      Width = 299
      Height = 21
      TabStop = False
      Color = 14145495
      DataField = 'TRP_CONTATO'
      DataSource = DsConsTransp
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object DBEdit3: TDBEdit
      Left = 474
      Top = 320
      Width = 117
      Height = 21
      TabStop = False
      Color = 14145495
      DataField = 'TRP_FONE'
      DataSource = DsConsTransp
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
    object DBMemo1: TDBMemo
      Left = 86
      Top = 344
      Width = 371
      Height = 87
      TabStop = False
      Color = 14145495
      DataField = 'TRP_OBSERVACAO'
      DataSource = DsConsTransp
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 4
    end
  end
  object GbPesquisa: TGroupBox
    Left = 155
    Top = 0
    Width = 345
    Height = 46
    Caption = 'Digite c'#243'digo da transportadora'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Edt_Nome: TEdit
      Left = 5
      Top = 18
      Width = 35
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
      OnClick = Edt_NomeClick
      OnEnter = Edt_NomeEnter
      OnExit = Edt_NomeExit
      OnKeyPress = Edt_NomeKeyPress
    end
  end
  object BitSair: TBitBtn
    Left = 512
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
    TabOrder = 3
    OnClick = BitSairClick
  end
  object DsConsTransp: TDataSource
    DataSet = SqlCdsConsTransp
    Left = 224
    Top = 112
  end
  object SqlCdsConsTransp: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT'#13#10'TRP_CODIGO, '#13#10'TRP_RAZAO, '#13#10'TRP_CONTATO, '#13#10'TRP_FONE,'#13#10'TRP' +
      '_ATIVO,'#13#10'TRP_OBSERVACAO'#13#10'FROM TRP0000'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    OnCalcFields = SqlCdsConsTranspCalcFields
    CommandText = 
      'SELECT'#13#10'TRP_CODIGO, '#13#10'TRP_RAZAO, '#13#10'TRP_CONTATO, '#13#10'TRP_FONE,'#13#10'TRP' +
      '_ATIVO,'#13#10'TRP_OBSERVACAO'#13#10'FROM TRP0000'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 192
    Top = 112
    object SqlCdsConsTranspTRP_CODIGO: TStringField
      FieldName = 'TRP_CODIGO'
      Required = True
      Size = 3
    end
    object SqlCdsConsTranspTRP_RAZAO: TStringField
      FieldName = 'TRP_RAZAO'
      Size = 45
    end
    object SqlCdsConsTranspTRP_CONTATO: TStringField
      FieldName = 'TRP_CONTATO'
      Size = 25
    end
    object SqlCdsConsTranspTRP_FONE: TStringField
      FieldName = 'TRP_FONE'
      Size = 11
    end
    object SqlCdsConsTranspTRP_ATIVO: TStringField
      FieldName = 'TRP_ATIVO'
      Size = 1
    end
    object SqlCdsConsTranspTRP_OBSERVACAO: TMemoField
      FieldName = 'TRP_OBSERVACAO'
      BlobType = ftMemo
      Size = 1
    end
    object SqlCdsConsTranspCC_ATIVO: TStringField
      FieldKind = fkCalculated
      FieldName = 'CC_ATIVO'
      Size = 7
      Calculated = True
    end
  end
end
