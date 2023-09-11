inherited frmPesqCTE: TfrmPesqCTE
  Caption = 'Pesquisa Cte - Nota de conhecimento de transporte'
  ClientHeight = 630
  ClientWidth = 843
  ExplicitWidth = 851
  ExplicitHeight = 657
  DesignSize = (
    843
    630)
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnUtilTop: TPanel
    Width = 843
    ExplicitWidth = 843
    DesignSize = (
      843
      41)
    inherited btnExclui: TSpeedButton
      Left = 0
      Top = 2
      ExplicitLeft = 0
      ExplicitTop = 2
    end
    inherited btnNovo: TSpeedButton
      Left = 176
      Top = 2
      Visible = False
      ExplicitLeft = 176
      ExplicitTop = 2
    end
    inherited btnEdita: TSpeedButton
      Left = 89
      Top = 2
      Visible = False
      ExplicitLeft = 89
      ExplicitTop = 2
    end
    inherited btnFechar: TSpeedButton
      Left = 779
      ExplicitLeft = 779
    end
    inherited btnImprime: TSpeedButton
      Left = 622
      ExplicitLeft = 622
    end
    inherited btnExcel: TSpeedButton
      Left = 701
      ExplicitLeft = 701
    end
  end
  inherited PageControl1: TPageControl
    Width = 843
    Height = 553
    ExplicitWidth = 843
    ExplicitHeight = 553
    inherited tsNotas: TTabSheet
      ExplicitWidth = 835
      ExplicitHeight = 525
      inherited pnControle: TPanel
        Width = 835
        Height = 121
        PopupMenu = PopupMenu1
        ExplicitWidth = 835
        ExplicitHeight = 121
        object Label3: TLabel [0]
          Left = 2
          Top = 18
          Width = 59
          Height = 14
          Alignment = taRightJustify
          Caption = 'Fornecedor:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel [1]
          Left = 7
          Top = 79
          Width = 154
          Height = 13
          Caption = 'Nro.do Conhecimento eletr'#244'nico'
        end
        object Label5: TLabel [2]
          Left = 2
          Top = 46
          Width = 30
          Height = 14
          Alignment = taRightJustify
          Caption = 'CFOP:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        inherited pnFiltro: TPanel
          Left = 728
          Width = 107
          Height = 121
          Align = alRight
          ExplicitLeft = 728
          ExplicitWidth = 107
          ExplicitHeight = 121
          inherited pn1: TPanel
            Top = 0
            Width = 105
            Height = 121
            Align = alLeft
            ExplicitTop = 0
            ExplicitWidth = 105
            ExplicitHeight = 121
            inherited btnPesquisa: TSpeedButton
              Left = 3
              Top = 1
              ExplicitLeft = 3
              ExplicitTop = 1
            end
            inherited btnLimpar: TSpeedButton
              Left = 3
              Top = 22
              ExplicitLeft = 3
              ExplicitTop = 22
            end
            object btnGerarXML: TBitBtn
              Left = 3
              Top = 44
              Width = 85
              Height = 22
              Hint = 'Gera todos xml dos conhecimentos pesquisados'
              Caption = 'Gerar XML'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              OnClick = btnGerarXMLClick
            end
            object btnImportar: TBitBtn
              Left = 3
              Top = 67
              Width = 85
              Height = 22
              Hint = 'Importar xml CTe'
              Caption = 'Importar XML'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              OnClick = btnImportarClick
            end
            object btnDanfe: TBitBtn
              Left = 3
              Top = 90
              Width = 85
              Height = 25
              Cursor = crHandPoint
              Hint = 'Imprimir o CTe do registro atual'
              Caption = 'Dacte'
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000130B0000130B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
                00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
                8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
                8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
                8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
                03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
                03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
                33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
                33333337FFFF7733333333300000033333333337777773333333}
              NumGlyphs = 2
              ParentShowHint = False
              ShowHint = True
              TabOrder = 2
              TabStop = False
              OnClick = btnDanfeClick
            end
          end
        end
        object GbInformePeriodo: TGroupBox
          Left = 312
          Top = 69
          Width = 335
          Height = 44
          Caption = 'Filtrar Emiss'#227'o:'
          TabOrder = 1
          object Label1: TLabel
            Left = 6
            Top = 20
            Width = 60
            Height = 13
            Caption = 'Data Inicial :'
          end
          object Label2: TLabel
            Left = 171
            Top = 20
            Width = 55
            Height = 13
            Caption = 'Data Final :'
          end
          object RxDataInicial: TJvDateEdit
            Left = 68
            Top = 15
            Width = 94
            Height = 21
            Glyph.Data = {
              4E000000424D4E000000000000003E000000280000000A000000040000000100
              010000000000100000000000000000000000020000000200000000000000FFFF
              FF00FFC000003300000033000000FFC00000}
            ImageKind = ikCustom
            ButtonWidth = 16
            PopupColor = clBtnFace
            ShowNullDate = False
            YearDigits = dyFour
            TabOrder = 0
          end
          object RxDataFinal: TJvDateEdit
            Left = 230
            Top = 15
            Width = 89
            Height = 21
            Glyph.Data = {
              4E000000424D4E000000000000003E000000280000000A000000040000000100
              010000000000100000000000000000000000020000000200000000000000FFFF
              FF00FFC000003300000033000000FFC00000}
            ImageKind = ikCustom
            ButtonWidth = 16
            PopupColor = clBtnFace
            ShowNullDate = False
            YearDigits = dyFour
            TabOrder = 1
          end
        end
        object EdForneCodigo: TEdit
          Left = 63
          Top = 15
          Width = 43
          Height = 21
          CharCase = ecUpperCase
          Color = clWhite
          MaxLength = 5
          TabOrder = 2
          OnExit = EdForneCodigoExit
          OnKeyPress = EdForneCodigoKeyPress
        end
        object PesqFornecedor: TSgDbSearchCombo
          Left = 108
          Top = 15
          Width = 336
          Height = 21
          EmptyText = 'TODOS OS FORNECEDORES'
          TabOrder = 3
          CharCase = ecUpperCase
          LookupSelect = 'for_codigo,for_razao, for_bairro, for_cidade'
          LookupOrderBy = 'for_razao'
          LookupTable = 'for0000'
          LookupDispl = 'FOR_RAZAO'
          OnSelect = PesqFornecedorSelect
          GridAutoSize = False
          LookupSource = qAux
          LookupKeyField = 'for_codigo'
          ShowButton = True
          LookupTableShare = 'fornecedores'
          AutoF8WinTitulo = 'Fornecedores'
          AutoF8ColumnsTitulo = 'C'#243'digo, Nome, Bairro, Cidade'
          GridLeft = 0
          GridWidth = 0
          GridHeight = 100
          GridShowWhenEnter = False
          SelectWithDoubleClick = False
        end
        object Edt_lista: TEdit
          Left = 177
          Top = 76
          Width = 80
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 4
          OnKeyPress = Edt_listaKeyPress
        end
        object PesquisaOper: TComboBoxRw
          Left = 38
          Top = 42
          Width = 406
          Height = 21
          Hint = 'CFOP'
          TabOrder = 5
          CharCase = ecUpperCase
          LookupSelect = 'ope_codigo, cfop, OPE_NATUREZA'
          LookupOrderBy = 'ope_descri'
          LookupTable = 'OPE0000_VIEW_PESQUISA'
          LookupDispl = 'CFOP'
          GridAutoSize = False
          LookupSource = PesquisaOper.InternalSource
          LookupKeyField = 'OPE_NATUREZA'
          FiltroTabela = 'OPE_ATIVA='#39'S'#39
          ShowButton = True
          LookupTableShare = 'OPERACAOFISCAL'
          AutoF8WinTitulo = 'Opera'#231#245'es Fiscais - CFOP '
          AutoF8ColumnsTitulo = 'C'#243'digo, Descri'#231#227'o, natureza'
          GridLeft = 0
          GridWidth = 0
          GridHeight = 100
          GridShowWhenEnter = False
          SelectWithDoubleClick = False
          Tabela = 'OPE0000_VIEW_PESQUISA'
          CamposCarregar = 'ope_codigo, cfop, OPE_NATUREZA'
          CamposRetornar = 'OPE_NATUREZA'
          Condicao = 'OPE_ATIVA='#39'S'#39
          CamposOrdernar = 'ope_descri'
          Compartilhar = 'OPERACAOFISCAL'
          Localizado = False
          CodigoEmpresa = 0
          ResetaCampos = True
          MultiEmpresa = True
          Localizar = True
          CarregarCombo = True
          itemindex = 0
          style = csDropDown
        end
      end
      inherited DBGrid: TDBGrid
        Top = 121
        Width = 835
        Height = 404
        Columns = <
          item
            Expanded = False
            FieldName = 'ECTE_NUMERO'
            Title.Caption = 'N'#250'mero Nota'
            Width = 102
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ECTE_EMISSAO'
            Title.Caption = 'Emiss'#227'o'
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ECTE_MODELO_NF'
            Title.Caption = 'Modelo'
            Width = 54
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ECTE_SERIE'
            Title.Caption = 'S'#233'rie'
            Width = 45
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FOR_CODIGO'
            Title.Caption = 'C'#243'd'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FOR_RAZAO'
            Title.Caption = 'Transportadora'
            Width = 260
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OPE_NATUREZA'
            Title.Caption = 'CFOP'
            Width = 47
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OPE_DESCRI'
            Title.Caption = 'Opera'#231#227'o'
            Width = 212
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ECTE_VALOR_PREST'
            Title.Caption = 'Valor prestado'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'pag_codigo'
            Title.Caption = 'C'#243'd. Pagamento'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ECTE_DATAENTRADA'
            Title.Caption = 'Entrada'
            Visible = True
          end>
      end
    end
  end
  inherited Panel2: TPanel
    Top = 594
    Width = 843
    ExplicitTop = 594
    ExplicitWidth = 843
    DesignSize = (
      843
      36)
    inherited btnSelect: TSpeedButton
      Left = 695
      ExplicitLeft = 695
    end
  end
  object Button1: TButton [3]
    Left = 511
    Top = 0
    Width = 105
    Height = 39
    Anchors = [akTop, akRight]
    Caption = 'Relat'#243'rio por CFOP'
    TabOrder = 3
    OnClick = Button1Click
  end
  inherited DBConn: TSQLConnection
    Top = 256
  end
  inherited Timer1: TTimer
    Left = 172
    Top = 232
  end
  inherited qBusco: TSQLQuery
    Left = 236
    Top = 225
  end
  inherited dspBusco: TDataSetProvider
    Left = 316
    Top = 225
  end
  inherited cdsBusco: TClientDataSet
    Left = 364
    Top = 233
    object cdsBuscoECTE_NUMERO: TStringField
      FieldName = 'ECTE_NUMERO'
      Size = 8
    end
    object cdsBuscoECTE_MODELO_NF: TStringField
      FieldName = 'ECTE_MODELO_NF'
      Size = 2
    end
    object cdsBuscoECTE_SERIE: TStringField
      FieldName = 'ECTE_SERIE'
      Size = 3
    end
    object cdsBuscoFOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      Size = 4
    end
    object cdsBuscoFOR_RAZAO: TStringField
      FieldName = 'FOR_RAZAO'
      Size = 4
    end
    object cdsBuscoOPE_DESCRI: TStringField
      FieldName = 'OPE_DESCRI'
      Size = 40
    end
    object cdsBuscoOPE_NATUREZA: TStringField
      FieldName = 'OPE_NATUREZA'
      Size = 4
    end
    object cdsBuscoECTE_VALOR_PREST: TFMTBCDField
      FieldName = 'ECTE_VALOR_PREST'
      Precision = 15
      Size = 2
    end
    object cdsBuscoECTE_EMISSAO: TSQLTimeStampField
      FieldName = 'ECTE_EMISSAO'
    end
    object cdsBuscoECTE_XML: TBlobField
      FieldName = 'ECTE_XML'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsBuscopag_codigo: TStringField
      FieldName = 'pag_codigo'
      Size = 15
    end
    object cdsBuscoECTE_REGISTRO: TIntegerField
      FieldName = 'ECTE_REGISTRO'
    end
    object cdsBuscoPAG_REGISTRO: TIntegerField
      FieldName = 'PAG_REGISTRO'
    end
    object cdsBuscoECTE_DATAENTRADA: TSQLTimeStampField
      FieldName = 'ECTE_DATAENTRADA'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object cdsBuscoECTE_VL_ICMS: TFMTBCDField
      FieldName = 'ECTE_VL_ICMS'
      Size = 0
    end
    object cdsBuscoECTE_BASEICMS: TFMTBCDField
      FieldName = 'ECTE_BASEICMS'
      Size = 0
    end
    object cdsBuscoCCT_DESCRI: TStringField
      FieldName = 'CCT_DESCRI'
      Size = 80
    end
  end
  object ACBrCTe1: TACBrCTe
    Configuracoes.Geral.SSLLib = libNone
    Configuracoes.Geral.SSLCryptLib = cryNone
    Configuracoes.Geral.SSLHttpLib = httpNone
    Configuracoes.Geral.SSLXmlSignLib = xsNone
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Arquivos.OrdenacaoPath = <>
    Configuracoes.WebServices.UF = 'SP'
    Configuracoes.WebServices.AguardarConsultaRet = 0
    Configuracoes.WebServices.QuebradeLinha = '|'
    Configuracoes.RespTec.IdCSRT = 0
    DACTE = ACBrCTeDACTeRL1
    Left = 240
    Top = 352
  end
  object ACBrCTeDACTeRL1: TACBrCTeDACTeRL
    Sistema = 'Novi Sistemas'
    MargemInferior = 8.000000000000000000
    MargemSuperior = 8.000000000000000000
    MargemEsquerda = 6.000000000000000000
    MargemDireita = 5.100000000000000000
    ExpandeLogoMarcaConfig.Altura = 0
    ExpandeLogoMarcaConfig.Esquerda = 0
    ExpandeLogoMarcaConfig.Topo = 0
    ExpandeLogoMarcaConfig.Largura = 0
    ExpandeLogoMarcaConfig.Dimensionar = False
    ExpandeLogoMarcaConfig.Esticar = True
    CasasDecimais.Formato = tdetInteger
    CasasDecimais.qCom = 2
    CasasDecimais.vUnCom = 2
    CasasDecimais.MaskqCom = ',0.00'
    CasasDecimais.MaskvUnCom = ',0.00'
    ACBrCTE = ACBrCTe1
    ImprimirHoraSaida = False
    TipoDACTE = tiSemGeracao
    TamanhoPapel = tpA4
    Cancelada = False
    ExibeResumoCanhoto = False
    EPECEnviado = False
    ImprimeDescPorc = False
    PrintDialog = True
    Left = 352
    Top = 360
  end
  object JvSelectDirectory1: TJvSelectDirectory
    Left = 352
    Top = 294
  end
  object PopupMenu1: TPopupMenu
    Left = 504
    Top = 408
    object teste1: TMenuItem
      Caption = 'teste'
    end
  end
  object frxCFOP: TfrxReport
    Version = '5.3.16'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39673.350806747700000000
    ReportOptions.LastChange = 41423.716060937500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnGetValue = frxCFOPGetValue
    Left = 695
    Top = 376
    Datasets = <
      item
        DataSet = frxDBBusco
        DataSetName = 'frxDBBusco'
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
      PaperSize = 256
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 200.315090000000000000
        Width = 1046.929810000000000000
        DataSet = frxDBBusco
        DataSetName = 'frxDBBusco'
        RowCount = 0
        object frxDBDataset1ENF_IT_NOTANUMBER: TfrxMemoView
          Left = 196.535560000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBBusco."ECTE_NUMERO"]')
          ParentFont = False
        end
        object frxDBDataset1FOR_RAZAO: TfrxMemoView
          Left = 264.567100000000000000
          Width = 374.173470000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBBusco."FOR_RAZAO"]')
          ParentFont = False
          WordWrap = False
        end
        object frxDBCFOPENF_EMISSAO: TfrxMemoView
          Left = 60.472480000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBBusco."ECTE_EMISSAO"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 128.504020000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBBusco."ECTE_DATAENTRADA"]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 770.024120000000000000
          Width = 102.047261180000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBBusco."ECTE_VALOR_PREST"]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 873.071430000000000000
          Width = 79.370081180000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBBusco."ECTE_BASEICMS"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 953.441560000000000000
          Width = 90.708671180000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBBusco."ECTE_VL_ICMS"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 637.961040000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBBusco."CCT_DESCRI"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 79.370130000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object SysMemo1: TfrxSysMemoView
          Left = 952.441560000000000000
          Top = 22.677180000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[PAGE#] de [TOTALPAGES#]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Top = 22.677180000000000000
          Width = 468.661720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'RELAT'#211'RIO DE ENTRADA DE CTES AGRUPADAS POR CFOP')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 60.472480000000000000
          Width = 1050.709340000000000000
          Color = clBlack
          Diagonal = True
        end
        object SysMemo4: TfrxSysMemoView
          Left = 952.441560000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DATE]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Width = 468.661720000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[EMPRESA]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Top = 41.574830000000000000
          Width = 623.622450000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'FILTRO')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 857.953310000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'EMISS'#195'O:')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 857.953310000000000000
          Top = 22.677180000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#193'GINA:')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Top = 60.472480000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'CFOP')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 196.535560000000000000
          Top = 60.472480000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'CTE')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 264.567100000000000000
          Top = 60.472480000000000000
          Width = 374.173470000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'FORNECEDOR')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 770.024120000000000000
          Top = 60.472480000000000000
          Width = 102.047261180000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'VALOR DO FRETE')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 60.472480000000000000
          Top = 60.472480000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'EMISS'#195'O')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 128.504020000000000000
          Top = 60.472480000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'ENTRADA')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 873.071430000000000000
          Top = 60.472480000000000000
          Width = 79.370081180000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'ICMS BASE')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 953.441560000000000000
          Top = 60.472480000000000000
          Width = 90.708671180000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'VALOR DO ICMS')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 637.961040000000000000
          Top = 60.472480000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'CONTA CONT'#193'BIL')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 158.740260000000000000
        Width = 1046.929810000000000000
        Condition = '<frxDBBusco."OPE_NATUREZA">'
        KeepTogether = True
        object frxDBDataset1ENF_CFOP: TfrxMemoView
          Left = 64.252010000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBBusco."OPE_NATUREZA"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 18.897650000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'CFOP:')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 18.897650000000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Style = fsDot
          Diagonal = True
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 241.889920000000000000
        Width = 1046.929810000000000000
        object Memo14: TfrxMemoView
          Left = 632.961040000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'TOTAL DA CFOP:')
          ParentFont = False
        end
        object SysMemo9: TfrxSysMemoView
          Left = 770.024120000000000000
          Width = 102.047261180000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBBusco."ECTE_VALOR_PREST">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo13: TfrxSysMemoView
          Left = 873.071430000000000000
          Width = 79.370081180000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBBusco."ECTE_BASEICMS">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo14: TfrxSysMemoView
          Left = 953.441560000000000000
          Width = 90.708671180000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBBusco."ECTE_VL_ICMS">,MasterData1)]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 283.464750000000000000
        Width = 1046.929810000000000000
        object Memo10: TfrxMemoView
          Left = 674.535870000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'TOTAL GERAL:')
          ParentFont = False
        end
        object Line4: TfrxLineView
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Style = fsDot
          Diagonal = True
        end
        object SysMemo12: TfrxSysMemoView
          Left = 770.024120000000000000
          Width = 102.047261180000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBBusco."ECTE_VALOR_PREST">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo15: TfrxSysMemoView
          Left = 873.071430000000000000
          Width = 79.370081180000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBBusco."ECTE_BASEICMS">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo16: TfrxSysMemoView
          Left = 953.441560000000000000
          Width = 90.708671180000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBBusco."ECTE_VL_ICMS">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBBusco: TfrxDBDataset
    UserName = 'frxDBBusco'
    CloseDataSource = False
    DataSet = cdsBusco
    BCDToCurrency = False
    Left = 408
    Top = 240
  end
end
