inherited frmHistoricoEmail: TfrmHistoricoEmail
  Caption = 'Hist'#243'rico de eMails Enviados'
  ClientHeight = 647
  ClientWidth = 1229
  ExplicitWidth = 1237
  ExplicitHeight = 674
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgc1: TPageControl
    Width = 1229
    Height = 570
    ExplicitWidth = 1229
    ExplicitHeight = 570
    inherited tsNotas: TTabSheet
      ExplicitWidth = 1221
      ExplicitHeight = 542
      inherited pnlControle: TPanel
        Width = 1221
        Height = 140
        ExplicitWidth = 1221
        ExplicitHeight = 140
        inherited pnlFiltro: TPanel
          Width = 1221
          Height = 140
          ExplicitWidth = 1221
          ExplicitHeight = 140
          inherited pnlpn1: TPanel
            Width = 1221
            Height = 140
            ExplicitWidth = 1221
            ExplicitHeight = 140
            DesignSize = (
              1221
              140)
            inherited btnPesquisa: TSpeedButton
              Left = 1128
              ExplicitLeft = 1116
            end
            inherited btnLimpar: TSpeedButton
              Left = 1128
              ExplicitLeft = 1116
            end
            object Label3: TLabel
              Left = 12
              Top = 6
              Width = 26
              Height = 13
              Caption = 'Setor'
            end
            object Label4: TLabel
              Left = 355
              Top = 8
              Width = 36
              Height = 13
              Caption = 'Usu'#225'rio'
            end
            object gbPeriodo: TGroupBox
              Left = 355
              Top = 64
              Width = 306
              Height = 65
              Caption = '&Per'#237'odo:'
              TabOrder = 0
              object Label1: TLabel
                Left = 16
                Top = 35
                Width = 17
                Height = 13
                Caption = '&De:'
              end
              object Label2: TLabel
                Left = 162
                Top = 35
                Width = 21
                Height = 13
                Caption = 'A&t'#233':'
              end
              object DataI: TJvDateEdit
                Left = 34
                Top = 31
                Width = 100
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
                YearDigits = dyFour
                TabOrder = 0
                OnExit = DataIExit
              end
              object DataF: TJvDateEdit
                Left = 189
                Top = 31
                Width = 100
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
                YearDigits = dyFour
                TabOrder = 1
                OnExit = DataFExit
              end
            end
            object cbSetor: TComboBox
              Left = 12
              Top = 25
              Width = 337
              Height = 21
              TabOrder = 1
              Text = 'Escolha um Setor'
              Items.Strings = (
                'Boleto'
                'Pedido de Compra'
                'Pedido'
                'Pedido de Tratamento T'#233'rmico'
                'Or'#231'amento de Processo de Produ'#231#227'o'
                'Pedido de Industrializa'#231#227'o'
                'CRM Renova'#231#227'o')
            end
            object Panel1: TPanel
              Left = 12
              Top = 64
              Width = 337
              Height = 65
              TabOrder = 2
              object cbCliFor: TSgDbSearchCombo
                Left = 16
                Top = 31
                Width = 287
                Height = 21
                TabOrder = 0
                Enabled = False
                GridAutoSize = False
                LookupSource = qCliFor
                ShowButton = True
                AutoF8ColumnsTitulo = 'Raz'#227'o'
                GridLeft = 0
                GridWidth = 0
                GridHeight = 100
                GridShowWhenEnter = False
                SelectWithDoubleClick = False
              end
              object rbCliente: TRadioButton
                Left = 16
                Top = 8
                Width = 65
                Height = 17
                Caption = 'Cliente'
                TabOrder = 1
                OnClick = rbClienteClick
              end
              object rbFornecedor: TRadioButton
                Left = 112
                Top = 8
                Width = 89
                Height = 17
                Caption = 'Fornecedor'
                TabOrder = 2
                OnClick = rbFornecedorClick
              end
              object rbAmbos: TRadioButton
                Left = 224
                Top = 8
                Width = 113
                Height = 17
                Caption = 'Ambos'
                TabOrder = 3
                OnClick = rbAmbosClick
              end
            end
            object cbUsuario: TSgDbSearchCombo
              Left = 355
              Top = 25
              Width = 280
              Height = 21
              TabOrder = 3
              LookupSelect = 'USU_CODIGO, USU_NOME'
              LookupOrderBy = 'USU_NOME'
              LookupTable = 'USUARIO'
              LookupDispl = 'USU_NOME'
              GridAutoSize = False
              LookupSource = qUsuario
              LookupKeyField = 'USU_CODIGO'
              ShowButton = True
              AutoF8WinTitulo = 'Usu'#225'rios'
              AutoF8ColumnsTitulo = 'C'#243'digo, Usu'#225'rio'
              LookupDbGridColumns = 'USU_CODIGO, USU_NOME'
              LookupDbGridColumnsTitle = 'C'#243'digo, Nome do Usu'#225'rio'
              GridLeft = 0
              GridWidth = 0
              GridHeight = 100
              GridShowWhenEnter = False
              SelectWithDoubleClick = False
            end
          end
        end
      end
      inherited cxgrd1: TcxGrid
        Top = 140
        Width = 1221
        Height = 402
        ExplicitTop = 140
        ExplicitWidth = 1221
        ExplicitHeight = 402
        inherited cxgrd1DBTableView1: TcxGridDBTableView
          OnCellDblClick = cxgrd1DBTableView1CellDblClick
          object cxgrd1DBTableView1HEM_MODULO: TcxGridDBColumn
            DataBinding.FieldName = 'HEM_MODULO'
            Options.Editing = False
            Width = 172
          end
          object cxgrd1DBTableView1HEM_DESTINATARIO: TcxGridDBColumn
            DataBinding.FieldName = 'HEM_DESTINATARIO'
            Options.Editing = False
            Width = 258
          end
          object cxgrd1DBTableView1HEM_TITULO: TcxGridDBColumn
            DataBinding.FieldName = 'HEM_TITULO'
            Options.Editing = False
            Width = 215
          end
          object cxgrd1DBTableView1HEM_CLI_FOR: TcxGridDBColumn
            Caption = 'Tipo [C]liente/[F]ornecedor'
            DataBinding.FieldName = 'HEM_CLI_FOR'
            Options.Editing = False
            Width = 27
          end
          object cxgrd1DBTableView1CLI_FOR_CODIGO: TcxGridDBColumn
            Caption = 'Cliente/Fornecedor'
            DataBinding.FieldName = 'RAZAO'
            Options.Editing = False
            Width = 220
          end
          object cxgrd1DBTableView1HEM_DATA_ENVIO: TcxGridDBColumn
            Caption = 'Data/Hora'
            DataBinding.FieldName = 'HEM_DATA_ENVIO'
            Options.Editing = False
          end
          object cxgrd1DBTableView1USU_CODIGO: TcxGridDBColumn
            Caption = 'Usu'#225'rio'
            DataBinding.FieldName = 'USU_NOME'
            Options.Editing = False
            Width = 82
          end
          object cxgrd1DBTableView1HEM_ANEXO: TcxGridDBColumn
            DataBinding.FieldName = 'HEM_ANEXO'
            Options.Editing = False
            Width = 446
          end
        end
      end
    end
  end
  inherited pnl1: TPanel
    Top = 611
    Width = 1229
    ExplicitTop = 611
    ExplicitWidth = 1229
    DesignSize = (
      1229
      36)
    inherited btnSelect: TSpeedButton
      Left = 1081
      ExplicitLeft = 1069
    end
  end
  inherited pnlUtilTop: TPanel
    Width = 1229
    ExplicitWidth = 1229
    DesignSize = (
      1229
      41)
    inherited btnExclui: TSpeedButton
      Visible = False
    end
    inherited btnNovo: TSpeedButton
      Visible = False
    end
    inherited btnEdita: TSpeedButton
      Visible = False
    end
    inherited btnFechar: TSpeedButton
      Left = 1165
      ExplicitLeft = 1153
    end
    inherited btnMP_Expotar: TJvArrowButton
      Left = 1064
      Visible = False
      ExplicitLeft = 1052
    end
    inherited btnrelatorios: TJvArrowButton
      Left = 963
      OnClick = btnrelatoriosClick
      ExplicitLeft = 951
    end
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 136
    Top = 336
  end
  inherited cxLocalizer1: TcxLocalizer
    Left = 72
    Top = 384
  end
  inherited qAux: TFDQuery
    Left = 267
    Top = 360
  end
  inherited FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 352
    Top = 304
  end
  inherited FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Left = 248
    Top = 296
  end
  inherited FDTransac: TFDTransaction
    Left = 480
    Top = 328
  end
  inherited FDGUIxErrorDialog1: TFDGUIxErrorDialog
    Left = 576
    Top = 368
  end
  inherited qAux2: TFDQuery
    Left = 315
    Top = 351
  end
  inherited qAux3: TFDQuery
    Left = 355
    Top = 359
  end
  inherited qAux4: TFDQuery
    Left = 395
    Top = 359
  end
  inherited dbConn: TFDConnection
    Params.Strings = (
      'Database=C:\Jobdados\EXEMPLO\EXEMPLO.FDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'CharacterSet=ISO8859_1'
      'DriverID=FB')
    Left = 59
    Top = 440
  end
  inherited FDStoredProc1: TFDStoredProc
    Left = 192
    Top = 352
  end
  inherited dsBusca: TDataSource
    Left = 468
    Top = 440
  end
  inherited cdsBusca: TFDQuery
    SQL.Strings = (
      'SELECT'
      #9'h.*,'
      #9'CASE '
      #9'  WHEN c.CLI_RAZAO IS NULL THEN f.FOR_RAZAO '
      #9'  WHEN F.FOR_RAZAO IS NULL THEN C.CLI_RAZAO '
      #9'END AS razao,'#9
      #9'u.USU_NOME'
      'FROM'
      #9'HISTORICO_EMAIL h'
      'LEFT JOIN CLI0000 c ON'
      #9'(c.CLI_CODIGO = h.CLI_FOR_CODIGO)'
      'LEFT JOIN FOR0000 f ON'
      #9'(f.FOR_CODIGO = h.CLI_FOR_CODIGO)'
      'JOIN USUARIO u ON'
      #9'(u.USU_CODIGO = h.USU_CODIGO)')
    Left = 379
    Top = 448
    object cdsBuscaHEM_CODIGO: TIntegerField
      FieldName = 'HEM_CODIGO'
      Origin = 'HEM_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsBuscaHEM_MODULO: TStringField
      DisplayLabel = 'Setor'
      FieldName = 'HEM_MODULO'
      Origin = 'HEM_MODULO'
      Size = 255
    end
    object cdsBuscaHEM_DESTINATARIO: TStringField
      DisplayLabel = 'Destinat'#225'rio'
      FieldName = 'HEM_DESTINATARIO'
      Origin = 'HEM_DESTINATARIO'
      Size = 255
    end
    object cdsBuscaHEM_TITULO: TStringField
      DisplayLabel = 'T'#237'tulo'
      FieldName = 'HEM_TITULO'
      Origin = 'HEM_TITULO'
      Size = 255
    end
    object cdsBuscaCLI_FOR_CODIGO: TStringField
      DisplayLabel = 'Cliente / Fornecedor'
      FieldName = 'CLI_FOR_CODIGO'
      Origin = 'CLI_FOR_CODIGO'
      Size = 5
    end
    object cdsBuscaHEM_CLI_FOR: TStringField
      DisplayLabel = 'Tipo [C]liente / [F]ornecedor'
      FieldName = 'HEM_CLI_FOR'
      Origin = 'HEM_CLI_FOR'
      Size = 1
    end
    object cdsBuscaHEM_DATA_ENVIO: TSQLTimeStampField
      DisplayLabel = 'Data / Hora'
      FieldName = 'HEM_DATA_ENVIO'
      Origin = 'HEM_DATA_ENVIO'
    end
    object cdsBuscaUSU_CODIGO: TIntegerField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'USU_CODIGO'
      Origin = 'USU_CODIGO'
    end
    object cdsBuscaUSU_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'USU_NOME'
      Origin = 'USU_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 40
    end
    object cdsBuscaRAZAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RAZAO'
      Origin = 'RAZAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 70
    end
    object cdsBuscaEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Origin = 'EMP_CODIGO'
      Size = 3
    end
    object cdsBuscaHEM_ANEXO: TStringField
      DisplayLabel = 'Caminho do Arquivo Anexo'
      FieldName = 'HEM_ANEXO'
      Origin = 'HEM_ANEXO'
      Size = 1024
    end
  end
  inherited pmExportar: TPopupMenu
    Left = 1072
    Top = 40
  end
  inherited PopupMenu2: TPopupMenu
    Left = 704
    Top = 376
  end
  inherited frxPadrao: TfrxReport
    OnBeginDoc = frxPadraoBeginDoc
    OnGetValue = frxPadraoGetValue
    Left = 372
    Top = 569
    Datasets = <
      item
        DataSet = frxDBcdsBusca
        DataSetName = 'frxDBcdsBusca'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 85.047310000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Line2: TfrxLineView
          Top = 63.031540000000000000
          Width = 1043.150280000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo7: TfrxMemoView
          Left = 945.441560000000000000
          Top = 9.000000000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#] de [TotalPages#]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo8: TfrxMemoView
          Left = 1003.354980000000000000
          Top = 41.574830000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = 'hh:mm'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Time]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Top = 66.149660000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = clWhite
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Setor')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 320.614410000000000000
          Top = 66.149660000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = clWhite
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Titulo')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 158.740260000000000000
          Top = 66.149660000000000000
          Width = 71.810925980000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = clWhite
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Destinat'#225'rio')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 623.622450000000000000
          Top = 66.149660000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = clWhite
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Cli/For')
          ParentFont = False
        end
        object Line5: TfrxLineView
          Top = 81.929190000000000000
          Width = 1043.150280000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo17: TfrxMemoView
          Left = 875.071430000000000000
          Top = 41.574830000000000000
          Width = 124.724490000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Emitido em: [Date]')
          ParentFont = False
        end
        object LogoEmpresa: TfrxPictureView
          Left = 3.779530000000000000
          Width = 177.637783070000000000
          Height = 60.472480000000000000
          Center = True
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object wFrxRazao: TfrxMemoView
          Left = 205.551330000000000000
          Top = 9.338590000000000000
          Width = 721.890230000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[EMPRESA]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 270.126160000000000000
          Top = 37.354360000000000000
          Width = 593.386210000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Hist'#243'rico dos eMails enviados')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 656.992580000000000000
          Top = 66.149660000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = clWhite
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            'Cliente/Fornecedor'
            '')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 848.850960000000000000
          Top = 66.149660000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = clWhite
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            'Data / Hora do Envio')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 982.677800000000000000
          Top = 66.149660000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = clWhite
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            'Usu'#225'rio')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 166.299320000000000000
        Width = 1046.929810000000000000
        DataSet = frxDBcdsBusca
        DataSetName = 'frxDBcdsBusca'
        RowCount = 0
        object Memo1: TfrxMemoView
          Width = 151.181200000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBcdsBusca."HEM_MODULO"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 154.960730000000000000
          Width = 158.740260000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBcdsBusca."HEM_DESTINATARIO"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 316.834880000000000000
          Width = 306.141930000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBcdsBusca."HEM_TITULO"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 645.653990000000000000
          Width = 188.976500000000000000
          Height = 15.118120000000000000
          DataField = 'RAZAO'
          DataSet = frxDBcdsBusca
          DataSetName = 'frxDBcdsBusca'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clWhite
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBcdsBusca."RAZAO"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 856.410020000000000000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clWhite
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBcdsBusca."HEM_DATA_ENVIO"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 967.559680000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clWhite
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBcdsBusca."USU_NOME"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 627.401980000000000000
          Width = 15.118120000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBcdsBusca."HEM_CLI_FOR"]')
          ParentFont = False
        end
      end
    end
  end
  inherited SaveDialog1: TSaveDialog
    Left = 300
    Top = 457
  end
  inherited qUsuMenu: TFDQuery
    Left = 203
    Top = 472
  end
  inherited cdsBuscaDetalhes: TFDQuery
    Left = 379
    Top = 512
  end
  inherited dsBuscaDetalhes: TDataSource
    Left = 484
    Top = 512
  end
  object qCliFor: TSQLQuery
    Params = <>
    Left = 280
    Top = 153
  end
  object qUsuario: TSQLQuery
    Params = <>
    Left = 600
    Top = 81
  end
  object frxDBcdsBusca: TfrxDBDataset
    UserName = 'frxDBcdsBusca'
    CloseDataSource = False
    FieldAliases.Strings = (
      'HEM_CODIGO=HEM_CODIGO'
      'HEM_MODULO=HEM_MODULO'
      'HEM_DESTINATARIO=HEM_DESTINATARIO'
      'HEM_TITULO=HEM_TITULO'
      'CLI_FOR_CODIGO=CLI_FOR_CODIGO'
      'HEM_CLI_FOR=HEM_CLI_FOR'
      'HEM_DATA_ENVIO=HEM_DATA_ENVIO'
      'USU_CODIGO=USU_CODIGO'
      'USU_NOME=USU_NOME'
      'RAZAO=RAZAO')
    DataSet = cdsBusca
    BCDToCurrency = False
    Left = 292
    Top = 569
  end
end
