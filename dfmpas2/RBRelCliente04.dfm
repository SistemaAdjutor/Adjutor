object RelRBCliente04: TRelRBCliente04
  Left = 196
  Top = 209
  Width = 191
  Height = 123
  Caption = 'RelRBCliente04'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object ppReport04: TppReport
    AutoStop = False
    DataPipeline = ppDB04
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta (216 x 279 mm)'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 15000
    PrinterSetup.mmMarginLeft = 5000
    PrinterSetup.mmMarginRight = 5000
    PrinterSetup.mmMarginTop = 15000
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 1
    Template.FileName = 'C:\JobProgram\Adjutor\FontesRelatorios\RELPRODCLIENTE.rtm'
    Units = utMillimeters
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPageWidth
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 96
    Version = '7.01'
    mmColumnWidth = 0
    DataPipelineName = 'ppDB04'
    object pp04HeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 18785
      mmPrintPosition = 0
      object ppLine1: TppLine
        UserName = 'Line1'
        Weight = 0.75
        mmHeight = 265
        mmLeft = 0
        mmTop = 3175
        mmWidth = 205000
        BandType = 0
      end
      object LBL_04_EMPRESA: TppLabel
        UserName = 'LBL_04_EMPRESA'
        Caption = 'LBL_04_EMPRESA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 3969
        mmWidth = 29775
        BandType = 0
      end
      object LBL_04_LTITULO1: TppLabel
        UserName = 'LBL_04_LTITULO1'
        Caption = 'LBL_04_LTITULO1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3246
        mmLeft = 0
        mmTop = 8731
        mmWidth = 23142
        BandType = 0
      end
      object LBL_04_LTITULO2: TppLabel
        UserName = 'LBL_04_LTITULO2'
        Caption = 'LBL_04_LTITULO2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3246
        mmLeft = 0
        mmTop = 14023
        mmWidth = 23142
        BandType = 0
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Weight = 0.75
        mmHeight = 265
        mmLeft = 0
        mmTop = 18520
        mmWidth = 205000
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 171450
        mmTop = 3969
        mmWidth = 26194
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 183621
        mmTop = 14023
        mmWidth = 14023
        BandType = 0
      end
    end
    object pp04DetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        DataField = 'FAT_DTEMIS'
        DataPipeline = ppDB04
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDB04'
        mmHeight = 3704
        mmLeft = 0
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        DataField = 'FAT_CODIGO'
        DataPipeline = ppDB04
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDB04'
        mmHeight = 3704
        mmLeft = 17727
        mmTop = 0
        mmWidth = 12000
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        DataField = 'PRD_REFER'
        DataPipeline = ppDB04
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDB04'
        mmHeight = 3704
        mmLeft = 30163
        mmTop = 0
        mmWidth = 9000
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        DataField = 'FIT_QTDE'
        DataPipeline = ppDB04
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDB04'
        mmHeight = 3704
        mmLeft = 134409
        mmTop = 0
        mmWidth = 7144
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        DataField = 'FIT_PRECO'
        DataPipeline = ppDB04
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDB04'
        mmHeight = 3704
        mmLeft = 146844
        mmTop = 0
        mmWidth = 14288
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        DataField = 'FIT_IPIALIQ'
        DataPipeline = ppDB04
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDB04'
        mmHeight = 3704
        mmLeft = 187061
        mmTop = 0
        mmWidth = 6615
        BandType = 4
      end
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        DataField = 'PRD_DESCRI'
        DataPipeline = ppDB04
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDB04'
        mmHeight = 3704
        mmLeft = 39423
        mmTop = 0
        mmWidth = 82550
        BandType = 4
      end
      object ppDBText17: TppDBText
        UserName = 'DBText17'
        DataField = 'SUB_TOTAL_CC'
        DataPipeline = ppDB04
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDB04'
        mmHeight = 3810
        mmLeft = 166423
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'CLI_RAZAO'
      DataPipeline = ppDB04
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDB04'
      object pp04GroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 9260
        mmPrintPosition = 0
        object ppDBText2: TppDBText
          UserName = 'DBText2'
          DataField = 'CLI_RAZAO'
          DataPipeline = ppDB04
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDB04'
          mmHeight = 3704
          mmLeft = 10054
          mmTop = 0
          mmWidth = 70000
          BandType = 3
          GroupNo = 0
        end
        object ppLabel1: TppLabel
          UserName = 'Label1'
          Caption = 'Bairro:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 0
          mmTop = 3969
          mmWidth = 9525
          BandType = 3
          GroupNo = 0
        end
        object ppDBText1: TppDBText
          UserName = 'DBText1'
          DataField = 'CLI_BAIRRO'
          DataPipeline = ppDB04
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDB04'
          mmHeight = 3704
          mmLeft = 10054
          mmTop = 3969
          mmWidth = 70000
          BandType = 3
          GroupNo = 0
        end
        object ppDBText3: TppDBText
          UserName = 'DBText3'
          DataField = 'CLI_ENDERE'
          DataPipeline = ppDB04
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDB04'
          mmHeight = 3704
          mmLeft = 80698
          mmTop = 0
          mmWidth = 54504
          BandType = 3
          GroupNo = 0
        end
        object ppLabel3: TppLabel
          UserName = 'Label3'
          Caption = 'Ult.Compra:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 80698
          mmTop = 3969
          mmWidth = 17992
          BandType = 3
          GroupNo = 0
        end
        object ppDBText6: TppDBText
          UserName = 'DBText6'
          DataField = 'CLI_DTULTCOM'
          DataPipeline = ppDB04
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDB04'
          mmHeight = 3704
          mmLeft = 98954
          mmTop = 3969
          mmWidth = 16669
          BandType = 3
          GroupNo = 0
        end
        object ppLabel4: TppLabel
          UserName = 'Label4'
          Caption = 'FONE:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 116152
          mmTop = 3969
          mmWidth = 9790
          BandType = 3
          GroupNo = 0
        end
        object ppDBText7: TppDBText
          UserName = 'DBText7'
          DataField = 'CLI_FONE'
          DataPipeline = ppDB04
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDB04'
          mmHeight = 3704
          mmLeft = 126207
          mmTop = 3969
          mmWidth = 23283
          BandType = 3
          GroupNo = 0
        end
        object ppLabel5: TppLabel
          UserName = 'Label5'
          Caption = 'FAX:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 150284
          mmTop = 3969
          mmWidth = 7144
          BandType = 3
          GroupNo = 0
        end
        object ppDBText4: TppDBText
          UserName = 'DBText4'
          DataField = 'CLI_CIDADE'
          DataPipeline = ppDB04
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDB04'
          mmHeight = 3704
          mmLeft = 135467
          mmTop = 0
          mmWidth = 41804
          BandType = 3
          GroupNo = 0
        end
        object ppDBText8: TppDBText
          UserName = 'DBText8'
          DataField = 'CLI_FAX'
          DataPipeline = ppDB04
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDB04'
          mmHeight = 3704
          mmLeft = 157692
          mmTop = 3969
          mmWidth = 20902
          BandType = 3
          GroupNo = 0
        end
        object ppLabel2: TppLabel
          UserName = 'Label2'
          Caption = 'UF:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 183886
          mmTop = 0
          mmWidth = 5292
          BandType = 3
          GroupNo = 0
        end
        object ppDBText5: TppDBText
          UserName = 'DBText5'
          DataField = 'CLI_UF'
          DataPipeline = ppDB04
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDB04'
          mmHeight = 3704
          mmLeft = 189442
          mmTop = 0
          mmWidth = 5027
          BandType = 3
          GroupNo = 0
        end
        object ppLine2: TppLine
          UserName = 'Line2'
          Weight = 0.75
          mmHeight = 265
          mmLeft = 0
          mmTop = 8467
          mmWidth = 205000
          BandType = 3
          GroupNo = 0
        end
        object ppDBText16: TppDBText
          UserName = 'DBText16'
          DataField = 'CLI_CODIGO'
          DataPipeline = ppDB04
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDB04'
          mmHeight = 3704
          mmLeft = 0
          mmTop = 0
          mmWidth = 9525
          BandType = 3
          GroupNo = 0
        end
      end
      object pp04GroupFooterBand1: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 5821
        mmPrintPosition = 0
        object ppLine4: TppLine
          UserName = 'Line4'
          Weight = 0.75
          mmHeight = 265
          mmLeft = 3175
          mmTop = 529
          mmWidth = 205000
          BandType = 5
          GroupNo = 0
        end
        object ppLabel6: TppLabel
          UserName = 'Label6'
          Caption = 'TOTAL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3951
          mmLeft = 6350
          mmTop = 1058
          mmWidth = 11148
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc1: TppDBCalc
          UserName = 'DBCalc1'
          DataField = 'FIT_PRECO'
          DataPipeline = ppDB04
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDB04'
          mmHeight = 3951
          mmLeft = 143669
          mmTop = 1058
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
        end
        object ppLine3: TppLine
          UserName = 'Line3'
          Weight = 0.75
          mmHeight = 265
          mmLeft = 3440
          mmTop = 5292
          mmWidth = 205000
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc2: TppDBCalc
          UserName = 'DBCalc2'
          DataField = 'PRECOTOTAL_CC'
          DataPipeline = ppDB04
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          ResetGroup = ppGroup1
          Transparent = True
          DataPipelineName = 'ppDB04'
          mmHeight = 3810
          mmLeft = 165894
          mmTop = 1058
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppGroup2: TppGroup
      BreakType = btCustomField
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object pp04GroupHeaderBand2: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 3704
        mmPrintPosition = 0
        object ppLabel7: TppLabel
          UserName = 'Label7'
          Caption = 'Emiss'#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 0
          mmTop = 0
          mmWidth = 17198
          BandType = 3
          GroupNo = 1
        end
        object ppLabel8: TppLabel
          UserName = 'Label8'
          Caption = 'Fatura'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3704
          mmLeft = 17727
          mmTop = 0
          mmWidth = 12000
          BandType = 3
          GroupNo = 1
        end
        object ppLabel9: TppLabel
          UserName = 'Label9'
          Caption = 'Ref.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 30163
          mmTop = 0
          mmWidth = 9000
          BandType = 3
          GroupNo = 1
        end
        object ppLabel10: TppLabel
          UserName = 'Label10'
          Caption = 'Descri'#231#227'o do Produto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 39423
          mmTop = 0
          mmWidth = 31221
          BandType = 3
          GroupNo = 1
        end
        object ppLabel11: TppLabel
          UserName = 'Label11'
          Caption = 'Qtde'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 3810
          mmLeft = 134144
          mmTop = 0
          mmWidth = 6914
          BandType = 3
          GroupNo = 1
        end
        object ppLabel12: TppLabel
          UserName = 'Label12'
          Caption = 'Vl.Unitario'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 3810
          mmLeft = 146844
          mmTop = 0
          mmWidth = 14676
          BandType = 3
          GroupNo = 1
        end
        object ppLabel13: TppLabel
          UserName = 'Label13'
          Caption = 'Vl.Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 173038
          mmTop = 0
          mmWidth = 10583
          BandType = 3
          GroupNo = 1
        end
        object ppLabel14: TppLabel
          UserName = 'Label14'
          Caption = 'IPI'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 189971
          mmTop = 0
          mmWidth = 3704
          BandType = 3
          GroupNo = 1
        end
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object raCodeModule1: TraCodeModule
      ProgramStream = {
        01060F5472614576656E7448616E646C65720B50726F6772616D4E616D65061A
        44425465787431324F6E44726177436F6D6D616E64436C69636B0B50726F6772
        616D54797065070B747450726F63656475726506536F75726365064D70726F63
        65647572652044425465787431324F6E44726177436F6D6D616E64436C69636B
        286144726177436F6D6D616E643A20544F626A656374293B0D0A626567696E0D
        0A0D0A656E643B0D0A0D436F6D706F6E656E744E616D65060844425465787431
        32094576656E744E616D6506124F6E44726177436F6D6D616E64436C69636B07
        4576656E74494402550000}
    end
  end
  object SqlCdsCliProdu: TSQLClientDataSet
    Active = True
    CommandText = 
      'SELECT CLI_CODIGO, CLI_RAZAO,CLI_PORTE,CLI_ENDERE,'#13#10'CLI_BAIRRO,C' +
      'LI_UF,CLI_CIDADE,CLI_FONE,CLI_FAX,'#13#10'CLI_CONTATO,CLI_DTINICIO,CLI' +
      '_DTULTCOM,FAT_CODIGO,'#13#10'REP_CODIGO,FAT_DTEMIS,PRD_REFER,FIT_QTDE,' +
      #13#10'FIT_IPIALIQ,FIT_PRECO,FIT_DESCTO,PRD_DESCRI'#13#10'FROM CLI0000, FAT' +
      '0000 , FAT_IT02, PRD0000 WHERE CLI0000.CLI_CODIGO=FAT0000.CLI_CO' +
      'DIGO AND FAT0000.FAT_CODIGO=FAT_IT02.FAT_CODIGO AND FAT_IT02.PRD' +
      '_REFER=PRD0000.PRD_REFER'#13#10'ORDER BY CLI_UF,CLI_CIDADE,CLI_RAZAO,F' +
      'AT_DTEMIS'
    Aggregates = <>
    Options = [poAllowCommandText]
    ObjectView = True
    Params = <>
    OnCalcFields = SqlCdsCliProduCalcFields
    DBConnection = DataCadastros.SQLConnection1
    object SqlCdsCliProduCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Size = 5
    end
    object SqlCdsCliProduCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Size = 45
    end
    object SqlCdsCliProduCLI_PORTE: TStringField
      FieldName = 'CLI_PORTE'
      Size = 1
    end
    object SqlCdsCliProduCLI_ENDERE: TStringField
      FieldName = 'CLI_ENDERE'
      Size = 45
    end
    object SqlCdsCliProduCLI_BAIRRO: TStringField
      FieldName = 'CLI_BAIRRO'
      Size = 25
    end
    object SqlCdsCliProduCLI_UF: TStringField
      FieldName = 'CLI_UF'
      Size = 2
    end
    object SqlCdsCliProduCLI_CIDADE: TStringField
      FieldName = 'CLI_CIDADE'
      Size = 30
    end
    object SqlCdsCliProduCLI_FONE: TStringField
      FieldName = 'CLI_FONE'
      Size = 11
    end
    object SqlCdsCliProduCLI_FAX: TStringField
      FieldName = 'CLI_FAX'
      Size = 11
    end
    object SqlCdsCliProduCLI_CONTATO: TStringField
      FieldName = 'CLI_CONTATO'
      Size = 25
    end
    object SqlCdsCliProduCLI_DTINICIO: TSQLTimeStampField
      FieldName = 'CLI_DTINICIO'
    end
    object SqlCdsCliProduCLI_DTULTCOM: TSQLTimeStampField
      FieldName = 'CLI_DTULTCOM'
    end
    object SqlCdsCliProduFAT_CODIGO: TStringField
      FieldName = 'FAT_CODIGO'
      Required = True
      Size = 6
    end
    object SqlCdsCliProduREP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      Size = 3
    end
    object SqlCdsCliProduFAT_DTEMIS: TSQLTimeStampField
      FieldName = 'FAT_DTEMIS'
    end
    object SqlCdsCliProduPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object SqlCdsCliProduFIT_QTDE: TFMTBCDField
      FieldName = 'FIT_QTDE'
      Precision = 15
      Size = 8
    end
    object SqlCdsCliProduFIT_IPIALIQ: TFMTBCDField
      FieldName = 'FIT_IPIALIQ'
      Precision = 15
      Size = 8
    end
    object SqlCdsCliProduFIT_PRECO: TFMTBCDField
      FieldName = 'FIT_PRECO'
      Precision = 15
      Size = 8
    end
    object SqlCdsCliProduFIT_DESCTO: TFMTBCDField
      FieldName = 'FIT_DESCTO'
      Precision = 15
      Size = 8
    end
    object SqlCdsCliProduPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 40
    end
    object SqlCdsCliProduSUB_TOTAL_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'SUB_TOTAL_CC'
      Calculated = True
    end
    object SqlCdsCliProduPRECOTOTAL_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'PRECOTOTAL_CC'
      Calculated = True
    end
  end
  object DsCliProdu: TDataSource
    DataSet = SqlCdsCliProdu
    Left = 32
  end
  object ppDB04: TppDBPipeline
    DataSource = DsCliProdu
    UserName = 'DB04'
    Left = 64
    object ppDBPipeline1ppField1: TppField
      FieldAlias = 'CLI_CODIGO'
      FieldName = 'CLI_CODIGO'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object ppDBPipeline1ppField2: TppField
      FieldAlias = 'CLI_RAZAO'
      FieldName = 'CLI_RAZAO'
      FieldLength = 45
      DisplayWidth = 45
      Position = 1
    end
    object ppDBPipeline1ppField3: TppField
      FieldAlias = 'CLI_PORTE'
      FieldName = 'CLI_PORTE'
      FieldLength = 1
      DisplayWidth = 1
      Position = 2
    end
    object ppDBPipeline1ppField4: TppField
      FieldAlias = 'CLI_ENDERE'
      FieldName = 'CLI_ENDERE'
      FieldLength = 45
      DisplayWidth = 45
      Position = 3
    end
    object ppDBPipeline1ppField5: TppField
      FieldAlias = 'CLI_BAIRRO'
      FieldName = 'CLI_BAIRRO'
      FieldLength = 25
      DisplayWidth = 25
      Position = 4
    end
    object ppDBPipeline1ppField6: TppField
      FieldAlias = 'CLI_UF'
      FieldName = 'CLI_UF'
      FieldLength = 2
      DisplayWidth = 2
      Position = 5
    end
    object ppDBPipeline1ppField7: TppField
      FieldAlias = 'CLI_CIDADE'
      FieldName = 'CLI_CIDADE'
      FieldLength = 30
      DisplayWidth = 30
      Position = 6
    end
    object ppDBPipeline1ppField8: TppField
      FieldAlias = 'CLI_FONE'
      FieldName = 'CLI_FONE'
      FieldLength = 11
      DisplayWidth = 11
      Position = 7
    end
    object ppDBPipeline1ppField9: TppField
      FieldAlias = 'CLI_FAX'
      FieldName = 'CLI_FAX'
      FieldLength = 11
      DisplayWidth = 11
      Position = 8
    end
    object ppDBPipeline1ppField10: TppField
      FieldAlias = 'CLI_CONTATO'
      FieldName = 'CLI_CONTATO'
      FieldLength = 25
      DisplayWidth = 25
      Position = 9
    end
    object ppDBPipeline1ppField11: TppField
      FieldAlias = 'CLI_DTINICIO'
      FieldName = 'CLI_DTINICIO'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 34
      Position = 10
    end
    object ppDBPipeline1ppField12: TppField
      FieldAlias = 'CLI_DTULTCOM'
      FieldName = 'CLI_DTULTCOM'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 34
      Position = 11
    end
    object ppDBPipeline1ppField13: TppField
      FieldAlias = 'FAT_CODIGO'
      FieldName = 'FAT_CODIGO'
      FieldLength = 6
      DisplayWidth = 6
      Position = 12
    end
    object ppDBPipeline1ppField14: TppField
      FieldAlias = 'REP_CODIGO'
      FieldName = 'REP_CODIGO'
      FieldLength = 3
      DisplayWidth = 3
      Position = 13
    end
    object ppDBPipeline1ppField15: TppField
      FieldAlias = 'FAT_DTEMIS'
      FieldName = 'FAT_DTEMIS'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 34
      Position = 14
    end
    object ppDBPipeline1ppField16: TppField
      FieldAlias = 'PRD_REFER'
      FieldName = 'PRD_REFER'
      FieldLength = 11
      DisplayWidth = 11
      Position = 15
    end
    object ppDBPipeline1ppField17: TppField
      Alignment = taRightJustify
      FieldAlias = 'FIT_QTDE'
      FieldName = 'FIT_QTDE'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 16
      Position = 16
    end
    object ppDBPipeline1ppField18: TppField
      Alignment = taRightJustify
      FieldAlias = 'FIT_IPIALIQ'
      FieldName = 'FIT_IPIALIQ'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 16
      Position = 17
    end
    object ppDBPipeline1ppField19: TppField
      Alignment = taRightJustify
      FieldAlias = 'FIT_PRECO'
      FieldName = 'FIT_PRECO'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 16
      Position = 18
    end
    object ppDBPipeline1ppField20: TppField
      Alignment = taRightJustify
      FieldAlias = 'FIT_DESCTO'
      FieldName = 'FIT_DESCTO'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 16
      Position = 19
    end
    object ppDBPipeline1ppField21: TppField
      FieldAlias = 'PRD_DESCRI'
      FieldName = 'PRD_DESCRI'
      FieldLength = 40
      DisplayWidth = 40
      Position = 20
    end
    object ppDBPipeline1ppField22: TppField
      FieldAlias = 'SUB_TOTAL_CC'
      FieldName = 'SUB_TOTAL_CC'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 21
    end
    object ppDBPipeline1ppField23: TppField
      FieldAlias = 'PRECOTOTAL_CC'
      FieldName = 'PRECOTOTAL_CC'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 22
    end
  end
end
