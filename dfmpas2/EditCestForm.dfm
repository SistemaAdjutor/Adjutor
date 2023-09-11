inherited FrmEditCest: TFrmEditCest
  Left = 704
  Top = 383
  Caption = 'FrmEditCest'
  ClientHeight = 247
  ClientWidth = 683
  ExplicitWidth = 699
  ExplicitHeight = 285
  PixelsPerInch = 96
  TextHeight = 13
  object lbl2: TLabel [0]
    Left = 88
    Top = 20
    Width = 48
    Height = 13
    Caption = 'C'#243'd.CEST'
    FocusControl = dbedtCEST
  end
  object lbl3: TLabel [1]
    Left = 192
    Top = 20
    Width = 45
    Height = 13
    Caption = 'C'#243'd.NCM'
    FocusControl = dbedtNCM
  end
  object lbl4: TLabel [2]
    Left = 14
    Top = 64
    Width = 75
    Height = 13
    Caption = 'Descri'#231#227'o NCM:'
  end
  object lbl1: TLabel [3]
    Left = 14
    Top = 20
    Width = 15
    Height = 13
    Caption = 'ID:'
    FocusControl = dbedtIBPT_ID
  end
  inherited pnUtil: TPanel
    Top = 215
    Width = 683
    TabOrder = 4
    ExplicitTop = 215
    ExplicitWidth = 683
    DesignSize = (
      683
      32)
    inherited btnOk: TSpeedButton
      Left = 383
      ExplicitLeft = 383
    end
    inherited btnCancelar: TSpeedButton
      Left = 532
      ExplicitLeft = 532
    end
  end
  object dbedtCEST: TDBEdit [5]
    Left = 88
    Top = 32
    Width = 95
    Height = 21
    DataField = 'CEST_COD'
    DataSource = dsEditS
    TabOrder = 1
  end
  object dbedtNCM: TDBEdit [6]
    Left = 192
    Top = 32
    Width = 108
    Height = 21
    DataField = 'CEST_NCM'
    DataSource = dsEditS
    TabOrder = 2
  end
  object dbedtIBPT_ID: TDBEdit [7]
    Left = 14
    Top = 32
    Width = 59
    Height = 21
    TabStop = False
    DataField = 'CEST_ID'
    DataSource = dsEditS
    ReadOnly = True
    TabOrder = 0
  end
  object dbmmoDESC: TDBMemo [8]
    Left = 14
    Top = 77
    Width = 659
    Height = 89
    DataField = 'CEST_DESCRICAO'
    DataSource = dsEditS
    MaxLength = 500
    TabOrder = 3
  end
  inherited coCalcula: TACBrCalculadora
    Left = 104
    Top = 104
  end
  inherited DBConn: TSQLConnection
    Left = 168
    Top = 112
  end
  inherited qEdit: TSQLQuery
    SQL.Strings = (
      'SELECT * FROM CEST0000 WHERE CEST_ID=:ID')
    Left = 228
    Top = 103
    object qEditCEST_ID: TIntegerField
      FieldName = 'CEST_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qEditCEST_COD: TStringField
      FieldName = 'CEST_COD'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object qEditCEST_NCM: TStringField
      FieldName = 'CEST_NCM'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object qEditCEST_DESCRICAO: TStringField
      FieldName = 'CEST_DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 512
    end
  end
  inherited DspEdit: TDataSetProvider
    Left = 264
    Top = 103
  end
  inherited CdsEdit: TClientDataSet
    Left = 303
    Top = 103
    object CdsEditCEST_ID: TIntegerField
      FieldName = 'CEST_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsEditCEST_COD: TStringField
      FieldName = 'CEST_COD'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsEditCEST_NCM: TStringField
      FieldName = 'CEST_NCM'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object CdsEditCEST_DESCRICAO: TStringField
      FieldName = 'CEST_DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 512
    end
  end
  inherited dsEditS: TDataSource
    Left = 341
    Top = 103
  end
end
