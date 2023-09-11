inherited frmPesqGancho: TfrmPesqGancho
  Caption = 'Gancho'
  ExplicitWidth = 683
  ExplicitHeight = 482
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    inherited tsNotas: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 667
      inherited pnControle: TPanel
        inherited pnFiltro: TPanel
          inherited pn1: TPanel
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
        Columns = <
          item
            Expanded = False
            FieldName = 'GAN_CODIGO'
            Title.Caption = 'C'#243'digo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'GAN_NOME'
            Title.Caption = 'Descri'#231#227'o'
            Width = 425
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'GAN_QTD_ESPIRAS'
            Title.Caption = 'Quantidade de Espiras'
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
      'Database=C:\JobDados\exemplo/EXEMPLO.FDB'
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
  end
  inherited qBusco: TSQLQuery
    SQL.Strings = (
      'select * from gancho')
  end
  inherited cdsBusco: TClientDataSet
    object cdsBuscoGAN_CODIGO: TIntegerField
      FieldName = 'GAN_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsBuscoGAN_NOME: TStringField
      FieldName = 'GAN_NOME'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsBuscoGAN_QTD_ESPIRAS: TSingleField
      FieldName = 'GAN_QTD_ESPIRAS'
      Required = True
    end
  end
end
