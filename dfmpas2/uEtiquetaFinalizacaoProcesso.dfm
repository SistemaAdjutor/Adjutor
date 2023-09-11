inherited frmEtiquetaFinalizacaoProcesso: TfrmEtiquetaFinalizacaoProcesso
  Caption = 'Etiqueta de Finaliza'#231#227'o de Processo'
  ClientWidth = 633
  ExplicitWidth = 641
  DesignSize = (
    633
    267)
  PixelsPerInch = 96
  TextHeight = 13
  object rgEtiqueta: TRadioGroup [0]
    Left = 8
    Top = 8
    Width = 289
    Height = 65
    Caption = 'Tipo da Etiqueta'
    ItemIndex = 0
    Items.Strings = (
      'Modelo 1 - '#218'nica (A5) Retrato')
    TabOrder = 0
  end
  object btImprimir: TBitBtn [1]
    Left = 526
    Top = 234
    Width = 99
    Height = 25
    Anchors = [akTop, akRight]
    Caption = '&Imprimir'
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
    TabOrder = 1
    OnClick = btImprimirClick
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 632
    Top = 16
  end
  inherited cxLocalizer1: TcxLocalizer
    Left = 632
    Top = 72
  end
  inherited qAux: TFDQuery
    Left = 467
    Top = 152
  end
  inherited FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 776
    Top = 16
  end
  inherited FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Left = 712
    Top = 16
  end
  inherited FDTransac: TFDTransaction
    Left = 688
    Top = 72
  end
  inherited FDGUIxErrorDialog1: TFDGUIxErrorDialog
    Left = 776
    Top = 72
  end
  inherited qAux2: TFDQuery
    Left = 515
    Top = 151
  end
  inherited qAux3: TFDQuery
    Left = 555
    Top = 151
  end
  inherited qAux4: TFDQuery
    Left = 595
    Top = 151
  end
  inherited dbConn: TFDConnection
    Params.Strings = (
      'Database=C:\Jobdados\Exemplo\ExemploFX.FDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'CharacterSet=ISO8859_1'
      'DriverID=FB')
    Left = 467
    Top = 96
  end
  inherited FDStoredProc1: TFDStoredProc
    Left = 848
    Top = 16
  end
  object frxModelo1: TfrxReport
    Version = '5.3.16'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44683.674549525500000000
    ReportOptions.LastChange = 44683.674549525500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var      '
      
        '  Empresa, Endereco, Fone: string;                              ' +
        '                                                                ' +
        '                 '
      'begin'
      ''
      'end.')
    OnBeginDoc = frxModelo1BeginDoc
    OnGetValue = frxModelo1GetValue
    Left = 32
    Top = 96
    Datasets = <
      item
        DataSet = frxDBModelo1
        DataSetName = 'frxDBModelo1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 210.000000000000000000
      PaperHeight = 148.000000000000000000
      PaperSize = 11
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 459.055350000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo35: TfrxMemoView
          Left = 600.945270000000000000
          Top = 299.921460000000000000
          Width = 113.385900000000000000
          Height = 30.236240000000000000
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[EDPESOLIQUIDO]')
          ParentFont = False
        end
        object Shape1: TfrxShapeView
          Left = 582.047620000000000000
          Top = 71.811070000000000000
          Width = 136.063080000000000000
          Height = 139.842610000000000000
        end
        object LogoEmpresa: TfrxPictureView
          Width = 105.826713070000000000
          Height = 41.574830000000000000
          Center = True
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object wFrxRazao: TfrxMemoView
          Left = 114.842610000000000000
          Top = 1.779530000000000000
          Width = 487.559370000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[EMPRESA]')
          ParentFont = False
        end
        object Barcode2D1: TfrxBarcode2DView
          Left = 612.283860000000000000
          Top = 90.708720000000000000
          Width = 84.000000000000000000
          Height = 100.000000000000000000
          BarType = bcCodeQR
          BarProperties.Encoding = qrAuto
          BarProperties.QuietZone = 0
          BarProperties.ErrorLevels = ecL
          BarProperties.PixelSize = 4
          DataField = 'EDIDENTIFICACAO'
          DataSet = frxDBModelo1
          DataSetName = 'frxDBModelo1'
          Rotation = 0
          ShowText = True
          Text = '12345678'
          Zoom = 1.000000000000000000
          FontScaled = True
          QuietZone = 0
        end
        object LogoZonaFranca: TfrxPictureView
          Left = 612.283860000000000000
          Width = 105.826713070000000000
          Height = 41.574830000000000000
          Center = True
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo1: TfrxMemoView
          Left = 114.385900000000000000
          Top = 18.897650000000000000
          Width = 487.559370000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[ENDERECO]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 114.385900000000000000
          Top = 34.015770000000000000
          Width = 487.559370000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[FONE]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 11.338590000000000000
          Top = 438.645950000000000000
          Width = 695.433520000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Emitido por:[USUARIO] -  [Date] - [Time]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Top = 52.913420000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clBlack
          Memo.UTF8W = (
            'Ficha de identifica'#231#227'o de Pallet')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 517.795610000000000000
          Top = 53.913420000000000000
          Width = 196.535560000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Gerado por [USUARIO] - [Date] - [Time]')
          ParentFont = False
          VAlign = vaCenter
          Formats = <
            item
            end
            item
            end
            item
            end>
        end
        object Memo5: TfrxMemoView
          Left = 7.559060000000000000
          Top = 79.370130000000000000
          Width = 563.149970000000000000
          Height = 75.590600000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -64
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[EDIDENTIFICACAO]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 582.047620000000000000
          Top = 90.708720000000000000
          Width = 18.897650000000000000
          Height = 102.047310000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Identifica'#231#227'o')
          ParentFont = False
          Rotation = 90
        end
        object Line1: TfrxLineView
          Top = 71.811070000000000000
          Height = 385.512060000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line2: TfrxLineView
          Top = 158.740260000000000000
          Width = 582.047620000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line3: TfrxLineView
          Top = 211.653680000000000000
          Width = 582.047620000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line4: TfrxLineView
          Top = 185.196970000000000000
          Width = 582.047620000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo7: TfrxMemoView
          Left = 2.000000000000000000
          Top = 158.740260000000000000
          Width = 45.354360000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Cliente')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Top = 167.078850000000000000
          Width = 578.268090000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[CLI_FANTASIA]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Top = 196.535560000000000000
          Width = 578.268090000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[PRD_REFER]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 2.000000000000000000
          Top = 185.196970000000000000
          Width = 45.354360000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Produto')
          ParentFont = False
        end
        object Line5: TfrxLineView
          Top = 238.771800000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line6: TfrxLineView
          Left = 190.519790000000000000
          Top = 211.653680000000000000
          Height = 26.456692913385800000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line7: TfrxLineView
          Left = 393.362400000000000000
          Top = 211.653680000000000000
          Height = 26.456692910000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line8: TfrxLineView
          Left = 600.622450000000000000
          Top = 211.653680000000000000
          Height = 26.456692910000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo12: TfrxMemoView
          Left = 3.000000000000000000
          Top = 211.653680000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Ordem de Produ'#231#227'o')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 193.756030000000000000
          Top = 211.653680000000000000
          Width = 124.724490000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#243'digo do Produto do Cliente')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 397.071120000000000000
          Top = 211.653680000000000000
          Width = 83.149660000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Ordem de Compra')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 604.622450000000000000
          Top = 211.653680000000000000
          Width = 45.354360000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Romaneio')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 298.582870000000000000
          Top = 245.669450000000000000
          Width = 275.905690000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Inspe'#231#227'o (X)    Aprovado (X)    Reprovado(   )')
          ParentFont = False
        end
        object Line9: TfrxLineView
          Top = 268.567100000000000000
          Width = 718.110236220472400000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo16: TfrxMemoView
          Top = 238.110390000000000000
          Width = 79.370130000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clBlack
          Memo.UTF8W = (
            'Peso Unit'#225'rio Aproximado')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 86.929190000000000000
          Top = 245.669450000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[EDPESOUNITARIO]')
          ParentFont = False
        end
        object Line10: TfrxLineView
          Top = 300.803340000000000000
          Width = 718.110236220472400000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo20: TfrxMemoView
          Top = 270.346630000000000000
          Width = 90.708720000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clBlack
          Memo.UTF8W = (
            'Peso Bruto Pallet:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 98.267780000000000000
          Top = 273.905690000000000000
          Width = 113.385900000000000000
          Height = 22.677180000000000000
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[EDPESOBRUTOPALLET]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 219.212740000000000000
          Top = 270.346630000000000000
          Width = 64.252010000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clBlack
          Memo.UTF8W = (
            'Tara '
            'Pallet:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 287.244280000000000000
          Top = 273.905690000000000000
          Width = 102.047310000000000000
          Height = 22.677180000000000000
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[EDTARAPALLET]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 396.850650000000000000
          Top = 271.126160000000000000
          Width = 64.252010000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clBlack
          Memo.UTF8W = (
            'Peso '
            'Bruto:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 464.882190000000000000
          Top = 274.685220000000000000
          Width = 86.929190000000000000
          Height = 22.677180000000000000
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[EDPESOBRUTO]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 559.370440000000000000
          Top = 271.126160000000000000
          Width = 64.252010000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clBlack
          Memo.UTF8W = (
            'Peso '
            'Tara:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 627.401980000000000000
          Top = 274.685220000000000000
          Width = 86.929190000000000000
          Height = 22.677180000000000000
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[EDPESOTARA]')
          ParentFont = False
        end
        object Line11: TfrxLineView
          Top = 332.819110000000000000
          Width = 718.110236220472400000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo28: TfrxMemoView
          Top = 303.362400000000000000
          Width = 86.929190000000000000
          Height = 30.236220470000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clBlack
          Memo.UTF8W = (
            'Quantidade:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Left = 86.929190000000000000
          Top = 298.921460000000000000
          Width = 120.944960000000000000
          Height = 30.236240000000000000
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[EDQUANTIDADE]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 215.433210000000000000
          Top = 303.362400000000000000
          Width = 64.252010000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clBlack
          Memo.UTF8W = (
            'U.M.:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          Left = 283.464750000000000000
          Top = 299.921460000000000000
          Width = 102.047310000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[EDUM]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 389.291590000000000000
          Top = 303.362400000000000000
          Width = 52.913420000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clBlack
          Memo.UTF8W = (
            'Volume:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          Left = 442.205010000000000000
          Top = 299.921460000000000000
          Width = 98.267780000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[EDVOLUME]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 544.252320000000000000
          Top = 303.362400000000000000
          Width = 56.692950000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clBlack
          Memo.UTF8W = (
            'Peso'
            'L'#237'quido:')
          ParentFont = False
          VAlign = vaCenter
        end
        object BarCode1: TfrxBarCodeView
          Left = 287.244280000000000000
          Top = 351.496290000000000000
          Width = 90.000000000000000000
          Height = 45.354360000000000000
          BarType = bcCodeEAN128
          DataField = 'PRD_REFER'
          DataSet = frxDBModelo1
          DataSetName = 'frxDBModelo1'
          Rotation = 0
          Text = '12345678'
          WideBarRatio = 2.000000000000000000
          Zoom = 1.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
        end
        object Line12: TfrxLineView
          Top = 404.512060000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line13: TfrxLineView
          Top = 457.323130000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line14: TfrxLineView
          Left = 718.110700000000000000
          Top = 71.811023620000000000
          Height = 385.512060000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line15: TfrxLineView
          Top = 434.645950000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo8: TfrxMemoView
          Left = 52.913420000000000000
          Top = 411.968503940000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'ATEN'#199#195'O TRANSPORTADORA:')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 238.889920000000000000
          Top = 411.968503940000000000
          Width = 219.212740000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'N'#195'O VIOLAR EMBALAGEM ORIGINAL')
          ParentFont = False
        end
        object Line16: TfrxLineView
          Left = 487.559370000000000000
          Top = 404.409710000000000000
          Height = 30.236222910000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo37: TfrxMemoView
          Left = 559.370440000000000000
          Top = 411.968770000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Produzido no Brasil')
          ParentFont = False
        end
      end
    end
  end
  object qModelo1: TFDQuery
    Connection = dbConn
    SQL.Strings = (
      ' SELECT'
      #9'iop_nordem AS edIdentificacao,'
      #9'cl.CLI_FANTASIA,'
      #9'P1.PRD_REFER,'
      #9'P1.PRD_DESCRI,'
      #9'P1.PRD_PESOLIQ AS edPesoUnitario,'
      #9'0.00 + FAB_PRODUZIDA AS edPesoBrutoPallet,'
      #9'0.00 AS edTaraPallet,'
      #9'FAB_PRODUZIDA AS edPesoBruto,'
      #9'0.00 AS edPesoTara,'
      #9'FB.FAB_PRODUZIDA AS edQuantidade,'
      #9'P1.PRD_UND AS edUM,'
      #9'FAB_PRODUZIDA / P1.PRD_PESOLIQ AS edVolume,'
      #9'FAB_PRODUZIDA AS edPesoLiquido'
      'FROM'
      #9'FABRICACAO FB'
      'INNER JOIN PRD0000 P1 ON'
      #9'(P1.PRD_CODIGO = fb.PRD_CODIGO)'
      'INNER JOIN ITEM_ORDEMPRODUCAO OS ON'
      #9'(OS.iop_CODIGO = FB.iop_CODIGO'
      #9#9'AND P1.PRD_codigo = os.PRD_codigo)'
      'INNER JOIN ORDEMPRODUCAO OPR ON'
      #9'(OPR.OPR_CODIGO = OS.OPR_CODIGO)'
      'INNER JOIN OPERACOES OP ON'
      #9'(OP.OPE_CODIGO = FB.OPE_CODIGO)'
      'JOIN CLI0000 cl ON'
      #9'(cl.CLI_CODIGO = opr.CLI_CODIGO)'
      'WHERE'
      #9'opr.EMP_CODIGO = '#39'001'#39
      #9'AND iop_nordem = '#39'39'#39
      #9'AND FAB_CODIGO = 85'
      'ORDER BY'
      #9'SEQUENCIA')
    Left = 200
    Top = 96
    object qModelo1EDIDENTIFICACAO: TStringField
      FieldName = 'EDIDENTIFICACAO'
      Origin = 'EDIDENTIFICACAO'
    end
    object qModelo1CLI_FANTASIA: TStringField
      FieldName = 'CLI_FANTASIA'
      Origin = 'CLI_FANTASIA'
      Size = 55
    end
    object qModelo1PRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Origin = 'PRD_REFER'
    end
    object qModelo1PRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Origin = 'PRD_DESCRI'
      Size = 100
    end
    object qModelo1EDPESOUNITARIO: TFMTBCDField
      FieldName = 'EDPESOUNITARIO'
      Origin = 'EDPESOUNITARIO'
      Precision = 18
      Size = 5
    end
    object qModelo1EDPESOBRUTOPALLET: TFMTBCDField
      FieldName = 'EDPESOBRUTOPALLET'
      Origin = 'EDPESOBRUTOPALLET'
      Precision = 18
      Size = 5
    end
    object qModelo1EDTARAPALLET: TBCDField
      FieldName = 'EDTARAPALLET'
      Origin = 'EDTARAPALLET'
      Required = True
      Precision = 18
      Size = 2
    end
    object qModelo1EDPESOBRUTO: TFMTBCDField
      FieldName = 'EDPESOBRUTO'
      Origin = 'EDPESOBRUTO'
      Precision = 18
      Size = 5
    end
    object qModelo1EDPESOTARA: TBCDField
      FieldName = 'EDPESOTARA'
      Origin = 'EDPESOTARA'
      Required = True
      Precision = 18
      Size = 2
    end
    object qModelo1EDQUANTIDADE: TFMTBCDField
      FieldName = 'EDQUANTIDADE'
      Origin = 'EDQUANTIDADE'
      Precision = 18
      Size = 5
    end
    object qModelo1EDUM: TStringField
      FieldName = 'EDUM'
      Origin = 'EDUM'
      Size = 6
    end
    object qModelo1EDVOLUME: TFMTBCDField
      FieldName = 'EDVOLUME'
      Origin = 'EDVOLUME'
      Precision = 18
      Size = 10
    end
    object qModelo1EDPESOLIQUIDO: TFMTBCDField
      FieldName = 'EDPESOLIQUIDO'
      Origin = 'EDPESOLIQUIDO'
      Precision = 18
      Size = 5
    end
  end
  object frxDBModelo1: TfrxDBDataset
    UserName = 'frxDBModelo1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'EDIDENTIFICACAO=EDIDENTIFICACAO'
      'CLI_FANTASIA=CLI_FANTASIA'
      'PRD_REFER=PRD_REFER'
      'PRD_DESCRI=PRD_DESCRI'
      'EDPESOUNITARIO=EDPESOUNITARIO'
      'EDPESOBRUTOPALLET=EDPESOBRUTOPALLET'
      'EDTARAPALLET=EDTARAPALLET'
      'EDPESOBRUTO=EDPESOBRUTO'
      'EDPESOTARA=EDPESOTARA'
      'EDQUANTIDADE=EDQUANTIDADE'
      'EDUM=EDUM'
      'EDVOLUME=EDVOLUME'
      'EDPESOLIQUIDO=EDPESOLIQUIDO')
    DataSet = qModelo1
    BCDToCurrency = False
    Left = 128
    Top = 96
  end
end
