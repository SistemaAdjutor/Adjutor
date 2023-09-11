inherited frmPesquisaTabelas: TfrmPesquisaTabelas
  Left = 285
  Top = 0
  Caption = 'Tabelas de Pre'#231'os / Acordo Comercial'
  ClientHeight = 464
  ClientWidth = 1099
  FormStyle = fsMDIChild
  Position = poDesigned
  Visible = True
  OnCloseQuery = FormCloseQuery
  ExplicitWidth = 1107
  ExplicitHeight = 491
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnUtilTop: TPanel
    Width = 1099
    ExplicitWidth = 1099
    DesignSize = (
      1099
      41)
    inherited btnFechar: TSpeedButton
      Left = 1035
      ExplicitLeft = 1035
    end
    inherited btnImprime: TSpeedButton
      Left = 880
      ExplicitLeft = 880
    end
    inherited btnExtra: TSpeedButton
      Width = 186
      Hint = ''
      Caption = 'Ler Tabelas 446'
      Enabled = True
      OnClick = btnExtraClick
      ExplicitWidth = 186
    end
    inherited btnExcel: TSpeedButton
      Left = 957
      ExplicitLeft = 957
    end
  end
  inherited PageControl1: TPageControl
    Width = 1099
    Height = 387
    ExplicitWidth = 1099
    ExplicitHeight = 387
    inherited tsNotas: TTabSheet
      ExplicitWidth = 1091
      ExplicitHeight = 359
      inherited pnControle: TPanel
        Width = 1091
        ExplicitWidth = 1091
        inherited pnFiltro: TPanel
          Width = 865
          ExplicitWidth = 865
          inherited pn1: TPanel
            Width = 865
            ExplicitWidth = 865
            inherited btnPesquisa: TSpeedButton
              Left = 527
              ExplicitLeft = 527
            end
            inherited btnLimpar: TSpeedButton
              Left = 527
              ExplicitLeft = 527
            end
            object Label1: TLabel
              Left = 8
              Top = 14
              Width = 137
              Height = 13
              Caption = 'ID# ou Descri'#231#227'o da Tabela:'
            end
            object Label2: TLabel
              Left = 251
              Top = 14
              Width = 74
              Height = 13
              Caption = 'Tipo de Tabela:'
            end
            object Label3: TLabel
              Left = 401
              Top = 14
              Width = 102
              Height = 13
              Caption = 'Tabelas vigentes em:'
            end
            object Edit1: TEdit
              Left = 8
              Top = 27
              Width = 241
              Height = 21
              TabOrder = 0
              Text = 'Edit1'
            end
            object ComboBox1: TComboBox
              Left = 252
              Top = 27
              Width = 145
              Height = 21
              TabOrder = 1
              Text = 'ComboBox1'
              Items.Strings = (
                'Todas'
                'Padr'#227'o'
                'Alternativas'
                'Promocionais'
                'Exclusivas')
            end
            object DateEdit1: TJvDateEdit
              Left = 400
              Top = 27
              Width = 121
              Height = 21
              Glyph.Data = {
                76050000424D760500000000000036000000280000001C0000000C0000000100
                2000000000004005000000000000000000000000000000000000FF00FF00FF00
                FF00FF00FF008080800080808000808080008080800080808000808080008080
                800080808000808080008080800080808000FF00FF00FF00FF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FF00FF00FF00FF000000000000000000800000000000
                0000800000008000000000000000800000000000000000000000800000008080
                8000FF00FF008080800080808000808080008080800080808000808080008080
                80008080800080808000808080008080800080808000FFFFFF00FF00FF00FF00
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
                FF00FFFFFF00FFFFFF00FFFFFF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FF00
                FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF0000000000000000000000
                0000FFFFFF00000000000000000000000000C0C0C000FFFFFF00800000008080
                8000FF00FF0080808000FFFFFF00808080008080800080808000FF00FF008080
                80008080800080808000FF00FF00FFFFFF0080808000FFFFFF00FF00FF00FF00
                FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00C0C0C000FFFFFF00C0C0
                C00000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
                FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFF
                FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF0000000000FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00800000008080
                8000FF00FF0080808000FFFFFF00FF00FF0080808000FFFFFF00FF00FF00FF00
                FF00FFFFFF00FFFFFF0080808000FF00FF0080808000FFFFFF00FF00FF00FF00
                FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
                0000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
                FF0080808000FFFFFF00FF00FF00808080008080800080808000FF00FF00FF00
                FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF000000000000000000FFFF
                FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
                8000FF00FF0080808000FFFFFF008080800080808000FFFFFF00FF00FF008080
                8000FFFFFF00FFFFFF00FFFFFF00FFFFFF0080808000FFFFFF00FF00FF00FF00
                FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
                000000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
                FF0080808000FF00FF00FF00FF0080808000808080008080800080808000FF00
                FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
                8000FF00FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFFFF00FF00FF00FF00
                FF00FFFFFF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                C000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF0080808000FFFFFF00FF00FF00FF00FF000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000FF00FF00FF00
                FF00FF00FF008080800080808000808080008080800080808000808080008080
                80008080800080808000808080008080800080808000FF00FF00}
              ImageKind = ikCustom
              NumGlyphs = 2
              PopupColor = clBtnFace
              ShowNullDate = False
              TabOrder = 2
            end
          end
        end
      end
      inherited DBGrid: TDBGrid
        Width = 1091
        Height = 280
        Columns = <
          item
            Expanded = False
            FieldName = 'PRE_CODIGO'
            Title.Caption = 'ID#'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRE_DTCADASTRO'
            Title.Caption = 'Dt.Cadastro'
            Width = 88
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'PRE_TIPO_TABELA'
            Title.Caption = 'Tipo Tabela'
            Width = 117
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRE_DESCRICAO'
            Title.Caption = 'Descri'#231#227'o Tabela'
            Width = 367
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRE_VIGENCIA1'
            Title.Caption = 'Vig'#234'ncia '
            Width = 254
            Visible = True
          end>
      end
    end
  end
  inherited Panel2: TPanel
    Top = 428
    Width = 1099
    ExplicitTop = 428
    ExplicitWidth = 1099
    DesignSize = (
      1099
      36)
    inherited btnSelect: TSpeedButton
      Left = 960
      ExplicitLeft = 960
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
      'Role=RoleName'
      'MaxBlobSize=-1'
      'TrimChar=False'
      'DriverName=Firebird'
      'Database=c:\jobdados\recimar.fdb'
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
      'select a.pre_id,'
      '       a.emp_codigo,'
      'a.pre_codigo,'
      'a.pre_dtcadastro,'
      '       a.cli_codigo,'
      '       a.pre_descricao,'
      '       a.pre_vigencia1,'
      '       a.pre_vigencia2,'
      '       a.pre_tipo_tabela,'
      '       b.cli_razao'
      'From precos0000 a'
      '    left join cli0000 b on b.cli_codigo=a.cli_codigo'
      'where a.pre_id = -1'
      'order by a.pre_descricao'
      ''
      ''
      ''
      '')
  end
  inherited cdsBusco: TClientDataSet
    PacketRecords = -1
    object cdsBuscoPRE_ID: TIntegerField
      FieldName = 'PRE_ID'
      Required = True
    end
    object cdsBuscoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Required = True
      FixedChar = True
      Size = 3
    end
    object cdsBuscoPRE_CODIGO: TIntegerField
      FieldName = 'PRE_CODIGO'
      Required = True
    end
    object cdsBuscoPRE_DTCADASTRO: TDateField
      FieldName = 'PRE_DTCADASTRO'
    end
    object cdsBuscoCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object cdsBuscoPRE_DESCRICAO: TStringField
      FieldName = 'PRE_DESCRICAO'
      OnGetText = cdsBuscoPRE_DESCRICAOGetText
      Size = 40
    end
    object cdsBuscoPRE_VIGENCIA1: TDateField
      FieldName = 'PRE_VIGENCIA1'
      OnGetText = cdsBuscoPRE_VIGENCIA1GetText
    end
    object cdsBuscoPRE_VIGENCIA2: TDateField
      FieldName = 'PRE_VIGENCIA2'
    end
    object cdsBuscoPRE_TIPO_TABELA: TIntegerField
      FieldName = 'PRE_TIPO_TABELA'
      Required = True
      OnGetText = cdsBuscoPRE_TIPO_TABELAGetText
    end
    object cdsBuscoCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Size = 55
    end
  end
end
