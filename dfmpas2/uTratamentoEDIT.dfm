inherited frmTratamentoEdit: TfrmTratamentoEdit
  Caption = 'frmTratamentoEdit'
  ClientHeight = 127
  ClientWidth = 748
  ExplicitWidth = 756
  ExplicitHeight = 154
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel [0]
    Left = 14
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
    Top = 95
    Width = 748
    ExplicitTop = 95
    ExplicitWidth = 748
    inherited btnOk: TSpeedButton
      Left = 448
    end
    inherited btnCancelar: TSpeedButton
      Left = 597
    end
  end
  object cxDBTextEdit1: TcxDBTextEdit [3]
    Left = 128
    Top = 43
    DataBinding.DataField = 'TSU_NOME'
    DataBinding.DataSource = dsEditS
    TabOrder = 1
    Width = 353
  end
  object cxDBTextEdit2: TcxDBTextEdit [4]
    Left = 8
    Top = 43
    DataBinding.DataField = 'TSU_CODIGO'
    DataBinding.DataSource = dsEditS
    Enabled = False
    TabOrder = 2
    Width = 114
  end
  inherited qEdit: TSQLQuery
    SQL.Strings = (
      'SELECT * FROM TRATAMENTO_SUPERFICIAL WHERE tsu_codigo=:ID')
  end
  inherited CdsEdit: TClientDataSet
    object CdsEditTSU_CODIGO: TIntegerField
      FieldName = 'TSU_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CdsEditTSU_NOME: TStringField
      FieldName = 'TSU_NOME'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
  end
end
