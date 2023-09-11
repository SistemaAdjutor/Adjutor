inherited FrmPesqRenovacao: TFrmPesqRenovacao
  Caption = 'CRM - Renova'#231#227'o'
  ClientHeight = 487
  ClientWidth = 1168
  FormStyle = fsMDIChild
  Visible = True
  WindowState = wsMaximized
  ExplicitWidth = 1176
  ExplicitHeight = 514
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnUtilTop: TPanel
    Width = 1168
    ExplicitWidth = 1168
    DesignSize = (
      1168
      41)
    inherited btnExclui: TSpeedButton
      Visible = False
    end
    inherited btnNovo: TSpeedButton
      Caption = 'Criar tarefa'
      Visible = False
    end
    inherited btnEdita: TSpeedButton
      Visible = False
    end
    inherited btnFechar: TSpeedButton
      Left = 1104
      ExplicitLeft = 762
    end
    inherited btnImprime: TSpeedButton
      Left = 947
      ExplicitLeft = 605
    end
    inherited btnExcel: TSpeedButton
      Left = 1026
      ExplicitLeft = 684
    end
  end
  inherited PageControl1: TPageControl
    Width = 1168
    Height = 410
    ExplicitWidth = 1168
    ExplicitHeight = 410
    inherited tsNotas: TTabSheet
      ExplicitWidth = 1160
      ExplicitHeight = 382
      inherited pnControle: TPanel
        Width = 1160
        Height = 137
        ExplicitWidth = 1160
        ExplicitHeight = 137
        inherited pnFiltro: TPanel
          Width = 1160
          Height = 137
          Align = alClient
          ExplicitWidth = 1160
          ExplicitHeight = 137
          DesignSize = (
            1160
            137)
          object Label1: TLabel [0]
            Left = 13
            Top = 15
            Width = 50
            Height = 13
            Caption = 'Vendedor:'
          end
          object btnCriarTarefa: TSpeedButton [1]
            Tag = 1
            Left = 1061
            Top = 76
            Width = 85
            Height = 45
            Hint = 'Inserir Novo'
            Anchors = [akTop, akRight]
            Caption = 'Criar tarefa'
            Glyph.Data = {
              E6000000424DE60000000000000076000000280000000E0000000E0000000100
              0400000000007000000000000000000000001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              3300333333333333330033333333333333003333300033333300333330003333
              3300333330003333330033000000000333003300000000033300330000000003
              3300333330003333330033333000333333003333300033333300333333333333
              33003333333333333300}
            ParentShowHint = False
            ShowHint = True
            OnClick = btnCriarTarefaClick
          end
          object labStatus: TLabel [2]
            Left = 637
            Top = 105
            Width = 39
            Height = 14
            Caption = 'Status:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label2: TLabel [3]
            Left = 350
            Top = 17
            Width = 33
            Height = 13
            Alignment = taRightJustify
            Caption = 'Banco:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label3: TLabel [4]
            Left = 577
            Top = 15
            Width = 35
            Height = 14
            Alignment = taRightJustify
            Caption = 'Cliente:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object lbAtrasos: TLabel [5]
            Left = 600
            Top = 107
            Width = 20
            Height = 13
            Caption = 'Dias'
          end
          inherited pn1: TPanel
            Left = 1054
            Top = 0
            Width = 98
            Align = alNone
            Anchors = [akTop, akRight]
            ExplicitLeft = 1054
            ExplicitTop = 0
            ExplicitWidth = 98
            DesignSize = (
              98
              75)
            inherited btnPesquisa: TSpeedButton
              Left = 7
              Top = 3
              Height = 24
              Anchors = [akTop, akRight]
              ExplicitLeft = 7
              ExplicitTop = 3
              ExplicitHeight = 24
            end
            inherited btnLimpar: TSpeedButton
              Left = 7
              Top = 29
              Height = 24
              Anchors = [akTop, akRight]
              ExplicitLeft = 7
              ExplicitTop = 29
              ExplicitHeight = 24
            end
          end
          object edVendedorCodigo: TEdit
            Left = 69
            Top = 12
            Width = 46
            Height = 21
            TabOrder = 1
          end
          object edVendedor: TSgDbSearchCombo
            Left = 118
            Top = 12
            Width = 200
            Height = 21
            EmptyText = 'Selecionar'
            TabOrder = 2
            CharCase = ecUpperCase
            LookupSelect = 'rep_codigo, rep_nome'
            LookupOrderBy = 'rep_nome'
            LookupTable = 'rep0000'
            LookupDispl = 'REP_NOME'
            OnSelect = edVendedorSelect
            GridAutoSize = False
            LookupSource = qRep
            LookupKeyField = 'rep_codigo'
            ShowButton = True
            LookupTableShare = 'REPRESENTANTES'
            AutoF8WinTitulo = 'Vendedores'
            AutoF8ColumnsTitulo = 'C'#243'digo, Nome'
            GridLeft = 0
            GridWidth = 0
            GridHeight = 100
            GridShowWhenEnter = False
            SelectWithDoubleClick = False
          end
          object chkVenda30: TCheckBox
            Left = 13
            Top = 39
            Width = 281
            Height = 17
            Caption = 'Clientes que n'#227'o compraram nos '#250'ltimos 30 dias'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
            OnClick = ChkAcaoonClick
          end
          object chkVcto30dias: TCheckBox
            Left = 324
            Top = 39
            Width = 354
            Height = 17
            Caption = 'Clientes 30 ou menos dias antes a vencer a '#250'ltima parcela'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
            OnClick = ChkAcaoonClick
          end
          object chkVcto60: TCheckBox
            Left = 324
            Top = 59
            Width = 354
            Height = 17
            Caption = 'Clientes 60 ou menos dias antes a vencer a '#250'ltima parcela'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 9
            OnClick = ChkAcaoonClick
          end
          object chkVendas60: TCheckBox
            Left = 13
            Top = 59
            Width = 281
            Height = 17
            Caption = 'Clientes que n'#227'o compraram nos '#250'ltimos 60 dias'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 8
            OnClick = ChkAcaoonClick
          end
          object chkVencida: TCheckBox
            Left = 324
            Top = 81
            Width = 253
            Height = 17
            Caption = 'Renova'#231#227'o vencida (P'#243's-Venda)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 11
            OnClick = ChkAcaoonClick
          end
          object chkVendas90: TCheckBox
            Left = 13
            Top = 81
            Width = 280
            Height = 17
            Caption = 'Clientes que n'#227'o compraram nos '#250'ltimos 90 dias'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 10
            OnClick = ChkAcaoonClick
          end
          object chkClienteAtrasos: TCheckBox
            Left = 323
            Top = 104
            Width = 223
            Height = 17
            Caption = 'Clientes em atraso (vcto + de x dias)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 14
            OnClick = ChkAcaoonClick
          end
          object cbStatus: TComboBox
            Left = 678
            Top = 102
            Width = 145
            Height = 22
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 16
            Text = 'Pendente'
            Items.Strings = (
              'Bloqueada'
              'Cancelada'
              'Cart'#243'rio'
              'Devolu'#231#227'o'
              'Pendente'
              'Protestada'
              'Parcial')
          end
          object CbBancos: TComboBoxRw
            Left = 389
            Top = 12
            Width = 160
            Height = 21
            TabOrder = 3
            CharCase = ecUpperCase
            font.Charset = ANSI_CHARSET
            font.Color = clBlack
            font.Height = -11
            font.Name = 'Tahoma'
            font.Style = []
            LookupSelect = 'BAN_CODIGO,BAN_APELIDO,BAN_COBTIPO,BAN_COD_APELIDO'
            LookupOrderBy = 'ban_apelido'
            LookupTable = 'ban0000'
            LookupDispl = 'BAN_APELIDO'
            GridAutoSize = False
            LookupSource = CbBancos.InternalSource
            DataField = 'BAN_CODIGO'
            LookupKeyField = 'ban_apelido'
            ShowButton = True
            LookupTableShare = 'BANCOS'
            AutoF8WinTitulo = 'Bancos'
            AutoF8ColumnsTitulo = 'C'#243'digo, Apelido'
            GridLeft = 0
            GridWidth = 0
            GridHeight = 100
            GridShowWhenEnter = False
            SelectWithDoubleClick = False
            Tabela = 'ban0000'
            CamposCarregar = 'BAN_CODIGO,BAN_APELIDO,BAN_COBTIPO,BAN_COD_APELIDO'
            CamposRetornar = 'ban_apelido'
            CamposOrdernar = 'ban_apelido'
            ConexaoBanco = DBConn
            Compartilhar = 'BANCOS'
            Localizado = False
            CodigoEmpresa = 0
            ResetaCampos = False
            MultiEmpresa = False
            Localizar = False
            CarregarCombo = False
            itemindex = 0
            style = csDropDown
          end
          object chkDiasVariaveis: TCheckBox
            Left = 13
            Top = 104
            Width = 241
            Height = 17
            Caption = 'Clientes que n'#227'o compraram nos '#250'ltimos'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 12
            OnClick = ChkAcaoonClick
          end
          object edDias: TEdit
            Left = 255
            Top = 102
            Width = 44
            Height = 21
            TabOrder = 13
            Text = '0'
          end
          object EdClienteCodigo: TEdit
            Left = 615
            Top = 12
            Width = 43
            Height = 21
            CharCase = ecUpperCase
            Color = clWhite
            MaxLength = 5
            TabOrder = 4
            OnExit = EdClienteCodigoExit
            OnKeyDown = EdClienteCodigoKeyDown
            OnKeyPress = EdClienteCodigoKeyPress
          end
          object PesqCliente: TSgDbSearchCombo
            Left = 659
            Top = 12
            Width = 281
            Height = 21
            EmptyText = 'TODOS OS CLIENTES'
            TabOrder = 5
            CharCase = ecUpperCase
            LookupSelect = 'CLI_CODIGO,CLI_RAZAO,CLI_FANTASIA'
            LookupOrderBy = 'CLI_RAZAO'
            LookupTable = 'cli0000'
            LookupDispl = 'CLI_RAZAO'
            OnButtonClick = PesqClienteButtonClick
            OnSelect = PesqClienteSelect
            GridAutoSize = False
            LookupSource = qCli
            LookupKeyField = 'CLI_CODIGO'
            ShowButton = True
            LookupTableShare = 'clientes'
            AutoF8WinTitulo = 'Clientes'
            AutoF8ColumnsTitulo = 'C'#243'digo, Nome, Fantasia'
            GridLeft = 0
            GridWidth = 0
            GridHeight = 100
            GridShowWhenEnter = False
            SelectWithDoubleClick = False
          end
          object edtAtrasos: TEdit
            Left = 552
            Top = 103
            Width = 44
            Height = 21
            TabOrder = 15
            Text = '5'
            OnKeyPress = edtAtrasosKeyPress
          end
          object chkClientesCadastradosSemCompras: TCheckBox
            Left = 700
            Top = 39
            Width = 229
            Height = 17
            Caption = 'Clientes cadastrados e sem compras'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 17
            OnClick = chkClientesCadastradosSemComprasClick
          end
        end
      end
      inherited DBGrid: TDBGrid
        Top = 137
        Width = 1160
        Height = 245
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        PopupMenu = pmMenu
        OnCellClick = DBGridCellClick
        OnDrawColumnCell = DBGridDrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'NovaTarefa'
            Title.Alignment = taCenter
            Title.Caption = '*'
            Width = 30
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cli_codigo'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cli_razao'
            Width = 220
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Vencimento'
            Width = 86
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BANCO'
            Title.Caption = 'Banco'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FPC_VLPARC'
            Title.Caption = 'Valor'
            Width = 87
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'STATUS'
            Title.Caption = 'Situa'#231#227'o'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLI_DTULTCOM'
            Title.Caption = #218'ltima venda'
            Width = 87
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ULTPARCELA'
            Title.Caption = #218'ltima parcela'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'NPARCELA'
            Title.Caption = 'N'#186' parcelas'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'ULTVENCIMENTO'
            Title.Caption = #218'ltimo vencimento'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DiasPosVendas'
            Title.Caption = 'Dias p'#243's-vendas'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DiasPreVcto'
            Title.Caption = 'Dias restantes vcto'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'rep_nome'
            Title.Caption = 'Nome do vendedor'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FPC_ENVIADO_CARTA'
            Title.Caption = 'Enviado carta'
            Width = 110
            Visible = True
          end>
      end
    end
  end
  inherited Panel2: TPanel
    Top = 451
    Width = 1168
    ExplicitTop = 451
    ExplicitWidth = 1168
    DesignSize = (
      1168
      36)
    inherited btnSelect: TSpeedButton
      Left = 1020
      ExplicitLeft = 678
    end
    object lblCobranca: TLabel
      Left = 233
      Top = 11
      Width = 66
      Height = 13
      Caption = 'lblCobranca'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  inherited coCalcula: TACBrCalculadora
    Left = 760
    Top = 32
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 256
    Top = 216
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
    Left = 32
    Top = 256
  end
  inherited qAux3: TSQLQuery
    Left = 658
    Top = 345
  end
  inherited Timer1: TTimer
    Left = 204
    Top = 216
  end
  inherited qBusco: TSQLQuery
    Left = 148
    Top = 361
  end
  inherited dspBusco: TDataSetProvider
    Left = 212
    Top = 361
  end
  inherited cdsBusco: TClientDataSet
    PacketRecords = 10
    OnCalcFields = cdsBuscoCalcFields
    Left = 276
    Top = 361
    object cdsBuscoNovaTarefa: TBooleanField
      DisplayLabel = 'Tarefa'
      FieldKind = fkInternalCalc
      FieldName = 'NovaTarefa'
      OnGetText = cdsBuscoNovaTarefaGetText
    end
    object cdsBuscocli_codigo: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cli_codigo'
      Size = 5
    end
    object cdsBuscocli_razao: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'cli_razao'
      Size = 100
    end
    object cdsBuscoVencimento: TSQLTimeStampField
      FieldName = 'Vencimento'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object cdsBuscoCLI_DTULTCOM: TSQLTimeStampField
      DisplayLabel = #250'ltima venda'
      FieldName = 'CLI_DTULTCOM'
    end
    object cdsBuscoULTVENCIMENTO: TSQLTimeStampField
      DisplayLabel = 'ult vencimento'
      FieldName = 'ULTVENCIMENTO'
    end
    object cdsBuscoULTPARCELA: TFMTBCDField
      DisplayLabel = 'Ult parcela'
      FieldName = 'ULTPARCELA'
      Precision = 18
      Size = 5
    end
    object cdsBuscoNPARCELA: TIntegerField
      FieldName = 'NPARCELA'
    end
    object cdsBuscoDiasPosVendas: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'DiasPosVendas'
    end
    object cdsBuscoDiasPreVcto: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'DiasPreVcto'
    end
    object cdsBuscoREP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      Size = 3
    end
    object cdsBuscoREP_RAZAO: TStringField
      FieldName = 'REP_RAZAO'
      Size = 40
    end
    object cdsBuscorep_nome: TStringField
      FieldName = 'rep_nome'
      Size = 35
    end
    object cdsBuscoBANCO: TStringField
      FieldName = 'BANCO'
      Size = 25
    end
    object cdsBuscoSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 60
    end
    object cdsBuscoFPC_ENVIADO_CARTA: TStringField
      FieldName = 'FPC_ENVIADO_CARTA'
      OnGetText = cdsBuscoFPC_ENVIADO_CARTAGetText
      Size = 1
    end
    object cdsBuscoFPC_VLPARC: TFMTBCDField
      FieldName = 'FPC_VLPARC'
    end
    object cdsBuscoFPC_NUMER: TStringField
      FieldName = 'FPC_NUMER'
      Size = 2
    end
  end
  inherited dsBusca: TDataSource
    Left = 332
    Top = 360
  end
  object qRep: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select rep_codigo, rep_nome'
      'from rep0000'
      'Where rep_codigo='#39'-1'#39
      'order by rep_nome'
      ''
      '')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 545
    Top = 4
  end
  object qCli: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select t1.cli_codigo,'
      '       t1.cli_tabpreco,'
      '       t1.cli_razao,'
      '       t1.cli_cgc,'
      '       t1.cli_insc,'
      '       t2.cid_cidade,'
      '       t2.cid_estado,'
      '       t1.cli_modo_trib_st,'
      '       cn1.cnae_carga_trib_media,'
      '       t1.pcx_codigo,'
      '       t1.cli_consfinal,'
      '       t1.CLI_REGIME_TRIBUTARIO,'
      '       t1.OPE_CODIGO,'
      '       t1.pcl_codigo,'
      '       t3.pcl_nome,'
      '       t1.REP_CODIGO,'
      '       t1.TRP_CODIGO,'
      '       t1.cli_fone'
      'from cli0000 t1'
      '       left join cid0000 t2 on (t2.cid_codigo = t1.cid_codigo)'
      
        '       LEFT JOIN cnae CN1 ON (CN1.cnae_registro = t1.cnae_regist' +
        'ro)'
      '       left join pcl0000 t3 on (t3.pcl_codigo = t1.pcl_codigo)'
      'Where t1.Cli_Codigo='#39'-1'#39
      'order by t1.cli_razao'
      ''
      '')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 207
    Top = 300
  end
  object pmMenu: TPopupMenu
    Left = 620
    Top = 289
    object Enviarcartadecobranaporemail1: TMenuItem
      Caption = 'Enviar carta de cobran'#231'a por email'
      OnClick = Enviarcartadecobranaporemail1Click
    end
    object miImpcartaCobranca: TMenuItem
      Caption = 'Imprimir carta de cobran'#231'a'
      OnClick = Enviarcartadecobranaporemail1Click
    end
  end
  object frxCartaCobranca: TfrxReport
    Version = '5.3.16'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43879.700740196760000000
    ReportOptions.LastChange = 43879.700740196760000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnGetValue = frxCartaCobrancaGetValue
    Left = 764
    Top = 297
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 476.220780000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 355.275820000000000000
          Width = 359.055350000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[EMPRESA]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 355.275820000000000000
          Top = 22.677180000000000000
          Width = 359.055350000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'INSC.EST [INSCEST] CNPJ:[CNPJ]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 355.275820000000000000
          Top = 49.133889999999990000
          Width = 359.055350000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[ENDERECO]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo4: TfrxMemoView
          Left = 355.275820000000000000
          Top = 71.811070000000000000
          Width = 359.055350000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[CEP] - [CIDADE]-[ESTADO]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 355.275820000000000000
          Top = 98.267780000000000000
          Width = 359.055350000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'FONE: [FONE] FAX: [FAX]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end
            item
            end>
        end
        object Memo6: TfrxMemoView
          Left = 355.275820000000000000
          Top = 120.944960000000000000
          Width = 359.055350000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'EMAIL: [EMAIL] HOMEPAGE [HOME]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Logoempresa: TfrxPictureView
          Left = 7.559060000000000000
          Top = 3.779530000000001000
          Width = 328.819110000000000000
          Height = 136.063080000000000000
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Line1: TfrxLineView
          Top = 143.622140000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo7: TfrxMemoView
          Left = 355.275820000000000000
          Top = 151.181200000000000000
          Width = 359.055350000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[CIDADE] [ESTADO]. [DataExtenso]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end
            item
            end>
        end
        object Rich1: TfrxRichView
          Left = 43.354360000000000000
          Top = 260.787570000000000000
          Width = 665.197280000000000000
          Height = 136.063080000000000000
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6465
            666C616E67313034367B5C666F6E7474626C7B5C66305C666E696C5C66636861
            727365743020417269616C3B7D7B5C66315C666E696C5C666368617273657430
            205461686F6D613B7D7D0D0A7B5C2A5C67656E657261746F72204D7366746564
            697420352E34312E32312E323531303B7D5C766965776B696E64345C7563315C
            706172645C66733230205072657A61646F2861292053656E686F722861292C5C
            7061720D0A5C7061720D0A20436F6E73746120656D206E6F73736F7320726567
            697374726F7320717565206F28732920745C27656474756C6F28732920616261
            69786F207265666572656E74652873292061287329204E6F7461287329204669
            7363616C28616973292061626169786F206573745C276531285C2765336F2920
            636F6D20706167616D656E746F2022656D2061626572746F222E5C7061720D0A
            5C7061720D0A456D206361736F20646520745C27656474756C6F287329206A5C
            276531207061676F2873292C206661766F7220646573636F6E73696465726172
            206F20617669736F2065206E6F7320656E76696172206F28732920636F6D7072
            6F76616E74652873292062616E635C27653172696F2070617261206261697861
            20646F28732920745C27656474756C6F2873292E5C7061720D0A5C7061720D0A
            446570617274616D656E746F2046696E616E636569726F5C66315C667331365C
            7061720D0A7D0D0A00}
        end
        object Memo8: TfrxMemoView
          Left = 38.958232310000000000
          Top = 171.369583080000000000
          Width = 17.443984620000000000
          Height = 15.990319230000000000
          Memo.UTF8W = (
            #192)
        end
        object frxDBDataset1CLI_RAZAO: TfrxMemoView
          Left = 42.354360000000000000
          Top = 192.756030000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'CLI_RAZAO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."CLI_RAZAO"]')
        end
        object frxDBDataset1CLI_ENDERE: TfrxMemoView
          Left = 41.574830000000000000
          Top = 215.212740000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."CLI_ENDERE"]- [frxDBDataset1."CLI_BAIRRO"]')
        end
        object frxDBDataset1CLI_CEP: TfrxMemoView
          Left = 41.574830000000000000
          Top = 235.330860000000000000
          Width = 423.307360000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            
              '[frxDBDataset1."CLI_CEP"] - [frxDBDataset1."CLI_CIDADE"] - [frxD' +
              'BDataset1."CLI_UF"]')
          Formats = <
            item
            end
            item
            end
            item
            end>
        end
        object Memo9: TfrxMemoView
          Left = 41.574830000000000000
          Top = 396.850650000000000000
          Width = 359.055350000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[EMPRESA]')
          ParentFont = False
        end
        object Rich2: TfrxRichView
          Left = 41.574830000000000000
          Top = 420.732530000000000000
          Width = 665.197280000000000000
          Height = 18.897650000000000000
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6465
            666C616E67313034367B5C666F6E7474626C7B5C66305C666E696C5C66636861
            7273657430205461686F6D613B7D7D0D0A7B5C2A5C67656E657261746F72204D
            7366746564697420352E34312E32312E323531303B7D5C766965776B696E6434
            5C7563315C706172645C66305C66733136203D3D3D3D3D3D3D3D3D3D3D3D3D3D
            3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D2A2A204D454E534147454D204155544F
            4D5C27633154494341202A2A3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
            3D3D3D3D3D3D3D3D3D3D3D3D3D5C7061720D0A7D0D0A00}
        end
        object Memo10: TfrxMemoView
          Left = 11.338590000000000000
          Top = 450.968770000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Vencimento')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 117.165430000000000000
          Top = 450.968770000000000000
          Width = 71.811070000000030000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Emiss'#227'o')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 195.212740000000000000
          Top = 450.968770000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Documento')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 374.260050000000000000
          Top = 450.968770000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Parc')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 409.984540000000000000
          Top = 450.968770000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 474.354670000000000000
          Top = 450.968770000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Juros')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 555.590910000000000000
          Top = 450.968770000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Multa')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 629.181510000000000000
          Top = 450.968770000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Total')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Left = 1.779530000000000000
          Top = 473.645950000000000000
          Width = 714.331170000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo17: TfrxMemoView
          Left = 277.023810000000000000
          Top = 451.764070000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'NFE')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 336.378170000000000000
          Top = 451.543600000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'NFSE')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 555.590910000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1FPC_VENCTO: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779530000000022000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataField = 'FPC_VENCTO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."FPC_VENCTO"]')
        end
        object frxDBDataset1FPC_DTEMIS: TfrxMemoView
          Left = 113.385900000000000000
          Top = 3.779530000000022000
          Width = 75.590600000000030000
          Height = 18.897650000000000000
          DataField = 'FPC_DTEMIS'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."FPC_DTEMIS"]')
        end
        object frxDBDataset1FPC_COBNUM: TfrxMemoView
          Left = 195.212740000000000000
          Top = 3.779530000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataField = 'FPC_COBNUM'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."FPC_COBNUM"]')
        end
        object frxDBDataset1FPC_VLPARC: TfrxMemoView
          Left = 376.039580000000000000
          Top = 3.779530000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."FPC_NUMER"]')
        end
        object frxDBDataset1FPC_VLPARC1: TfrxMemoView
          Left = 405.071120000000000000
          Top = 3.779530000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataField = 'FPC_VLPARC'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."FPC_VLPARC"]')
          ParentFont = False
        end
        object frxDBDataset1FPC_JUROS: TfrxMemoView
          Left = 476.220780000000000000
          Top = 3.779530000000022000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataField = 'FPC_JUROS'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."FPC_JUROS"]')
          ParentFont = False
        end
        object frxDBDataset1FPC_MULTA: TfrxMemoView
          Left = 548.031849999999900000
          Top = 3.779530000000022000
          Width = 68.031540000000010000
          Height = 18.897650000000000000
          DataField = 'FPC_MULTA'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."FPC_MULTA"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 623.622450000000000000
          Top = 3.779530000000022000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            
              '[<frxDBDataset1."FPC_VLPARC">+<frxDBDataset1."FPC_JUROS">+<frxDB' +
              'Dataset1."FPC_MULTA">]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 275.244280000000000000
          Top = 4.000000000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."NF_NUM_NFE"]')
        end
        object Memo23: TfrxMemoView
          Left = 330.598640000000000000
          Top = 3.779530000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."NFSE"]')
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 30.236240000000000000
        Top = 604.724800000000000000
        Width = 718.110700000000000000
        object Memo20: TfrxMemoView
          Left = 32.772893850000000000
          Top = 2.721992310000019000
          Width = 133.737215380000000000
          Height = 17.734717690000000000
          Memo.UTF8W = (
            'Total Geral ==>')
        end
        object SysMemo1: TfrxSysMemoView
          Left = 377.953000000000000000
          Top = 3.779530000000022000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."FPC_VLPARC">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo2: TfrxSysMemoView
          Left = 211.653680000000000000
          Top = 3.779530000000022000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'T'#237'tulos: [COUNT(MasterData1)]')
        end
        object SysMemo3: TfrxSysMemoView
          Left = 480.000310000000000000
          Top = 3.779530000000022000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."FPC_JUROS">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo4: TfrxSysMemoView
          Left = 548.031849999999900000
          Top = 3.779530000000022000
          Width = 68.031540000000010000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."FPC_MULTA">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo5: TfrxSysMemoView
          Left = 623.622450000000000000
          Top = 3.779530000000022000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            
              '[SUM(<frxDBDataset1."FPC_VLPARC">+<frxDBDataset1."FPC_JUROS">+<f' +
              'rxDBDataset1."FPC_MULTA">,MasterData1)]')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Left = -3.779530000000000000
          Width = 721.890230000000000000
          Color = clBlack
          Diagonal = True
        end
      end
    end
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    Left = 844
    Top = 281
  end
  object frxDOCXExport1: TfrxDOCXExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    OpenAfterExport = False
    PictureType = gpPNG
    Left = 868
    Top = 345
  end
  object cdsCarta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCarta'
    OnCalcFields = cdsCartaCalcFields
    Left = 764
    Top = 345
    object cdsCartaFPC_VENCTO: TSQLTimeStampField
      FieldName = 'FPC_VENCTO'
    end
    object cdsCartaFPC_DTEMIS: TSQLTimeStampField
      FieldName = 'FPC_DTEMIS'
    end
    object cdsCartaFPC_COBNUM: TStringField
      FieldName = 'FPC_COBNUM'
    end
    object cdsCartaFPC_NUMER: TStringField
      FieldName = 'FPC_NUMER'
      Size = 2
    end
    object cdsCartaFPC_VLPARC: TFMTBCDField
      FieldName = 'FPC_VLPARC'
      Precision = 15
    end
    object cdsCartaFPC_JUROS: TFMTBCDField
      FieldKind = fkCalculated
      FieldName = 'FPC_JUROS'
      Size = 15
      Calculated = True
    end
    object cdsCartaFPC_MULTA: TFMTBCDField
      FieldKind = fkCalculated
      FieldName = 'FPC_MULTA'
      Calculated = True
    end
    object cdsCartaCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Size = 5
    end
    object cdsCartaCLI_ENDERE: TStringField
      FieldName = 'CLI_ENDERE'
      Size = 70
    end
    object cdsCartaCLI_BAIRRO: TStringField
      FieldName = 'CLI_BAIRRO'
      Size = 25
    end
    object cdsCartaCLI_CIDADE: TStringField
      FieldName = 'CLI_CIDADE'
      Size = 30
    end
    object cdsCartaCLI_CEP: TStringField
      FieldName = 'CLI_CEP'
      Size = 8
    end
    object cdsCartaCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Size = 70
    end
    object cdsCartaCLI_UF: TStringField
      FieldName = 'CLI_UF'
      Size = 2
    end
    object cdsCartaCLI_EMAIL: TStringField
      FieldName = 'CLI_EMAIL'
      Size = 150
    end
    object cdsCartaBAN_JUROMES: TFMTBCDField
      FieldName = 'BAN_JUROMES'
      Precision = 15
    end
    object cdsCartaBAN_MULTA: TFMTBCDField
      FieldName = 'BAN_MULTA'
      Precision = 15
    end
    object cdsCartaatrasos: TIntegerField
      FieldName = 'atrasos'
    end
    object cdsCartaNF_NUM_NFE: TIntegerField
      FieldName = 'NF_NUM_NFE'
    end
    object cdsCartaNFSE: TStringField
      FieldName = 'NFSE'
      Size = 4
    end
    object cdsCartaFAT_REGISTRO: TIntegerField
      FieldName = 'FAT_REGISTRO'
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'FPC_VENCTO=FPC_VENCTO'
      'FPC_DTEMIS=FPC_DTEMIS'
      'FPC_COBNUM=FPC_COBNUM'
      'FPC_NUMER=FPC_NUMER'
      'FPC_VLPARC=FPC_VLPARC'
      'FPC_JUROS=FPC_JUROS'
      'FPC_MULTA=FPC_MULTA'
      'CLI_CODIGO=CLI_CODIGO'
      'CLI_ENDERE=CLI_ENDERE'
      'CLI_BAIRRO=CLI_BAIRRO'
      'CLI_CIDADE=CLI_CIDADE'
      'CLI_CEP=CLI_CEP'
      'CLI_RAZAO=CLI_RAZAO'
      'CLI_UF=CLI_UF'
      'CLI_EMAIL=CLI_EMAIL'
      'BAN_JUROMES=BAN_JUROMES'
      'BAN_MULTA=BAN_MULTA'
      'atrasos=atrasos'
      'NF_NUM_NFE=NF_NUM_NFE'
      'NFSE=NFSE')
    DataSet = cdsCarta
    BCDToCurrency = False
    Left = 716
    Top = 273
  end
  object dspCarta: TDataSetProvider
    DataSet = qAux3
    Left = 708
    Top = 345
  end
  object frxRichObject1: TfrxRichObject
    Left = 844
    Top = 241
  end
end
