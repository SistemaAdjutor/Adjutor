inherited frmPesquisaTipoEmbalagem: TfrmPesquisaTipoEmbalagem
  Caption = 'Tipos de Embalagem'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    inherited tsNotas: TTabSheet
      inherited pnControle: TPanel
        Height = 73
        ExplicitHeight = 73
        inherited pnFiltro: TPanel
          Width = 667
          Align = alTop
          ExplicitWidth = 667
          inherited pn1: TPanel
            Top = 0
            Width = 667
            Height = 76
            Align = alClient
            Alignment = taLeftJustify
            ExplicitTop = 0
            ExplicitWidth = 667
            ExplicitHeight = 76
            inherited btnPesquisa: TSpeedButton
              Left = 570
              Top = 7
              ExplicitLeft = 570
              ExplicitTop = 7
            end
            inherited btnLimpar: TSpeedButton
              Left = 570
              Top = 33
              ExplicitLeft = 570
              ExplicitTop = 33
            end
            object LabeledEdit1: TLabeledEdit
              Left = 16
              Top = 30
              Width = 313
              Height = 21
              EditLabel.Width = 87
              EditLabel.Height = 13
              EditLabel.Caption = 'C'#243'digo/Descri'#231#227'o:'
              LabelSpacing = 0
              TabOrder = 0
            end
          end
        end
      end
      inherited DBGrid: TDBGrid
        Top = 73
        Height = 277
        Columns = <
          item
            Expanded = False
            FieldName = 'TEM_CODIGO'
            Title.Caption = 'C'#243'digo'
            Width = 118
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TEM_DESCRICAO'
            Title.Caption = 'Tipo de Embalagem'
            Width = 395
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EMP_CODIGO'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'TEM_CAPACIDADE'
            Title.Caption = 'Capacidade'
            Visible = True
          end>
      end
    end
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
      'Database=C:\JOBDADOS\EXEMPLO\EXEMPLO.FDB'
      'Role=RoleName'
      'MaxBlobSize=-1'
      'TrimChar=False'
      'DriverName=Firebird'
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
    Left = 120
    Top = 192
  end
  inherited Timer1: TTimer
    Left = 172
    Top = 192
  end
  inherited qBusco: TSQLQuery
    SQL.Strings = (
      'select * from TIPO_EMBALAGEM')
    object qBuscoTEM_CODIGO: TIntegerField
      FieldName = 'TEM_CODIGO'
      Required = True
    end
    object qBuscoTEM_DESCRICAO: TStringField
      FieldName = 'TEM_DESCRICAO'
      Size = 255
    end
    object qBuscoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object qBuscoTEM_CAPACIDADE: TFloatField
      FieldName = 'TEM_CAPACIDADE'
    end
  end
  inherited cdsBusco: TClientDataSet
    OnCalcFields = cdsBuscoCalcFields
    object cdsBuscoTEM_CODIGO: TIntegerField
      FieldName = 'TEM_CODIGO'
      Required = True
    end
    object cdsBuscoTEM_DESCRICAO: TStringField
      FieldName = 'TEM_DESCRICAO'
      Size = 255
    end
    object cdsBuscoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object cdsBuscoTEM_CAPACIDADE: TFloatField
      FieldName = 'TEM_CAPACIDADE'
    end
  end
end
