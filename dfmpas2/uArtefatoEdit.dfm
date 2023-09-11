inherited frmArtefato: TfrmArtefato
  Caption = 'Artefato'
  ClientHeight = 151
  ClientWidth = 661
  ExplicitWidth = 669
  ExplicitHeight = 178
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
    Top = 119
    Width = 661
    ExplicitTop = 119
    ExplicitWidth = 661
    inherited btnOk: TSpeedButton
      Left = 361
      ExplicitLeft = 361
    end
    inherited btnCancelar: TSpeedButton
      Left = 510
      ExplicitLeft = 510
    end
  end
  object cxDBTextEdit1: TcxDBTextEdit [3]
    Left = 128
    Top = 43
    DataBinding.DataField = 'ART_NOME'
    DataBinding.DataSource = dsEditS
    TabOrder = 1
    Width = 353
  end
  object cxDBTextEdit2: TcxDBTextEdit [4]
    Left = 8
    Top = 43
    DataBinding.DataField = 'ART_CODIGO'
    DataBinding.DataSource = dsEditS
    Enabled = False
    TabOrder = 2
    Width = 114
  end
  inherited coCalcula: TACBrCalculadora
    Left = 696
    Top = 24
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 544
    Top = 80
  end
  inherited DBConn: TSQLConnection
    Left = 472
    Top = 0
  end
  inherited qAux: TSQLQuery
    Left = 274
    Top = 5
  end
  inherited qEdit: TSQLQuery
    SQL.Strings = (
      'SELECT * FROM ARTEFATO  WHERE art_codigo=:ID')
    Left = 500
    Top = 65535
  end
  inherited CdsEdit: TClientDataSet
    object CdsEditART_CODIGO: TIntegerField
      FieldName = 'ART_CODIGO'
      ProviderFlags = [pfInUpdate, pfInKey]
    end
    object CdsEditART_NOME: TStringField
      FieldName = 'ART_NOME'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
  end
end
