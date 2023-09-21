inherited frmBaseDB: TfrmBaseDB
  Left = 246
  Top = 288
  Caption = 'frmBaseDB'
  ClientHeight = 256
  ClientWidth = 542
  ExplicitWidth = 558
  ExplicitHeight = 295
  PixelsPerInch = 96
  TextHeight = 13
  inherited coCalcula: TACBrCalculadora
    Left = 80
    Top = 16
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 152
    Top = 16
  end
  object DBConn: TSQLConnection
    ConnectionName = 'FBConnection'
    DriverName = 'Firebird'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Firebird'
      'Database='
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
    Left = 40
    Top = 129
  end
  object qAux: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      '')
    SQLConnection = DBConn
    Left = 266
    Top = 13
  end
  object qAux2: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      '')
    SQLConnection = DBConn
    Left = 322
    Top = 12
  end
  object qAux3: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      '')
    SQLConnection = DBConn
    Left = 370
    Top = 12
  end
end
