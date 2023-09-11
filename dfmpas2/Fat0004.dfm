inherited FrmConsultaNFSaida: TFrmConsultaNFSaida
  Left = 214
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta de Notas Fiscais de Sa'#237'da'
  ClientHeight = 602
  ClientWidth = 964
  Font.Charset = ANSI_CHARSET
  Font.Name = 'Arial'
  FormStyle = fsMDIChild
  KeyPreview = True
  Position = poDesktopCenter
  Visible = True
  ExplicitTop = -84
  ExplicitWidth = 970
  ExplicitHeight = 627
  PixelsPerInch = 96
  TextHeight = 14
  object Panel1: TPanel [0]
    Left = 0
    Top = 76
    Width = 964
    Height = 526
    Align = alClient
    BevelOuter = bvLowered
    TabOrder = 0
    object PageCtrlNF: TPageControl
      Left = 1
      Top = 1
      Width = 962
      Height = 524
      ActivePage = TabSheet1
      Align = alClient
      TabOrder = 0
      OnChange = PageCtrlNFChange
      object TabSheet1: TTabSheet
        Caption = 'Nota Fiscais'
        object DBGrid1: TDBGrid
          Left = 0
          Top = 0
          Width = 954
          Height = 442
          Align = alClient
          Color = 16776176
          DataSource = DsNFSaida
          Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          ParentShowHint = False
          ReadOnly = True
          ShowHint = False
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Arial'
          TitleFont.Style = []
          OnDrawColumnCell = DBGrid1DrawColumnCell
          OnDblClick = DBGrid1DblClick
          OnKeyPress = DBGrid1KeyPress
          Columns = <
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'NF_NUM_NFE'
              Title.Alignment = taCenter
              Title.Caption = 'N'#186' NFe'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 52
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NF_NOTANUMBER'
              Title.Alignment = taCenter
              Title.Caption = 'Fatura'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 52
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NF_EMISSAO'
              Title.Alignment = taCenter
              Title.Caption = 'Emiss'#227'o'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OPE_NATUREZA'
              Title.Alignment = taCenter
              Title.Caption = 'Cfop'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 31
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CLI_CODIGO'
              Title.Alignment = taCenter
              Title.Caption = 'C'#243'digo'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 42
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CLI_RAZAO'
              Title.Alignment = taCenter
              Title.Caption = 'Raz'#227'o Social'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 251
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NF_TOT_PROD'
              Title.Alignment = taCenter
              Title.Caption = 'Total Prod.'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 75
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NF_VLFRETE'
              Title.Alignment = taCenter
              Title.Caption = 'Frete'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 58
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NF_DESP_ACES'
              Title.Alignment = taCenter
              Title.Caption = 'Desp.Ac.'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 57
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NF_VL_IPI'
              Title.Alignment = taCenter
              Title.Caption = 'Vl. IPI'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 55
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NF_VL_ICMS'
              Title.Alignment = taCenter
              Title.Caption = 'Vl. ICMS'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 54
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NF_TOT_NOTA'
              Title.Alignment = taCenter
              Title.Caption = 'Total NF'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 85
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Canc_CC'
              Title.Caption = 'Canc'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 32
              Visible = True
            end>
        end
        object Panel2: TPanel
          Left = 0
          Top = 442
          Width = 954
          Height = 53
          Align = alBottom
          BevelOuter = bvLowered
          TabOrder = 1
          object Label5: TLabel
            Left = 16
            Top = 9
            Width = 70
            Height = 14
            Caption = 'Total Geral NF:'
          end
          object Label6: TLabel
            Left = 3
            Top = 31
            Width = 81
            Height = 14
            Caption = 'Total NF Vendas:'
          end
          object Label10: TLabel
            Left = 841
            Top = 34
            Width = 106
            Height = 14
            Caption = 'Nota Fiscal cancelada'
          end
          object Label8: TLabel
            Left = 367
            Top = 9
            Width = 101
            Height = 14
            Caption = 'Total NF Canceladas:'
          end
          object Label9: TLabel
            Left = 363
            Top = 31
            Width = 106
            Height = 14
            Caption = 'Total Outras NF (S/V):'
          end
          object CurrTotalGeralNF: TCurrencyEdit
            Left = 104
            Top = 5
            Width = 100
            Height = 21
            TabStop = False
            AutoSize = False
            Color = 14145495
            DisplayFormat = ',0.00;-,0.00'
            ReadOnly = True
            TabOrder = 0
          end
          object CurrTotalLiquidoNF: TCurrencyEdit
            Left = 104
            Top = 27
            Width = 100
            Height = 21
            TabStop = False
            AutoSize = False
            Color = 14145495
            DisplayFormat = ',0.00;-,0.00'
            ReadOnly = True
            TabOrder = 1
          end
          object Panel4: TPanel
            Left = 825
            Top = 32
            Width = 14
            Height = 15
            BevelOuter = bvLowered
            Color = clRed
            ParentBackground = False
            TabOrder = 2
          end
          object CurrNFCancelado: TCurrencyEdit
            Left = 492
            Top = 5
            Width = 100
            Height = 21
            TabStop = False
            AutoSize = False
            Color = 14145495
            DisplayFormat = ',0.00;-,0.00'
            ReadOnly = True
            TabOrder = 3
          end
          object CurrNFSemValor: TCurrencyEdit
            Left = 492
            Top = 27
            Width = 100
            Height = 21
            TabStop = False
            AutoSize = False
            Color = 14145495
            DisplayFormat = ',0.00;-,0.00'
            ReadOnly = True
            TabOrder = 4
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Produtos Nota Fiscal'
        ImageIndex = 1
        object DBGrid2: TDBGrid
          Left = 0
          Top = 0
          Width = 954
          Height = 457
          Align = alClient
          Color = 16776176
          DataSource = DsItensNF
          Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          ParentShowHint = False
          ReadOnly = True
          ShowHint = False
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Arial'
          TitleFont.Style = []
          OnDrawColumnCell = DBGrid2DrawColumnCell
          Columns = <
            item
              Expanded = False
              FieldName = 'ID_CC'
              Title.Alignment = taCenter
              Title.Caption = 'ID'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 18
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRD_REFER'
              Title.Alignment = taCenter
              Title.Caption = 'Refer'#234'ncia'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 118
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRD_DESCRI'
              Title.Alignment = taCenter
              Title.Caption = 'Descri'#231#227'o'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 498
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRD_UND'
              Title.Alignment = taCenter
              Title.Caption = 'Und'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 36
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NF_QTDE'
              Title.Alignment = taCenter
              Title.Caption = 'Qtde'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 79
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NF_PRECO'
              Title.Alignment = taCenter
              Title.Caption = 'P.Unit'#225'rio'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PTOTAL_CC'
              Title.Alignment = taCenter
              Title.Caption = 'P.Total'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 80
              Visible = True
            end>
        end
        object Panel3: TPanel
          Left = 0
          Top = 457
          Width = 954
          Height = 38
          Align = alBottom
          BevelOuter = bvLowered
          TabOrder = 1
          object Label14: TLabel
            Left = 19
            Top = 11
            Width = 91
            Height = 13
            Caption = 'Produtos Agregado'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label15: TLabel
            Left = 648
            Top = 13
            Width = 51
            Height = 14
            Caption = 'Total Qtde:'
          end
          object Label12: TLabel
            Left = 832
            Top = 13
            Width = 33
            Height = 14
            Alignment = taRightJustify
            Caption = 'P.Total:'
          end
          object CPTotal: TCurrencyEdit
            Left = 864
            Top = 9
            Width = 84
            Height = 21
            TabStop = False
            AutoSize = False
            Color = 14145495
            DisplayFormat = ',0.00;-,0.00'
            ReadOnly = True
            TabOrder = 0
          end
          object Panel5: TPanel
            Left = 3
            Top = 11
            Width = 14
            Height = 15
            BevelOuter = bvLowered
            Color = clRed
            TabOrder = 1
          end
          object CQtde: TCurrencyEdit
            Left = 717
            Top = 9
            Width = 70
            Height = 21
            TabStop = False
            AutoSize = False
            Color = 14145495
            DisplayFormat = ',0;-,0'
            ReadOnly = True
            TabOrder = 2
          end
        end
      end
    end
  end
  object Panel6: TPanel [1]
    Left = 0
    Top = 0
    Width = 964
    Height = 76
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object GroupBox1: TGroupBox
      Left = 2
      Top = -1
      Width = 281
      Height = 73
      Caption = 'Pesquisa'
      TabOrder = 0
      object Rad_Fatura: TRadioButton
        Left = 69
        Top = 34
        Width = 65
        Height = 17
        Caption = 'N'#186' Fatura'
        TabOrder = 0
        OnClick = LayoutClick
      end
      object Rad_Emissao: TRadioButton
        Left = 135
        Top = 34
        Width = 87
        Height = 17
        Caption = 'Data &Emiss'#227'o'
        Checked = True
        TabOrder = 1
        TabStop = True
        OnClick = LayoutClick
      end
      object Rad_Cliente: TRadioButton
        Left = 223
        Top = 34
        Width = 55
        Height = 17
        Caption = 'Clien&te'
        TabOrder = 2
        OnClick = LayoutClick
      end
      object Rad_NFe: TRadioButton
        Left = 5
        Top = 34
        Width = 59
        Height = 17
        Caption = 'N'#186' NFe'
        TabOrder = 3
        OnClick = LayoutClick
      end
    end
    object Grp_Informa: TGroupBox
      Left = 287
      Top = -1
      Width = 411
      Height = 73
      Caption = 'Informe o Cliente'
      TabOrder = 1
      object Lbl_Informa: TLabel
        Left = 12
        Top = 23
        Width = 36
        Height = 14
        Alignment = taRightJustify
        Caption = 'C'#243'digo:'
        Visible = False
      end
      object Pan_Data: TPanel
        Left = 2
        Top = 47
        Width = 407
        Height = 24
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 0
        TabStop = True
        object Label2: TLabel
          Left = 7
          Top = 6
          Width = 59
          Height = 13
          Caption = 'Data Inicial :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 214
          Top = 6
          Width = 54
          Height = 13
          Caption = 'Data Final :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label1: TLabel
          Left = 176
          Top = 6
          Width = 16
          Height = 13
          Caption = 'At'#233
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object RxDataInicial: TJvDateEdit
          Left = 68
          Top = 1
          Width = 90
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Glyph.Data = {
            4E000000424D4E000000000000003E000000280000000A000000040000000100
            010000000000100000000000000000000000020000000200000000000000FFFF
            FF00FFC000003300000033000000FFC00000}
          ImageKind = ikCustom
          ButtonWidth = 16
          ParentFont = False
          PopupColor = clBtnFace
          ShowNullDate = False
          YearDigits = dyFour
          TabOrder = 0
        end
        object RxDataFinal: TJvDateEdit
          Left = 270
          Top = 1
          Width = 89
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Glyph.Data = {
            4E000000424D4E000000000000003E000000280000000A000000040000000100
            010000000000100000000000000000000000020000000200000000000000FFFF
            FF00FFC000003300000033000000FFC00000}
          ImageKind = ikCustom
          ButtonWidth = 16
          ParentFont = False
          PopupColor = clBtnFace
          ShowNullDate = False
          YearDigits = dyFour
          TabOrder = 1
        end
      end
      object Edt_Lista: TEdit
        Left = 54
        Top = 20
        Width = 49
        Height = 22
        TabOrder = 1
        Visible = False
        OnExit = Edt_ListaExit
      end
      object Cb_Clientes1: TComboBoxRw
        Left = 103
        Top = 20
        Width = 282
        Height = 22
        TabOrder = 2
        CharCase = ecUpperCase
        Visible = False
        LookupSelect = 'CLI_CODIGO,CLI_RAZAO'
        LookupOrderBy = 'CLI_RAZAO'
        LookupTable = 'CLI0000'
        LookupDispl = 'CLI_RAZAO'
        OnSelect = Cb_Clientes1Select
        GridAutoSize = False
        LookupSource = Cb_Clientes1.InternalSource
        LookupKeyField = 'CLI_CODIGO'
        ShowButton = True
        LookupTableShare = 'CLIENTES'
        AutoF8WinTitulo = 'Clientes'
        AutoF8ColumnsTitulo = 'C'#243'digo, Nome'
        GridLeft = 0
        GridWidth = 0
        GridHeight = 100
        GridShowWhenEnter = False
        SelectWithDoubleClick = False
        Tabela = 'CLI0000'
        CamposCarregar = 'CLI_CODIGO,CLI_RAZAO'
        CamposRetornar = 'CLI_CODIGO'
        CamposOrdernar = 'CLI_RAZAO'
        ConexaoBanco = DataCadastros.SQLConnection1
        Compartilhar = 'CLIENTES'
        Localizado = False
        CodigoEmpresa = 0
        ResetaCampos = False
        MultiEmpresa = False
        Localizar = False
        CarregarCombo = False
        itemindex = 0
        style = csDropDown
      end
    end
    object BitPesquisar: TBitBtn
      Left = 714
      Top = 14
      Width = 109
      Height = 22
      Caption = '&Pesquisar'
      TabOrder = 2
      TabStop = False
      OnClick = BitPesquisarClick
    end
    object BitImprimir: TBitBtn
      Left = 830
      Top = 39
      Width = 109
      Height = 22
      Caption = '&Relat'#243'rios'
      TabOrder = 3
      TabStop = False
      OnClick = BitImprimirClick
    end
    object BitSair: TBitBtn
      Left = 714
      Top = 39
      Width = 109
      Height = 22
      Caption = '&Sair'
      TabOrder = 4
      TabStop = False
      OnClick = BitSairClick
    end
    object BitBtn1: TBitBtn
      Left = 829
      Top = 14
      Width = 109
      Height = 22
      Caption = 'Total por CF&OP'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333300000000
        0000333377777777777733330FFFFFFFFFF033337F3FFF3F3FF733330F000F0F
        00F033337F777373773733330FFFFFFFFFF033337F3FF3FF3FF733330F00F00F
        00F033337F773773773733330FFFFFFFFFF033337FF3333FF3F7333300FFFF00
        F0F03333773FF377F7373330FB00F0F0FFF0333733773737F3F7330FB0BF0FB0
        F0F0337337337337373730FBFBF0FB0FFFF037F333373373333730BFBF0FB0FF
        FFF037F3337337333FF700FBFBFB0FFF000077F333337FF37777E0BFBFB000FF
        0FF077FF3337773F7F37EE0BFB0BFB0F0F03777FF3733F737F73EEE0BFBF00FF
        00337777FFFF77FF7733EEEE0000000003337777777777777333}
      NumGlyphs = 2
      TabOrder = 5
      TabStop = False
      OnClick = BitBtn1Click
    end
  end
  object SqlCdsNFSaida: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT'#13#10'N2.NF_NOTANUMBER,'#13#10'N2.NF_EMISSAO,'#13#10'N2.OPE_NATUREZA,'#13#10'N2.' +
      'OPE_SEMVLCOM,'#13#10'N2.CLI_CODIGO,'#13#10'C1.CLI_RAZAO,'#13#10'N2.NF_TOT_PROD,'#13#10'N' +
      '2.NF_VL_IPI,'#13#10'N2.NF_VL_ICMS,'#13#10'N2.NF_TOT_NOTA,'#13#10'N2.NF_VLFRETE,'#13#10'N' +
      '2.NF_DESP_ACES,'#13#10'N2.NF_VL_DESCTO,'#13#10'N2.NF_CANCELADA,'#13#10'N2.NF_NUM_N' +
      'FE'#13#10'FROM nf0001 N2'#13#10'LEFT JOIN CLI0000 C1 ON (N2.CLI_CODIGO = C1.' +
      'CLI_CODIGO)'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    OnCalcFields = SqlCdsNFSaidaCalcFields
    CommandText = 
      'SELECT'#13#10'N2.NF_NOTANUMBER,'#13#10'N2.NF_EMISSAO,'#13#10'N2.OPE_NATUREZA,'#13#10'N2.' +
      'OPE_SEMVLCOM,'#13#10'N2.CLI_CODIGO,'#13#10'C1.CLI_RAZAO,'#13#10'N2.NF_TOT_PROD,'#13#10'N' +
      '2.NF_VL_IPI,'#13#10'N2.NF_VL_ICMS,'#13#10'N2.NF_TOT_NOTA,'#13#10'N2.NF_VLFRETE,'#13#10'N' +
      '2.NF_DESP_ACES,'#13#10'N2.NF_VL_DESCTO,'#13#10'N2.NF_CANCELADA,'#13#10'N2.NF_NUM_N' +
      'FE'#13#10'FROM nf0001 N2'#13#10'LEFT JOIN CLI0000 C1 ON (N2.CLI_CODIGO = C1.' +
      'CLI_CODIGO)'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 216
    Top = 144
    object SqlCdsNFSaidaNF_NOTANUMBER: TStringField
      FieldName = 'NF_NOTANUMBER'
      Required = True
      Size = 6
    end
    object SqlCdsNFSaidaNF_EMISSAO: TDateField
      FieldName = 'NF_EMISSAO'
    end
    object SqlCdsNFSaidaOPE_NATUREZA: TStringField
      FieldName = 'OPE_NATUREZA'
      Size = 4
    end
    object SqlCdsNFSaidaOPE_SEMVLCOM: TStringField
      FieldName = 'OPE_SEMVLCOM'
      Size = 1
    end
    object SqlCdsNFSaidaCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Size = 5
    end
    object SqlCdsNFSaidaCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Size = 50
    end
    object SqlCdsNFSaidaNF_TOT_PROD: TFMTBCDField
      FieldName = 'NF_TOT_PROD'
      DisplayFormat = '#,###0.00'
      Precision = 15
    end
    object SqlCdsNFSaidaNF_VL_IPI: TFMTBCDField
      FieldName = 'NF_VL_IPI'
      DisplayFormat = '#,###0.00'
      Precision = 15
    end
    object SqlCdsNFSaidaNF_VL_ICMS: TFMTBCDField
      FieldName = 'NF_VL_ICMS'
      DisplayFormat = '#,###0.00'
      Precision = 15
    end
    object SqlCdsNFSaidaNF_VL_DESCTO: TFMTBCDField
      FieldName = 'NF_VL_DESCTO'
      DisplayFormat = '#,###0.00'
      Precision = 15
      Size = 4
    end
    object SqlCdsNFSaidaNF_TOT_NOTA: TFMTBCDField
      FieldName = 'NF_TOT_NOTA'
      DisplayFormat = '#,###0.00'
      Precision = 15
    end
    object SqlCdsNFSaidaNF_CANCELADA: TStringField
      FieldName = 'NF_CANCELADA'
      Size = 1
    end
    object SqlCdsNFSaidaCanc_CC: TStringField
      FieldKind = fkCalculated
      FieldName = 'Canc_CC'
      Size = 3
      Calculated = True
    end
    object SqlCdsNFSaidaGrupo_cc: TStringField
      FieldKind = fkCalculated
      FieldName = 'Grupo_cc'
      Calculated = True
    end
    object SqlCdsNFSaidaTOTAL_PROD_LIQ_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'TOTAL_PROD_LIQ_CC'
      DisplayFormat = '#,###0.00'
      Calculated = True
    end
    object SqlCdsNFSaidaNF_NUM_NFE: TIntegerField
      FieldName = 'NF_NUM_NFE'
    end
    object SqlCdsNFSaidaNF_VLFRETE: TFMTBCDField
      FieldName = 'NF_VLFRETE'
      DisplayFormat = '#,###0.00'
      Precision = 15
      Size = 4
    end
    object SqlCdsNFSaidaNF_DESP_ACES: TFMTBCDField
      FieldName = 'NF_DESP_ACES'
      DisplayFormat = '#,###0.00'
      Precision = 15
      Size = 4
    end
    object SqlCdsNFSaidaNF_STATUS_NFE: TStringField
      FieldName = 'NF_STATUS_NFE'
      Size = 1
    end
  end
  object DsNFSaida: TDataSource
    DataSet = SqlCdsNFSaida
    Left = 280
    Top = 144
  end
  object ppDBNFSAIDA: TppDBPipeline
    DataSource = DsRelNota
    UserName = 'DBNFSAIDA'
    Left = 368
    Top = 198
    object ppDBNFSAIDAppField1: TppField
      FieldAlias = 'NF_NOTANUMBER'
      FieldName = 'NF_NOTANUMBER'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBNFSAIDAppField2: TppField
      FieldAlias = 'NF_EMISSAO'
      FieldName = 'NF_EMISSAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBNFSAIDAppField3: TppField
      FieldAlias = 'OPE_NATUREZA'
      FieldName = 'OPE_NATUREZA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBNFSAIDAppField4: TppField
      FieldAlias = 'OPE_SEMVLCOM'
      FieldName = 'OPE_SEMVLCOM'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBNFSAIDAppField5: TppField
      FieldAlias = 'CLI_CODIGO'
      FieldName = 'CLI_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBNFSAIDAppField6: TppField
      FieldAlias = 'CLI_RAZAO'
      FieldName = 'CLI_RAZAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBNFSAIDAppField7: TppField
      FieldAlias = 'NF_TOT_PROD'
      FieldName = 'NF_TOT_PROD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBNFSAIDAppField8: TppField
      FieldAlias = 'NF_VL_IPI'
      FieldName = 'NF_VL_IPI'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBNFSAIDAppField9: TppField
      FieldAlias = 'NF_VL_ICMS'
      FieldName = 'NF_VL_ICMS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBNFSAIDAppField10: TppField
      FieldAlias = 'NF_TOT_NOTA'
      FieldName = 'NF_TOT_NOTA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBNFSAIDAppField11: TppField
      FieldAlias = 'NF_VL_DESCTO'
      FieldName = 'NF_VL_DESCTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBNFSAIDAppField12: TppField
      FieldAlias = 'NF_CANCELADA'
      FieldName = 'NF_CANCELADA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDBNFSAIDAppField13: TppField
      FieldAlias = 'NF_QTDE'
      FieldName = 'NF_QTDE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDBNFSAIDAppField14: TppField
      FieldAlias = 'Canc_cc'
      FieldName = 'Canc_cc'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppDBNFSAIDAppField15: TppField
      FieldAlias = 'Grupo_cc'
      FieldName = 'Grupo_cc'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppDBNFSAIDAppField16: TppField
      FieldAlias = 'TOTAL_PROD_LIQ_CC'
      FieldName = 'TOTAL_PROD_LIQ_CC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppDBNFSAIDAppField17: TppField
      FieldAlias = 'PCL_NOME'
      FieldName = 'PCL_NOME'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppDBNFSAIDAppField18: TppField
      FieldAlias = 'NF_NUM_NFE'
      FieldName = 'NF_NUM_NFE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppDBNFSAIDAppField19: TppField
      FieldAlias = 'NF_CHAVE_NFE'
      FieldName = 'NF_CHAVE_NFE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object ppDBNFSAIDAppField20: TppField
      FieldAlias = 'NF_VL_SUBTRIB'
      FieldName = 'NF_VL_SUBTRIB'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
  end
  object ppREPNFSAIDAS: TppReport
    AutoStop = False
    DataPipeline = ppDBNFSAIDA
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 15000
    PrinterSetup.mmMarginLeft = 10000
    PrinterSetup.mmMarginRight = 10000
    PrinterSetup.mmMarginTop = 15000
    PrinterSetup.mmPaperHeight = 210000
    PrinterSetup.mmPaperWidth = 297000
    PrinterSetup.PaperSize = 9
    Template.FileName = 'X:\captareplus\dfmpas\Fontes-Relatorios\RELNFSAIDAS01'
    Units = utMillimeters
    AfterPrint = ppREPNFSAIDASAfterPrint
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    BeforePrint = ppREPNFSAIDASBeforePrint
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Portuguese (Brazil)'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PreviewFormSettings.WindowState = wsMaximized
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.IgnorePageHeight = True
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Notas Fiscais de Sa'#237'da'
    Left = 456
    Top = 198
    Version = '16.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBNFSAIDA'
    object ppHeaderBand2: TppHeaderBand
      Background.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 19579
      mmPrintPosition = 0
      object ppLine30: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 257440
        BandType = 0
        LayerName = Foreground
      end
      object LBL_00_EMPRESA: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LBL_00_EMPRESA'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'LABEL_EMPRESA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 265
        mmTop = 794
        mmWidth = 159809
        BandType = 0
        LayerName = Foreground
      end
      object LBL_00_LTITULO1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LBL_00_LTITULO1'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'TITULO1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 5292
        mmWidth = 160073
        BandType = 0
        LayerName = Foreground
      end
      object LBL_00_LTITULO2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LBL_00_LTITULO2'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'TITULO2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 9790
        mmWidth = 160073
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable13: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 236803
        mmTop = 794
        mmWidth = 32544
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable14: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 236803
        mmTop = 9790
        mmWidth = 32279
        BandType = 0
        LayerName = Foreground
      end
      object ppLine31: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line4'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 14552
        mmWidth = 270000
        BandType = 0
        LayerName = Foreground
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 19314
        mmWidth = 270000
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'N'#186' Fatura'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3260
        mmLeft = 11113
        mmTop = 15346
        mmWidth = 12023
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Emiss'#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3440
        mmLeft = 24342
        mmTop = 15346
        mmWidth = 10583
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Raz'#227'o Social do Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3440
        mmLeft = 37571
        mmTop = 15346
        mmWidth = 44186
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Total Prod'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 95515
        mmTop = 15346
        mmWidth = 12965
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Vl.IPI'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3387
        mmLeft = 110596
        mmTop = 15346
        mmWidth = 13758
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Vl. ICMS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 128059
        mmTop = 15081
        mmWidth = 13758
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Total Nota'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3260
        mmLeft = 160221
        mmTop = 15346
        mmWidth = 13081
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label9'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Canc.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3260
        mmLeft = 188781
        mmTop = 15346
        mmWidth = 7408
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label12'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Qtde Itens'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3260
        mmLeft = 174731
        mmTop = 15346
        mmWidth = 13123
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label13'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Tipo Documento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 197380
        mmTop = 15346
        mmWidth = 20373
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'N'#186' NFe'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3260
        mmLeft = 794
        mmTop = 15346
        mmWidth = 9186
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel14: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label14'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Icms.Subs'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 143140
        mmTop = 15346
        mmWidth = 13494
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 3440
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'NF_NOTANUMBER'
        DataPipeline = ppDBNFSAIDA
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBNFSAIDA'
        mmHeight = 3440
        mmLeft = 12435
        mmTop = 0
        mmWidth = 10319
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'NF_EMISSAO'
        DataPipeline = ppDBNFSAIDA
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBNFSAIDA'
        mmHeight = 3440
        mmLeft = 23019
        mmTop = 0
        mmWidth = 14552
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'TOTAL_PROD_LIQ_CC'
        DataPipeline = ppDBNFSAIDA
        DisplayFormat = '#,###0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBNFSAIDA'
        mmHeight = 3440
        mmLeft = 92340
        mmTop = 0
        mmWidth = 16404
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'NF_VL_IPI'
        DataPipeline = ppDBNFSAIDA
        DisplayFormat = '#,###0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBNFSAIDA'
        mmHeight = 3440
        mmLeft = 109009
        mmTop = 0
        mmWidth = 16669
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText8'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'NF_VL_ICMS'
        DataPipeline = ppDBNFSAIDA
        DisplayFormat = '#,###0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBNFSAIDA'
        mmHeight = 3440
        mmLeft = 126736
        mmTop = 0
        mmWidth = 18256
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText9'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'NF_TOT_NOTA'
        DataPipeline = ppDBNFSAIDA
        DisplayFormat = '#,###0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBNFSAIDA'
        mmHeight = 3440
        mmLeft = 156898
        mmTop = 0
        mmWidth = 17992
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText10'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'Canc_cc'
        DataPipeline = ppDBNFSAIDA
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBNFSAIDA'
        mmHeight = 3440
        mmLeft = 189177
        mmTop = 0
        mmWidth = 7144
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_RAZAO'
        DataPipeline = ppDBNFSAIDA
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBNFSAIDA'
        mmHeight = 3440
        mmLeft = 38894
        mmTop = 0
        mmWidth = 51858
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText12: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText12'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'NF_QTDE'
        DataPipeline = ppDBNFSAIDA
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBNFSAIDA'
        mmHeight = 3440
        mmLeft = 174890
        mmTop = 0
        mmWidth = 13494
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText14: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText102'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'NF_CHAVE_NFE'
        DataPipeline = ppDBNFSAIDA
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBNFSAIDA'
        mmHeight = 3440
        mmLeft = 196850
        mmTop = 0
        mmWidth = 73290
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'NF_NUM_NFE'
        DataPipeline = ppDBNFSAIDA
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBNFSAIDA'
        mmHeight = 3260
        mmLeft = 1145
        mmTop = 0
        mmWidth = 10231
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'NF_VL_SUBTRIB'
        DataPipeline = ppDBNFSAIDA
        DisplayFormat = '#,###0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBNFSAIDA'
        mmHeight = 3440
        mmLeft = 144198
        mmTop = 0
        mmWidth = 12171
        BandType = 4
        LayerName = Foreground
      end
      object TxtCFOP_detail: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText14'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OPE_NATUREZA'
        DataPipeline = ppDBNFSAIDA
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        Visible = False
        DataPipelineName = 'ppDBNFSAIDA'
        mmHeight = 3175
        mmLeft = 265
        mmTop = 0
        mmWidth = 6350
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 5292
      mmPrintPosition = 0
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line3'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 5027
        mmWidth = 270000
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label10'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Total de Notas Listada(s):'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3387
        mmLeft = 0
        mmTop = 529
        mmWidth = 32808
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc1: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataPipeline = ppDBNFSAIDA
        DisplayFormat = '#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBNFSAIDA'
        mmHeight = 3387
        mmLeft = 33073
        mmTop = 529
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc2: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'TOTAL_PROD_LIQ_CC'
        DataPipeline = ppDBNFSAIDA
        DisplayFormat = '#,###0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBNFSAIDA'
        mmHeight = 3175
        mmLeft = 89165
        mmTop = 265
        mmWidth = 19579
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc3: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc3'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'NF_VL_IPI'
        DataPipeline = ppDBNFSAIDA
        DisplayFormat = '#,###0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBNFSAIDA'
        mmHeight = 3175
        mmLeft = 109009
        mmTop = 265
        mmWidth = 16669
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc4: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc4'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'NF_VL_ICMS'
        DataPipeline = ppDBNFSAIDA
        DisplayFormat = '#,###0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBNFSAIDA'
        mmHeight = 3175
        mmLeft = 126736
        mmTop = 265
        mmWidth = 18256
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc5: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc5'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'NF_TOT_NOTA'
        DataPipeline = ppDBNFSAIDA
        DisplayFormat = '#,###0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBNFSAIDA'
        mmHeight = 3175
        mmLeft = 156634
        mmTop = 265
        mmWidth = 18521
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc11: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc11'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'NF_QTDE'
        DataPipeline = ppDBNFSAIDA
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBNFSAIDA'
        mmHeight = 3175
        mmLeft = 174890
        mmTop = 265
        mmWidth = 13494
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc19: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc19'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'NF_VL_SUBTRIB'
        DataPipeline = ppDBNFSAIDA
        DisplayFormat = '#,###0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBNFSAIDA'
        mmHeight = 3175
        mmLeft = 144198
        mmTop = 265
        mmWidth = 12171
        BandType = 7
        LayerName = Foreground
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'Grupo_cc'
      DataPipeline = ppDBNFSAIDA
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBNFSAIDA'
      NewFile = False
      object ppGroupHeaderBand1: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 3969
        mmPrintPosition = 0
        object ppDBText11: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText11'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'Grupo_cc'
          DataPipeline = ppDBNFSAIDA
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBNFSAIDA'
          mmHeight = 3175
          mmLeft = 0
          mmTop = 265
          mmWidth = 104246
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLine3: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line5'
          Border.Weight = 1.000000000000000000
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 3704
          mmWidth = 270000
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 4498
        mmPrintPosition = 0
        object ppDBCalc7: TppDBCalc
          DesignLayer = ppDesignLayer1
          UserName = 'DBCalc7'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'TOTAL_PROD_LIQ_CC'
          DataPipeline = ppDBNFSAIDA
          DisplayFormat = '#,###0.000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBNFSAIDA'
          mmHeight = 3175
          mmLeft = 89165
          mmTop = 265
          mmWidth = 19579
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBCalc8: TppDBCalc
          DesignLayer = ppDesignLayer1
          UserName = 'DBCalc8'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'NF_VL_IPI'
          DataPipeline = ppDBNFSAIDA
          DisplayFormat = '#,###0.000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBNFSAIDA'
          mmHeight = 3175
          mmLeft = 108744
          mmTop = 265
          mmWidth = 16669
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBCalc9: TppDBCalc
          DesignLayer = ppDesignLayer1
          UserName = 'DBCalc9'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'NF_VL_ICMS'
          DataPipeline = ppDBNFSAIDA
          DisplayFormat = '#,###0.000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBNFSAIDA'
          mmHeight = 3175
          mmLeft = 126736
          mmTop = 265
          mmWidth = 18256
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBCalc10: TppDBCalc
          DesignLayer = ppDesignLayer1
          UserName = 'DBCalc10'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'NF_TOT_NOTA'
          DataPipeline = ppDBNFSAIDA
          DisplayFormat = '#,###0.000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBNFSAIDA'
          mmHeight = 3175
          mmLeft = 156634
          mmTop = 265
          mmWidth = 18521
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLine5: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line7'
          Border.Weight = 1.000000000000000000
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 4233
          mmWidth = 270000
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel11: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label11'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'TOTAL DO GRUPO:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormField = False
          Transparent = True
          mmHeight = 3175
          mmLeft = 55563
          mmTop = 265
          mmWidth = 25929
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBCalc6: TppDBCalc
          DesignLayer = ppDesignLayer1
          UserName = 'DBCalc101'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'NF_QTDE'
          DataPipeline = ppDBNFSAIDA
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBNFSAIDA'
          mmHeight = 3175
          mmLeft = 174890
          mmTop = 265
          mmWidth = 13494
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBCalc17: TppDBCalc
          DesignLayer = ppDesignLayer1
          UserName = 'DBCalc17'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'NF_VL_SUBTRIB'
          DataPipeline = ppDBNFSAIDA
          DisplayFormat = '#,###0.000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBNFSAIDA'
          mmHeight = 3175
          mmLeft = 144198
          mmTop = 265
          mmWidth = 12171
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'OPE_NATUREZA'
      DataPipeline = ppDBNFSAIDA
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBNFSAIDA'
      NewFile = False
      object ppGroupHeaderBand2: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 3969
        mmPrintPosition = 0
        object ppLabel15: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label15'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'CFOP:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormField = False
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3175
          mmLeft = 177
          mmTop = 0
          mmWidth = 8290
          BandType = 3
          GroupNo = 1
          LayerName = Foreground
        end
        object ppDBText15: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText13'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'OPE_NATUREZA'
          DataPipeline = ppDBNFSAIDA
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBNFSAIDA'
          mmHeight = 3175
          mmLeft = 9260
          mmTop = 0
          mmWidth = 32279
          BandType = 3
          GroupNo = 1
          LayerName = Foreground
        end
        object ppLine6: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line8'
          Border.Weight = 1.000000000000000000
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 3704
          mmWidth = 270000
          BandType = 3
          GroupNo = 1
          LayerName = Foreground
        end
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 5027
        mmPrintPosition = 0
        object ppLine7: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line9'
          Border.Weight = 1.000000000000000000
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 0
          mmWidth = 270000
          BandType = 5
          GroupNo = 1
          LayerName = Foreground
        end
        object ppLabel16: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label16'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'TOTAL CFOP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormField = False
          Transparent = True
          mmHeight = 3175
          mmLeft = 265
          mmTop = 794
          mmWidth = 17286
          BandType = 5
          GroupNo = 1
          LayerName = Foreground
        end
        object ppDBCalc12: TppDBCalc
          DesignLayer = ppDesignLayer1
          UserName = 'DBCalc12'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'TOTAL_PROD_LIQ_CC'
          DataPipeline = ppDBNFSAIDA
          DisplayFormat = '#,###0.000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBNFSAIDA'
          mmHeight = 3175
          mmLeft = 89165
          mmTop = 529
          mmWidth = 19579
          BandType = 5
          GroupNo = 1
          LayerName = Foreground
        end
        object ppDBCalc13: TppDBCalc
          DesignLayer = ppDesignLayer1
          UserName = 'DBCalc13'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'NF_VL_IPI'
          DataPipeline = ppDBNFSAIDA
          DisplayFormat = '#,###0.000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBNFSAIDA'
          mmHeight = 3175
          mmLeft = 109009
          mmTop = 529
          mmWidth = 16669
          BandType = 5
          GroupNo = 1
          LayerName = Foreground
        end
        object ppDBCalc14: TppDBCalc
          DesignLayer = ppDesignLayer1
          UserName = 'DBCalc14'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'NF_VL_ICMS'
          DataPipeline = ppDBNFSAIDA
          DisplayFormat = '#,###0.000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBNFSAIDA'
          mmHeight = 3175
          mmLeft = 126736
          mmTop = 529
          mmWidth = 18256
          BandType = 5
          GroupNo = 1
          LayerName = Foreground
        end
        object ppDBCalc15: TppDBCalc
          DesignLayer = ppDesignLayer1
          UserName = 'DBCalc102'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'NF_TOT_NOTA'
          DataPipeline = ppDBNFSAIDA
          DisplayFormat = '#,###0.000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBNFSAIDA'
          mmHeight = 3175
          mmLeft = 156634
          mmTop = 529
          mmWidth = 18256
          BandType = 5
          GroupNo = 1
          LayerName = Foreground
        end
        object ppDBCalc16: TppDBCalc
          DesignLayer = ppDesignLayer1
          UserName = 'DBCalc16'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'NF_QTDE'
          DataPipeline = ppDBNFSAIDA
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBNFSAIDA'
          mmHeight = 3175
          mmLeft = 174890
          mmTop = 529
          mmWidth = 13494
          BandType = 5
          GroupNo = 1
          LayerName = Foreground
        end
        object ppLine8: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line10'
          Border.Weight = 1.000000000000000000
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 4762
          mmWidth = 270000
          BandType = 5
          GroupNo = 1
          LayerName = Foreground
        end
        object ppDBCalc18: TppDBCalc
          DesignLayer = ppDesignLayer1
          UserName = 'DBCalc18'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'NF_VL_SUBTRIB'
          DataPipeline = ppDBNFSAIDA
          DisplayFormat = '#,###0.000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBNFSAIDA'
          mmHeight = 3175
          mmLeft = 144198
          mmTop = 529
          mmWidth = 12171
          BandType = 5
          GroupNo = 1
          LayerName = Foreground
        end
      end
    end
    object ppDesignLayers1: TppDesignLayers
      object ppDesignLayer1: TppDesignLayer
        UserName = 'Foreground'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object SqlRelNota: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT'#13#10'N2.NF_NOTANUMBER,'#13#10'N2.NF_EMISSAO,'#13#10'N2.OPE_NATUREZA,'#13#10'N2.' +
      'OPE_SEMVLCOM,'#13#10'N2.CLI_CODIGO,'#13#10'C1.CLI_RAZAO,'#13#10'N2.NF_TOT_PROD,'#13#10'N' +
      '2.NF_VL_IPI,'#13#10'N2.NF_VL_ICMS,'#13#10'N2.NF_TOT_NOTA,'#13#10'N2.NF_VL_DESCTO,'#13 +
      #10'N2.NF_CANCELADA,'#13#10'T1.PCL_NOME,'#13#10'N2.NF_NUM_NFE,'#13#10'N2.NF_CHAVE_NFE' +
      ','#13#10'N2.NF_VL_SUBTRIB,'#13#10'COALESCE(SUM(N3.NF_QTDE),0) AS NF_QTDE'#13#10'FR' +
      'OM NF0001 N2'#13#10'LEFT JOIN NF_IT01 N3 ON (N3.NF_IT_NOTANUMER = N2.N' +
      'F_NOTANUMBER AND N2.EMP_CODIGO = N3.EMP_CODIGO)'#13#10'AND (N3.NF_FLAG' +
      '_ATUALIZA_ESTOQUE = '#39'S'#39') AND (N3.NF_PRODUTO_AGREGADO = '#39'N'#39')'#13#10'LEF' +
      'T JOIN CLI0000 C1 ON (N2.CLI_CODIGO = C1.CLI_CODIGO)'#13#10'LEFT JOIN ' +
      'PCL0000 T1 ON (T1.PCL_CODIGO = N2.PCL_CODIGO)'#13#10'where N2.NF_EMISS' +
      'AO BETWEEN '#39'05/01/2006'#39'  AND '#39'05/31/2006'#39' AND   N2.EMP_CODIGO = ' +
      #39'001'#39#13#10'GROUP BY'#13#10'N2.NF_NOTANUMBER,'#13#10'N2.NF_EMISSAO,'#13#10'N2.OPE_NATUR' +
      'EZA,'#13#10'N2.OPE_SEMVLCOM,'#13#10'N2.CLI_CODIGO,'#13#10'C1.CLI_RAZAO,'#13#10'N2.NF_TOT' +
      '_PROD,'#13#10'N2.NF_VL_IPI,'#13#10'N2.NF_VL_ICMS,'#13#10'N2.NF_TOT_NOTA,'#13#10'N2.NF_VL' +
      '_DESCTO,'#13#10'N2.NF_CANCELADA,'#13#10'T1.PCL_NOME,'#13#10'N2.NF_NUM_NFE,'#13#10'N2.NF_' +
      'CHAVE_NFE,'#13#10'N2.NF_VL_SUBTRIB'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    OnCalcFields = SqlRelNotaCalcFields
    CommandText = 
      'SELECT'#13#10'N2.NF_NOTANUMBER,'#13#10'N2.NF_EMISSAO,'#13#10'N2.OPE_NATUREZA,'#13#10'N2.' +
      'OPE_SEMVLCOM,'#13#10'N2.CLI_CODIGO,'#13#10'C1.CLI_RAZAO,'#13#10'N2.NF_TOT_PROD,'#13#10'N' +
      '2.NF_VL_IPI,'#13#10'N2.NF_VL_ICMS,'#13#10'N2.NF_TOT_NOTA,'#13#10'N2.NF_VL_DESCTO,'#13 +
      #10'N2.NF_CANCELADA,'#13#10'T1.PCL_NOME,'#13#10'N2.NF_NUM_NFE,'#13#10'N2.NF_CHAVE_NFE' +
      ','#13#10'N2.NF_VL_SUBTRIB,'#13#10'COALESCE(SUM(N3.NF_QTDE),0) AS NF_QTDE'#13#10'FR' +
      'OM NF0001 N2'#13#10'LEFT JOIN NF_IT01 N3 ON (N3.NF_IT_NOTANUMER = N2.N' +
      'F_NOTANUMBER AND N2.EMP_CODIGO = N3.EMP_CODIGO)'#13#10'AND (N3.NF_FLAG' +
      '_ATUALIZA_ESTOQUE = '#39'S'#39') AND (N3.NF_PRODUTO_AGREGADO = '#39'N'#39')'#13#10'LEF' +
      'T JOIN CLI0000 C1 ON (N2.CLI_CODIGO = C1.CLI_CODIGO)'#13#10'LEFT JOIN ' +
      'PCL0000 T1 ON (T1.PCL_CODIGO = N2.PCL_CODIGO)'#13#10'where N2.NF_EMISS' +
      'AO BETWEEN '#39'05/01/2006'#39'  AND '#39'05/31/2006'#39' AND   N2.EMP_CODIGO = ' +
      #39'001'#39#13#10'GROUP BY'#13#10'N2.NF_NOTANUMBER,'#13#10'N2.NF_EMISSAO,'#13#10'N2.OPE_NATUR' +
      'EZA,'#13#10'N2.OPE_SEMVLCOM,'#13#10'N2.CLI_CODIGO,'#13#10'C1.CLI_RAZAO,'#13#10'N2.NF_TOT' +
      '_PROD,'#13#10'N2.NF_VL_IPI,'#13#10'N2.NF_VL_ICMS,'#13#10'N2.NF_TOT_NOTA,'#13#10'N2.NF_VL' +
      '_DESCTO,'#13#10'N2.NF_CANCELADA,'#13#10'T1.PCL_NOME,'#13#10'N2.NF_NUM_NFE,'#13#10'N2.NF_' +
      'CHAVE_NFE,'#13#10'N2.NF_VL_SUBTRIB'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 215
    Top = 198
    object SqlRelNotaNF_NOTANUMBER: TStringField
      FieldName = 'NF_NOTANUMBER'
      Required = True
      Size = 6
    end
    object SqlRelNotaNF_EMISSAO: TDateField
      FieldName = 'NF_EMISSAO'
    end
    object SqlRelNotaOPE_NATUREZA: TStringField
      FieldName = 'OPE_NATUREZA'
      Size = 4
    end
    object SqlRelNotaOPE_SEMVLCOM: TStringField
      FieldName = 'OPE_SEMVLCOM'
      Size = 1
    end
    object SqlRelNotaCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Size = 5
    end
    object SqlRelNotaCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Size = 55
    end
    object SqlRelNotaNF_TOT_PROD: TFMTBCDField
      FieldName = 'NF_TOT_PROD'
      Precision = 15
      Size = 4
    end
    object SqlRelNotaNF_VL_IPI: TFMTBCDField
      FieldName = 'NF_VL_IPI'
      Precision = 15
      Size = 4
    end
    object SqlRelNotaNF_VL_ICMS: TFMTBCDField
      FieldName = 'NF_VL_ICMS'
      Precision = 15
      Size = 4
    end
    object SqlRelNotaNF_TOT_NOTA: TFMTBCDField
      FieldName = 'NF_TOT_NOTA'
      Precision = 15
      Size = 4
    end
    object SqlRelNotaNF_VL_DESCTO: TFMTBCDField
      FieldName = 'NF_VL_DESCTO'
      Precision = 15
      Size = 4
    end
    object SqlRelNotaNF_CANCELADA: TStringField
      FieldName = 'NF_CANCELADA'
      Size = 1
    end
    object SqlRelNotaNF_QTDE: TFMTBCDField
      FieldName = 'NF_QTDE'
      Precision = 15
      Size = 4
    end
    object SqlRelNotaCanc_cc: TStringField
      FieldKind = fkCalculated
      FieldName = 'Canc_cc'
      Size = 3
      Calculated = True
    end
    object SqlRelNotaGrupo_cc: TStringField
      FieldKind = fkCalculated
      FieldName = 'Grupo_cc'
      Calculated = True
    end
    object SqlRelNotaTOTAL_PROD_LIQ_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'TOTAL_PROD_LIQ_CC'
      Calculated = True
    end
    object SqlRelNotaPCL_NOME: TStringField
      FieldName = 'PCL_NOME'
      Size = 35
    end
    object SqlRelNotaNF_NUM_NFE: TIntegerField
      FieldName = 'NF_NUM_NFE'
    end
    object SqlRelNotaNF_CHAVE_NFE: TStringField
      FieldName = 'NF_CHAVE_NFE'
      Size = 60
    end
    object SqlRelNotaNF_VL_SUBTRIB: TFMTBCDField
      FieldName = 'NF_VL_SUBTRIB'
      Precision = 15
      Size = 4
    end
  end
  object DsRelNota: TDataSource
    DataSet = SqlRelNota
    Left = 281
    Top = 198
  end
  object DsItensNF: TDataSource
    DataSet = SqlItensNF
    Left = 455
    Top = 144
  end
  object SqlItensNF: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT'#13#10'T1.*,'#13#10'T2.PRD_UND'#13#10'FROM NF_IT01 T1'#13#10'LEFT JOIN PRD0000 T2' +
      ' ON (T2.PRD_REFER = T1.PRD_REFER)'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    OnCalcFields = SqlItensNFCalcFields
    CommandText = 
      'SELECT'#13#10'T1.*,'#13#10'T2.PRD_UND'#13#10'FROM NF_IT01 T1'#13#10'LEFT JOIN PRD0000 T2' +
      ' ON (T2.PRD_REFER = T1.PRD_REFER)'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 368
    Top = 144
    object SqlItensNFNF_REGISTRO: TIntegerField
      FieldName = 'NF_REGISTRO'
      Required = True
    end
    object SqlItensNFNF_IT_NOTANUMER: TStringField
      FieldName = 'NF_IT_NOTANUMER'
      Required = True
      Size = 6
    end
    object SqlItensNFPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object SqlItensNFPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Size = 7
    end
    object SqlItensNFNF_QTDE: TFMTBCDField
      FieldName = 'NF_QTDE'
      Precision = 15
      Size = 4
    end
    object SqlItensNFNF_PRECO: TFMTBCDField
      FieldName = 'NF_PRECO'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 5
    end
    object SqlItensNFNF_IPIALIQ: TFMTBCDField
      FieldName = 'NF_IPIALIQ'
      Precision = 15
      Size = 4
    end
    object SqlItensNFIPI_CODIGO: TStringField
      FieldName = 'IPI_CODIGO'
      Size = 8
    end
    object SqlItensNFNF_VLSUBST: TFMTBCDField
      FieldName = 'NF_VLSUBST'
      Precision = 15
      Size = 4
    end
    object SqlItensNFNF_IDESCTO1: TFMTBCDField
      FieldName = 'NF_IDESCTO1'
      Precision = 15
      Size = 4
    end
    object SqlItensNFNF_IDESCTO2: TFMTBCDField
      FieldName = 'NF_IDESCTO2'
      Precision = 15
      Size = 4
    end
    object SqlItensNFPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 50
    end
    object SqlItensNFEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlItensNFNF_ICMSALIQ: TFMTBCDField
      FieldName = 'NF_ICMSALIQ'
      Precision = 15
      Size = 4
    end
    object SqlItensNFNF_PMATPRIMA: TFMTBCDField
      FieldName = 'NF_PMATPRIMA'
      Precision = 15
      Size = 4
    end
    object SqlItensNFNF_COMISSAO: TFMTBCDField
      FieldName = 'NF_COMISSAO'
      Precision = 15
      Size = 4
    end
    object SqlItensNFNF_QTDE_VAR1: TFMTBCDField
      FieldName = 'NF_QTDE_VAR1'
      Precision = 15
      Size = 4
    end
    object SqlItensNFNF_QTDE_VAR2: TFMTBCDField
      FieldName = 'NF_QTDE_VAR2'
      Precision = 15
      Size = 4
    end
    object SqlItensNFNF_QTDE_VAR3: TFMTBCDField
      FieldName = 'NF_QTDE_VAR3'
      Precision = 15
      Size = 4
    end
    object SqlItensNFNF_QTDE_VAR4: TFMTBCDField
      FieldName = 'NF_QTDE_VAR4'
      Precision = 15
      Size = 4
    end
    object SqlItensNFNF_QTDE_VAR5: TFMTBCDField
      FieldName = 'NF_QTDE_VAR5'
      Precision = 15
      Size = 4
    end
    object SqlItensNFNF_QTDE_VAR6: TFMTBCDField
      FieldName = 'NF_QTDE_VAR6'
      Precision = 15
      Size = 4
    end
    object SqlItensNFNF_QTDE_VAR7: TFMTBCDField
      FieldName = 'NF_QTDE_VAR7'
      Precision = 15
      Size = 4
    end
    object SqlItensNFNF_QTDE_VAR8: TFMTBCDField
      FieldName = 'NF_QTDE_VAR8'
      Precision = 15
      Size = 4
    end
    object SqlItensNFNF_FLAG_ATUALIZA_ESTOQUE: TStringField
      FieldName = 'NF_FLAG_ATUALIZA_ESTOQUE'
      Size = 1
    end
    object SqlItensNFNF_PRODUTO_AGREGADO: TStringField
      FieldName = 'NF_PRODUTO_AGREGADO'
      Size = 1
    end
    object SqlItensNFNF_HORA: TTimeField
      FieldName = 'NF_HORA'
    end
    object SqlItensNFPRD_UND: TStringField
      FieldName = 'PRD_UND'
      Size = 3
    end
    object SqlItensNFID_CC: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'ID_CC'
      DisplayFormat = '00'
      Calculated = True
    end
    object SqlItensNFPTOTAL_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'PTOTAL_CC'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
  end
end
