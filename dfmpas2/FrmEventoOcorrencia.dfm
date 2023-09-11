inherited FrmEventoOcorrencias: TFrmEventoOcorrencias
  Caption = 'FrmEventoOcorrencias'
  ClientHeight = 364
  ClientWidth = 575
  ExplicitWidth = 591
  ExplicitHeight = 402
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 13
    Width = 63
    Height = 13
    Caption = 'Colaborador:'
  end
  object Label2: TLabel [1]
    Left = 8
    Top = 40
    Width = 79
    Height = 13
    Caption = 'Tipo Ocorr'#234'ncia:'
  end
  object Label3: TLabel [2]
    Left = 8
    Top = 67
    Width = 36
    Height = 13
    Caption = 'Motivo:'
    FocusControl = cxDBTextEdit1
  end
  object Label4: TLabel [3]
    Left = 8
    Top = 91
    Width = 65
    Height = 13
    Caption = 'Ocorrido em :'
  end
  object Label5: TLabel [4]
    Left = 8
    Top = 139
    Width = 85
    Height = 13
    Caption = 'Previsto resolver:'
  end
  object lresolvido: TLabel [5]
    Left = 8
    Top = 187
    Width = 67
    Height = 13
    Caption = 'Resolvido em:'
  end
  object lcomentario: TLabel [6]
    Left = 8
    Top = 230
    Width = 88
    Height = 13
    Caption = 'Como foi resolvido'
    FocusControl = cxComentario
  end
  object cxDBTextEdit1: TcxDBTextEdit [7]
    Left = 92
    Top = 64
    DataBinding.DataField = 'OCE_MOTIVO'
    DataBinding.DataSource = dsEditS
    TabOrder = 5
    Width = 317
  end
  object edPesqOcorrencia: TSgDbSearchCombo [8]
    Left = 144
    Top = 37
    Width = 240
    Height = 21
    TabOrder = 4
    CharCase = ecUpperCase
    LookupSelect = 'OCO_CODIGO, OCO_DESCRICAO'
    LookupOrderBy = 'OCO_DESCRICAO'
    LookupTable = 'OCORRENCIA'
    LookupDispl = 'OCO_DESCRICAO'
    OnSelect = edPesqOcorrenciaSelect
    GridAutoSize = False
    LookupSource = qOcorrencia
    LookupKeyField = 'OCO_CODIGO'
    ShowButton = True
    AutoF8WinTitulo = 'Ocorr'#234'ncia'
    AutoF8ColumnsTitulo = 'C'#243'digo, Descri'#231#227'o'
    GridLeft = 0
    GridWidth = 0
    GridHeight = 100
    GridShowWhenEnter = False
    SelectWithDoubleClick = False
  end
  object EdColaboradorCodigo: TEdit [9]
    Left = 92
    Top = 10
    Width = 51
    Height = 21
    TabOrder = 1
  end
  object cxComentario: TcxDBTextEdit [10]
    Left = 8
    Top = 249
    DataBinding.DataField = 'OCE_COMENTARIO'
    DataBinding.DataSource = dsEditS
    TabOrder = 12
    Width = 401
  end
  object edOcorrencia_Codigo: TEdit [11]
    Left = 92
    Top = 37
    Width = 51
    Height = 21
    TabOrder = 3
  end
  object edColaborador: TSgDbSearchCombo [12]
    Left = 144
    Top = 10
    Width = 240
    Height = 21
    TabOrder = 2
    CharCase = ecUpperCase
    LookupSelect = 'COL_CODIGO, COL_NOME, COL_FUNC, COL_SETOR'
    LookupOrderBy = 'COL_NOME'
    LookupTable = 'COLABORADOR'
    LookupDispl = 'COL_NOME'
    OnSelect = edColaboradorSelect
    GridAutoSize = False
    LookupSource = qColaborador
    LookupKeyField = 'COL_CODIGO'
    ShowButton = True
    AutoF8WinTitulo = 'Colaborador'
    AutoF8ColumnsTitulo = 'C'#243'digo, Nome, Fun'#231#227'o, Setor'
    GridLeft = 0
    GridWidth = 0
    GridHeight = 100
    GridShowWhenEnter = False
    SelectWithDoubleClick = False
  end
  inherited pnUtil: TPanel
    Top = 332
    Width = 575
    ExplicitTop = 332
    ExplicitWidth = 575
    inherited btnOk: TSpeedButton
      Left = 275
      ExplicitLeft = 328
    end
    inherited btnCancelar: TSpeedButton
      Left = 424
      ExplicitLeft = 477
    end
    inherited cbPersistente: TCheckBox [2]
      Left = 10
      Width = 1
      ExplicitLeft = 10
      ExplicitWidth = 1
    end
    inherited Panel3: TPanel [3]
    end
    inherited pnMove: TPanel [4]
    end
  end
  object cxHoraOcorrencia: TcxTimeEdit [14]
    Left = 129
    Top = 110
    EditValue = 0
    Properties.TimeFormat = tfHourMin
    TabOrder = 7
    Width = 64
  end
  object cxDataOcorrencia: TcxDateEdit [15]
    Left = 8
    Top = 110
    Properties.SaveTime = False
    Properties.ShowTime = False
    TabOrder = 6
    Width = 121
  end
  object cxDataResolver: TcxDateEdit [16]
    Left = 8
    Top = 158
    Properties.SaveTime = False
    Properties.ShowTime = False
    TabOrder = 8
    Width = 121
  end
  object cxHoraResolver: TcxTimeEdit [17]
    Left = 129
    Top = 158
    EditValue = 0d
    Properties.TimeFormat = tfHourMin
    TabOrder = 9
    Width = 64
  end
  object cxDataResolvido: TcxDateEdit [18]
    Left = 8
    Top = 206
    Properties.SaveTime = False
    Properties.ShowTime = False
    TabOrder = 10
    Width = 121
  end
  object cxHoraResolvido: TcxTimeEdit [19]
    Left = 129
    Top = 206
    EditValue = 0d
    Properties.TimeFormat = tfHourMin
    TabOrder = 11
    Width = 64
  end
  inherited coCalcula: TACBrCalculadora
    Left = 776
    Top = 8
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 704
    Top = 16
  end
  inherited DBConn: TSQLConnection
    Params.Strings = (
      'DriverUnit=Data.DBXFirebird'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DbxCommonDriver220.' +
        'bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxCommonDriver,Version=22.0.0.0,Culture=neutral,PublicK' +
        'eyToken=91d62ebb5b0d1b1b'
      
        'MetaDataPackageLoader=TDBXFirebirdMetaDataCommandFactory,DbxFire' +
        'birdDriver220.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXFirebirdMetaDataCommandF' +
        'actory,Borland.Data.DbxFirebirdDriver,Version=22.0.0.0,Culture=n' +
        'eutral,PublicKeyToken=91d62ebb5b0d1b1b'
      'GetDriverFunc=getSQLDriverINTERBASE'
      'LibraryName=dbxfb.dll'
      'LibraryNameOsx=libsqlfb.dylib'
      'VendorLib=fbclient.dll'
      'VendorLibWin64=fbclient.dll'
      'VendorLibOsx=/Library/Frameworks/Firebird.framework/Firebird'
      'Role=RoleName'
      'MaxBlobSize=-1'
      'TrimChar=False'
      'DriverName=Firebird'
      'Database=database.fdb'
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
      'Trim Char=False')
  end
  inherited qAux: TSQLQuery
    Left = 442
    Top = 65525
  end
  inherited qAux2: TSQLQuery
    Left = 418
  end
  inherited qAux3: TSQLQuery
    Left = 482
  end
  inherited qEdit: TSQLQuery
    SQL.Strings = (
      
        'SELECT OE.OCE_CODIGO, OE.OCO_CODIGO, OE.FAB_CODIGO, OE.COL_CODIG' +
        'O, OCE_ESTORNO, OCE_MOTIVO, OCE_DATAOCORRENCIA,'
      ' OCE_DATAPREVISAO, OCE_DATAFIM, APF_CODIGO, OCE_COMENTARIO'
      ' FROM OCORRENCIA_EVENTO OE '
      'WHERE OCE_CODIGO = :ID')
    object qEditOCE_CODIGO: TIntegerField
      FieldName = 'OCE_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qEditOCO_CODIGO: TIntegerField
      FieldName = 'OCO_CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object qEditFAB_CODIGO: TIntegerField
      FieldName = 'FAB_CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object qEditCOL_CODIGO: TIntegerField
      FieldName = 'COL_CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object qEditOCE_ESTORNO: TIntegerField
      FieldName = 'OCE_ESTORNO'
      ProviderFlags = [pfInUpdate]
    end
    object qEditOCE_MOTIVO: TStringField
      FieldName = 'OCE_MOTIVO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object qEditOCE_DATAOCORRENCIA: TSQLTimeStampField
      FieldName = 'OCE_DATAOCORRENCIA'
      ProviderFlags = [pfInUpdate]
    end
    object qEditOCE_DATAPREVISAO: TSQLTimeStampField
      FieldName = 'OCE_DATAPREVISAO'
      ProviderFlags = [pfInUpdate]
    end
    object qEditOCE_DATAFIM: TSQLTimeStampField
      FieldName = 'OCE_DATAFIM'
      ProviderFlags = [pfInUpdate]
    end
    object qEditAPF_CODIGO: TIntegerField
      FieldName = 'APF_CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object qEditOCE_COMENTARIO: TStringField
      FieldName = 'OCE_COMENTARIO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
  end
  inherited DspEdit: TDataSetProvider
    UpdateMode = upWhereKeyOnly
    Left = 304
    Top = 111
  end
  inherited CdsEdit: TClientDataSet
    AfterInsert = CdsEditAfterInsert
    BeforeEdit = CdsEditBeforeEdit
    Left = 343
    Top = 111
    object CdsEditOCE_CODIGO: TIntegerField
      FieldName = 'OCE_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsEditOCO_CODIGO: TIntegerField
      FieldName = 'OCO_CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsEditFAB_CODIGO: TIntegerField
      FieldName = 'FAB_CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsEditCOL_CODIGO: TIntegerField
      FieldName = 'COL_CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsEditOCE_ESTORNO: TIntegerField
      FieldName = 'OCE_ESTORNO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsEditOCE_MOTIVO: TStringField
      FieldName = 'OCE_MOTIVO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object CdsEditOCE_DATAOCORRENCIA: TSQLTimeStampField
      FieldName = 'OCE_DATAOCORRENCIA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsEditOCE_DATAPREVISAO: TSQLTimeStampField
      FieldName = 'OCE_DATAPREVISAO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsEditOCE_DATAFIM: TSQLTimeStampField
      FieldName = 'OCE_DATAFIM'
      ProviderFlags = [pfInUpdate]
    end
    object CdsEditAPF_CODIGO: TIntegerField
      FieldName = 'APF_CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsEditOCE_COMENTARIO: TStringField
      FieldName = 'OCE_COMENTARIO'
      Size = 100
    end
  end
  inherited dsEditS: TDataSource
    Left = 221
    Top = 111
  end
  inherited qAuditoria: TSQLQuery
    Left = 432
    Top = 183
  end
  inherited dspAuditoria: TDataSetProvider
    Left = 308
    Top = 183
  end
  inherited cdsAuditoria: TClientDataSet
    Left = 384
    Top = 183
  end
  object qColaborador: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT COL_CODIGO, COL_nome,COL_FUNC,COL_SETOR FROM COLABORADOR')
    SQLConnection = DBConn
    Left = 328
    Top = 65532
  end
  object qOcorrencia: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'SELECT OCO_CODIGO, OCO_DESCRICAO,CASE OCO_TIPO WHEN 1 THEN '#39'Info' +
        'rmativa'#39' WHEN 2 THEN '#39'Cr'#237'tica'#39' end AS OCO_TIPO  FROM OCORRENCIA')
    SQLConnection = DBConn
    Left = 376
    Top = 92
    object qOcorrenciaOCO_CODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'OCO_CODIGO'
      Required = True
    end
    object qOcorrenciaOCO_DESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'OCO_DESCRICAO'
      Size = 60
    end
  end
end
