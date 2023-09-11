inherited frmItemServico: TfrmItemServico
  Caption = 'Item de Servi'#231'o'
  ClientHeight = 224
  ClientWidth = 869
  Constraints.MinHeight = 224
  Constraints.MinWidth = 869
  ExplicitWidth = 885
  ExplicitHeight = 262
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel [0]
    Left = 53
    Top = 32
    Width = 60
    Height = 13
    Caption = 'C'#243'digo item:'
  end
  object Label3: TLabel [1]
    Left = 63
    Top = 86
    Width = 50
    Height = 13
    Caption = 'Descri'#231#227'o:'
  end
  object Label1: TLabel [2]
    Left = 24
    Top = 59
    Width = 89
    Height = 13
    Caption = 'C'#243'digo do servi'#231'o:'
  end
  inherited pnUtil: TPanel
    Top = 192
    Width = 869
    ExplicitTop = 154
    inherited btnOk: TSpeedButton
      Left = 569
    end
    inherited btnCancelar: TSpeedButton
      Left = 718
    end
  end
  object DBEdit1: TDBEdit [4]
    Left = 119
    Top = 29
    Width = 121
    Height = 21
    DataField = 'SRV_CODIGO'
    DataSource = dsEditS
    TabOrder = 1
  end
  object DBEdit2: TDBEdit [5]
    Left = 119
    Top = 83
    Width = 594
    Height = 21
    DataField = 'SRV_DESCRICAO'
    DataSource = dsEditS
    TabOrder = 2
  end
  object DBEdit3: TDBEdit [6]
    Left = 119
    Top = 56
    Width = 121
    Height = 21
    DataField = 'CODIGOSERVICO'
    DataSource = dsEditS
    TabOrder = 3
  end
  inherited coCalcula: TACBrCalculadora
    Left = 320
    Top = 88
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 416
    Top = 88
  end
  inherited qEdit: TSQLQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'SELECT SRV_REGISTRO,SRV_CODIGO,SRV_DESCRICAO, CODIGOSERVICO  FRO' +
        'M SRV0000'
      ' WHERE  SRV_REGISTRO=:ID')
    object qEditSRV_REGISTRO: TIntegerField
      FieldName = 'SRV_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qEditSRV_CODIGO: TStringField
      FieldName = 'SRV_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object qEditSRV_DESCRICAO: TStringField
      FieldName = 'SRV_DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 500
    end
    object qEditCODIGOSERVICO: TStringField
      FieldName = 'CODIGOSERVICO'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
  end
  inherited CdsEdit: TClientDataSet
    object CdsEditSRV_REGISTRO: TIntegerField
      FieldName = 'SRV_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CdsEditSRV_CODIGO: TStringField
      FieldName = 'SRV_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object CdsEditSRV_DESCRICAO: TStringField
      FieldName = 'SRV_DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 500
    end
    object CdsEditCODIGOSERVICO: TStringField
      FieldName = 'CODIGOSERVICO'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
  end
end
