inherited frmPesqCapacidade: TfrmPesqCapacidade
  Caption = 'Capacidade do Item do Pedido'
  ExplicitWidth = 683
  ExplicitHeight = 482
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
            FieldName = 'CAP_CODIGO'
            Title.Caption = 'C'#243'digo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CAP_DESCRICAO'
            Title.Caption = 'Descricao'
            Width = 520
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CAP_SUBSTITUICAO_TRIBUTARIA'
            Title.Caption = 'Tem ST'
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
      'Database=c:\jobdados\exemplo\exemplo.fdb'
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
      'SELECT * FROM CAPACIDADE')
  end
  inherited cdsBusco: TClientDataSet
    object cdsBuscoCAP_CODIGO: TIntegerField
      FieldName = 'CAP_CODIGO'
      Required = True
    end
    object cdsBuscoCAP_DESCRICAO: TStringField
      FieldName = 'CAP_DESCRICAO'
      Size = 255
    end
    object cdsBuscoCAP_SUBSTITUICAO_TRIBUTARIA: TStringField
      FieldName = 'CAP_SUBSTITUICAO_TRIBUTARIA'
      OnGetText = cdsBuscoCAP_SUBSTITUICAO_TRIBUTARIAGetText
      Size = 1
    end
  end
end
