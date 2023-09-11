inherited 
  Left = 292
  Top = 123
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Relat'#243'rio'
  ClientHeight = 161
  ClientWidth = 395
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 385
    Height = 105
    Caption = 'Op'#231#245'es de Relat'#243'rio'
    TabOrder = 0
    object RbTodosClientes: TRadioButton
      Left = 16
      Top = 24
      Width = 113
      Height = 17
      Caption = 'Todos os Clientes'
      Checked = True
      TabOrder = 0
      TabStop = True
      OnClick = RbTodosClientesClick
    end
    object RbClienteEspecifico: TRadioButton
      Left = 136
      Top = 24
      Width = 113
      Height = 17
      Caption = 'Cliente Espec'#237'fico'
      TabOrder = 1
      OnClick = RbClienteEspecificoClick
    end
    object Gb_Cliente: TGroupBox
      Left = 16
      Top = 48
      Width = 361
      Height = 41
      Caption = 'Cliente'
      TabOrder = 2
      Visible = False
      object Nr_Id_Cliente: TCurrencyEdit
        Left = 8
        Top = 16
        Width = 57
        Height = 21
        Alignment = taCenter
        AutoSize = False
        DisplayFormat = '00000'
        TabOrder = 0
        OnExit = Nr_Id_ClienteExit
      end
      object Cb_Cliente: TComboBoxRw
        Left = 72
        Top = 16
        Width = 281
        Height = 21
        CharCase = ecUpperCase
        ItemHeight = 13
        TabOrder = 1
        OnChange = Cb_ClienteChange
        OnExit = Cb_ClienteExit
          
        Tabela = 'CLI0000'
        CamposCarregar = 'CLI_RAZAO'
        CamposRetornar = 'CLI_CODIGO'
        CamposOrdernar = 'CLI_RAZAO'
        ConexaoBanco = Dados_Gerador.CONEXAO
        Localizado = False
         
      end
    end
  end
  object BtnFechar: TBitBtn
    Left = 269
    Top = 132
    Width = 121
    Height = 25
    Caption = 'Gerar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = BtnFecharClick
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
  end
  object BitBtn1: TBitBtn
    Left = 128
    Top = 132
    Width = 137
    Height = 25
    Caption = 'Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    Kind = bkCancel
  end
  object RelCliente: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Units = utMillimeters
    DeviceType = 'Screen'
    Language = lgPortugueseBrazil
    OutlineSettings.CreateNode = False
    OutlineSettings.CreatePageNodes = False
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
     
    PDFSettings.Title = 'RelSerial'
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 8
    Top = 120
    Version = '9.01'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 28840
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'SISTEMA DE GERA'#199#195'O DE SERIAIS '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4057
        mmLeft = 2646
        mmTop = 794
        mmWidth = 62865
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'RELAT'#211'RIO DE SERIAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4057
        mmLeft = 79299
        mmTop = 8731
        mmWidth = 40640
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsItalic]
        Transparent = True
        mmHeight = 3969
        mmLeft = 178065
        mmTop = 4233
        mmWidth = 17463
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Emiss'#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4057
        mmLeft = 156634
        mmTop = 4763
        mmWidth = 15663
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'P'#225'gina:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4057
        mmLeft = 158750
        mmTop = 15346
        mmWidth = 12700
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsItalic]
        Transparent = True
        mmHeight = 3969
        mmLeft = 174096
        mmTop = 14817
        mmWidth = 21696
        BandType = 0
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 178330
        mmTop = 9260
        mmWidth = 13494
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 
          '----------------------------------------------------------------' +
          '----------------------------------------------------------------' +
          '-----------------------------'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4057
        mmLeft = 794
        mmTop = 21960
        mmWidth = 199390
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 5821
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'S_DATA_ATENDIMENTO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3969
        mmLeft = 22754
        mmTop = 1058
        mmWidth = 19050
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'S_HORA_ATENDIMENTO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3969
        mmLeft = 42069
        mmTop = 1323
        mmWidth = 14817
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'S_NUMERO_HD'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3969
        mmLeft = 59796
        mmTop = 1058
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'S_SOLICITANTE'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3969
        mmLeft = 78317
        mmTop = 1058
        mmWidth = 43127
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'S_DATA_VALIDADE'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4057
        mmLeft = 168275
        mmTop = 1058
        mmWidth = 28575
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'USU_NOME'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3969
        mmLeft = 123825
        mmTop = 794
        mmWidth = 43127
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 16669
      mmPrintPosition = 0
      object ppLabel13: TppLabel
        UserName = 'Label13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 
          '----------------------------------------------------------------' +
          '----------------------------------------------------------------' +
          '-----------------------------'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 0
        mmTop = 0
        mmWidth = 199496
        BandType = 8
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
         
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 794
        mmTop = 3175
        mmWidth = 82550
        BandType = 8
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'CLI_RAZAO'
      DataPipeline = ppDBPipeline1
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline1'
      object ppGroupHeaderBand2: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 11113
        mmPrintPosition = 0
        object ppLabel3: TppLabel
          UserName = 'Label3'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = 'CLIENTE:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4057
          mmLeft = 4763
          mmTop = 2117
          mmWidth = 16298
          BandType = 3
          GroupNo = 0
        end
        object ppDBText5: TppDBText
          UserName = 'DBText5'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          DataField = 'CLI_RAZAO'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3969
          mmLeft = 23019
          mmTop = 2117
          mmWidth = 137054
          BandType = 3
          GroupNo = 0
        end
        object ppLabel4: TppLabel
          UserName = 'Label4'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = 'Data'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4057
          mmLeft = 23019
          mmTop = 7144
          mmWidth = 7620
          BandType = 3
          GroupNo = 0
        end
        object ppLabel7: TppLabel
          UserName = 'Label7'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = 'Hora'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4057
          mmLeft = 41540
          mmTop = 7408
          mmWidth = 7832
          BandType = 3
          GroupNo = 0
        end
        object ppLabel8: TppLabel
          UserName = 'Label8'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = 'Nr. HD'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3969
          mmLeft = 60061
          mmTop = 7408
          mmWidth = 11113
          BandType = 3
          GroupNo = 0
        end
        object ppLabel9: TppLabel
          UserName = 'Label9'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = 'Solicitante'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4057
          mmLeft = 77788
          mmTop = 7144
          mmWidth = 17992
          BandType = 3
          GroupNo = 0
        end
        object ppLabel10: TppLabel
          UserName = 'Label10'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
           
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4057
          mmLeft = 123561
          mmTop = 6879
          mmWidth = 32173
          BandType = 3
          GroupNo = 0
        end
        object ppLabel11: TppLabel
          UserName = 'Label11'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = 'Validade Licen'#231'a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4057
          mmLeft = 166952
          mmTop = 7144
          mmWidth = 28363
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = DS
    UserName = 'DBPipeline1'
    Left = 64
    Top = 120
    object ppDBPipeline1ppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'S_ID'
      FieldName = 'S_ID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 0
    end
    object ppDBPipeline1ppField2: TppField
      FieldAlias = 'S_SOLICITANTE'
      FieldName = 'S_SOLICITANTE'
      FieldLength = 60
      DisplayWidth = 60
      Position = 1
    end
    object ppDBPipeline1ppField3: TppField
      FieldAlias = 'S_DATA_ATENDIMENTO'
      FieldName = 'S_DATA_ATENDIMENTO'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 2
    end
    object ppDBPipeline1ppField4: TppField
      FieldAlias = 'S_HORA_ATENDIMENTO'
      FieldName = 'S_HORA_ATENDIMENTO'
      FieldLength = 0
      DataType = dtTime
      DisplayWidth = 10
      Position = 3
    end
    object ppDBPipeline1ppField5: TppField
      FieldAlias = 'S_SERIAL_FORNECIDO'
      FieldName = 'S_SERIAL_FORNECIDO'
      FieldLength = 30
      DisplayWidth = 30
      Position = 4
    end
    object ppDBPipeline1ppField6: TppField
      FieldAlias = 'S_SERIAL_GERADO'
      FieldName = 'S_SERIAL_GERADO'
      FieldLength = 30
      DisplayWidth = 30
      Position = 5
    end
    object ppDBPipeline1ppField7: TppField
      FieldAlias = 'S_DATA_VALIDADE'
      FieldName = 'S_DATA_VALIDADE'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 6
    end
    object ppDBPipeline1ppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'S_ID_FUNCIONARIO_RENEW'
      FieldName = 'S_ID_FUNCIONARIO_RENEW'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 7
    end
    object ppDBPipeline1ppField9: TppField
      FieldAlias = 'S_OBSERVACAO'
      FieldName = 'S_OBSERVACAO'
      FieldLength = 1000
      DisplayWidth = 1000
      Position = 8
    end
    object ppDBPipeline1ppField10: TppField
      FieldAlias = 'S_NUMERO_HD'
      FieldName = 'S_NUMERO_HD'
      FieldLength = 10
      DisplayWidth = 10
      Position = 9
    end
    object ppDBPipeline1ppField11: TppField
      FieldAlias = 'CLI_CODIGO'
      FieldName = 'CLI_CODIGO'
      FieldLength = 5
      DisplayWidth = 5
      Position = 10
    end
    object ppDBPipeline1ppField12: TppField
      FieldAlias = 'CLI_RAZAO'
      FieldName = 'CLI_RAZAO'
      FieldLength = 55
      DisplayWidth = 55
      Position = 11
    end
    object ppDBPipeline1ppField13: TppField
      FieldAlias = 'S_ID_CLI'
      FieldName = 'S_ID_CLI'
      FieldLength = 5
      DisplayWidth = 5
      Position = 12
    end
    object ppDBPipeline1ppField14: TppField
      Alignment = taRightJustify
      FieldAlias = 'USU_CODIGO'
      FieldName = 'USU_CODIGO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 13
    end
    object ppDBPipeline1ppField15: TppField
      FieldAlias = 'USU_NOME'
      FieldName = 'USU_NOME'
      FieldLength = 40
      DisplayWidth = 40
      Position = 14
    end
  end
  object DS: TDataSource
    DataSet = Dados_Gerador.CDS_SENHA
    Left = 96
    Top = 120
  end
end
