inherited frmModificacaoOperacaoProcessoFabricacao: TfrmModificacaoOperacaoProcessoFabricacao
  Caption = 'Modifica'#231#227'o de Opera'#231#227'o no Processo de Fabrica'#231#227'o'
  ClientHeight = 251
  ClientWidth = 736
  ExplicitWidth = 744
  ExplicitHeight = 278
  PixelsPerInch = 96
  TextHeight = 13
  object lbDescricao: TLabel [0]
    Left = 24
    Top = 16
    Width = 93
    Height = 19
    Caption = 'lbDescricao'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel [1]
    Left = 24
    Top = 64
    Width = 87
    Height = 13
    Caption = 'Alterar Opera'#231#227'o:'
  end
  object lbOperacao: TLabel [2]
    Left = 128
    Top = 64
    Width = 55
    Height = 13
    Caption = 'lbOperacao'
  end
  object Label2: TLabel [3]
    Left = 85
    Top = 86
    Width = 26
    Height = 13
    Caption = 'Para:'
  end
  object Label3: TLabel [4]
    Left = 9
    Top = 128
    Width = 102
    Height = 13
    Caption = 'Alterar Equipamento:'
  end
  object lbEquipamento: TLabel [5]
    Left = 128
    Top = 128
    Width = 70
    Height = 13
    Caption = 'lbEquipamento'
  end
  object Label5: TLabel [6]
    Left = 85
    Top = 150
    Width = 26
    Height = 13
    Caption = 'Para:'
  end
  object lcOperacao: TDBLookupComboBox [7]
    Left = 128
    Top = 83
    Width = 591
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    KeyField = 'OPE_CODIGO'
    ListField = 'OPE_DESCRICAO'
    ListSource = dsOperacao
    TabOrder = 0
  end
  object btConfirmar: TButton [8]
    Left = 128
    Top = 192
    Width = 75
    Height = 25
    Caption = '&Confirmar'
    TabOrder = 1
    OnClick = btConfirmarClick
  end
  object btCancelar: TButton [9]
    Left = 244
    Top = 192
    Width = 75
    Height = 25
    Caption = 'C&ancelar'
    TabOrder = 2
    OnClick = btCancelarClick
  end
  object lcEquipamento: TDBLookupComboBox [10]
    Left = 128
    Top = 147
    Width = 591
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    KeyField = 'EQP_CODIGO'
    ListField = 'EQP_DESCRICAO'
    ListSource = dsEquipamento
    TabOrder = 3
  end
  inherited coCalcula: TACBrCalculadora
    Left = 424
    Top = 200
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 496
    Top = 200
  end
  inherited DBConn: TSQLConnection
    Left = 568
    Top = 201
  end
  inherited qAux: TSQLQuery
    Left = 618
    Top = 205
  end
  inherited qAux2: TSQLQuery
    Left = 674
    Top = 204
  end
  inherited qAux3: TSQLQuery
    Left = 634
    Top = 292
  end
  object qOperacao: TFDQuery
    Connection = DBInicio.FDACConn
    SQL.Strings = (
      'SELECT o.OPE_CODIGO, o.OPE_DESCRICAO '
      '  FROM OPERACOES o'
      'ORDER BY o.OPE_DESCRICAO')
    Left = 232
    Top = 48
    object qOperacaoOPE_CODIGO: TIntegerField
      FieldName = 'OPE_CODIGO'
      Origin = 'OPE_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qOperacaoOPE_DESCRICAO: TStringField
      FieldName = 'OPE_DESCRICAO'
      Origin = 'OPE_DESCRICAO'
      Size = 60
    end
  end
  object dsOperacao: TDataSource
    DataSet = qOperacao
    Left = 304
    Top = 48
  end
  object qEquipamento: TFDQuery
    Connection = DBInicio.FDACConn
    SQL.Strings = (
      'SELECT e.EQP_CODIGO, e.EQP_DESCRICAO '
      '  FROM EQUIPAMENTO e'
      'ORDER BY e.EQP_DESCRICAO')
    Left = 232
    Top = 112
    object qEquipamentoEQP_CODIGO: TIntegerField
      FieldName = 'EQP_CODIGO'
      Origin = 'EQP_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qEquipamentoEQP_DESCRICAO: TStringField
      FieldName = 'EQP_DESCRICAO'
      Origin = 'EQP_DESCRICAO'
      Size = 60
    end
  end
  object dsEquipamento: TDataSource
    DataSet = qEquipamento
    Left = 320
    Top = 112
  end
end
