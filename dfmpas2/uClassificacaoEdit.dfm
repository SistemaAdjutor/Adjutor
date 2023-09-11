inherited frmClassificacao: TfrmClassificacao
  Caption = 'frmClassificacao'
  ClientHeight = 178
  ClientWidth = 684
  ExplicitWidth = 692
  ExplicitHeight = 205
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel [0]
    Left = 8
    Top = 24
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
  end
  object Label1: TLabel [1]
    Left = 128
    Top = 24
    Width = 46
    Height = 13
    Caption = 'Descri'#231#227'o'
    FocusControl = cxDBTextEdit1
  end
  inherited pnUtil: TPanel
    Top = 146
    Width = 684
    ExplicitTop = 146
    ExplicitWidth = 684
    inherited btnOk: TSpeedButton
      Left = 384
    end
    inherited btnCancelar: TSpeedButton
      Left = 533
    end
  end
  object cxDBTextEdit2: TcxDBTextEdit [3]
    Left = 8
    Top = 43
    DataBinding.DataField = 'CMO_CODIGO'
    DataBinding.DataSource = dsEditS
    Enabled = False
    TabOrder = 1
    Width = 114
  end
  object cxDBTextEdit1: TcxDBTextEdit [4]
    Left = 128
    Top = 43
    DataBinding.DataField = 'CMO_NOME'
    DataBinding.DataSource = dsEditS
    TabOrder = 2
    Width = 353
  end
  inherited qEdit: TSQLQuery
    SQL.Strings = (
      'SELECT * FROM CLASSIFICACAO_MOLA WHERE cmo_codigo = :ID')
  end
  inherited CdsEdit: TClientDataSet
    object CdsEditCMO_CODIGO: TIntegerField
      FieldName = 'CMO_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CdsEditCMO_NOME: TStringField
      FieldName = 'CMO_NOME'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
  end
end
