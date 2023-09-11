object RelRbProdCliente: TRelRbProdCliente
  Left = 196
  Top = 209
  Width = 268
  Height = 123
  Caption = 'RelProdCliente.'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object SqlcdsProdCliRb: TSQLClientDataSet
    Active = True
    CommandText = 
      'SELECT CLI_CODIGO,CLI_RAZAO,CLI_PORTE,CLI_ENDERE,CLI_BAIRRO,'#13#10'  ' +
      '             CLI_UF,         CLI_CIDADE,CLI_FONE,CLI_FAX,CLI_CON' +
      'TATO,'#13#10'               CLI_DTINICIO,CLI_DTULTCOM,'#13#10'              ' +
      ' FAT_CODIGO,REP_CODIGO,FAT_DTEMIS,                              ' +
      '                 PRD_REFER,FIT_QTDE,FIT_IPIALIQ,FIT_PRECO,FIT_DE' +
      'SCTO,'#13#10'               PRD_DESCRI'#13#10'FROM CLI0000, FAT0000 , FAT_IT' +
      '02, PRD0000'#13#10'            WHERE '#13#10'                       CLI0000.' +
      'CLI_CODIGO=FAT0000.CLI_CODIGO'#13#10'              AND FAT0000.FAT_COD' +
      'IGO=FAT_IT02.FAT_CODIGO '#13#10'              AND FAT_IT02.PRD_REFER=P' +
      'RD0000.PRD_REFER'#13#10'ORDER BY '#13#10'CLI_UF,CLI_CIDADE,CLI_RAZAO,FAT_DTE' +
      'MIS'
    Aggregates = <>
    Options = [poAllowCommandText]
    ObjectView = True
    Params = <>
    OnCalcFields = SqlcdsProdCliRbCalcFields
    DBConnection = DataCadastros.SQLConnection1
    object SqlcdsProdCliRbCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Size = 5
    end
    object SqlcdsProdCliRbCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Size = 45
    end
    object SqlcdsProdCliRbCLI_PORTE: TStringField
      FieldName = 'CLI_PORTE'
      Size = 1
    end
    object SqlcdsProdCliRbCLI_ENDERE: TStringField
      FieldName = 'CLI_ENDERE'
      Size = 45
    end
    object SqlcdsProdCliRbCLI_BAIRRO: TStringField
      FieldName = 'CLI_BAIRRO'
      Size = 25
    end
    object SqlcdsProdCliRbCLI_UF: TStringField
      FieldName = 'CLI_UF'
      Size = 2
    end
    object SqlcdsProdCliRbCLI_CIDADE: TStringField
      FieldName = 'CLI_CIDADE'
      Size = 30
    end
    object SqlcdsProdCliRbCLI_FONE: TStringField
      FieldName = 'CLI_FONE'
      Size = 11
    end
    object SqlcdsProdCliRbCLI_FAX: TStringField
      FieldName = 'CLI_FAX'
      Size = 11
    end
    object SqlcdsProdCliRbCLI_CONTATO: TStringField
      FieldName = 'CLI_CONTATO'
      Size = 25
    end
    object SqlcdsProdCliRbCLI_DTINICIO: TSQLTimeStampField
      FieldName = 'CLI_DTINICIO'
    end
    object SqlcdsProdCliRbCLI_DTULTCOM: TSQLTimeStampField
      FieldName = 'CLI_DTULTCOM'
    end
    object SqlcdsProdCliRbFAT_CODIGO: TStringField
      FieldName = 'FAT_CODIGO'
      Required = True
      Size = 6
    end
    object SqlcdsProdCliRbREP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      Size = 3
    end
    object SqlcdsProdCliRbFAT_DTEMIS: TSQLTimeStampField
      FieldName = 'FAT_DTEMIS'
    end
    object SqlcdsProdCliRbPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object SqlcdsProdCliRbFIT_QTDE: TFMTBCDField
      FieldName = 'FIT_QTDE'
      Precision = 15
      Size = 8
    end
    object SqlcdsProdCliRbFIT_IPIALIQ: TFMTBCDField
      FieldName = 'FIT_IPIALIQ'
      Precision = 15
      Size = 8
    end
    object SqlcdsProdCliRbFIT_PRECO: TFMTBCDField
      FieldName = 'FIT_PRECO'
      Precision = 15
      Size = 8
    end
    object SqlcdsProdCliRbFIT_DESCTO: TFMTBCDField
      FieldName = 'FIT_DESCTO'
      Precision = 15
      Size = 8
    end
    object SqlcdsProdCliRbPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 40
    end
    object SqlcdsProdCliRbPRECOTOTAL_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'PRECOTOTAL_CC'
      Calculated = True
    end
  end
  object DsProdCliRb: TDataSource
    DataSet = SqlcdsProdCliRb
    Left = 32
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = DsProdCliRb
    UserName = 'DBPipeline1'
    Left = 64
    object ppDBPipeline1ppField1: TppField
      FieldAlias = 'CLI_CODIGO'
      FieldName = 'CLI_CODIGO'
      FieldLength = 5
      DisplayWidth = 5
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
      FieldAlias = 'PRECOTOTAL_CC'
      FieldName = 'PRECOTOTAL_CC'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 21
    end
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4 (210 x 297 mm)'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Template.FileName = 'C:\JobProgram\Adjutor\FontesRelatorios\RELPRODCLIENTE.rtm'
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 96
    Version = '7.01'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 14023
      mmPrintPosition = 0
      object LABEL_EMPRESA: TppLabel
        UserName = 'LABEL_EMPRESA'
        Caption = 'LABEL_EMPRESA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 3969
        mmTop = 529
        mmWidth = 30692
        BandType = 0
      end
      object LTITULO1: TppLabel
        UserName = 'LTITULO1'
        Caption = 'LTITULO1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 3969
        mmTop = 4763
        mmWidth = 15875
        BandType = 0
      end
      object LTITULO2: TppLabel
        UserName = 'LTITULO2'
        Caption = 'LTITULO2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 4233
        mmTop = 8996
        mmWidth = 15875
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4092
        mmLeft = 178859
        mmTop = 794
        mmWidth = 17780
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 178330
        mmTop = 8996
        mmWidth = 18256
        BandType = 0
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Weight = 0.75
        mmHeight = 265
        mmLeft = 3175
        mmTop = 13229
        mmWidth = 194205
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        DataField = 'FAT_DTEMIS'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 6879
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        DataField = 'FAT_CODIGO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 29104
        mmTop = 0
        mmWidth = 12171
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        DataField = 'PRD_REFER'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 41804
        mmTop = 0
        mmWidth = 8467
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        DataField = 'FIT_QTDE'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 134409
        mmTop = 0
        mmWidth = 7144
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        DataField = 'FIT_PRECO'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 146844
        mmTop = 0
        mmWidth = 14288
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        DataField = 'FIT_IPIALIQ'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 187061
        mmTop = 0
        mmWidth = 6615
        BandType = 4
      end
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        DataField = 'PRD_DESCRI'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3810
        mmLeft = 51065
        mmTop = 0
        mmWidth = 82550
        BandType = 4
      end
      object ppVariable1: TppVariable
        UserName = 'Variable1'
        CalcOrder = 0
        DataType = dtCurrency
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 165100
        mmTop = 0
        mmWidth = 18521
        BandType = 4
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'CLI_RAZAO'
      DataPipeline = ppDBPipeline1
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline1'
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 9260
        mmPrintPosition = 0
        object ppDBText2: TppDBText
          UserName = 'DBText2'
          DataField = 'CLI_RAZAO'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3704
          mmLeft = 14023
          mmTop = 0
          mmWidth = 70908
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
          mmLeft = 3704
          mmTop = 3969
          mmWidth = 9525
          BandType = 3
          GroupNo = 0
        end
        object ppDBText1: TppDBText
          UserName = 'DBText1'
          DataField = 'CLI_BAIRRO'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3704
          mmLeft = 14023
          mmTop = 3969
          mmWidth = 83873
          BandType = 3
          GroupNo = 0
        end
        object ppDBText3: TppDBText
          UserName = 'DBText3'
          DataField = 'CLI_ENDERE'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3704
          mmLeft = 86519
          mmTop = 0
          mmWidth = 54504
          BandType = 3
          GroupNo = 0
        end
        object ppLabel3: TppLabel
          UserName = 'Label3'
          Caption = 'T.Compra:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 98425
          mmTop = 3969
          mmWidth = 15875
          BandType = 3
          GroupNo = 0
        end
        object ppDBText6: TppDBText
          UserName = 'DBText6'
          DataField = 'CLI_DTULTCOM'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3704
          mmLeft = 114300
          mmTop = 3969
          mmWidth = 17463
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
          mmLeft = 132027
          mmTop = 3969
          mmWidth = 9790
          BandType = 3
          GroupNo = 0
        end
        object ppDBText7: TppDBText
          UserName = 'DBText7'
          DataField = 'CLI_FONE'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3704
          mmLeft = 142346
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
          mmLeft = 165894
          mmTop = 3969
          mmWidth = 7144
          BandType = 3
          GroupNo = 0
        end
        object ppDBText4: TppDBText
          UserName = 'DBText4'
          DataField = 'CLI_CIDADE'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3704
          mmLeft = 141552
          mmTop = 0
          mmWidth = 41804
          BandType = 3
          GroupNo = 0
        end
        object ppDBText8: TppDBText
          UserName = 'DBText8'
          DataField = 'CLI_FAX'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3704
          mmLeft = 173567
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
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
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
          mmLeft = 3175
          mmTop = 8467
          mmWidth = 193675
          BandType = 3
          GroupNo = 0
        end
        object ppDBText16: TppDBText
          UserName = 'DBText16'
          DataField = 'CLI_CODIGO'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3810
          mmLeft = 3969
          mmTop = 0
          mmWidth = 9525
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 5821
        mmPrintPosition = 0
        object ppLine4: TppLine
          UserName = 'Line4'
          Weight = 0.75
          mmHeight = 265
          mmLeft = 3175
          mmTop = 529
          mmWidth = 193675
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
          DataPipeline = ppDBPipeline1
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
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
          mmWidth = 193411
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc2: TppDBCalc
          UserName = 'DBCalc2'
          DataField = 'PRECOTOTAL_CC'
          DataPipeline = ppDBPipeline1
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          ResetGroup = ppGroup1
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
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
      BreakName = 'LABEL_EMPRESA'
      BreakType = btCustomField
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand2: TppGroupHeaderBand
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
          mmLeft = 6615
          mmTop = 0
          mmWidth = 12435
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
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3810
          mmLeft = 29652
          mmTop = 0
          mmWidth = 9313
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
          mmHeight = 3810
          mmLeft = 42069
          mmTop = 0
          mmWidth = 6068
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
          mmHeight = 3810
          mmLeft = 51329
          mmTop = 0
          mmWidth = 31186
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
        4576656E74494402550001060F5472614576656E7448616E646C65720B50726F
        6772616D4E616D65060F5661726961626C65314F6E43616C630B50726F677261
        6D54797065070B747450726F63656475726506536F75726365068170726F6365
        64757265205661726961626C65314F6E43616C63287661722056616C75653A20
        56617269616E74293B0D0A626567696E0D0A0D0A202056616C7565203A3D2044
        42506970656C696E65315B274649545F505245434F275D202A20204442506970
        656C696E65315B274649545F51544445275D0D0A0D0A656E643B0D0A0D436F6D
        706F6E656E744E616D6506095661726961626C6531094576656E744E616D6506
        064F6E43616C63074576656E74494402210000}
    end
  end
end
