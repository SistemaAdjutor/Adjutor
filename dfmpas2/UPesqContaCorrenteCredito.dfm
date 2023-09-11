inherited fmPesqContaCorrenteCredito: TfmPesqContaCorrenteCredito
  Caption = ' de Cr'#233'dito em Conta Corrente'
  ClientWidth = 796
  FormStyle = fsMDIChild
  Visible = True
  ExplicitWidth = 804
  ExplicitHeight = 482
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnUtilTop: TPanel
    Width = 796
    ExplicitWidth = 796
    DesignSize = (
      796
      41)
    inherited btnFechar: TSpeedButton
      Left = 732
      ExplicitLeft = 732
    end
    inherited btnImprime: TSpeedButton
      Left = 575
      OnClick = btnImprimeClick
      ExplicitLeft = 575
    end
    inherited btnExcel: TSpeedButton
      Left = 654
      ExplicitLeft = 654
    end
  end
  inherited PageControl1: TPageControl
    Width = 796
    ExplicitWidth = 796
    inherited tsNotas: TTabSheet
      ExplicitWidth = 788
      inherited pnControle: TPanel
        Width = 788
        ExplicitWidth = 788
        inherited pnFiltro: TPanel
          Width = 785
          ExplicitWidth = 785
          inherited pn1: TPanel
            Width = 785
            ExplicitWidth = 785
            inherited btnPesquisa: TSpeedButton
              Left = 701
              Top = 7
              ExplicitLeft = 701
              ExplicitTop = 7
            end
            inherited btnLimpar: TSpeedButton
              Left = 701
              Top = 33
              ExplicitLeft = 701
              ExplicitTop = 33
            end
            object lbledt3: TLabeledEdit
              Left = 92
              Top = 16
              Width = 353
              Height = 21
              EditLabel.Width = 79
              EditLabel.Height = 13
              EditLabel.Caption = 'Descri'#231#227'o ou ID:'
              LabelSpacing = 0
              TabOrder = 0
              OnExit = lbledt3Exit
            end
            object lbledt2: TLabeledEdit
              Left = 16
              Top = 16
              Width = 72
              Height = 21
              EditLabel.Width = 58
              EditLabel.Height = 13
              EditLabel.Caption = 'Documento:'
              LabelSpacing = 0
              TabOrder = 1
              OnExit = lbledt2Exit
            end
            object LabeledEdit1: TLabeledEdit
              Left = 16
              Top = 51
              Width = 428
              Height = 21
              EditLabel.Width = 50
              EditLabel.Height = 13
              EditLabel.Caption = 'Vendedor:'
              LabelSpacing = 0
              TabOrder = 2
              OnExit = LabeledEdit1Exit
            end
            object RadioGroup1: TRadioGroup
              Left = 542
              Top = 1
              Width = 141
              Height = 73
              Caption = 'Tipo de Conta'
              ItemIndex = 1
              Items.Strings = (
                'Vendedor'
                'Cliente'
                'Fornecedor')
              TabOrder = 3
              OnClick = RadioGroup1Click
            end
          end
        end
      end
      inherited DBGrid: TDBGrid
        Width = 788
        OnDrawColumnCell = DBGridDrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'CONTA'
            Title.Caption = ' *'
            Width = 18
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CODIGO'
            Title.Caption = 'C'#243'digo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DOCUMENTO'
            Title.Caption = 'Documento'
            Width = 59
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Title.Caption = 'Descri'#231#227'o'
            Width = 265
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COD_PESSOA'
            Title.Caption = 'C'#243'digo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME_PESSOA'
            Title.Caption = 'Nome'
            Width = 266
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR'
            Title.Caption = 'Valor concedido'
            Width = 81
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR_UTILIZADO'
            Title.Caption = 'Utilizado'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Saldo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATA'
            Title.Caption = 'Data'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Produto'
            Visible = True
          end>
      end
    end
  end
  inherited Panel2: TPanel
    Width = 796
    ExplicitWidth = 796
    DesignSize = (
      796
      36)
    inherited btnSelect: TSpeedButton
      Left = 140
      ExplicitLeft = 140
    end
    object Label1: TLabel
      Left = 642
      Top = 11
      Width = 59
      Height = 13
      Caption = 'Total Verba:'
    end
    object Label2: TLabel
      Left = 477
      Top = 11
      Width = 77
      Height = 13
      Caption = 'Total de D'#233'bito:'
    end
    object Label3: TLabel
      Left = 297
      Top = 11
      Width = 81
      Height = 13
      Caption = 'Total de Cr'#233'dito:'
    end
    object edTotVerba: TEdit
      Left = 705
      Top = 6
      Width = 81
      Height = 21
      Alignment = taRightJustify
      Color = clInfoBk
      ReadOnly = True
      TabOrder = 0
    end
    object edTotDebito: TEdit
      Left = 555
      Top = 6
      Width = 81
      Height = 21
      Alignment = taRightJustify
      Color = clInfoBk
      ReadOnly = True
      TabOrder = 1
    end
    object edTotCredito: TEdit
      Left = 381
      Top = 6
      Width = 81
      Height = 21
      Alignment = taRightJustify
      Color = clInfoBk
      ReadOnly = True
      TabOrder = 2
    end
  end
  inherited coCalcula: TACBrCalculadora
    Left = 24
    Top = 200
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
      'Trim Char=False'
      'Database=C:\AdjutorFB\Dados\RWBDADM.FDB')
    Top = 368
  end
  inherited qAux: TSQLQuery
    Left = 386
    Top = 189
  end
  inherited qAux2: TSQLQuery
    Left = 426
    Top = 188
  end
  inherited qAux3: TSQLQuery
    Left = 466
    Top = 188
  end
  inherited Timer1: TTimer
    Top = 368
  end
  inherited qBusco: TSQLQuery
    SQL.Strings = (
      'select * from CONTA_CORRENTE where codigo=0')
    Left = 108
    Top = 249
    object qBuscoTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object qBuscoCONTA: TStringField
      FieldName = 'CONTA'
      Size = 1
    end
    object qBuscoDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
    end
    object qBuscoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 40
    end
    object qBuscoLANCADO: TStringField
      FieldName = 'LANCADO'
      Size = 1
    end
    object qBuscoUSU_CODIGO: TIntegerField
      FieldName = 'USU_CODIGO'
    end
    object qBuscoCOD_VENDEDOR: TStringField
      FieldName = 'COD_VENDEDOR'
      Size = 3
    end
    object qBuscoCOD_CLIENTE: TStringField
      FieldName = 'COD_CLIENTE'
      Size = 5
    end
    object qBuscoCOD_FORNECEDOR: TStringField
      FieldName = 'COD_FORNECEDOR'
      Size = 4
    end
    object qBuscoCANCELAMENTO: TStringField
      FieldName = 'CANCELAMENTO'
      Size = 1
    end
    object qBuscoMOTIVO_CANCELAMENTO: TStringField
      FieldName = 'MOTIVO_CANCELAMENTO'
      Size = 50
    end
    object qBuscoUSUARIO_CANCELAMENTO: TIntegerField
      FieldName = 'USUARIO_CANCELAMENTO'
    end
    object qBuscoCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 5
    end
    object qBuscoCOD_PRODUTO: TStringField
      FieldName = 'COD_PRODUTO'
    end
    object qBuscoDATA: TSQLTimeStampField
      FieldName = 'DATA'
    end
    object qBuscoVALOR: TFMTBCDField
      FieldName = 'VALOR'
      DisplayFormat = '#0.0000'
      EditFormat = '#0.0000'
      Precision = 18
      Size = 4
    end
    object qBuscoVALOR_UTILIZADO: TFMTBCDField
      FieldName = 'VALOR_UTILIZADO'
      DisplayFormat = '#0.0000'
      EditFormat = '#0.0000'
      Precision = 18
      Size = 4
    end
    object qBuscoProduto: TStringField
      FieldName = 'Produto'
      Size = 60
    end
    object qBuscoNOME_PESSOA: TStringField
      FieldName = 'NOME_PESSOA'
      Size = 150
    end
    object qBuscoCOD_PESSOA: TStringField
      FieldName = 'COD_PESSOA'
      Size = 6
    end
  end
  inherited dspBusco: TDataSetProvider
    Left = 164
    Top = 249
  end
  inherited cdsBusco: TClientDataSet
    OnCalcFields = cdsBuscoCalcFields
    Left = 212
    Top = 249
    object cdsBuscoTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object cdsBuscoCONTA: TStringField
      FieldName = 'CONTA'
      Size = 1
    end
    object cdsBuscoDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
    end
    object cdsBuscoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 40
    end
    object cdsBuscoLANCADO: TStringField
      FieldName = 'LANCADO'
      Size = 1
    end
    object cdsBuscoUSU_CODIGO: TIntegerField
      FieldName = 'USU_CODIGO'
    end
    object cdsBuscoCOD_VENDEDOR: TStringField
      FieldName = 'COD_VENDEDOR'
      Size = 3
    end
    object cdsBuscoCOD_CLIENTE: TStringField
      FieldName = 'COD_CLIENTE'
      Size = 5
    end
    object cdsBuscoCOD_FORNECEDOR: TStringField
      FieldName = 'COD_FORNECEDOR'
      Size = 4
    end
    object cdsBuscoCANCELAMENTO: TStringField
      FieldName = 'CANCELAMENTO'
      Size = 1
    end
    object cdsBuscoMOTIVO_CANCELAMENTO: TStringField
      FieldName = 'MOTIVO_CANCELAMENTO'
      Size = 50
    end
    object cdsBuscoUSUARIO_CANCELAMENTO: TIntegerField
      FieldName = 'USUARIO_CANCELAMENTO'
    end
    object cdsBuscoCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 5
    end
    object cdsBuscoCOD_PRODUTO: TStringField
      FieldName = 'COD_PRODUTO'
    end
    object cdsBuscoDATA: TSQLTimeStampField
      FieldName = 'DATA'
    end
    object cdsBuscoVALOR: TFMTBCDField
      FieldName = 'VALOR'
      DisplayFormat = '#0.0000'
      EditFormat = '#0.0000'
      Precision = 18
      Size = 4
    end
    object cdsBuscoVALOR_UTILIZADO: TFMTBCDField
      FieldName = 'VALOR_UTILIZADO'
      DisplayFormat = '#0.0000'
      EditFormat = '#0.0000'
      Precision = 18
      Size = 4
    end
    object cdsBuscoProduto: TStringField
      FieldName = 'Produto'
      Size = 60
    end
    object cdsBuscoCOD_PESSOA: TStringField
      FieldName = 'COD_PESSOA'
      Size = 6
    end
    object cdsBuscoNOME_PESSOA: TStringField
      FieldName = 'NOME_PESSOA'
      Size = 150
    end
    object cdsBuscoSaldo: TFMTBCDField
      FieldKind = fkCalculated
      FieldName = 'Saldo'
      Size = 18
      Calculated = True
    end
  end
  inherited dsBusca: TDataSource
    Left = 268
    Top = 248
  end
  inherited mnuGridPesquisa: TPopupMenu
    Left = 572
    Top = 184
  end
  object mnuListar: TPopupMenu
    Left = 660
    Top = 185
    object Listagem1: TMenuItem
      Caption = '&1 - Listagem'
      OnClick = Listagem1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
  end
  object cdsCliente: TClientDataSet
    Aggregates = <>
    ObjectView = False
    Params = <>
    ProviderName = 'dspCliente'
    AfterOpen = cdsBuscoAfterOpen
    AfterClose = cdsBuscoAfterClose
    AfterApplyUpdates = cdsBuscoAfterApplyUpdates
    Left = 268
    Top = 185
    object cdsClienteCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Required = True
      Size = 5
    end
    object cdsClienteCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Size = 55
    end
    object cdsClienteCLI_FANTASIA: TStringField
      FieldName = 'CLI_FANTASIA'
      Size = 55
    end
  end
  object dspCliente: TDataSetProvider
    DataSet = sqlCliente
    Left = 204
    Top = 185
  end
  object sqlCliente: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'select * from cli0000'
      'join conta_corrente on '
      'cli0000.CLI_CODIGO = conta_corrente.cod_cliente')
    SQLConnection = DBConn
    Left = 140
    Top = 185
    object sqlClienteCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Required = True
      Size = 5
    end
    object sqlClienteCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Size = 55
    end
    object sqlClienteCLI_FANTASIA: TStringField
      FieldName = 'CLI_FANTASIA'
      Size = 55
    end
  end
  object dsCred: TDataSource
    DataSet = cdsCred
    Left = 564
    Top = 264
  end
  object qCred: TSQLQuery
    GetMetadata = True
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'select sum(valor) as ValorCredito'
      'from conta_corrente where conta = '#39'C'#39)
    SQLConnection = DBConn
    Left = 404
    Top = 265
    object qCredVALORCREDITO: TFMTBCDField
      FieldName = 'VALORCREDITO'
      Precision = 18
      Size = 5
    end
  end
  object dspCred: TDataSetProvider
    DataSet = qCred
    Left = 460
    Top = 265
  end
  object cdsCred: TClientDataSet
    Aggregates = <>
    ObjectView = False
    PacketRecords = 16
    Params = <>
    ProviderName = 'dspCred'
    AfterOpen = cdsBuscoAfterOpen
    AfterClose = cdsBuscoAfterClose
    AfterApplyUpdates = cdsBuscoAfterApplyUpdates
    Left = 508
    Top = 265
    object cdsCredVALORCREDITO: TFMTBCDField
      FieldName = 'VALORCREDITO'
      Precision = 18
      Size = 5
    end
  end
  object dsDeb: TDataSource
    DataSet = cdsDeb
    Left = 564
    Top = 312
  end
  object qDeb: TSQLQuery
    GetMetadata = True
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'select sum(valor) as ValorDebito'
      'from conta_corrente where conta = '#39'D'#39)
    SQLConnection = DBConn
    Left = 404
    Top = 313
    object qDebVALORDEBITO: TFMTBCDField
      FieldName = 'VALORDEBITO'
      Precision = 18
      Size = 5
    end
  end
  object dspDeb: TDataSetProvider
    DataSet = qDeb
    Left = 460
    Top = 313
  end
  object cdsDeb: TClientDataSet
    Aggregates = <>
    ObjectView = False
    PacketRecords = 16
    Params = <>
    ProviderName = 'dspDeb'
    AfterOpen = cdsBuscoAfterOpen
    AfterClose = cdsBuscoAfterClose
    AfterApplyUpdates = cdsBuscoAfterApplyUpdates
    Left = 508
    Top = 313
    object cdsDebVALORDEBITO: TFMTBCDField
      FieldName = 'VALORDEBITO'
      Precision = 18
      Size = 5
    end
  end
end
