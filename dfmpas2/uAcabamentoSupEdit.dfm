inherited frmAcabamentoSuperEdit: TfrmAcabamentoSuperEdit
  Caption = 'frmAcabamentoSuperEdit'
  ClientHeight = 144
  ClientWidth = 648
  ExplicitWidth = 656
  ExplicitHeight = 171
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
    Top = 112
    Width = 648
    inherited btnOk: TSpeedButton
      Left = 348
    end
    inherited btnCancelar: TSpeedButton
      Left = 497
    end
  end
  object cxDBTextEdit2: TcxDBTextEdit [3]
    Left = 8
    Top = 43
    DataBinding.DataField = 'ASU_CODIGO'
    DataBinding.DataSource = dsEditS
    Enabled = False
    TabOrder = 1
    Width = 114
  end
  object cxDBTextEdit1: TcxDBTextEdit [4]
    Left = 128
    Top = 43
    DataBinding.DataField = 'ASU_NOME'
    DataBinding.DataSource = dsEditS
    TabOrder = 2
    Width = 353
  end
  inherited qEdit: TSQLQuery
    SQL.Strings = (
      'SELECT * FROM ACABAMENTO_SUPERFICIAL WHERE ASU_CODIGO =:ID')
  end
  inherited CdsEdit: TClientDataSet
    object CdsEditASU_CODIGO: TIntegerField
      FieldName = 'ASU_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CdsEditASU_NOME: TStringField
      FieldName = 'ASU_NOME'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
  end
end
