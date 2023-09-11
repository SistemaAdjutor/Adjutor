inherited FmColaborador: TFmColaborador
  Caption = 'FmColaborador'
  PixelsPerInch = 96
  TextHeight = 13
  object lbl2: TLabel [0]
    Left = 14
    Top = 76
    Width = 31
    Height = 13
    Caption = 'Nome:'
  end
  object Label2: TLabel [1]
    Left = 17
    Top = 102
    Width = 39
    Height = 13
    Caption = 'Fun'#231#227'o:'
  end
  object Label1: TLabel [2]
    Left = 14
    Top = 126
    Width = 30
    Height = 13
    Caption = 'Setor:'
  end
  object Label3: TLabel [3]
    Left = 14
    Top = 152
    Width = 46
    Height = 13
    Caption = 'Sal'#225'rio/h:'
  end
  object Label4: TLabel [4]
    Left = 14
    Top = 52
    Width = 37
    Height = 13
    Caption = 'C'#243'digo:'
  end
  object dbNome: TDBEdit [6]
    Left = 62
    Top = 72
    Width = 513
    Height = 21
    DataField = 'COL_NOME'
    DataSource = dsEditS
    TabOrder = 1
  end
  object dbedFuncao: TDBEdit [7]
    Left = 62
    Top = 98
    Width = 513
    Height = 21
    DataField = 'COL_FUNC'
    DataSource = dsEditS
    TabOrder = 2
  end
  object dbedSetor: TDBEdit [8]
    Left = 62
    Top = 122
    Width = 513
    Height = 21
    DataField = 'COL_SETOR'
    DataSource = dsEditS
    TabOrder = 3
  end
  object DBEditCodigo: TDBEdit [9]
    Left = 62
    Top = 48
    Width = 121
    Height = 21
    DataField = 'COL_CODIGO'
    DataSource = dsEditS
    Enabled = False
    TabOrder = 4
  end
  object DBEdit1: TDBEdit [10]
    Left = 62
    Top = 148
    Width = 121
    Height = 21
    DataField = 'COL_SALARIO_HORA'
    DataSource = dsEditS
    TabOrder = 5
  end
  inherited coCalcula: TACBrCalculadora
    Left = 200
    Top = 8
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 184
    Top = 8
  end
  inherited qEdit: TSQLQuery
    Params = <
      item
        DataType = ftString
        Name = 'ID'
        ParamType = ptInput
        Value = 0
      end>
    SQL.Strings = (
      'SELECT * FROM COLABORADOR WHERE COL_CODIGO=:ID')
    object qEditCOL_CODIGO: TIntegerField
      FieldName = 'COL_CODIGO'
      Required = True
    end
    object qEditCOL_NOME: TStringField
      FieldName = 'COL_NOME'
      Size = 40
    end
    object qEditCOL_FUNC: TStringField
      FieldName = 'COL_FUNC'
      Size = 30
    end
    object qEditCOL_SETOR: TStringField
      FieldName = 'COL_SETOR'
      Size = 30
    end
    object qEditCOL_SALARIO_HORA: TFMTBCDField
      FieldName = 'COL_SALARIO_HORA'
      OnGetText = qEditCOL_SALARIO_HORAGetText
      DisplayFormat = '#,##0.0000'
      Precision = 18
      Size = 5
    end
  end
  inherited CdsEdit: TClientDataSet
    object CdsEditCOL_CODIGO: TIntegerField
      FieldName = 'COL_CODIGO'
      Required = True
    end
    object CdsEditCOL_NOME: TStringField
      FieldName = 'COL_NOME'
      Size = 40
    end
    object CdsEditCOL_FUNC: TStringField
      FieldName = 'COL_FUNC'
      Size = 30
    end
    object CdsEditCOL_SETOR: TStringField
      FieldName = 'COL_SETOR'
      Size = 30
    end
    object CdsEditCOL_SALARIO_HORA: TFMTBCDField
      FieldName = 'COL_SALARIO_HORA'
      EditFormat = '#,##0.0000'
      Precision = 18
      Size = 5
    end
  end
end
