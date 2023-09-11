inherited frmTurnos: TfrmTurnos
  Caption = 'frmTurnos'
  ClientHeight = 301
  ClientWidth = 714
  ExplicitWidth = 730
  ExplicitHeight = 339
  PixelsPerInch = 96
  TextHeight = 13
  object Nome: TLabel [0]
    Left = 24
    Top = 64
    Width = 27
    Height = 13
    Caption = 'Nome'
  end
  object Label1: TLabel [1]
    Left = 451
    Top = 64
    Width = 61
    Height = 13
    Caption = 'Dias/semana'
  end
  object Label2: TLabel [2]
    Left = 528
    Top = 64
    Width = 25
    Height = 13
    Caption = 'In'#237'cio'
  end
  object Label3: TLabel [3]
    Left = 623
    Top = 64
    Width = 16
    Height = 13
    Caption = 'Fim'
  end
  object Label4: TLabel [4]
    Left = 352
    Top = 114
    Width = 32
    Height = 13
    Caption = 'Tempo'
  end
  object Label5: TLabel [5]
    Left = 24
    Top = 112
    Width = 115
    Height = 13
    Caption = 'Descri'#231#227'o do intervalo 1'
  end
  object Label6: TLabel [6]
    Left = 24
    Top = 152
    Width = 115
    Height = 13
    Caption = 'Descri'#231#227'o do intervalo 2'
  end
  object Label7: TLabel [7]
    Left = 352
    Top = 154
    Width = 32
    Height = 13
    Caption = 'Tempo'
  end
  object Label8: TLabel [8]
    Left = 24
    Top = 192
    Width = 115
    Height = 13
    Caption = 'Descri'#231#227'o do intervalo 3'
  end
  object Label9: TLabel [9]
    Left = 352
    Top = 194
    Width = 32
    Height = 13
    Caption = 'Tempo'
  end
  object DBText1: TDBText [10]
    Left = 67
    Top = 40
    Width = 83
    Height = 17
    DataField = 'TPR_CODIGO'
    DataSource = dsEditS
  end
  object Label10: TLabel [11]
    Left = 24
    Top = 40
    Width = 37
    Height = 13
    Caption = 'C'#243'digo:'
  end
  inherited pnUtil: TPanel
    Top = 269
    Width = 714
    ExplicitTop = 269
    ExplicitWidth = 714
    inherited btnOk: TSpeedButton
      Left = 414
      ExplicitLeft = 644
    end
    inherited btnCancelar: TSpeedButton
      Left = 563
      ExplicitLeft = 793
    end
  end
  object DBEdit1: TDBEdit [13]
    Left = 24
    Top = 80
    Width = 338
    Height = 21
    DataField = 'TRP_NOME'
    DataSource = dsEditS
    TabOrder = 1
  end
  object DBCheckBox1: TDBCheckBox [14]
    Left = 368
    Top = 80
    Width = 65
    Height = 17
    Caption = 'Ativo'
    DataField = 'TRP_ATIVO'
    DataSource = dsEditS
    TabOrder = 2
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object DBEdit2: TDBEdit [15]
    Left = 451
    Top = 78
    Width = 61
    Height = 21
    DataField = 'TRP_DIASSEMANAS'
    DataSource = dsEditS
    TabOrder = 3
  end
  object DBEdit3: TDBEdit [16]
    Left = 528
    Top = 78
    Width = 73
    Height = 21
    DataField = 'TRP_INICIO'
    DataSource = dsEditS
    TabOrder = 4
  end
  object DBEdit4: TDBEdit [17]
    Left = 623
    Top = 78
    Width = 73
    Height = 21
    DataField = 'TRP_FIM'
    DataSource = dsEditS
    TabOrder = 5
  end
  object DBEdit5: TDBEdit [18]
    Left = 24
    Top = 128
    Width = 305
    Height = 21
    DataField = 'TRP_DESCRICAO_INT1'
    DataSource = dsEditS
    TabOrder = 6
  end
  object DBEdit6: TDBEdit [19]
    Left = 352
    Top = 128
    Width = 73
    Height = 21
    DataField = 'TRP_TEMPOINTERVALO1'
    DataSource = dsEditS
    TabOrder = 7
  end
  object DBEdit7: TDBEdit [20]
    Left = 24
    Top = 168
    Width = 305
    Height = 21
    DataField = 'TRP_DESCRICAO_INT2'
    DataSource = dsEditS
    TabOrder = 8
  end
  object DBEdit8: TDBEdit [21]
    Left = 352
    Top = 168
    Width = 73
    Height = 21
    DataField = 'TRP_TEMPOINTERVALO2'
    DataSource = dsEditS
    TabOrder = 9
  end
  object DBEdit9: TDBEdit [22]
    Left = 24
    Top = 208
    Width = 305
    Height = 21
    DataField = 'TRP_DESCRICAO_INT3'
    DataSource = dsEditS
    TabOrder = 10
  end
  object DBEdit10: TDBEdit [23]
    Left = 352
    Top = 208
    Width = 73
    Height = 21
    DataField = 'TRP_TEMPOINTERVALO3'
    DataSource = dsEditS
    TabOrder = 11
  end
  inherited coCalcula: TACBrCalculadora
    Left = 648
    Top = 8
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 672
    Top = 16
  end
  inherited DBConn: TSQLConnection
    Left = 424
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
      
        'SELECT EMP_CODIGO, TPR_CODIGO, TRP_NOME, TRP_ATIVO, TRP_DIASSEMA' +
        'NAS, TRP_INICIO, TRP_FIM, '
      
        'TRP_DESCRICAO_INT1, TRP_TEMPOINTERVALO1, TRP_DESCRICAO_INT2, TRP' +
        '_TEMPOINTERVALO2, TRP_DESCRICAO_INT3, TRP_TEMPOINTERVALO3 '
      'FROM TURNO'
      'WHERE TPR_CODIGO = :ID')
    object qEditTPR_CODIGO: TIntegerField
      FieldName = 'TPR_CODIGO'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object qEditTRP_NOME: TStringField
      FieldName = 'TRP_NOME'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object qEditEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object qEditTRP_ATIVO: TStringField
      FieldName = 'TRP_ATIVO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object qEditTRP_DIASSEMANAS: TIntegerField
      FieldName = 'TRP_DIASSEMANAS'
      ProviderFlags = [pfInUpdate]
    end
    object qEditTRP_INICIO: TTimeField
      FieldName = 'TRP_INICIO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = 'hh:nn'
      EditMask = '!90:00;1;_'
    end
    object qEditTRP_FIM: TTimeField
      FieldName = 'TRP_FIM'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = 'hh:nn'
      EditMask = '!90:00;1;_'
    end
    object qEditTRP_DESCRICAO_INT1: TStringField
      FieldName = 'TRP_DESCRICAO_INT1'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object qEditTRP_DESCRICAO_INT2: TStringField
      FieldName = 'TRP_DESCRICAO_INT2'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object qEditTRP_DESCRICAO_INT3: TStringField
      FieldName = 'TRP_DESCRICAO_INT3'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object qEditTRP_TEMPOINTERVALO1: TTimeField
      FieldName = 'TRP_TEMPOINTERVALO1'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = 'hh:nn'
      EditMask = '!90:00;1;_'
    end
    object qEditTRP_TEMPOINTERVALO2: TTimeField
      FieldName = 'TRP_TEMPOINTERVALO2'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = 'hh:nn'
      EditMask = '!90:00;1;_'
    end
    object qEditTRP_TEMPOINTERVALO3: TTimeField
      FieldName = 'TRP_TEMPOINTERVALO3'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = 'hh:nn'
      EditMask = '!90:00;1;_'
    end
  end
  inherited DspEdit: TDataSetProvider
    UpdateMode = upWhereKeyOnly
  end
  inherited CdsEdit: TClientDataSet
    AfterInsert = CdsEditAfterInsert
    OnNewRecord = CdsEditNewRecord
    object CdsEditTPR_CODIGO: TIntegerField
      FieldName = 'TPR_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsEditTRP_NOME: TStringField
      FieldName = 'TRP_NOME'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object CdsEditEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsEditTRP_ATIVO: TStringField
      FieldName = 'TRP_ATIVO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsEditTRP_DIASSEMANAS: TIntegerField
      FieldName = 'TRP_DIASSEMANAS'
      ProviderFlags = [pfInUpdate]
    end
    object CdsEditTRP_INICIO: TTimeField
      FieldName = 'TRP_INICIO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = 'hh:nn'
      EditMask = '!90:00;1;_'
    end
    object CdsEditTRP_FIM: TTimeField
      FieldName = 'TRP_FIM'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = 'hh:nn'
      EditMask = '!90:00;1;_'
    end
    object CdsEditTRP_DESCRICAO_INT1: TStringField
      FieldName = 'TRP_DESCRICAO_INT1'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object CdsEditTRP_DESCRICAO_INT2: TStringField
      FieldName = 'TRP_DESCRICAO_INT2'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object CdsEditTRP_DESCRICAO_INT3: TStringField
      FieldName = 'TRP_DESCRICAO_INT3'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object CdsEditTRP_TEMPOINTERVALO1: TTimeField
      FieldName = 'TRP_TEMPOINTERVALO1'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = 'hh:nn'
      EditMask = '!90:00;1;_'
    end
    object CdsEditTRP_TEMPOINTERVALO2: TTimeField
      FieldName = 'TRP_TEMPOINTERVALO2'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = 'hh:nn'
      EditMask = '!90:00;1;_'
    end
    object CdsEditTRP_TEMPOINTERVALO3: TTimeField
      FieldName = 'TRP_TEMPOINTERVALO3'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = 'hh:nn'
      EditMask = '!90:00;1;_'
    end
  end
end
