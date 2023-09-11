inherited frmCoresEdit: TfrmCoresEdit
  Caption = 'frmCoresEdit'
  ClientHeight = 144
  ClientWidth = 740
  ExplicitWidth = 748
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
    Width = 740
    ExplicitTop = 112
    ExplicitWidth = 740
    inherited btnOk: TSpeedButton
      Left = 440
    end
    inherited btnCancelar: TSpeedButton
      Left = 589
    end
  end
  object cxDBTextEdit2: TcxDBTextEdit [3]
    Left = 8
    Top = 43
    DataBinding.DataField = 'ACO_CODIGO'
    DataBinding.DataSource = dsEditS
    Enabled = False
    TabOrder = 1
    Width = 114
  end
  object cxDBTextEdit1: TcxDBTextEdit [4]
    Left = 128
    Top = 43
    DataBinding.DataField = 'ACO_NOME'
    DataBinding.DataSource = dsEditS
    TabOrder = 2
    Width = 353
  end
  inherited coCalcula: TACBrCalculadora
    Left = 96
    Top = 72
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 48
    Top = 72
  end
  inherited qEdit: TSQLQuery
    SQL.Strings = (
      'SELECT * FROM ACABAMENTO_CORES WHERE aco_codigo=:ID')
  end
  inherited CdsEdit: TClientDataSet
    object CdsEditACO_CODIGO: TIntegerField
      FieldName = 'ACO_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CdsEditACO_NOME: TStringField
      FieldName = 'ACO_NOME'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
  end
end
