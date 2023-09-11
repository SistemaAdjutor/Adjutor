object RelatorioInventarioCiclicoForm: TRelatorioInventarioCiclicoForm
  Left = 546
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Relat'#243'rio do Invent'#225'rio Ciclico.'
  ClientHeight = 316
  ClientWidth = 450
  Color = clBtnFace
  Constraints.MinHeight = 343
  Constraints.MinWidth = 458
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object grpEmpresa: TGroupBox
    Left = 0
    Top = 0
    Width = 450
    Height = 113
    Align = alTop
    Caption = 'Empresas'
    TabOrder = 0
    object lstEmpresa: TJvCheckListBox
      Left = 2
      Top = 16
      Width = 446
      Height = 95
      Align = alClient
      DoubleBuffered = False
      ItemHeight = 14
      Items.Strings = (
        'Empresa 1')
      ParentDoubleBuffered = False
      ScrollWidth = 69
      TabOrder = 0
      MultiSelect = True
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 113
    Width = 450
    Height = 152
    Align = alTop
    Caption = 'Op'#231#245'es'
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 38
      Width = 51
      Height = 14
      Caption = 'Data Inicial'
    end
    object Label5: TLabel
      Left = 9
      Top = 87
      Width = 64
      Height = 14
      Caption = 'Almoxarifado'
    end
    object Label2: TLabel
      Left = 168
      Top = 38
      Width = 47
      Height = 14
      Caption = 'Data Final'
    end
    object cxDateInicial: TcxDateEdit
      Left = 8
      Top = 54
      EditValue = 0d
      Style.LookAndFeel.Kind = lfStandard
      StyleDisabled.LookAndFeel.Kind = lfStandard
      StyleFocused.LookAndFeel.Kind = lfStandard
      StyleHot.LookAndFeel.Kind = lfStandard
      TabOrder = 0
      Width = 132
    end
    object CbAlmoxarifado: TcxLookupComboBox
      Left = 8
      Top = 103
      Properties.KeyFieldNames = 'AMX_CODIGO'
      Properties.ListColumns = <
        item
          Caption = 'C'#243'digo'
          FieldName = 'AMX_CODIGO'
        end
        item
          Caption = 'Descri'#231#227'o'
          FieldName = 'AMX_DESCRI'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListSource = DsAlmoxarifado
      EditValue = ''
      Style.LookAndFeel.Kind = lfStandard
      StyleDisabled.LookAndFeel.Kind = lfStandard
      StyleFocused.LookAndFeel.Kind = lfStandard
      StyleHot.LookAndFeel.Kind = lfStandard
      TabOrder = 2
      OnExit = CbAlmoxarifadoExit
      Width = 428
    end
    object cxDateEdit1: TcxDateEdit
      Left = 168
      Top = 52
      Style.LookAndFeel.Kind = lfStandard
      StyleDisabled.LookAndFeel.Kind = lfStandard
      StyleFocused.LookAndFeel.Kind = lfStandard
      StyleHot.LookAndFeel.Kind = lfStandard
      TabOrder = 1
      Width = 132
    end
  end
  object cxButton3: TcxButton
    Left = 230
    Top = 277
    Width = 100
    Height = 25
    Caption = '&Impress'#227'o'
    Colors.Normal = clWhite
    Colors.Pressed = clSilver
    LookAndFeel.Kind = lfUltraFlat
    TabOrder = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = cxButton3Click
  end
  object cxButton2: TcxButton
    Left = 334
    Top = 277
    Width = 100
    Height = 25
    Caption = '&Sair'
    Colors.Normal = clWhite
    Colors.Pressed = clSilver
    LookAndFeel.Kind = lfUltraFlat
    TabOrder = 3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = cxButton2Click
  end
  object frxReport1: TfrxReport
    Version = '5.3.16'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41428.664459826400000000
    ReportOptions.LastChange = 41428.715100717590000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var'
      '       sTipo:String;                                     '
      ''
      ''
      'procedure GroupHeader2OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      '       if (<frxDBDataset1."KAR_ENTRADA_SAIDA"> = '#39'E'#39') then'
      '               sTipo := '#39'ENTRADA'#39
      '       else'
      
        '               sTipo := '#39'SA'#205'DA'#39';                                ' +
        '                    '
      'end;'
      ''
      'procedure GroupHeader1OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      '       if (<frxDBDataset1."KAR_ENTRADA_SAIDA"> = '#39'E'#39') then'
      '               sTipo := '#39'ENTRADA'#39
      '       else'
      '               sTipo := '#39'SA'#205'DA'#39';           '
      'end;'
      ''
      'begin'
      ''
      'end.')
    OnPreview = frxReport1Preview
    Left = 309
    Top = 27
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
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 79.370130000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo1: TfrxMemoView
          Width = 589.606680000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[empresa]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Top = 15.118120000000000000
          Width = 589.606680000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'INVENT'#193'RIO CICLICO ( Relat'#243'rio Auxiliar de Invent'#225'rio Manual )')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Top = 34.015770000000000000
          Width = 589.606680000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Filtro]')
          ParentFont = False
          VAlign = vaCenter
        end
        object SysMemo2: TfrxSysMemoView
          Left = 856.425790000000000000
          Top = 15.118120000000000000
          Width = 185.196970000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[TIME]')
          ParentFont = False
          VAlign = vaCenter
        end
        object SysMemo3: TfrxSysMemoView
          Left = 856.425790000000000000
          Top = 34.015770000000000000
          Width = 185.196970000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[PAGE#] de [TOTALPAGES#]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line1: TfrxLineView
          Top = 49.133890000000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object SysMemo1: TfrxSysMemoView
          Left = 856.425790000000000000
          Width = 185.196970000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DATE]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line3: TfrxLineView
          Top = 78.252010000000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo6: TfrxMemoView
          Left = 63.165430000000000000
          Top = 57.133890000000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Refer'#234'ncia')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 777.110700000000000000
          Top = 57.133890000000000000
          Width = 124.724490000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'ADJUTOR')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 282.448980000000000000
          Top = 57.133890000000000000
          Width = 336.378170000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 652.386210000000000000
          Top = 57.133890000000000000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Fisico')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 7.559060000000000000
          Top = 57.133890000000000000
          Width = 26.456692910000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'SEQ.')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 913.173780000000000000
          Top = 57.133890000000000000
          Width = 124.724490000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'STATUS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line4: TfrxLineView
          Left = 37.795300000000000000
          Top = 49.133890000000000000
          Height = 30.236240000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line6: TfrxLineView
          Left = 157.228510000000000000
          Top = 49.133890000000000000
          Height = 30.236240000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line7: TfrxLineView
          Left = 626.181510000000000000
          Top = 49.133890000000000000
          Height = 30.236240000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line8: TfrxLineView
          Left = 766.024120000000000000
          Top = 49.133890000000000000
          Height = 30.236240000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line9: TfrxLineView
          Left = 909.646260000000000000
          Top = 49.133890000000000000
          Height = 30.236240000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line5: TfrxLineView
          Left = 279.685220000000000000
          Top = 49.133890000000000000
          Height = 30.236240000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo8: TfrxMemoView
          Left = 166.299320000000000000
          Top = 56.692950000000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Endere'#231'o')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 166.299320000000000000
        Top = 245.669450000000000000
        Width = 1046.929810000000000000
        object Line2: TfrxLineView
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Style = fsDot
          Frame.Typ = [ftTop]
        end
        object Memo5: TfrxMemoView
          Left = 15.118120000000000000
          Top = 15.118120000000000000
          Width = 287.244280000000000000
          Height = 136.063080000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '  LEGENDA:'
            ''
            '  OK  -  QUANTIDADE EXATA'
            '  SO  -  MATERIAL COM SOBRA'
            '  AM  -  MATERIAL TEVE AMOSTRA RETIRADA '
            '  EM  -  MATERIAL SENDO EMBALADO '
            '  BO  -  DIVERG'#202'NCIA NEGATIVA'
            '  PE  -   MATERIAL SEPARADO PARA PEDIDO'
            '  PR  -   MATERIAL EM PRODU'#199#195'O')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line17: TfrxLineView
          Left = 15.118120000000000000
          Top = 47.015770000000000000
          Width = 287.244280000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo11: TfrxMemoView
          Left = 314.630180000000000000
          Top = 15.897650000000000000
          Width = 260.787570000000000000
          Height = 136.063080000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 607.213050000000000000
          Top = 15.118120000000000000
          Width = 260.787570000000000000
          Height = 136.063080000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 361.543600000000000000
          Top = 128.724490000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Conferente: (datar e assinar)'
            '')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 651.787880000000000000
          Top = 128.724490000000000000
          Width = 163.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Qualidade:(datar e assinar)'
            '')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 318.527830000000000000
          Top = 98.267780000000000000
          Width = 287.244280000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '____/____/____    __________________________'
            '        DATA                        VISTO CONFERENTE'
            '  ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 610.992580000000000000
          Top = 98.267780000000000000
          Width = 287.244280000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '____/____/____    __________________________'
            '        DATA                        VISTO QUALIDADE'
            '  ')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 27.456710000000000000
        Top = 158.740260000000000000
        Width = 1046.929810000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1PRD_REFER: TfrxMemoView
          Left = 63.165430000000000000
          Top = 3.000000000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataField = 'PRD_REFER'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."PRD_REFER"]')
          ParentFont = False
          WordWrap = False
        end
        object frxDBDataset1PRD_DESCRI: TfrxMemoView
          Left = 282.519685040000000000
          Top = 3.000000000000000000
          Width = 340.157700000000000000
          Height = 18.897650000000000000
          DataField = 'PRD_DESCRI'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."PRD_DESCRI"]')
          ParentFont = False
          WordWrap = False
        end
        object Line10: TfrxLineView
          Left = 37.795300000000000000
          Height = 26.456710000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line12: TfrxLineView
          Left = 157.228510000000000000
          Height = 26.456710000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line13: TfrxLineView
          Left = 626.181510000000000000
          Height = 26.456710000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line14: TfrxLineView
          Left = 766.024120000000000000
          Height = 26.456710000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line15: TfrxLineView
          Left = 909.646260000000000000
          Height = 26.456710000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line16: TfrxLineView
          Align = baWidth
          Top = 26.118120000000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object SysMemo4: TfrxSysMemoView
          Left = 3.779530000000000000
          Top = 5.000000000000000000
          Width = 30.236240000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[LINE#]')
          ParentFont = False
        end
        object Line11: TfrxLineView
          Left = 279.685220000000000000
          Height = 26.456710000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo15: TfrxMemoView
          Left = 166.299320000000000000
          Top = 2.559060000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."PRDE_ENDERECO"]')
          ParentFont = False
          WordWrap = False
        end
      end
    end
  end
  object CdsEntradasSaidas: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'select P1.prd_refer, P1.prd_descri, B.PRDE_ENDERECO'#13#10'from kardex' +
      ' T1'#13#10'    JOIN prd0000 P1 ON (P1.prd_codigo = T1.prd_codigo)'#13#10'   ' +
      ' JOIN emp0000 E1 ON (T1.emp_codigo = E1.emp_codigo)'#13#10'    left jo' +
      'in PRD0000_ENDERECAMENTO B on b.PRDE_REGISTRO=P1.PRDE_REGISTRO A' +
      'ND B.emp_codigo=P1.emp_codigo'#13#10'where p1.prd_codigo='#39'9999999999'#39#13 +
      #10'order by t1.emp_codigo, t1.kar_entrada_saida,t1.data_hora'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'select P1.prd_refer, P1.prd_descri, B.PRDE_ENDERECO'#13#10'from kardex' +
      ' T1'#13#10'    JOIN prd0000 P1 ON (P1.prd_codigo = T1.prd_codigo)'#13#10'   ' +
      ' JOIN emp0000 E1 ON (T1.emp_codigo = E1.emp_codigo)'#13#10'    left jo' +
      'in PRD0000_ENDERECAMENTO B on b.PRDE_REGISTRO=P1.PRDE_REGISTRO A' +
      'ND B.emp_codigo=P1.emp_codigo'#13#10'where p1.prd_codigo='#39'9999999999'#39#13 +
      #10'order by t1.emp_codigo, t1.kar_entrada_saida,t1.data_hora'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 96
    Top = 96
    object CdsEntradasSaidasPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object CdsEntradasSaidasPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 100
    end
    object CdsEntradasSaidasPRDE_ENDERECO: TStringField
      FieldName = 'PRDE_ENDERECO'
      Size = 30
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'PRD_REFER=PRD_REFER'
      'PRD_DESCRI=PRD_DESCRI'
      'PRDE_ENDERECO=PRDE_ENDERECO')
    DataSet = CdsEntradasSaidas
    BCDToCurrency = False
    Left = 216
    Top = 112
  end
  object DsAlmoxarifado: TDataSource
    DataSet = SqlCdsAlmoxarifado
    Left = 232
    Top = 24
  end
  object SqlCdsAlmoxarifado: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'select * from ALMOX0000 WHERE AMX_ATIVO = '#39'S'#39'  order by AMX_DESC' +
      'RI'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'select * from ALMOX0000 WHERE AMX_ATIVO = '#39'S'#39'  order by AMX_DESC' +
      'RI'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 143
    Top = 32
    object SqlCdsAlmoxarifadoAMX_CODIGO: TStringField
      DisplayWidth = 4
      FieldName = 'AMX_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 4
    end
    object SqlCdsAlmoxarifadoAMX_DESCRI: TStringField
      FieldName = 'AMX_DESCRI'
      Required = True
      Size = 35
    end
    object SqlCdsAlmoxarifadoAMX_TIPO: TStringField
      FieldName = 'AMX_TIPO'
      Size = 35
    end
    object SqlCdsAlmoxarifadoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Required = True
      Size = 3
    end
  end
  object frxXLSExport1: TfrxXLSExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ExportEMF = True
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = True
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 328
    Top = 88
  end
  object frxMailExport1: TfrxMailExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ShowExportDialog = True
    SmtpPort = 25
    UseIniFile = True
    TimeOut = 60
    ConfurmReading = False
    UseMAPI = SMTP
    Left = 384
    Top = 96
  end
  object frxCSVExport1: TfrxCSVExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Separator = ';'
    OEMCodepage = False
    UTF8 = False
    NoSysSymbols = True
    ForcedQuotes = False
    Left = 336
    Top = 145
  end
  object frxRTFExport1: TfrxRTFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PictureType = gpPNG
    Wysiwyg = True
    Creator = 'FastReport'
    SuppressPageHeadersFooters = False
    HeaderFooterMode = hfText
    AutoSize = False
    Left = 384
    Top = 153
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
    Left = 320
    Top = 201
  end
end
