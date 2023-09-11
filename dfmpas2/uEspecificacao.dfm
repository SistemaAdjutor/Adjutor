inherited fmEspecificacao: TfmEspecificacao
  Caption = 'Par'#226'metros de Qualidade'
  ClientHeight = 297
  ClientWidth = 902
  ExplicitWidth = 918
  ExplicitHeight = 335
  PixelsPerInch = 96
  TextHeight = 13
  object laESP_NOME: TLabel [0]
    Left = 24
    Top = 53
    Width = 61
    Height = 13
    Caption = 'laESP_NOME'
    FocusControl = cxESP_NOME
  end
  object laESP_PADROES: TLabel [1]
    Left = 24
    Top = 75
    Width = 71
    Height = 13
    Caption = 'ESP_PADROES'
    FocusControl = cxesp_padroes
  end
  object laESP_COL1: TLabel [2]
    Left = 24
    Top = 97
    Width = 50
    Height = 13
    Caption = 'ESP_COL1'
    FocusControl = cxESP_COL1
  end
  object laESP_COL2: TLabel [3]
    Left = 24
    Top = 119
    Width = 50
    Height = 13
    Caption = 'ESP_COL2'
    FocusControl = cxESP_COL2
  end
  object laESP_COL3: TLabel [4]
    Left = 24
    Top = 141
    Width = 50
    Height = 13
    Caption = 'ESP_COL3'
    FocusControl = cxESP_COL3
  end
  object laESP_COL4: TLabel [5]
    Left = 24
    Top = 163
    Width = 50
    Height = 13
    Caption = 'ESP_COL4'
    FocusControl = cxESP_COL4
  end
  object laESP_COL5: TLabel [6]
    Left = 24
    Top = 185
    Width = 50
    Height = 13
    Caption = 'ESP_COL5'
    FocusControl = cxESP_COL5
  end
  object laESP_COL6: TLabel [7]
    Left = 24
    Top = 207
    Width = 50
    Height = 13
    Caption = 'ESP_COL6'
    FocusControl = cxESP_COL6
  end
  object laESP_COL7: TLabel [8]
    Left = 24
    Top = 227
    Width = 50
    Height = 13
    Caption = 'ESP_COL7'
    FocusControl = cxESP_COL7
  end
  inherited pnUtil: TPanel
    Top = 265
    Width = 902
    ExplicitTop = 265
    ExplicitWidth = 902
    inherited btnOk: TSpeedButton
      Left = 602
      ExplicitLeft = 602
    end
    inherited btnCancelar: TSpeedButton
      Left = 751
      ExplicitLeft = 751
    end
  end
  object cxESP_NOME: TcxDBTextEdit [10]
    Left = 173
    Top = 50
    DataBinding.DataField = 'ESP_NOME'
    DataBinding.DataSource = dsEditS
    TabOrder = 1
    Width = 244
  end
  object cxesp_padroes: TcxDBTextEdit [11]
    Left = 173
    Top = 71
    DataBinding.DataField = 'ESP_PADROES'
    DataBinding.DataSource = dsEditS
    TabOrder = 2
    Width = 244
  end
  object cxESP_COL1: TcxDBTextEdit [12]
    Left = 173
    Top = 93
    DataBinding.DataField = 'ESP_COL1'
    DataBinding.DataSource = dsEditS
    TabOrder = 3
    Width = 244
  end
  object cxESP_COL2: TcxDBTextEdit [13]
    Left = 173
    Top = 115
    DataBinding.DataField = 'ESP_COL2'
    DataBinding.DataSource = dsEditS
    TabOrder = 4
    Width = 244
  end
  object cxESP_COL3: TcxDBTextEdit [14]
    Left = 173
    Top = 137
    DataBinding.DataField = 'ESP_COL3'
    DataBinding.DataSource = dsEditS
    TabOrder = 5
    Width = 244
  end
  object cxESP_COL4: TcxDBTextEdit [15]
    Left = 173
    Top = 159
    DataBinding.DataField = 'ESP_COL4'
    DataBinding.DataSource = dsEditS
    TabOrder = 6
    Width = 244
  end
  object cxESP_COL5: TcxDBTextEdit [16]
    Left = 173
    Top = 181
    DataBinding.DataField = 'ESP_COL5'
    DataBinding.DataSource = dsEditS
    TabOrder = 7
    Width = 244
  end
  object cxESP_COL6: TcxDBTextEdit [17]
    Left = 173
    Top = 203
    DataBinding.DataField = 'ESP_COL6'
    DataBinding.DataSource = dsEditS
    TabOrder = 8
    Width = 244
  end
  object cxESP_COL7: TcxDBTextEdit [18]
    Left = 173
    Top = 224
    DataBinding.DataField = 'ESP_COL7'
    DataBinding.DataSource = dsEditS
    TabOrder = 9
    Width = 244
  end
  inherited coCalcula: TACBrCalculadora
    Left = 56
    Top = 8
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Top = 8
  end
  inherited qEdit: TSQLQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'SELECT ESP_CODIGO, ESP_NOME, ESP_PADROES, ENG_CODIGO,ESP_COL1, E' +
        'SP_COL2, ESP_COL3, ESP_COL4,'
      'ESP_COL5, ESP_COL6, ESP_COL7 '
      'FROM ESPECIFICACOES'
      'WHERE ESP_CODIGO = :ID'
      '')
    object qEditESP_CODIGO: TIntegerField
      FieldName = 'ESP_CODIGO'
      Required = True
    end
    object qEditESP_NOME: TStringField
      FieldName = 'ESP_NOME'
      Size = 60
    end
    object qEditESP_PADROES: TStringField
      FieldName = 'ESP_PADROES'
      Size = 100
    end
    object qEditENG_CODIGO: TIntegerField
      FieldName = 'ENG_CODIGO'
    end
    object qEditESP_COL1: TStringField
      FieldName = 'ESP_COL1'
      Size = 100
    end
    object qEditESP_COL2: TStringField
      FieldName = 'ESP_COL2'
      Size = 100
    end
    object qEditESP_COL3: TStringField
      FieldName = 'ESP_COL3'
      Size = 100
    end
    object qEditESP_COL4: TStringField
      FieldName = 'ESP_COL4'
      Size = 100
    end
    object qEditESP_COL5: TStringField
      FieldName = 'ESP_COL5'
      Size = 100
    end
    object qEditESP_COL6: TStringField
      FieldName = 'ESP_COL6'
      Size = 100
    end
    object qEditESP_COL7: TStringField
      FieldName = 'ESP_COL7'
      Size = 100
    end
  end
  inherited CdsEdit: TClientDataSet
    object CdsEditESP_CODIGO: TIntegerField
      FieldName = 'ESP_CODIGO'
      Required = True
    end
    object CdsEditESP_NOME: TStringField
      FieldName = 'ESP_NOME'
      Size = 60
    end
    object CdsEditESP_PADROES: TStringField
      FieldName = 'ESP_PADROES'
      Size = 100
    end
    object CdsEditENG_CODIGO: TIntegerField
      FieldName = 'ENG_CODIGO'
    end
    object CdsEditESP_COL1: TStringField
      FieldName = 'ESP_COL1'
      Size = 100
    end
    object CdsEditESP_COL2: TStringField
      FieldName = 'ESP_COL2'
      Size = 100
    end
    object CdsEditESP_COL3: TStringField
      FieldName = 'ESP_COL3'
      Size = 100
    end
    object CdsEditESP_COL4: TStringField
      FieldName = 'ESP_COL4'
      Size = 100
    end
    object CdsEditESP_COL5: TStringField
      FieldName = 'ESP_COL5'
      Size = 100
    end
    object CdsEditESP_COL6: TStringField
      FieldName = 'ESP_COL6'
      Size = 100
    end
    object CdsEditESP_COL7: TStringField
      FieldName = 'ESP_COL7'
      Size = 100
    end
  end
end
