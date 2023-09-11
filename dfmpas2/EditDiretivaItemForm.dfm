inherited frmEditDiretivaItem: TfrmEditDiretivaItem
  Caption = 'frmEditDiretivaItem'
  ClientHeight = 369
  ClientWidth = 685
  ExplicitWidth = 701
  ExplicitHeight = 407
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel [0]
    Left = 14
    Top = 20
    Width = 15
    Height = 13
    Caption = 'ID:'
    FocusControl = dbedtIBPT_ID
  end
  object Label1: TLabel [1]
    Left = 16
    Top = 68
    Width = 41
    Height = 13
    Caption = 'Diretiva:'
  end
  object Label2: TLabel [2]
    Left = 427
    Top = 69
    Width = 26
    Height = 13
    Caption = 'Sigla:'
    FocusControl = DBEdit1
  end
  object dbedtIBPT_ID: TDBEdit [3]
    Left = 14
    Top = 32
    Width = 59
    Height = 21
    TabStop = False
    DataField = 'PDI_REGISTRO'
    DataSource = dsEditS
    ReadOnly = True
    TabOrder = 2
  end
  object DBEdit1: TDBEdit [4]
    Left = 427
    Top = 81
    Width = 59
    Height = 21
    TabStop = False
    DataField = 'PRDD_SIGLA'
    DataSource = dsDiretivas
    ReadOnly = True
    TabOrder = 1
  end
  object edDiretiva: TsgDBLookupCombo [5]
    Left = 16
    Top = 81
    Width = 385
    Height = 21
    EmptyText = 'SELECIONE..'
    TabOrder = 3
    Text = 'SELECIONE..'
    CharCase = ecUpperCase
    LookupSelect = '*'
    LookupOrderBy = 'PRDD_DESCRICAO'
    LookupTable = 'PRD_DIRETIVA '
    LookupDispl = 'PRDD_DESCRICAO'
    GridAutoSize = False
    LookupSource = qDiretivas
    DataField = 'PRDD_REGISTRO'
    DataSource = dsEditS
    LookupKeyField = 'PRDD_REGISTRO'
    ShowButton = True
    GridLeft = 0
    GridWidth = 0
    GridHeight = 100
    GridShowWhenEnter = False
    SelectWithDoubleClick = False
    OnMenuPesquisaClick = edDiretivaMenuPesquisaClick
    OnMenuNovoClick = edDiretivaMenuNovoClick
  end
  inherited pnUtil: TPanel
    Top = 337
    Width = 685
    ExplicitTop = 333
    ExplicitWidth = 693
    inherited btnOk: TSpeedButton
      Left = 385
      ExplicitLeft = 385
    end
    inherited btnCancelar: TSpeedButton
      Left = 534
      ExplicitLeft = 534
    end
  end
  inherited coCalcula: TACBrCalculadora
    Left = 328
  end
  inherited qEdit: TSQLQuery
    SQL.Strings = (
      'SELECT * FROM PRD_DIRETIVA_ITEM WHERE PDI_REGISTRO=:ID')
    object qEditPDI_REGISTRO: TIntegerField
      FieldName = 'PDI_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qEditPRF_REGISTRO: TIntegerField
      FieldName = 'PRF_REGISTRO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object qEditPRDD_REGISTRO: TIntegerField
      FieldName = 'PRDD_REGISTRO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
  end
  inherited CdsEdit: TClientDataSet
    AfterInsert = CdsEditAfterInsert
    object CdsEditPDI_REGISTRO: TIntegerField
      FieldName = 'PDI_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsEditPRF_REGISTRO: TIntegerField
      FieldName = 'PRF_REGISTRO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CdsEditPRDD_REGISTRO: TIntegerField
      FieldName = 'PRDD_REGISTRO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
  end
  object qDiretivas: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from prd_diretiva')
    SQLConnection = DBConn
    Left = 540
    Top = 111
    object qDiretivasPRDD_REGISTRO: TIntegerField
      FieldName = 'PRDD_REGISTRO'
      Required = True
    end
    object qDiretivasPRDD_DESCRICAO: TStringField
      FieldName = 'PRDD_DESCRICAO'
      Size = 100
    end
    object qDiretivasPRDD_SIGLA: TStringField
      FieldName = 'PRDD_SIGLA'
      Size = 5
    end
  end
  object dsDiretivas: TDataSource
    AutoEdit = False
    DataSet = qDiretivas
    Left = 605
    Top = 111
  end
end
