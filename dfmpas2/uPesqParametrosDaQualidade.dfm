inherited frmPesqParametrosDaQualidade: TfrmPesqParametrosDaQualidade
  Caption = 'Especifica'#231#245'es da Qualidade'
  ClientWidth = 671
  ExplicitWidth = 679
  ExplicitHeight = 482
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnUtilTop: TPanel
    Width = 671
    ExplicitWidth = 671
    inherited btnFechar: TSpeedButton
      Left = 607
      ExplicitLeft = 784
    end
    inherited btnImprime: TSpeedButton
      Left = 450
      ExplicitLeft = 627
    end
    inherited btnExcel: TSpeedButton
      Left = 529
      ExplicitLeft = 706
    end
  end
  inherited PageControl1: TPageControl
    Width = 671
    ExplicitWidth = 671
    inherited tsNotas: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 663
      inherited pnControle: TPanel
        Width = 663
        ExplicitWidth = 663
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
        Width = 663
        Columns = <
          item
            Expanded = False
            FieldName = 'PAR_CODIGO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PAR_DESCRICAO'
            Width = 214
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PAR_OBSERVACAO'
            Title.Caption = 'Observa'#231#245'es'
            Width = 365
            Visible = True
          end>
      end
    end
  end
  inherited Panel2: TPanel
    Width = 671
    ExplicitWidth = 671
    inherited btnSelect: TSpeedButton
      Left = 523
      ExplicitLeft = 700
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
  end
  inherited qBusco: TSQLQuery
    SQL.Strings = (
      'select * from parametros_da_qualidade')
    object qBuscoCOL_CODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'PAR_CODIGO'
      Required = True
    end
    object qBuscoCOL_NOME: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'PAR_DESCRICAO'
      Size = 40
    end
    object qBuscoPAR_OBSERVACAO: TStringField
      FieldName = 'PAR_OBSERVACAO'
      Size = 100
    end
  end
  inherited cdsBusco: TClientDataSet
    object cdsBuscoPAR_CODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'PAR_CODIGO'
      Required = True
    end
    object cdsBuscoPAR_DESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'PAR_DESCRICAO'
      Size = 40
    end
    object cdsBuscoPAR_OBSERVACAO: TStringField
      FieldName = 'PAR_OBSERVACAO'
      Size = 100
    end
  end
end
