inherited frmClieOrigem: TfrmClieOrigem
  Caption = 'frmClieOrigem'
  ClientHeight = 160
  ClientWidth = 720
  ExplicitWidth = 728
  ExplicitHeight = 187
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 16
    Top = 72
    Width = 46
    Height = 13
    Caption = 'Descri'#231#227'o'
    FocusControl = cxDBTextEdit1
  end
  object Label2: TLabel [1]
    Left = 16
    Top = 16
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
  end
  inherited pnUtil: TPanel
    Top = 128
    Width = 720
    inherited btnOk: TSpeedButton
      Left = 420
    end
    inherited btnCancelar: TSpeedButton
      Left = 569
    end
  end
  object cxDBTextEdit1: TcxDBTextEdit [3]
    Left = 16
    Top = 88
    DataBinding.DataField = 'CORI_DESCRICAO'
    DataBinding.DataSource = dsEditS
    TabOrder = 1
    Width = 345
  end
  object cxDBTextEdit2: TcxDBTextEdit [4]
    Left = 16
    Top = 32
    DataBinding.DataField = 'CORI_CODIGO'
    DataBinding.DataSource = dsEditS
    TabOrder = 2
    Width = 121
  end
  inherited coCalcula: TACBrCalculadora
    Left = 696
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 800
    Top = 64
  end
  inherited qEdit: TSQLQuery
    SQL.Strings = (
      'SELECT * FROM CLIENTE_ORIGEM WHERE CORI_CODIGO=:ID')
  end
  inherited CdsEdit: TClientDataSet
    object CdsEditCORI_CODIGO: TIntegerField
      FieldName = 'CORI_CODIGO'
    end
    object CdsEditCORI_DESCRICAO: TStringField
      FieldName = 'CORI_DESCRICAO'
      Size = 150
    end
  end
end
