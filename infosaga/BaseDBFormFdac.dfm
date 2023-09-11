inherited frmBaseDBFDAC: TfrmBaseDBFDAC
  Caption = 'frmBaseDBFDAC'
  OnDestroy = FormDestroy
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object qAux: TFDQuery
    Connection = dbConn
    SQL.Strings = (
      'SELECT * FROM NF0001')
    Left = 235
    Top = 144
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 304
    Top = 8
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 240
    Top = 8
  end
  object FDTransac: TFDTransaction
    Connection = dbConn
    Left = 216
    Top = 64
  end
  object FDGUIxErrorDialog1: TFDGUIxErrorDialog
    Provider = 'Forms'
    Left = 304
    Top = 64
  end
  object qAux2: TFDQuery
    Connection = dbConn
    SQL.Strings = (
      'SELECT * FROM NF0001')
    Left = 283
    Top = 143
  end
  object qAux3: TFDQuery
    Connection = dbConn
    SQL.Strings = (
      'SELECT * FROM NF0001')
    Left = 323
    Top = 143
  end
  object qAux4: TFDQuery
    Connection = dbConn
    SQL.Strings = (
      'SELECT * FROM NF0001')
    Left = 363
    Top = 143
  end
  object dbConn: TFDConnection
    ConnectionName = 'FDMain'
    Params.Strings = (
      'Database=C:\Jobdados\XXX.FDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'CharacterSet=ISO8859_1'
      'DriverID=FB')
    FetchOptions.AssignedValues = [evItems]
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate, uvUpdateChngFields, uvRefreshMode]
    UpdateOptions.UpdateChangedFields = False
    UpdateOptions.RefreshMode = rmAll
    ConnectedStoredUsage = []
    Transaction = FDTransac
    Left = 67
    Top = 200
  end
  object FDStoredProc1: TFDStoredProc
    Connection = dbConn
    Left = 160
    Top = 136
  end
end
