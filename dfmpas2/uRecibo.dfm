object FrmRecibo: TFrmRecibo
  Left = 289
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Impress'#227'o de Recibo'
  ClientHeight = 433
  ClientWidth = 672
  Color = clBtnFace
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
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object grpTipo: TGroupBox
    Left = 3
    Top = 0
    Width = 257
    Height = 41
    Caption = 'Tipo'
    TabOrder = 0
    object rbRecebimento: TRadioButton
      Left = 16
      Top = 16
      Width = 113
      Height = 17
      Caption = '&Recebimento'
      Checked = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TabStop = True
    end
    object rbPagamento: TRadioButton
      Left = 128
      Top = 16
      Width = 113
      Height = 17
      Caption = '&Pagamento'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
  end
  object BitBtn2: TBitBtn
    Left = 460
    Top = 399
    Width = 100
    Height = 25
    Hint = 'Baixar'
    Caption = '&Imprimir'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
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
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 8
    OnClick = BitBtn2Click
  end
  object Bit_Sair: TBitBtn
    Left = 564
    Top = 400
    Width = 100
    Height = 25
    Hint = 'Sair'
    Caption = '&Sair'
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000C40E0000C40E00001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333330
      0000333333333333777711111111000BB030377777777777337F1EEEEEEE0BBB
      B030373333333733337F1EEEEEEE0BBBB03037F333333733337F1EEEEEEE0BBB
      B03037F333333733337F1EEEEEEE0BBBB03037F333333733337F1EEEEEEE0BBB
      B03037F3333337F3337F1EEEEEEE0BBB003037F3333337F3377F1EEEEEEE0BBB
      B03037F3333337F3337F1EEEEEEE0BBBB03037F3333337F3337F1EEEEEEE0BBB
      B03037F3333337F3337F1EEEEEEE0BBBB03037F3333337F3337F1EEEEEEE0BBB
      B03037FFFFFF37FF337F11111111000BB030377777777777337F333333333330
      0000333333333333777733333333333333333333333333333333}
    NumGlyphs = 2
    ParentShowHint = False
    ShowHint = True
    TabOrder = 9
    OnClick = Bit_SairClick
  end
  object grpValor: TGroupBox
    Left = 483
    Top = 0
    Width = 185
    Height = 41
    Caption = 'Valor'
    TabOrder = 2
    object CurValor: TCurrencyEdit
      Left = 8
      Top = 16
      Width = 169
      Height = 21
      AutoSize = False
      DisplayFormat = ' ,0.00;- ,0.00'
      TabOrder = 0
      OnChange = CurValorChange
    end
  end
  object GroupBox1: TGroupBox
    Left = 3
    Top = 48
    Width = 665
    Height = 57
    Caption = 'Valor por Extenso'
    Enabled = False
    TabOrder = 3
    object mmoValor: TMemo
      Left = 2
      Top = 16
      Width = 661
      Height = 39
      Align = alClient
      Color = 14145495
      TabOrder = 0
    end
  end
  object GroupBox2: TGroupBox
    Left = 266
    Top = 0
    Width = 210
    Height = 41
    Caption = 'N'#250'mero'
    TabOrder = 1
    object btnMais: TSpeedButton
      Left = 178
      Top = 16
      Width = 23
      Height = 22
      Hint = 'Incrementar N'#250'mero'
      Glyph.Data = {
        D6020000424DD60200000000000036000000280000000F0000000E0000000100
        180000000000A0020000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF5DAE5D1F8F1FC9E4C9FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF46A34600
        8000C1E0C1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF46A346008000C1E0C1FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF46A34600
        8000C1E0C1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFB7DBB7
        2F972F2F972F2F972F2F972F0D860D0080002492242F972F2F972F2F972F51A8
        51FFFFFFFFFFFF000000FFFFFFB1D8B11F8F1F1F8F1F1F8F1F1F8F1F08840800
        8000188C181F8F1F1F8F1F1F8F1F44A244FFFFFFFFFFFF000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF46A346008000C1E0C1FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF46A34600
        8000C1E0C1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF46A346008000C1E0C1FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5DAE5D1F
        8F1FC9E4C9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000}
      ParentShowHint = False
      ShowHint = True
      OnClick = btnMaisClick
    end
    object edtNumero: TEdit
      Left = 8
      Top = 16
      Width = 169
      Height = 22
      CharCase = ecUpperCase
      TabOrder = 0
    end
  end
  object GroupBox3: TGroupBox
    Left = 3
    Top = 104
    Width = 664
    Height = 41
    Caption = 'Recebemos / Pagamos'
    TabOrder = 4
    object edtRecebemosPagamos: TEdit
      Left = 3
      Top = 16
      Width = 658
      Height = 22
      CharCase = ecUpperCase
      TabOrder = 0
    end
  end
  object GroupBox4: TGroupBox
    Left = 4
    Top = 149
    Width = 665
    Height = 164
    Caption = 'Referente'
    TabOrder = 5
    object mmoReferente: TMemo
      Left = 2
      Top = 16
      Width = 661
      Height = 146
      Align = alClient
      Color = clWhite
      TabOrder = 0
    end
  end
  object GroupBox5: TGroupBox
    Left = 5
    Top = 312
    Width = 664
    Height = 41
    Caption = 'Local'
    TabOrder = 6
    object edtLocal: TEdit
      Left = 3
      Top = 16
      Width = 658
      Height = 22
      CharCase = ecUpperCase
      TabOrder = 0
    end
  end
  object GroupBox6: TGroupBox
    Left = 6
    Top = 353
    Width = 664
    Height = 41
    Caption = 'Emitente'
    TabOrder = 7
    object edtEmitente: TEdit
      Left = 3
      Top = 16
      Width = 658
      Height = 22
      CharCase = ecUpperCase
      TabOrder = 0
    end
  end
  object ACBrExtenso1: TACBrExtenso
    StrMoeda = 'Real'
    StrMoedas = 'Reais'
    StrCentavo = 'Centavo'
    StrCentavos = 'Centavos'
    Left = 475
    Top = 80
  end
  object frxRecibo: TfrxReport
    Version = '5.3.16'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40812.858008344900000000
    ReportOptions.LastChange = 41380.604173182870000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var'
      'poi:string;                        '
      'procedure MasterData1OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      'poi:= '#39'12'#39';                   '
      'end;'
      ''
      'procedure Page1OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      '           '
      'end;'
      ''
      'procedure ReportTitle1OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      '  '
      'end;'
      ''
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '   poi:= '#39'12'#39';  '
      'end;'
      ''
      'procedure ReportTitle1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '                         '
      'end;'
      ''
      'begin'
      ''
      'end.')
    OnGetValue = frxReciboGetValue
    Left = 507
    Top = 80
    Datasets = <>
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
      OnAfterPrint = 'Page1OnAfterPrint'
      OnBeforePrint = 'Page1OnBeforePrint'
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Height = 1028.032160000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        OnAfterPrint = 'ReportTitle1OnAfterPrint'
        OnBeforePrint = 'ReportTitle1OnBeforePrint'
        object LogoEmpresa: TfrxPictureView
          Left = 3.779530000000000000
          Top = 2.779530000000000000
          Width = 120.944960000000000000
          Height = 68.031540000000000000
          Center = True
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Line1: TfrxLineView
          Top = 75.370130000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object wFrxRazao: TfrxMemoView
          Left = 129.960730000000000000
          Top = 2.779530000000000000
          Width = 585.827150000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[RAZAO]')
          ParentFont = False
        end
        object wFrxEndereco: TfrxMemoView
          Left = 129.976500000000000000
          Top = 20.000000000000000000
          Width = 585.827150000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[ENDERECO]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 129.960730000000000000
          Top = 40.795300000000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[CEP]')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          Left = 219.551330000000000000
          Top = 40.795300000000000000
          Width = 283.464750000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[CIDADE]')
          ParentFont = False
        end
        object Memo82: TfrxMemoView
          Left = 515.472790000000000000
          Top = 40.795300000000000000
          Width = 26.456710000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[UF]')
          ParentFont = False
        end
        object Memo83: TfrxMemoView
          Left = 549.488560000000000000
          Top = 40.795300000000000000
          Width = 166.299320000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FONE]')
          ParentFont = False
        end
        object Memo93: TfrxMemoView
          Left = 180.622140000000000000
          Top = 56.692950000000000000
          Width = 245.669450000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[CNPJ]')
          ParentFont = False
        end
        object Memo94: TfrxMemoView
          Left = 128.960730000000000000
          Top = 56.692950000000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'CNPJ:')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 482.882190000000000000
          Top = 56.913420000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Inscri'#231#227'o:')
          ParentFont = False
        end
        object Memo96: TfrxMemoView
          Left = 548.575140000000000000
          Top = 56.692950000000000000
          Width = 166.299320000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[INSCR]')
          ParentFont = False
        end
        object Line8: TfrxLineView
          Top = 105.826840000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo2: TfrxMemoView
          Left = 3.779530000000000000
          Top = 113.385900000000000000
          Width = 714.331170000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[TERMO] : [RECEBIDO]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 3.779530000000000000
          Top = 136.063080000000000000
          Width = 714.331170000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'A import'#226'ncia de [VALOREXTENSO]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Shape1: TfrxShapeView
          Top = 75.590600000000000000
          Width = 718.110700000000000000
          Height = 30.236240000000000000
          Fill.BackColor = 15724527
        end
        object Memo79: TfrxMemoView
          Top = 75.590600000000000000
          Width = 283.464750000000000000
          Height = 30.236240000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[RECIBO]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo1: TfrxMemoView
          Left = 517.795610000000000000
          Top = 75.590600000000000000
          Width = 200.315090000000000000
          Height = 30.236240000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'VALOR: [VALOR]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Shape2: TfrxShapeView
          Top = 170.078850000000000000
          Width = 718.110700000000000000
          Height = 30.236240000000000000
          Fill.BackColor = 15724527
        end
        object Memo4: TfrxMemoView
          Top = 170.078850000000000000
          Width = 434.645950000000000000
          Height = 30.236240000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'REFERENTE')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 302.362400000000000000
          Top = 75.590600000000000000
          Width = 200.315090000000000000
          Height = 30.236240000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'N'#218'MERO: [NUMERO]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 3.779530000000000000
          Top = 861.732840000000000000
          Width = 714.331170000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[LOCAL]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 3.779530000000000000
          Top = 994.016390000000000000
          Width = 714.331170000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[EMITENTE]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 3.779530000000000000
          Top = 971.339210000000000000
          Width = 714.331170000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Assinatura:  _____________________________________________')
          ParentFont = False
          VAlign = vaCenter
        end
        object Shape3: TfrxShapeView
          Top = 200.315090000000000000
          Width = 718.110700000000000000
          Height = 650.079160000000000000
          Fill.BackColor = clWhite
        end
        object Memo5: TfrxMemoView
          Left = 3.779530000000000000
          Top = 204.094620000000000000
          Width = 714.331170000000000000
          Height = 642.520100000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[REFERENTE]')
          ParentFont = False
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
    Creator = 'FastReport (http://www.fast-report.com)'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    Left = 539
    Top = 80
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
    Left = 571
    Top = 80
  end
  object frxRTFExport1: TfrxRTFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PictureType = gpPNG
    Wysiwyg = True
    Creator = 'FastReport http://www.fast-report.com'
    SuppressPageHeadersFooters = False
    HeaderFooterMode = hfText
    AutoSize = False
    Left = 603
    Top = 80
  end
end
