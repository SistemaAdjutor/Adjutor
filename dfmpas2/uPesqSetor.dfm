inherited frmPesquisaSetor: TfrmPesquisaSetor
  Caption = 'Setores de produ'#231#227'o'
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
            FieldName = 'SET_CODIGO'
            Title.Caption = 'C'#243'digo'
            Width = 118
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SET_DESCRICAO'
            Title.Caption = 'Setor'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PCX_DESCRI'
            Title.Caption = 'Centro de Custo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EMP_CODIGO'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'PCX_CODIGO'
            Title.Caption = 'Centro de Custo'
            Visible = False
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
      'SELECT * FROM SETOR se '
      'LEFT JOIN PCX0000 pc ON (se.PCX_CODIGO = pc.PCX_CODIGO)')
  end
  inherited cdsBusco: TClientDataSet
    object cdsBuscoSET_CODIGO: TIntegerField
      FieldName = 'SET_CODIGO'
    end
    object cdsBuscoSET_DESCRICAO: TStringField
      FieldName = 'SET_DESCRICAO'
      Size = 60
    end
    object cdsBuscoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object cdsBuscoPCX_DESCRI: TStringField
      FieldName = 'PCX_DESCRI'
      Size = 25
    end
  end
end
