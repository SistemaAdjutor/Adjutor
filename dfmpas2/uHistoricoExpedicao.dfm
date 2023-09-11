inherited frmHistoricoExpedicao: TfrmHistoricoExpedicao
  Caption = 'Expedi'#231#227'o'
  ClientHeight = 193
  ClientWidth = 605
  ExplicitWidth = 621
  ExplicitHeight = 231
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 16
    Width = 75
    Height = 13
    Caption = 'Nova situa'#231#227'o :'
  end
  object Label2: TLabel [1]
    Left = 8
    Top = 48
    Width = 65
    Height = 13
    Caption = 'Observa'#231#227'o :'
  end
  inherited pnUtil: TPanel
    Top = 161
    Width = 605
    ExplicitTop = 161
    ExplicitWidth = 605
    inherited btnOk: TSpeedButton
      Left = 305
      ExplicitLeft = 305
    end
    inherited btnCancelar: TSpeedButton
      Left = 454
      ExplicitLeft = 454
    end
    inherited cbPersistente: TCheckBox [2]
      Left = 8
      Width = 54
      ExplicitLeft = 8
      ExplicitWidth = 54
    end
    inherited Panel3: TPanel [3]
      inherited btCalc: TSpeedButton
        Left = 7
        ExplicitLeft = 7
      end
    end
    inherited pnMove: TPanel [4]
    end
  end
  object cbExped: TComboBox [3]
    Left = 89
    Top = 13
    Width = 118
    Height = 21
    TabOrder = 1
    Text = 'Finalizado'
    Items.Strings = (
      'Liberado'
      'Em Separa'#231#227'o'
      'Finalizado'
      'Faturado'
      'Despachado'
      'Impedido')
  end
  object obs: TDBMemo [4]
    Left = 8
    Top = 64
    Width = 585
    Height = 89
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataField = 'OBSERVACAO'
    DataSource = dsEditS
    TabOrder = 2
  end
  inherited coCalcula: TACBrCalculadora
    Left = 216
    Top = 32
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 376
    Top = 64
  end
  inherited qEdit: TSQLQuery
    SQL.Strings = (
      'SELECT HIS_REGISTRO, PED_CODIGO, SITEXP, DATASIT,'
      'USU_CODIGO, OBSERVACAO,EMP_CODIGO'
      'FROM HISTORICO_EXPE'
      'WHERE HIS_REGISTRO = :ID')
  end
  inherited CdsEdit: TClientDataSet
    object CdsEditHIS_REGISTRO: TIntegerField
      FieldName = 'HIS_REGISTRO'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object CdsEditEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsEditPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsEditSITEXP: TStringField
      FieldName = 'SITEXP'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsEditDATASIT: TSQLTimeStampField
      FieldName = 'DATASIT'
      ProviderFlags = [pfInUpdate]
    end
    object CdsEditUSU_CODIGO: TIntegerField
      FieldName = 'USU_CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsEditOBSERVACAO: TBlobField
      FieldName = 'OBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 2000
    end
  end
end
