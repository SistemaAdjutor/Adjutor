inherited frmEditIBPT: TfrmEditIBPT
  Left = 548
  Top = 290
  Caption = 'frmEditIBPT'
  ClientHeight = 403
  ClientWidth = 799
  ExplicitWidth = 815
  ExplicitHeight = 441
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel [0]
    Left = 30
    Top = 20
    Width = 15
    Height = 13
    Caption = 'ID:'
    FocusControl = dbedtIBPT_ID
  end
  object lbl2: TLabel [1]
    Left = 30
    Top = 60
    Width = 53
    Height = 13
    Caption = 'NCM/NBS::'
    FocusControl = dbedtIBPT_NCM
  end
  object lbl3: TLabel [2]
    Left = 124
    Top = 60
    Width = 93
    Height = 13
    Caption = 'Exce'#231#227'o TIPI/IBPT:'
    FocusControl = dbedtIBPT_EX
  end
  object lbl4: TLabel [3]
    Left = 227
    Top = 60
    Width = 24
    Height = 13
    Caption = 'Tipo:'
  end
  object lbl5: TLabel [4]
    Left = 30
    Top = 100
    Width = 98
    Height = 13
    Caption = 'Descri'#231#227'o NCM/NBS:'
    FocusControl = dbedtIBPT_DESCRICAO
  end
  object lbl6: TLabel [5]
    Left = 247
    Top = 148
    Width = 127
    Height = 13
    Alignment = taRightJustify
    Caption = 'Aliquota Produto Nacional:'
    FocusControl = dbedtIBPT_ALIQFEDNACIONAL
  end
  object lbl7: TLabel [6]
    Left = 237
    Top = 172
    Width = 137
    Height = 13
    Alignment = taRightJustify
    Caption = 'Al'#237'quota Produto Importado:'
    FocusControl = dbedtIBPT_ALIQFEDIMPORTADO
  end
  object lbl8: TLabel [7]
    Left = 287
    Top = 196
    Width = 87
    Height = 13
    Alignment = taRightJustify
    Caption = 'Al'#237'quota Estadual:'
    FocusControl = dbedtIBPT_ALIQESTADUAL
  end
  object lbl9: TLabel [8]
    Left = 283
    Top = 220
    Width = 91
    Height = 13
    Alignment = taRightJustify
    Caption = 'Al'#237'quota Municiipal:'
    FocusControl = dbedtIBPT_ALIQMUNICIPAL
  end
  inherited pnUtil: TPanel
    Top = 371
    Width = 799
    TabOrder = 9
    ExplicitTop = 371
    ExplicitWidth = 799
    inherited btnOk: TSpeedButton
      Left = 499
      ExplicitLeft = 499
    end
    inherited btnCancelar: TSpeedButton
      Left = 648
      ExplicitLeft = 648
    end
  end
  object dbedtIBPT_ID: TDBEdit [10]
    Left = 30
    Top = 32
    Width = 59
    Height = 21
    TabStop = False
    DataField = 'IBPT_ID'
    DataSource = dsEditS
    ReadOnly = True
    TabOrder = 0
  end
  object dbedtIBPT_NCM: TDBEdit [11]
    Left = 30
    Top = 72
    Width = 91
    Height = 21
    DataField = 'IBPT_NCM'
    DataSource = dsEditS
    TabOrder = 1
  end
  object dbedtIBPT_EX: TDBEdit [12]
    Left = 124
    Top = 72
    Width = 101
    Height = 21
    DataField = 'IBPT_EX'
    DataSource = dsEditS
    MaxLength = 2
    TabOrder = 2
    OnExit = dbedtIBPT_EXExit
    OnKeyPress = dbedtIBPT_EXKeyPress
  end
  object dbedtIBPT_DESCRICAO: TDBEdit [13]
    Left = 30
    Top = 112
    Width = 435
    Height = 21
    DataField = 'IBPT_DESCRICAO'
    DataSource = dsEditS
    TabOrder = 4
  end
  object dbedtIBPT_ALIQFEDNACIONAL: TJvDBCalcEdit [14]
    Left = 374
    Top = 144
    Width = 92
    Height = 21
    TabOrder = 5
    DecimalPlacesAlwaysShown = False
    DataField = 'IBPT_ALIQFEDNACIONAL'
    DataSource = dsEditS
  end
  object dbedtIBPT_ALIQFEDIMPORTADO: TJvDBCalcEdit [15]
    Left = 374
    Top = 168
    Width = 92
    Height = 21
    TabOrder = 6
    DecimalPlacesAlwaysShown = False
    DataField = 'IBPT_ALIQFEDIMPORTADO'
    DataSource = dsEditS
  end
  object dbedtIBPT_ALIQESTADUAL: TJvDBCalcEdit [16]
    Left = 374
    Top = 192
    Width = 92
    Height = 21
    TabOrder = 7
    DecimalPlacesAlwaysShown = False
    DataField = 'IBPT_ALIQESTADUAL'
    DataSource = dsEditS
  end
  object dbedtIBPT_ALIQMUNICIPAL: TJvDBCalcEdit [17]
    Left = 374
    Top = 216
    Width = 92
    Height = 21
    TabOrder = 8
    DecimalPlacesAlwaysShown = False
    DataField = 'IBPT_ALIQMUNICIPAL'
    DataSource = dsEditS
  end
  object dbcbbIBPT_TABELA: TDBComboBox [18]
    Left = 228
    Top = 72
    Width = 97
    Height = 21
    DataField = 'IBPT_TABELA'
    DataSource = dsEditS
    Items.Strings = (
      'NCM'
      'NBS'
      'LST')
    TabOrder = 3
  end
  inherited coCalcula: TACBrCalculadora
    Left = 368
  end
  inherited DBConn: TSQLConnection
    Left = 432
  end
  inherited qEdit: TSQLQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Value = 0
      end>
    SQL.Strings = (
      'SELECT * FROM IBPT0000 WHERE IBPT_ID=:ID')
    Left = 484
    object qEditIBPT_ID: TIntegerField
      FieldName = 'IBPT_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qEditIBPT_NCM: TStringField
      FieldName = 'IBPT_NCM'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 10
    end
    object qEditIBPT_EX: TStringField
      FieldName = 'IBPT_EX'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object qEditIBPT_TABELA: TIntegerField
      FieldName = 'IBPT_TABELA'
      ProviderFlags = [pfInUpdate]
    end
    object qEditIBPT_DESCRICAO: TStringField
      FieldName = 'IBPT_DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object qEditIBPT_ALIQFEDNACIONAL: TFMTBCDField
      FieldName = 'IBPT_ALIQFEDNACIONAL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object qEditIBPT_ALIQFEDIMPORTADO: TFMTBCDField
      FieldName = 'IBPT_ALIQFEDIMPORTADO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object qEditIBPT_ALIQESTADUAL: TFMTBCDField
      FieldName = 'IBPT_ALIQESTADUAL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object qEditIBPT_ALIQMUNICIPAL: TFMTBCDField
      FieldName = 'IBPT_ALIQMUNICIPAL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
  end
  inherited DspEdit: TDataSetProvider
    Left = 520
  end
  inherited CdsEdit: TClientDataSet
    AfterInsert = CdsEditAfterInsert
    Left = 559
    object CdsEditIBPT_ID: TIntegerField
      FieldName = 'IBPT_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsEditIBPT_NCM: TStringField
      FieldName = 'IBPT_NCM'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 10
    end
    object CdsEditIBPT_EX: TStringField
      FieldName = 'IBPT_EX'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object CdsEditIBPT_TABELA: TIntegerField
      FieldName = 'IBPT_TABELA'
      ProviderFlags = [pfInUpdate]
      OnGetText = CdsEditIBPT_TABELAGetText
      OnSetText = CdsEditIBPT_TABELASetText
    end
    object CdsEditIBPT_DESCRICAO: TStringField
      FieldName = 'IBPT_DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 250
    end
    object CdsEditIBPT_ALIQFEDNACIONAL: TFMTBCDField
      DisplayLabel = '##0.00'
      FieldName = 'IBPT_ALIQFEDNACIONAL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object CdsEditIBPT_ALIQFEDIMPORTADO: TFMTBCDField
      DisplayLabel = '##0.00'
      FieldName = 'IBPT_ALIQFEDIMPORTADO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object CdsEditIBPT_ALIQESTADUAL: TFMTBCDField
      DisplayLabel = '##0.00'
      FieldName = 'IBPT_ALIQESTADUAL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object CdsEditIBPT_ALIQMUNICIPAL: TFMTBCDField
      DisplayLabel = '##0.00'
      FieldName = 'IBPT_ALIQMUNICIPAL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
  end
  inherited dsEditS: TDataSource
    Left = 597
  end
  inherited qAuditoria: TSQLQuery
    Left = 568
    Top = 567
  end
  inherited dspAuditoria: TDataSetProvider
    Left = 644
    Top = 567
  end
end
