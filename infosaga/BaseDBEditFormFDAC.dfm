inherited frmBaseDBEditFDAC: TfrmBaseDBEditFDAC
  Caption = 'frmBaseDBEditFDAC'
  ClientHeight = 451
  ClientWidth = 903
  OnKeyDown = FormKeyDown
  ExplicitWidth = 911
  ExplicitHeight = 478
  PixelsPerInch = 96
  TextHeight = 13
  object pnUtil: TPanel [0]
    Left = 0
    Top = 419
    Width = 903
    Height = 32
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      903
      32)
    object btnOk: TSpeedButton
      Tag = 1
      Left = 655
      Top = 4
      Width = 119
      Height = 24
      Anchors = [akRight, akBottom]
      Caption = 'Salvar'
      NumGlyphs = 2
      OnClick = btnOkClick
      ExplicitLeft = 539
    end
    object btnCancelar: TSpeedButton
      Tag = 2
      Left = 780
      Top = 4
      Width = 119
      Height = 24
      Anchors = [akRight, akBottom]
      Caption = 'Sair'
      NumGlyphs = 2
      OnClick = btnCancelarClick
      ExplicitLeft = 664
    end
  end
  inherited FDTransac: TFDTransaction
    Options.AutoStop = False
  end
  inherited dbConn: TFDConnection
    Params.Strings = (
      'Database=C:\Jobdados\exemplo\EXEMPLO.FDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'CharacterSet=ISO8859_1'
      'DriverID=FB')
    FetchOptions.AssignedValues = []
    ResourceOptions.AssignedValues = [rvAutoReconnect]
    ResourceOptions.AutoReconnect = True
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate, uvUpdateChngFields, uvUpdateMode, uvRefreshMode]
    UpdateOptions.UpdateChangedFields = True
    TxOptions.AutoStop = False
    UpdateTransaction = FDTransac
  end
  object dsEdits: TDataSource
    DataSet = cdsEdit
    Left = 621
    Top = 15
  end
  object cdsEdit: TFDQuery
    AfterOpen = cdsEditAfterOpen
    BeforePost = cdsEditBeforePost
    AfterPost = cdsEditAfterPost
    CachedUpdates = True
    Connection = dbConn
    Transaction = FDTransac
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockWait, uvRefreshMode, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable]
    UpdateOptions.RefreshMode = rmManual
    SQL.Strings = (
      
        'SELECT OPA_CODIGO, OPA_SEQUENCIAL, PED_CODIGO, EMP_CODIGO, DEP_C' +
        'ODIGO, PRD_CODIGO, OPA_DATA_ENTREGA, OPA_QTDE_PRODUZIR, IOP_CODI' +
        'GO'
      'FROM ORDEM_PROGRAMADA;')
    Left = 571
    Top = 16
  end
  object cdsEditDetail: TFDQuery
    AfterOpen = cdsEditAfterOpen
    BeforePost = cdsEditBeforePost
    AfterPost = cdsEditAfterPost
    Filtered = True
    CachedUpdates = True
    Connection = dbConn
    Transaction = FDTransac
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockWait, uvRefreshMode, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable]
    UpdateOptions.RefreshMode = rmManual
    SQL.Strings = (
      
        'SELECT OIP_CODIGO, ORC_CODIGO, PRO_CODIGO, PRD_REFER, PRD_CODIGO' +
        ', OIP_UND, OIP_SEQ, OIP_DESCRICAO, OPE_CODIGO, OIP_TIPOPECA_TERM' +
        ', OIP_MATERIAL_TERM, OIP_PESO, OIP_PROFUNDIDADE_TERM, OIP_DUREZA' +
        'SUPERFICIAL_TERM, OIP_DUREZANUCLEO_TERM, '
      
        'PRDCO_CODIGO_ORIGINAL, OIP_TAMANHOGRAO_TERM, OIP_EHT_TERM, OIP_D' +
        'ESENHO_TERM, OIP_QDE, OIP_PRECO, OIP_TOTAL, OIP_PRAZOENTREGA, OI' +
        'P_IMAGEM'
      'FROM ORCIT_PROD'
      'where orc_codigo = :id       ')
    Left = 563
    Top = 80
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        FDDataType = dtInt32
        ParamType = ptInput
        Value = 0
      end>
  end
  object dsEditDetail: TDataSource
    DataSet = cdsEditDetail
    Left = 613
    Top = 79
  end
  object JvValidators1: TJvValidators
    ValidationSummary = JvValidationSummary1
    ErrorIndicator = JvErrorIndicator1
    Left = 217
    Top = 354
  end
  object JvValidationSummary1: TJvValidationSummary
    Left = 272
    Top = 320
  end
  object JvErrorIndicator1: TJvErrorIndicator
    BlinkStyle = ebsAlwaysBlink
    ImageIndex = 0
    Left = 313
    Top = 354
  end
end
