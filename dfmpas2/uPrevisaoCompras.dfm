inherited FrmPrevisaoCompras: TFrmPrevisaoCompras
  Caption = 'FrmPrevisaoCompras'
  ClientWidth = 1286
  ExplicitWidth = 1302
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgc1: TPageControl
    Width = 1286
    ExplicitWidth = 1286
    inherited tsNotas: TTabSheet
      ExplicitWidth = 1278
      inherited pnlControle: TPanel
        Width = 1278
        Visible = False
        ExplicitWidth = 1278
        inherited pnlFiltro: TPanel
          Width = 1278
          ExplicitWidth = 1278
          inherited pnlpn1: TPanel
            Width = 1278
            Visible = False
            ExplicitWidth = 1278
            inherited btnPesquisa: TSpeedButton
              Left = 1185
              ExplicitLeft = 877
            end
            inherited btnLimpar: TSpeedButton
              Left = 1185
              ExplicitLeft = 877
            end
          end
        end
      end
      inherited cxgrd1: TcxGrid
        Width = 1278
        LookAndFeel.Kind = lfStandard
        LookAndFeel.NativeStyle = False
        LookAndFeel.ScrollbarMode = sbmClassic
        ExplicitWidth = 1278
        inherited cxgrd1DBTableView1: TcxGridDBTableView
          DataController.DataSource = dsSumarizado
          DataController.Summary.FooterSummaryItems = <
            item
              Format = 'Valor total : ###,###.00'
              Kind = skSum
              FieldName = 'ValorTotal'
              Column = cxgrd1DBTableView1ValorTotal
            end
            item
              Format = 'Valor a comprar :###,###.00'
              Kind = skSum
              FieldName = 'ValorComprar'
              Column = cxgrd1DBTableView1ValorComprar
            end>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          object cxgrd1DBTableView1PRD_CODIGO: TcxGridDBColumn
            DataBinding.FieldName = 'PRD_CODIGO'
            Visible = False
            VisibleForCustomization = False
          end
          object cxgrd1DBTableView1PRD_REFER: TcxGridDBColumn
            Caption = 'Refer'#234'ncia'
            DataBinding.FieldName = 'PRD_REFER'
          end
          object cxgrd1DBTableView1PRD_DESCRI: TcxGridDBColumn
            Caption = 'Mat'#233'ria-prima'
            DataBinding.FieldName = 'PRD_DESCRI'
            Width = 156
          end
          object cxgrd1DBTableView1PRD_UND: TcxGridDBColumn
            Caption = 'Und'
            DataBinding.FieldName = 'PRD_UND'
          end
          object cxgrd1DBTableView1Demanda: TcxGridDBColumn
            Caption = 'Demanda/Consumo'
            DataBinding.FieldName = 'Demanda'
            Width = 117
          end
          object cxgrd1DBTableView1ESTOQUEDISPONIVEL: TcxGridDBColumn
            Caption = 'Estoque disponivel'
            DataBinding.FieldName = 'ESTOQUEDISPONIVEL'
            Styles.OnGetContentStyle = cxgrd1DBTableView1ESTOQUEDISPONIVELStylesGetContentStyle
          end
          object cxgrd1DBTableView1PRD_PCUSTO: TcxGridDBColumn
            Caption = 'Custo unit'#225'rio'
            DataBinding.FieldName = 'PRD_PCUSTO'
          end
          object cxgrd1DBTableView1ValorTotal: TcxGridDBColumn
            Caption = 'Valor total'
            DataBinding.FieldName = 'ValorTotal'
            Width = 140
          end
          object cxgrd1DBTableView1EstoqueMinimo: TcxGridDBColumn
            Caption = 'Estoque minimo'
            DataBinding.FieldName = 'EstoqueMinimo'
          end
          object cxgrd1DBTableView1QuantComprar: TcxGridDBColumn
            Caption = 'Qtde Comprar'
            DataBinding.FieldName = 'QuantComprar'
            Width = 84
          end
          object cxgrd1DBTableView1ValorComprar: TcxGridDBColumn
            Caption = 'Valor a Comprar'
            DataBinding.FieldName = 'ValorComprar'
            Width = 151
          end
          object cxgrd1DBTableView1TIPO: TcxGridDBColumn
            Caption = 'Tipo'
            DataBinding.FieldName = 'TIPO'
          end
        end
        object cxgrd1DBTableView2: TcxGridDBTableView [1]
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsPrevisao
          DataController.DetailKeyFieldNames = 'PRD_CODIGO'
          DataController.KeyFieldNames = 'PRD_CODIGO'
          DataController.MasterKeyFieldNames = 'PRD_CODIGO'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.GroupByBox = False
          object cxgrd1DBTableView2PED_CODIGO: TcxGridDBColumn
            Caption = 'Pedido'
            DataBinding.FieldName = 'PED_CODIGO'
          end
          object cxgrd1DBTableView2PED_DTENTRADA: TcxGridDBColumn
            Caption = 'Entrada'
            DataBinding.FieldName = 'PED_DTENTRADA'
            Width = 69
          end
          object cxgrd1DBTableView2DTENTREGA: TcxGridDBColumn
            Caption = 'Entrega'
            DataBinding.FieldName = 'DTENTREGA'
            Width = 68
          end
          object cxgrd1DBTableView2Prd_codigoPrincipal: TcxGridDBColumn
            DataBinding.FieldName = 'Prd_codigoPrincipal'
            Visible = False
            VisibleForCustomization = False
          end
          object cxgrd1DBTableView2PRD_ReferPrincipal: TcxGridDBColumn
            Caption = 'Refer'#234'ncia'
            DataBinding.FieldName = 'PRD_ReferPrincipal'
            Width = 101
          end
          object cxgrd1DBTableView2PRD_DescriPrincipal: TcxGridDBColumn
            Caption = 'Descri'#231#227'o'
            DataBinding.FieldName = 'PRD_DescriPrincipal'
            Width = 363
          end
          object cxgrd1DBTableView2Prd_UndPrincipal: TcxGridDBColumn
            Caption = 'UND'
            DataBinding.FieldName = 'Prd_UndPrincipal'
          end
          object cxgrd1DBTableView2QuantPrincipal: TcxGridDBColumn
            Caption = 'Quantidade'
            DataBinding.FieldName = 'QuantPrincipal'
          end
          object cxgrd1DBTableView2CLI_CODIGO: TcxGridDBColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'CLI_CODIGO'
            Visible = False
            Width = 47
          end
          object cxgrd1DBTableView2CLI_RAZAO: TcxGridDBColumn
            Caption = 'Cliente'
            DataBinding.FieldName = 'CLI_RAZAO'
            Width = 258
          end
          object cxgrd1DBTableView2PRD_CODIGO: TcxGridDBColumn
            DataBinding.FieldName = 'PRD_CODIGO'
            Visible = False
            VisibleForCustomization = False
          end
          object cxgrd1DBTableView2PRD_REFER: TcxGridDBColumn
            DataBinding.FieldName = 'PRD_REFER'
            Visible = False
            VisibleForCustomization = False
          end
          object cxgrd1DBTableView2PRD_DESCRI: TcxGridDBColumn
            DataBinding.FieldName = 'PRD_DESCRI'
            Visible = False
            VisibleForCustomization = False
          end
          object cxgrd1DBTableView2PRD_UND: TcxGridDBColumn
            DataBinding.FieldName = 'PRD_UND'
            Visible = False
            VisibleForCustomization = False
          end
        end
        inherited cxgrdlvlGrid1Level1: TcxGridLevel
          object cxgrd1Level1: TcxGridLevel
            GridView = cxgrd1DBTableView2
          end
        end
      end
    end
  end
  inherited pnl1: TPanel
    Width = 1286
    Visible = False
    ExplicitWidth = 1286
    inherited btnSelect: TSpeedButton
      Left = 1214
      ExplicitLeft = 830
    end
  end
  inherited pnlUtilTop: TPanel
    Width = 1286
    ExplicitWidth = 1286
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
      Left = 1298
      ExplicitLeft = 914
    end
    inherited btnMP_Expotar: TJvArrowButton
      Left = 1189
      Top = 2
      ExplicitLeft = 1189
      ExplicitTop = 2
    end
    inherited btnrelatorios: TJvArrowButton
      Left = 1088
      Top = 2
      DropDown = pmImpressao
      ExplicitLeft = 1088
      ExplicitTop = 2
    end
  end
  object cbSemEstoque: TCheckBox [3]
    Left = 77
    Top = 43
    Width = 132
    Height = 17
    Caption = 'Apenas Sem Estoque'
    Checked = True
    State = cbChecked
    TabOrder = 3
    OnClick = cbSemEstoqueClick
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Top = 64
  end
  inherited qAux: TFDQuery
    Top = 72
  end
  inherited qAux2: TFDQuery
    Top = 87
  end
  inherited qAux3: TFDQuery
    Left = 347
    Top = 79
  end
  inherited qAux4: TFDQuery
    Top = 71
  end
  inherited FDStoredProc1: TFDStoredProc
    Left = 168
    Top = 64
  end
  inherited frxPadrao: TfrxReport
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object cdsPrevisao: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <
      item
        Name = 'cdsPrevisaoIndex1'
        Fields = 'prd_codigo;ped_codigo'
      end>
    IndexName = 'cdsPrevisaoIndex1'
    Params = <>
    StoreDefs = True
    Left = 484
    Top = 169
    object cdsPrevisaoPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
    end
    object cdsPrevisaoPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Origin = 'PRD_REFER'
      ProviderFlags = []
    end
    object cdsPrevisaoPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Origin = 'PRD_DESCRI'
      ProviderFlags = []
      Size = 100
    end
    object cdsPrevisaoPRD_UND: TStringField
      FieldName = 'PRD_UND'
      Origin = 'PRD_UND'
      Size = 6
    end
    object cdsPrevisaoPRD_PCUSTO: TFMTBCDField
      FieldName = 'PRD_PCUSTO'
      Precision = 15
    end
    object cdsPrevisaoESTOQUEDISPONIVEL: TFMTBCDField
      FieldName = 'ESTOQUEDISPONIVEL'
      Origin = 'ESTOQUEDISPONIVEL'
      ProviderFlags = []
      DisplayFormat = '#,###0.000'
      Precision = 18
      Size = 5
    end
    object cdsPrevisaoEstoqueMinimo: TFMTBCDField
      FieldName = 'EstoqueMinimo'
      Precision = 15
    end
    object cdsPrevisaoDemanda: TFMTBCDField
      FieldName = 'Demanda'
      Precision = 15
    end
    object cdsPrevisaoPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Origin = 'PED_CODIGO'
      ProviderFlags = []
      Size = 7
    end
    object cdsPrevisaoPED_DTENTRADA: TSQLTimeStampField
      FieldName = 'PED_DTENTRADA'
      Origin = 'PED_DTENTRADA'
      ProviderFlags = []
      DisplayFormat = 'dd/mm/yyyy'
    end
    object cdsPrevisaoDTENTREGA: TSQLTimeStampField
      FieldName = 'DTENTREGA'
    end
    object cdsPrevisaoCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Origin = 'CLI_CODIGO'
      ProviderFlags = []
      Size = 5
    end
    object cdsPrevisaoCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Origin = 'CLI_RAZAO'
      ProviderFlags = []
      Size = 70
    end
    object cdsPrevisaoPrd_codigoPrincipal: TStringField
      FieldName = 'Prd_codigoPrincipal'
    end
    object cdsPrevisaoPRD_ReferPrincipal: TStringField
      FieldName = 'PRD_ReferPrincipal'
    end
    object cdsPrevisaoPrd_UndPrincipal: TStringField
      FieldName = 'Prd_UndPrincipal'
      Size = 6
    end
    object cdsPrevisaoQuantPrincipal: TFMTBCDField
      FieldName = 'QuantPrincipal'
      Size = 0
    end
    object cdsPrevisaoPRD_DescriPrincipal: TStringField
      FieldName = 'PRD_DescriPrincipal'
      Size = 100
    end
    object cdsPrevisaotipo: TStringField
      FieldName = 'tipo'
    end
  end
  object cdsSumarizado: TClientDataSet
    Aggregates = <>
    Params = <>
    OnCalcFields = cdsSumarizadoCalcFields
    Left = 548
    Top = 273
    object cdsSumarizadoPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
    end
    object cdsSumarizadoPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Origin = 'PRD_REFER'
      ProviderFlags = []
    end
    object cdsSumarizadoPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Origin = 'PRD_DESCRI'
      ProviderFlags = []
      Size = 100
    end
    object cdsSumarizadoPRD_UND: TStringField
      FieldName = 'PRD_UND'
      Origin = 'PRD_UND'
      Size = 6
    end
    object cdsSumarizadoESTOQUEDISPONIVEL: TFMTBCDField
      FieldName = 'ESTOQUEDISPONIVEL'
      Origin = 'ESTOQUEDISPONIVEL'
      ProviderFlags = []
      DisplayFormat = '#,###0.000'
      Precision = 18
      Size = 5
    end
    object cdsSumarizadoPRD_PCUSTO: TFMTBCDField
      FieldName = 'PRD_PCUSTO'
      Precision = 15
    end
    object cdsSumarizadoEstoqueMinimo: TFMTBCDField
      FieldName = 'EstoqueMinimo'
      Precision = 15
    end
    object cdsSumarizadoDemanda: TFMTBCDField
      FieldName = 'Demanda'
      Precision = 15
    end
    object cdsSumarizadoValorTotal: TFMTBCDField
      FieldKind = fkCalculated
      FieldName = 'ValorTotal'
      Precision = 15
      Calculated = True
    end
    object cdsSumarizadoQuantComprar: TFMTBCDField
      FieldKind = fkCalculated
      FieldName = 'QuantComprar'
      Size = 0
      Calculated = True
    end
    object cdsSumarizadoValorComprar: TFMTBCDField
      FieldKind = fkCalculated
      FieldName = 'ValorComprar'
      Size = 0
      Calculated = True
    end
    object cdsSumarizadoTIPO: TStringField
      FieldName = 'TIPO'
    end
  end
  object dsSumarizado: TDataSource
    DataSet = cdsSumarizado
    Left = 612
    Top = 273
  end
  object dsPrevisao: TDataSource
    DataSet = cdsPrevisao
    Left = 556
    Top = 169
  end
  object pmImpressao: TPopupMenu
    Left = 756
    Top = 81
    object ListadeMatriaprima1: TMenuItem
      Caption = 'Lista de Mat'#233'ria-prima'
      OnClick = ListadeMatriaprima1Click
    end
    object RelatrioAnaltico1: TMenuItem
      Caption = 'Relat'#243'rio Anal'#237'tico'
      OnClick = RelatrioAnaltico1Click
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 520
    Top = 8
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clRed
      TextColor = clWhite
    end
  end
  object frxLRelatorios: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43878.496829479200000000
    ReportOptions.LastChange = 43978.798504988400000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    OnGetValue = frxLRelatoriosGetValue
    Left = 734
    Top = 200
    Datasets = <
      item
        DataSet = frxDBPrevisao
        DataSetName = 'Previsao'
      end
      item
        DataSet = frxDBSumarizado
        DataSetName = 'Sumarizado'
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
      Frame.Typ = []
      MirrorMode = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 18.971242730000000000
        ParentFont = False
        Top = 226.771800000000000000
        Width = 1046.929810000000000000
        DataSet = frxDBSumarizado
        DataSetName = 'Sumarizado'
        RowCount = 0
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 537.441558180000000000
          Top = 1.944031819999990000
          Width = 44.538342730000000000
          Height = 15.118120000000000000
          DataField = 'PRD_UND'
          DataSet = frxDBSumarizado
          DataSetName = 'Sumarizado'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Sumarizado."PRD_UND"]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 3.887753640000000000
          Top = 2.164501820000000000
          Width = 80.515460910000000000
          Height = 15.118120000000000000
          DataField = 'PRD_REFER'
          DataSet = frxDBSumarizado
          DataSetName = 'Sumarizado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Sumarizado."PRD_REFER"]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 590.410636370000000000
          Top = 1.944031819999990000
          Width = 64.631416360000000000
          Height = 15.118120000000000000
          OnBeforePrint = 'Memo30OnBeforePrint'
          DataField = 'ESTOQUEDISPONIVEL'
          DataSet = frxDBSumarizado
          DataSetName = 'Sumarizado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Sumarizado."ESTOQUEDISPONIVEL"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 973.259121820000000000
          Top = 2.944031819999990000
          Width = 72.190476360000000000
          Height = 15.118120000000000000
          DataField = 'ValorComprar'
          DataSet = frxDBSumarizado
          DataSetName = 'Sumarizado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Sumarizado."ValorComprar"]')
          ParentFont = False
          Formats = <
            item
              DecimalSeparator = ','
              FormatStr = '%2.2n'
              Kind = fkNumeric
            end
            item
            end>
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 92.488250000000000000
          Top = 1.779529999999990000
          Width = 439.570810910000000000
          Height = 15.118120000000000000
          DataField = 'PRD_DESCRI'
          DataSet = frxDBSumarizado
          DataSetName = 'Sumarizado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Sumarizado."PRD_DESCRI"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 659.756340000000000000
          Top = 2.000000000000000000
          Width = 87.308596360000000000
          Height = 15.118120000000000000
          OnBeforePrint = 'Memo30OnBeforePrint'
          DataField = 'EstoqueMinimo'
          DataSet = frxDBSumarizado
          DataSetName = 'Sumarizado'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Sumarizado."EstoqueMinimo"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 750.685530000000000000
          Top = 3.000000000000000000
          Width = 68.410946360000000000
          Height = 15.118120000000000000
          OnBeforePrint = 'Memo30OnBeforePrint'
          DataField = 'Demanda'
          DataSet = frxDBSumarizado
          DataSetName = 'Sumarizado'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Sumarizado."Demanda"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 823.055660000000000000
          Top = 2.779529999999990000
          Width = 68.410946360000000000
          Height = 15.118120000000000000
          OnBeforePrint = 'Memo30OnBeforePrint'
          DataField = 'PRD_PCUSTO'
          DataSet = frxDBSumarizado
          DataSetName = 'Sumarizado'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Sumarizado."PRD_PCUSTO"]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 894.866730000000000000
          Top = 3.000000000000000000
          Width = 75.970006360000000000
          Height = 15.118120000000000000
          DataField = 'QuantComprar'
          DataSet = frxDBSumarizado
          DataSetName = 'Sumarizado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Sumarizado."QuantComprar"]')
          ParentFont = False
          Formats = <
            item
              DecimalSeparator = ','
              FormatStr = '%2.2n'
              Kind = fkNumeric
            end
            item
            end>
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 98.826840000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 2.727272730000000000
          Top = 75.632034550000000000
          Width = 67.022263640000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Refer'#234'ncia')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 87.704390910000000000
          Top = 75.632034550000000000
          Width = 448.375387270000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Mat'#233'ria-prima')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 544.992888180000000000
          Top = 75.632034550000000000
          Width = 39.706555450000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Und')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 600.868274550000000000
          Top = 75.632034550000000000
          Width = 56.399505450000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Estoque')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 755.213358180000000000
          Top = 75.632034550000000000
          Width = 67.215522730000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Consumo')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 662.085033640000000000
          Top = 75.632034550000000000
          Width = 88.074520910000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Estoque Minimo')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 824.859616370000000000
          Top = 75.852504550000000000
          Width = 72.190476360000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Custo compra')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 970.297773640000000000
          Top = 75.632034550000000000
          Width = 79.749536360000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Valor comprar')
          ParentFont = False
        end
        object mtitulo: TfrxMemoView
          AllowVectorExport = True
          Left = 0.454545450000000000
          Top = 19.129560910000000000
          Width = 578.268090000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Relat'#243'rio ')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 0.454545450000000000
          Top = 0.231910910000000000
          Width = 578.268090000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[RAZAO]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 902.541745450000000000
          Top = 0.231910910000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Date] '#224's [Time]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 902.541745450002000000
          Top = 19.129560909999900000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#] de [TotalPages#]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 0.015770000000000000
          Top = 95.047310000000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Top = 71.811070000000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 899.866730000000000000
          Top = 75.590600000000000000
          Width = 72.190476360000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Quantidade')
          ParentFont = False
        end
      end
      object analitico: TfrxDetailData
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 359.055350000000000000
        Width = 1046.929810000000000000
        DataSet = frxDBPrevisao
        DataSetName = 'Previsao'
        Filter = '<Previsao."PRD_CODIGO">=<Sumarizado."PRD_CODIGO">'
        RowCount = 0
        object PrevisaoPED_CODIGO: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 1.000000000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataField = 'PED_CODIGO'
          DataSet = frxDBPrevisao
          DataSetName = 'Previsao'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Previsao."PED_CODIGO"]')
        end
        object PrevisaoPED_DTENTRADA: TfrxMemoView
          AllowVectorExport = True
          Left = 87.708720000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'PED_DTENTRADA'
          DataSet = frxDBPrevisao
          DataSetName = 'Previsao'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Previsao."PED_DTENTRADA"]')
        end
        object PrevisaoDTENTREGA: TfrxMemoView
          AllowVectorExport = True
          Left = 188.976500000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataField = 'DTENTREGA'
          DataSet = frxDBPrevisao
          DataSetName = 'Previsao'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Previsao."DTENTREGA"]')
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 294.803340000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataSet = frxDBPrevisao
          DataSetName = 'Previsao'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Previsao."PRD_ReferPrincipal"]')
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 404.409710000000000000
          Width = 317.480520000000000000
          Height = 18.897650000000000000
          DataSet = frxDBPrevisao
          DataSetName = 'Previsao'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Previsao."PRD_DESCRI"]')
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 805.039890000000000000
          Width = 234.330860000000000000
          Height = 18.897650000000000000
          DataSet = frxDBPrevisao
          DataSetName = 'Previsao'
          Frame.Typ = []
          Memo.UTF8W = (
            '[Previsao."CLI_RAZAO"]')
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 725.669760000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataField = 'QuantPrincipal'
          DataSet = frxDBPrevisao
          DataSetName = 'Previsao'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          Memo.UTF8W = (
            '[Previsao."QuantPrincipal"]')
        end
      end
      object cabanalitico: TfrxHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 313.700990000000000000
        Width = 1046.929810000000000000
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 14.443984620000000000
          Top = 3.779530000000000000
          Width = 63.961276920000000000
          Height = 14.536653850000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Pedido')
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 88.929190000000000000
          Top = 3.779529999999990000
          Width = 94.197516920000000000
          Height = 14.536653850000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Data Entrada')
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 188.976500000000000000
          Top = 3.779529999999990000
          Width = 94.197516920000000000
          Height = 14.536653850000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Data Entrega')
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 294.803340000000000000
          Top = 3.779529999999990000
          Width = 94.197516920000000000
          Height = 14.536653850000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Refer'#234'ncia')
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 404.409710000000000000
          Top = 3.779529999999990000
          Width = 94.197516920000000000
          Height = 14.536653850000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Produto')
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 810.260360000000000000
          Top = 3.779529999999990000
          Width = 94.197516920000000000
          Height = 14.536653850000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Cliente')
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 725.669760000000000000
          Top = 3.779529999999990000
          Width = 75.299866920000000000
          Height = 14.536653850000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Quantidade')
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 442.205010000000000000
        Width = 1046.929810000000000000
        object SysMemo2: TfrxSysMemoView
          AllowVectorExport = True
          Left = 919.174088180000000000
          Top = 4.000000000000000000
          Width = 126.328850000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<Sumarizado."ValorComprar">,MasterData1)]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 857.696970000000000000
          Top = 4.000000000000000000
          Width = 45.927025450000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Total :')
          ParentFont = False
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Left = 1.559060000000000000
          Top = 0.779530000000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 177.637910000000000000
        Visible = False
        Width = 1046.929810000000000000
        Condition = 'Sumarizado."TIPO"'
        KeepTogether = True
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 2.000000000000000000
          Top = 2.000000000000000000
          Width = 196.535560000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Tipo: [Sumarizado."TIPO"]')
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Left = 0.015770000000000000
          Top = 23.236240000000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line5: TfrxLineView
          AllowVectorExport = True
          Left = 0.015770000000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 268.346630000000000000
        Width = 1046.929810000000000000
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 917.615028180000000000
          Top = 3.220470000000000000
          Width = 126.328850000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<Sumarizado."ValorComprar">,MasterData1)]')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 856.137910000000000000
          Top = 3.220470000000000000
          Width = 45.927025450000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Total :')
          ParentFont = False
        end
        object Line6: TfrxLineView
          AllowVectorExport = True
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
      end
    end
  end
  object frxDBPrevisao: TfrxDBDataset
    UserName = 'Previsao'
    CloseDataSource = False
    DataSource = dsPrevisao
    BCDToCurrency = False
    Left = 676
    Top = 177
  end
  object frxDBSumarizado: TfrxDBDataset
    UserName = 'Sumarizado'
    CloseDataSource = False
    DataSource = dsSumarizado
    BCDToCurrency = False
    Left = 812
    Top = 217
  end
end
