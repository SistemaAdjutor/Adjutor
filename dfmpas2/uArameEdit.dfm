inherited frmArameEdit: TfrmArameEdit
  Caption = 'Arame'
  ClientHeight = 158
  ClientWidth = 711
  ExplicitWidth = 719
  ExplicitHeight = 185
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
    Top = 126
    Width = 711
    ExplicitTop = 126
    ExplicitWidth = 711
    inherited btnOk: TSpeedButton
      Left = 411
      ExplicitLeft = 411
    end
    inherited btnCancelar: TSpeedButton
      Left = 560
      ExplicitLeft = 560
    end
  end
  object cxDBTextEdit1: TcxDBTextEdit [3]
    Left = 128
    Top = 43
    DataBinding.DataField = 'NOME'
    DataBinding.DataSource = dsEditS
    TabOrder = 1
    Width = 353
  end
  object cxDBTextEdit2: TcxDBTextEdit [4]
    Left = 8
    Top = 43
    DataBinding.DataField = 'ARA_CODIGO'
    DataBinding.DataSource = dsEditS
    Enabled = False
    TabOrder = 2
    Width = 114
  end
  inherited coCalcula: TACBrCalculadora
    Left = 512
    Top = 0
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 536
    Top = 8
  end
  inherited qEdit: TSQLQuery
    SQL.Strings = (
      'SELECT * FROM ARAME WHERE ara_codigo=:ID')
  end
  inherited CdsEdit: TClientDataSet
    object CdsEditARA_CODIGO: TIntegerField
      FieldName = 'ARA_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CdsEditNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
  end
end
