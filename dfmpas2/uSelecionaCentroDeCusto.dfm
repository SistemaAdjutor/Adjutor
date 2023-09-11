inherited frmSelecionaCentroDeCusto: TfrmSelecionaCentroDeCusto
  Caption = 'Seleciona Centro De Custo'
  PixelsPerInch = 96
  TextHeight = 13
  object lkCentroCusto: TDBLookupComboBox [0]
    Left = 79
    Top = 8
    Width = 321
    Height = 21
    KeyField = 'PCX_CODIGO'
    ListField = 'PCX_DESCRI'
    ListFieldIndex = -1
    ListSource = dsCentroCusto
    TabOrder = 0
    OnClick = lkCentroCustoClick
  end
  object edCentroCusto: TEdit [1]
    Left = 16
    Top = 8
    Width = 57
    Height = 21
    TabOrder = 1
  end
  inherited coCalcula: TACBrCalculadora
    Left = 96
    Top = 168
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 168
    Top = 168
  end
  inherited DBConn: TSQLConnection
    Params.Strings = (
      'DriverName=Firebird'
      'Database=c:\jobdados\exemplo\exemplo.fdb'
      'RoleName=RoleName'
      'User_Name=sysdba'
      'Password=masterkey'
      'ServerCharSet='
      'SQLDialect=3'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'BlobSize=-1'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'IsolationLevel=ReadCommitted'
      'Trim Char=True')
  end
  inherited qAux: TSQLQuery
    SQL.Strings = (
      'SELECT PCX_CODIGO, PCX_DESCRI  '
      'FROM PCX0000 '
      'WHERE EMP_CODIGO ='#39'001'#39' AND PCX_TIPO = '#39'L'#39' '
      'ORDER BY PCX_DESCRI')
    Left = 290
    Top = 165
  end
  inherited qAux2: TSQLQuery
    Left = 338
    Top = 164
  end
  inherited qAux3: TSQLQuery
    Left = 386
    Top = 164
  end
  object dsCentroCusto: TDataSource
    DataSet = cdsCentroCusto
    Left = 288
    Top = 16
  end
  object cdsCentroCusto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCentroCusto'
    Left = 288
    Top = 64
  end
  object dspCentroCusto: TDataSetProvider
    DataSet = qAux
    Left = 288
    Top = 112
  end
end
