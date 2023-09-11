inherited FormAlmoxGrid: TFormAlmoxGrid
  Left = 154
  Top = 215
  Caption = 'Consulta de Almoxarifado'
  ClientHeight = 338
  ClientWidth = 611
  Font.Charset = ANSI_CHARSET
  Font.Name = 'Arial'
  Position = poDesktopCenter
  ExplicitWidth = 627
  ExplicitHeight = 376
  PixelsPerInch = 96
  TextHeight = 14
  object BitCancelar: TBitBtn [0]
    Left = 501
    Top = 3
    Width = 100
    Height = 21
    Caption = '&Cancelar'
    TabOrder = 1
    OnClick = BitCancelarClick
  end
  object BitPesquisar: TBitBtn [1]
    Left = 501
    Top = 3
    Width = 100
    Height = 21
    Caption = '&Pesquisar'
    TabOrder = 0
    OnClick = BitPesquisarClick
  end
  object BitSair: TBitBtn [2]
    Left = 501
    Top = 24
    Width = 100
    Height = 21
    Caption = '&Sair'
    TabOrder = 2
    OnClick = BitSairClick
  end
  object GroupBox1: TGroupBox [3]
    Left = 0
    Top = 0
    Width = 175
    Height = 46
    Caption = 'Pesquisa'
    TabOrder = 3
    object RadNome: TRadioButton
      Left = 83
      Top = 21
      Width = 83
      Height = 17
      Caption = '&Almoxarifado'
      TabOrder = 0
      OnClick = RadCodigoClick
    end
    object RadCodigo: TRadioButton
      Left = 8
      Top = 21
      Width = 57
      Height = 17
      Caption = 'C'#243'&digo'
      Checked = True
      TabOrder = 1
      TabStop = True
      OnClick = RadCodigoClick
    end
  end
  object GbPesquisa: TGroupBox [4]
    Left = 176
    Top = 0
    Width = 321
    Height = 46
    Caption = 'Digite c'#243'digo do almoxarifado'
    TabOrder = 4
    object Edt_nome: TEdit
      Left = 10
      Top = 20
      Width = 207
      Height = 22
      CharCase = ecUpperCase
      MaxLength = 4
      TabOrder = 0
      OnEnter = Edt_nomeEnter
      OnExit = Edt_nomeExit
      OnKeyPress = Edt_nomeKeyPress
    end
  end
  object DBGrid1: TDBGrid [5]
    Left = 0
    Top = 49
    Width = 611
    Height = 289
    Align = alBottom
    Color = 16776176
    DataSource = DsAlmox
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ReadOnly = True
    TabOrder = 5
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Arial'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    OnKeyDown = DBGrid1KeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'AMX_CODIGO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AMX_ATIVO'
        Title.Alignment = taCenter
        Title.Caption = 'Ativo'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AMX_DESCRI'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Almoxarifado'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 253
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AMX_TIPO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Descri'#231#227'o'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 246
        Visible = True
      end>
  end
  object SqlCdsAlmox: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'select amx_ativo, AMX_CODIGO, AMX_DESCRI, AMX_TIPO from ALMOX000' +
      '0'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'select amx_ativo, AMX_CODIGO, AMX_DESCRI, AMX_TIPO from ALMOX000' +
      '0'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 128
    Top = 150
    object SqlCdsAlmoxAMX_CODIGO: TStringField
      FieldName = 'AMX_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object SqlCdsAlmoxAMX_DESCRI: TStringField
      FieldName = 'AMX_DESCRI'
      Required = True
      Size = 35
    end
    object SqlCdsAlmoxAMX_TIPO: TStringField
      FieldName = 'AMX_TIPO'
      Size = 35
    end
    object SqlCdsAlmoxAMX_ATIVO: TStringField
      FieldName = 'AMX_ATIVO'
      Size = 1
    end
  end
  object DsAlmox: TDataSource
    DataSet = SqlCdsAlmox
    Left = 160
    Top = 150
  end
end
