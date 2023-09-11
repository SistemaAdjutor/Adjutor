inherited frmEditCSOSN: TfrmEditCSOSN
  Caption = 'frmEditCSOSN'
  ClientHeight = 186
  ExplicitHeight = 224
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
  object lbl2: TLabel [1]
    Left = 88
    Top = 20
    Width = 74
    Height = 13
    Caption = 'C'#243'digo CSOSN:'
    FocusControl = dbedtCEST
  end
  object lbl3: TLabel [2]
    Left = 16
    Top = 68
    Width = 87
    Height = 13
    Caption = 'Descri'#231#227'o CSOSN:'
    FocusControl = dbedtNCM
  end
  inherited pnUtil: TPanel
    Top = 139
    TabOrder = 4
    ExplicitTop = 139
  end
  
  object dbedtIBPT_ID: TDBEdit [5]
    Left = 14
    Top = 32
    Width = 59
    Height = 21
    TabStop = False
    DataField = 'CSON_ID'
    DataSource = dsEditS
    ReadOnly = True
    TabOrder = 0
  end
  object dbedtCEST: TDBEdit [6]
    Left = 88
    Top = 32
    Width = 95
    Height = 21
    DataField = 'CSON_COD'
    DataSource = dsEditS
    TabOrder = 1
  end
  object dbedtNCM: TDBEdit [7]
    Left = 16
    Top = 80
    Width = 577
    Height = 21
    DataField = 'CSON_DESCRICAO'
    DataSource = dsEditS
    TabOrder = 2
  end
  inherited coCalcula: TACBrCalculadora
    Left = 336
    Top = 8
  end
  inherited qEdit: TSQLQuery
    SQL.Strings = (
      'SELECT * FROM CSON0000 WHERE CSON_ID=:ID')
    object qEditCSON_ID: TIntegerField
      FieldName = 'CSON_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qEditCSON_COD: TStringField
      FieldName = 'CSON_COD'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object qEditCSON_DESCRICAO: TStringField
      FieldName = 'CSON_DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 115
    end
  end
  inherited CdsEdit: TClientDataSet
    object CdsEditCSON_ID: TIntegerField
      FieldName = 'CSON_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsEditCSON_COD: TStringField
      FieldName = 'CSON_COD'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object CdsEditCSON_DESCRICAO: TStringField
      FieldName = 'CSON_DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 115
    end
  end
end
