inherited frmEditServico: TfrmEditServico
  Caption = 'frmEditServico'
  ClientHeight = 134
  ClientWidth = 654
  ExplicitWidth = 662
  ExplicitHeight = 161
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnUtil: TPanel
    Top = 102
    Width = 654
    ExplicitTop = 102
    ExplicitWidth = 654
    inherited btnOk: TSpeedButton
      Left = 406
      ExplicitLeft = 243
    end
    inherited btnCancelar: TSpeedButton
      Left = 531
      ExplicitLeft = 368
    end
    object litens: TLabel
      Left = 125
      Top = 11
      Width = 3
      Height = 13
      Anchors = [akLeft, akBottom]
    end
  end
  object pprincipal: TPanel [1]
    Left = 0
    Top = 0
    Width = 654
    Height = 97
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 19
      Width = 37
      Height = 13
      Caption = 'C'#243'digo:'
    end
    object Label2: TLabel
      Left = 16
      Top = 46
      Width = 31
      Height = 13
      Caption = 'Nome:'
    end
    object Label3: TLabel
      Left = 17
      Top = 72
      Width = 30
      Height = 13
      Caption = 'Setor:'
    end
    object Label4: TLabel
      Left = 302
      Top = 71
      Width = 43
      Height = 13
      Caption = 'Unidade:'
    end
    object DBEdit1: TDBEdit
      Left = 64
      Top = 16
      Width = 105
      Height = 21
      DataField = 'SRV_CODIGO'
      DataSource = dsEdits
      ReadOnly = True
      TabOrder = 0
    end
    object edNome: TDBEdit
      Left = 64
      Top = 43
      Width = 374
      Height = 21
      DataField = 'SRV_NOME'
      DataSource = dsEdits
      TabOrder = 1
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox
      Left = 351
      Top = 67
      DataBinding.DataField = 'SRV_UND'
      DataBinding.DataSource = dsEdits
      Properties.KeyFieldNames = 'PRD_UNISIGLA'
      Properties.ListColumns = <
        item
          Caption = 'Sigla'
          FieldName = 'PRD_UNISIGLA'
        end>
      Properties.ListSource = dsEditDetail
      TabOrder = 2
      Width = 86
    end
    object DBRadioGroup1: TDBRadioGroup
      Left = 452
      Top = 46
      Width = 185
      Height = 38
      Caption = 'Tipos '
      Columns = 2
      DataField = 'SRV_TIPO'
      DataSource = dsEdits
      Items.Strings = (
        'Interno'
        'Externo')
      TabOrder = 3
      Values.Strings = (
        '1'
        '2')
    end
  end
  object setor: TcxDBLookupComboBox [2]
    Left = 64
    Top = 68
    DataBinding.DataField = 'SET_CODIGO'
    DataBinding.DataSource = dsEdits
    Properties.KeyFieldNames = 'SET_CODIGO'
    Properties.ListColumns = <
      item
        Width = 20
        FieldName = 'SET_CODIGO'
      end
      item
        Caption = 'Descri'#231'ao'
        FieldName = 'SET_DESCRICAO'
      end>
    Properties.ListFieldIndex = 1
    Properties.ListSource = dsSetor
    TabOrder = 2
    Width = 234
  end
  inherited cxLocalizer1: TcxLocalizer
    Left = 48
    Top = 104
  end
  inherited FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Left = 248
    Top = 0
  end
  inherited FDTransac: TFDTransaction
    Left = 424
    Top = 8
  end
  inherited FDGUIxErrorDialog1: TFDGUIxErrorDialog
    Left = 480
    Top = 24
  end
  inherited dbConn: TFDConnection
    Params.Strings = (
      'Database=C:\Jobdados\exemplo\EXEMPLO.FDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'CharacterSet=UTF8'
      'DriverID=FB')
  end
  inherited cdsEdit: TFDQuery
    SQL.Strings = (
      
        'SELECT srv_codigo,srv_nome, emp_codigo, set_codigo, SRV_CUSTO, S' +
        'RV_UND, SRV_TIPO'
      'FROM SERVICO'
      'WHERE SRV_CODIGO = :ID'
      '')
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object cdsEditSRV_CODIGO: TIntegerField
      FieldName = 'SRV_CODIGO'
      Origin = 'SRV_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsEditSRV_NOME: TStringField
      FieldName = 'SRV_NOME'
      Origin = 'SRV_NOME'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cdsEditEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object cdsEditSET_CODIGO: TIntegerField
      FieldName = 'SET_CODIGO'
      Origin = 'SET_CODIGO'
    end
    object cdsEditSRV_CUSTO: TFMTBCDField
      FieldName = 'SRV_CUSTO'
      Origin = 'SRV_CUSTO'
      Precision = 18
      Size = 5
    end
    object cdsEditSRV_UND: TStringField
      FieldName = 'SRV_UND'
      Origin = 'SRV_UND'
      Size = 6
    end
    object cdsEditSRV_TIPO: TIntegerField
      FieldName = 'SRV_TIPO'
      Origin = 'SRV_TIPO'
    end
  end
  inherited cdsEditDetail: TFDQuery
    SQL.Strings = (
      'SELECT cast(PRD_UNISIGLA as varchar(6) ) as PRD_UNISIGLA '
      'FROM prd_unidade'
      '')
  end
  inherited JvValidators1: TJvValidators
    object NomeValidador: TJvCustomValidator
      ErrorControl = edNome
      ControlToValidate = edNome
      ErrorMessage = 'Nome deve ser preenchido com mais de 3 letras'
      OnValidate = NomeValidadorValidate
    end
  end
  object cdsSetor: TFDQuery
    Connection = dbConn
    SQL.Strings = (
      'SELECT * FROM SETOR')
    Left = 328
    Top = 64
    object cdsSetorSET_CODIGO: TIntegerField
      FieldName = 'SET_CODIGO'
      Origin = 'SET_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsSetorSET_DESCRICAO: TStringField
      FieldName = 'SET_DESCRICAO'
      Origin = 'SET_DESCRICAO'
      Size = 60
    end
    object cdsSetorEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Origin = 'EMP_CODIGO'
      Size = 3
    end
  end
  object dsSetor: TDataSource
    DataSet = cdsSetor
    Left = 264
    Top = 87
  end
  object cdsUnidade: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspunidade'
    Left = 380
    Top = 65533
    object cdsUnidadePRD_UNICODIGO: TIntegerField
      FieldName = 'PRD_UNICODIGO'
    end
    object cdsUnidadePRD_UNISIGLA: TStringField
      FieldName = 'PRD_UNISIGLA'
      Size = 6
    end
    object cdsUnidadePRD_UNIDESCRI: TStringField
      FieldName = 'PRD_UNIDESCRI'
      Size = 30
    end
  end
end
