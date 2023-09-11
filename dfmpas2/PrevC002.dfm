object FormPrevConsGrid: TFormPrevConsGrid
  Left = 2
  Top = 4
  AutoSize = True
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Previsao de Consumo das Mat'#233'rias-Primas'
  ClientHeight = 544
  ClientWidth = 793
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label4: TLabel
    Left = 421
    Top = 527
    Width = 132
    Height = 13
    Alignment = taRightJustify
    BiDiMode = bdRightToLeftNoAlign
    Caption = 'Custo total de material:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentFont = False
  end
  object GrpGrade: TGroupBox
    Left = 0
    Top = 408
    Width = 793
    Height = 113
    Caption = 'Consumo de Produtos Intermedi'#225'rios '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    object Label1: TLabel
      Left = 449
      Top = 350
      Width = 132
      Height = 13
      Alignment = taRightJustify
      BiDiMode = bdRightToLeftNoAlign
      Caption = 'Custo total de material:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
    end
    object DBGRIDGRADE: TDBGrid
      Left = 3
      Top = 15
      Width = 787
      Height = 94
      Color = 16776176
      DataSource = DsItensGrade
      FixedColor = 12681984
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      OnKeyPress = DBGRIDGRADEKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'PRD_REFER_ITENS'
          Title.Alignment = taCenter
          Title.Caption = 'Refer'#234'ncia'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindow
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 66
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRD_DESCRI'
          Title.Alignment = taCenter
          Title.Caption = 'Descri'#231#227'o'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindow
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 212
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PTI_SIGLA'
          Title.Alignment = taCenter
          Title.Caption = 'Sigla'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindow
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'PRD_UND'
          Title.Alignment = taCenter
          Title.Caption = 'Und'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindow
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 26
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PSI_ESTFISICO'
          Title.Alignment = taCenter
          Title.Caption = 'Est.Atual'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindow
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 68
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PSI_ESTANTEC'
          Title.Alignment = taCenter
          Title.Caption = 'Atual+Compra'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindow
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 84
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PSI_CONSUMO'
          Title.Alignment = taCenter
          Title.Caption = 'Consumo'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 61
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PSI_CONSUMO_SEMI'
          Title.Alignment = taCenter
          Title.Caption = 'Semi-Acab.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindow
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 69
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PSI_CUSTO_CC'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'P.Custo'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindow
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PSI_FALTA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = #224' Comprar'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindow
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 62
          Visible = True
        end>
    end
    object CurrencyEdit1: TCurrencyEdit
      Left = 584
      Top = 345
      Width = 116
      Height = 21
      TabStop = False
      AutoSize = False
      Color = clBtnFace
      DisplayFormat = ',0.00;-,0.00'
      ReadOnly = True
      TabOrder = 1
    end
  end
  object grb05: TGroupBox
    Left = 632
    Top = 97
    Width = 161
    Height = 72
    TabOrder = 3
    object BitConfig: TBitBtn
      Left = 5
      Top = 11
      Width = 151
      Height = 25
      Caption = '&Configura'#231#227'o de Impress'#227'o'
      TabOrder = 2
      TabStop = False
      OnClick = BitConfigClick
    end
    object BitOk: TBitBtn
      Left = 5
      Top = 37
      Width = 75
      Height = 25
      Caption = '&OK'
      TabOrder = 0
      TabStop = False
      OnClick = BitOkClick
    end
    object Bit_Sair: TBitBtn
      Left = 81
      Top = 37
      Width = 75
      Height = 25
      Caption = '&Sair'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000000000000000000000000
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
      TabOrder = 1
      TabStop = False
      OnClick = Bit_SairClick
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 0
    Width = 631
    Height = 169
    Caption = 'Produtos a produzir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 3
      Top = 16
      Width = 624
      Height = 148
      Color = 16776176
      DataSource = DsProdutos
      FixedColor = 12681984
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'PRD_REFER'
          Title.Alignment = taCenter
          Title.Caption = 'Refer'#234'ncia'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRD_DESCRI'
          Title.Alignment = taCenter
          Title.Caption = 'Descri'#231#227'o'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 345
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PSV_MODE1'
          Title.Alignment = taCenter
          Title.Caption = 'Varia'#231#227'o'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PSV_QUANT1'
          Title.Alignment = taCenter
          Title.Caption = 'Quant.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 71
          Visible = True
        end>
    end
  end
  object GroupBox3: TGroupBox
    Left = 632
    Top = 0
    Width = 161
    Height = 100
    Caption = 'Dispositivo de sa'#237'da'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object RadVideo: TRadioButton
      Left = 14
      Top = 23
      Width = 65
      Height = 17
      Caption = '&V'#237'deo'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TabStop = True
    end
    object RadImpressora: TRadioButton
      Left = 14
      Top = 48
      Width = 81
      Height = 17
      Caption = '&Impressora'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object RadText: TRadioButton
      Left = 14
      Top = 73
      Width = 90
      Height = 17
      Caption = 'Arquivo &Texto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
  end
  object NumEdit1: TCurrencyEdit
    Left = 556
    Top = 523
    Width = 116
    Height = 21
    TabStop = False
    AutoSize = False
    Color = clBtnFace
    DisplayFormat = ',0.00;-,0.00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 5
  end
  object GrpProduto: TGroupBox
    Left = 0
    Top = 169
    Width = 793
    Height = 240
    Caption = 'Consumo de Materiais'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object DBGridProdutos: TDBGrid
      Left = 2
      Top = 16
      Width = 789
      Height = 220
      Color = 16776176
      DataSource = DsItensConsumo
      FixedColor = 12681984
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      OnKeyPress = DBGridProdutosKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'PRD_REFER_ITENS'
          Title.Alignment = taCenter
          Title.Caption = 'Refer'#234'ncia'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindow
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 66
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRD_DESCRI'
          Title.Alignment = taCenter
          Title.Caption = 'Descri'#231#227'o'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindow
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 212
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PTI_SIGLA'
          Title.Alignment = taCenter
          Title.Caption = 'Sigla'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindow
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'PRD_UND'
          Title.Alignment = taCenter
          Title.Caption = 'Und'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindow
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 26
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PSI_ESTFISICO'
          Title.Alignment = taCenter
          Title.Caption = 'Est.Atual'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindow
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 68
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PSI_ESTANTEC'
          Title.Alignment = taCenter
          Title.Caption = 'Atual+Compra'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindow
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 84
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PSI_CONSUMO'
          Title.Alignment = taCenter
          Title.Caption = 'Consumo'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindow
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 61
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PSI_CONSUMO_SEMI'
          Title.Caption = 'Semi-Acab.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 69
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PSI_CUSTO_CC'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'P.Custo'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindow
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PSI_FALTA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = #224' Comprar'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindow
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 62
          Visible = True
        end>
    end
  end
  object PrinterSetupDialog1: TPrinterSetupDialog
    Left = 742
    Top = 29
  end
  object SqlCdsItensConsumo: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'Select'#13#10'C1.*,'#13#10'P1.PRD_DESCRI,'#13#10'P1.PRD_UND,'#13#10'P1.PTI_CODIGO,'#13#10'P2.P' +
      'TI_SIGLA'#13#10'from PSV_IT01 C1'#13#10'LEFT JOIN PRD0000 P1 ON (C1.prd_refe' +
      'r = P1.prd_refer)'#13#10'LEFT JOIN PRD_TIPO P2 ON (P1.pti_codigo = P2.' +
      'pti_codigo)'#13#10'ORDER BY'#13#10'P1.PRD_DESCRI'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    AfterScroll = SqlCdsItensConsumoAfterScroll
    OnCalcFields = SqlCdsItensConsumoCalcFields
    CommandText = 
      'Select'#13#10'C1.*,'#13#10'P1.PRD_DESCRI,'#13#10'P1.PRD_UND,'#13#10'P1.PTI_CODIGO,'#13#10'P2.P' +
      'TI_SIGLA'#13#10'from PSV_IT01 C1'#13#10'LEFT JOIN PRD0000 P1 ON (C1.prd_refe' +
      'r = P1.prd_refer)'#13#10'LEFT JOIN PRD_TIPO P2 ON (P1.pti_codigo = P2.' +
      'pti_codigo)'#13#10'ORDER BY'#13#10'P1.PRD_DESCRI'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 264
    Top = 232
    object SqlCdsItensConsumoPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object SqlCdsItensConsumoPSI_CUSTO: TFMTBCDField
      FieldName = 'PSI_CUSTO'
      Precision = 15
    end
    object SqlCdsItensConsumoPSI_ESTFISICO: TFMTBCDField
      FieldName = 'PSI_ESTFISICO'
      Precision = 15
    end
    object SqlCdsItensConsumoPSI_ESTANTEC: TFMTBCDField
      FieldName = 'PSI_ESTANTEC'
      Precision = 15
    end
    object SqlCdsItensConsumoPSI_CONSUMO: TFMTBCDField
      FieldName = 'PSI_CONSUMO'
      Precision = 15
    end
    object SqlCdsItensConsumoPSI_FALTA: TFMTBCDField
      FieldName = 'PSI_FALTA'
      Precision = 15
    end
    object SqlCdsItensConsumoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      FixedChar = True
      Size = 3
    end
    object SqlCdsItensConsumoPSI_REGISTRO: TIntegerField
      FieldName = 'PSI_REGISTRO'
      Required = True
    end
    object SqlCdsItensConsumoPSI_ESTRESERVA: TFMTBCDField
      FieldName = 'PSI_ESTRESERVA'
      Precision = 15
    end
    object SqlCdsItensConsumoPSI_STATUS: TStringField
      FieldName = 'PSI_STATUS'
      Size = 1
    end
    object SqlCdsItensConsumoPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Size = 7
    end
    object SqlCdsItensConsumoPSI_DISPONIVEL: TFMTBCDField
      FieldName = 'PSI_DISPONIVEL'
      Precision = 15
    end
    object SqlCdsItensConsumoPRD_REFER_ITENS: TStringField
      FieldName = 'PRD_REFER_ITENS'
      Size = 11
    end
    object SqlCdsItensConsumoPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 50
    end
    object SqlCdsItensConsumoPRD_UND: TStringField
      FieldName = 'PRD_UND'
      Size = 3
    end
    object SqlCdsItensConsumoPSI_CUSTO_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'PSI_CUSTO_CC'
      DisplayFormat = '#,###0.000'
      currency = False
      Calculated = True
    end
    object SqlCdsItensConsumoPSI_CONSUMO_SEMI: TFMTBCDField
      FieldName = 'PSI_CONSUMO_SEMI'
      Precision = 15
    end
    object SqlCdsItensConsumoPSI_UND: TStringField
      FieldName = 'PSI_UND'
      Size = 3
    end
    object SqlCdsItensConsumoFALTA_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'FALTA_CC'
      currency = False
      Calculated = True
    end
    object SqlCdsItensConsumoPTI_CODIGO: TStringField
      FieldName = 'PTI_CODIGO'
      Size = 3
    end
    object SqlCdsItensConsumoPTI_SIGLA: TStringField
      FieldName = 'PTI_SIGLA'
      Size = 2
    end
  end
  object DsItensConsumo: TDataSource
    DataSet = SqlCdsItensConsumo
    Left = 296
    Top = 232
  end
  object SqlCdsProdutos: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'select '#13#10'PRD_REFER, '#13#10'PRD_DESCRI, '#13#10'PSV_MODE1,'#13#10'PSV_QUANT1'#13#10'from' +
      ' PSV0000'#13#10'where PSV_FLAG = '#39'P'#39#13#10'order by PRD_REFER'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'select '#13#10'PRD_REFER, '#13#10'PRD_DESCRI, '#13#10'PSV_MODE1,'#13#10'PSV_QUANT1'#13#10'from' +
      ' PSV0000'#13#10'where PSV_FLAG = '#39'P'#39#13#10'order by PRD_REFER'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 256
    Top = 72
    object SqlCdsProdutosPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object SqlCdsProdutosPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 40
    end
    object SqlCdsProdutosPSV_MODE1: TStringField
      FieldName = 'PSV_MODE1'
      Size = 12
    end
    object SqlCdsProdutosPSV_QUANT1: TFMTBCDField
      FieldName = 'PSV_QUANT1'
      Precision = 15
    end
  end
  object DsProdutos: TDataSource
    DataSet = SqlCdsProdutos
    Left = 288
    Top = 72
  end
  object ppDBProdutos: TppDBPipeline
    DataSource = DsProdutos
    UserName = 'DBProdutos'
    Left = 320
    Top = 72
  end
  object ppRelPrevConsumo: TppReport
    AutoStop = False
    DataPipeline = ppDBProdutos
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 15000
    PrinterSetup.mmMarginLeft = 5000
    PrinterSetup.mmMarginRight = 5000
    PrinterSetup.mmMarginTop = 15000
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 1
    Template.FileName = 
      'C:\JobProgram\Developer\Adjutor\FontesRelatorios\RELPrevConsumo.' +
      'rtm'
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
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
    PreviewFormSettings.ZoomSetting = zs100Percent
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 352
    Top = 72
    Version = '16.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBProdutos'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 12171
      mmPrintPosition = 0
      object ppLine14: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line1'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 196321
        BandType = 0
        LayerName = Foreground1
      end
      object LBL_00_EMPRESA: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'LBL_00_EMPRESA'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'LABEL_EMPRESA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3246
        mmLeft = 265
        mmTop = 794
        mmWidth = 22719
        BandType = 0
        LayerName = Foreground1
      end
      object LBL_00_LTITULO1: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'LBL_00_LTITULO1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'TITULO1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 0
        mmTop = 4233
        mmWidth = 19844
        BandType = 0
        LayerName = Foreground1
      end
      object ppSystemVariable11: TppSystemVariable
        DesignLayer = ppDesignLayer2
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 169334
        mmTop = 794
        mmWidth = 26988
        BandType = 0
        LayerName = Foreground1
      end
      object ppSystemVariable12: TppSystemVariable
        DesignLayer = ppDesignLayer2
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 170392
        mmTop = 4233
        mmWidth = 25929
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine29: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line4'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 7673
        mmWidth = 196321
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label1'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'Refer'#234'ncia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 4163
        mmLeft = 0
        mmTop = 8008
        mmWidth = 20108
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label2'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'Descri'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 4163
        mmLeft = 20902
        mmTop = 8008
        mmWidth = 84138
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label3'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'Varia'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 4163
        mmLeft = 106098
        mmTop = 8008
        mmWidth = 26194
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label4'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'Quant.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4163
        mmLeft = 134938
        mmTop = 8008
        mmWidth = 20108
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line2'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 11906
        mmWidth = 196321
        BandType = 0
        LayerName = Foreground1
      end
    end
    object ppDetailBand2: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 5292
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_REFER'
        DataPipeline = ppDBProdutos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBProdutos'
        mmHeight = 3951
        mmLeft = 0
        mmTop = 529
        mmWidth = 20108
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_DESCRI'
        DataPipeline = ppDBProdutos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBProdutos'
        mmHeight = 3951
        mmLeft = 20902
        mmTop = 529
        mmWidth = 84138
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText3'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PSV_MODE1'
        DataPipeline = ppDBProdutos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBProdutos'
        mmHeight = 3951
        mmLeft = 106098
        mmTop = 529
        mmWidth = 26194
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText4'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PSV_QUANT1'
        DataPipeline = ppDBProdutos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBProdutos'
        mmHeight = 3951
        mmLeft = 134938
        mmTop = 529
        mmWidth = 20108
        BandType = 4
        LayerName = Foreground1
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 4498
      mmPrintPosition = 0
      object ppSubReport1: TppSubReport
        DesignLayer = ppDesignLayer2
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ParentPrinterSetup = False
        TraverseAllData = False
        DataPipelineName = 'ppDBItens'
        mmHeight = 4498
        mmLeft = 0
        mmTop = 0
        mmWidth = 206000
        BandType = 7
        LayerName = Foreground1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = ppDBItens
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = 'Carta'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = False
          PrinterSetup.mmMarginBottom = 15000
          PrinterSetup.mmMarginLeft = 10000
          PrinterSetup.mmMarginRight = 9000
          PrinterSetup.mmMarginTop = 15000
          PrinterSetup.mmPaperHeight = 279000
          PrinterSetup.mmPaperWidth = 216000
          PrinterSetup.PaperSize = 1
          Units = utMillimeters
          Version = '16.02'
          mmColumnWidth = 0
          DataPipelineName = 'ppDBItens'
          object ppTitleBand1: TppTitleBand
            Background.Brush.Style = bsClear
            mmBottomOffset = 0
            mmHeight = 14288
            mmPrintPosition = 0
            object ppLabel6: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label6'
              HyperlinkEnabled = False
              Border.Weight = 1.000000000000000000
              Caption = 'Rela'#231#227'o de Mat'#233'ria-Prima Consumida'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Times New Roman'
              Font.Size = 10
              Font.Style = [fsBold]
              FormField = False
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 4233
              mmLeft = 66261
              mmTop = 529
              mmWidth = 57715
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel7: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label7'
              HyperlinkEnabled = False
              AutoSize = False
              Border.Weight = 1.000000000000000000
              Caption = 'Refer'#234'ncia da Mat'#233'ria'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Times New Roman'
              Font.Size = 8
              Font.Style = [fsBold]
              FormField = False
              TextAlignment = taCentered
              Transparent = True
              WordWrap = True
              mmHeight = 8202
              mmLeft = 4763
              mmTop = 5556
              mmWidth = 17727
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel8: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label8'
              HyperlinkEnabled = False
              AutoSize = False
              Border.Weight = 1.000000000000000000
              Caption = 'Descri'#231#227'o da Mat'#233'ria-Prima'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Times New Roman'
              Font.Size = 8
              Font.Style = [fsBold]
              FormField = False
              Transparent = True
              mmHeight = 3316
              mmLeft = 26723
              mmTop = 5556
              mmWidth = 68792
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel9: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label9'
              HyperlinkEnabled = False
              AutoSize = False
              Border.Weight = 1.000000000000000000
              Caption = 'Und'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Times New Roman'
              Font.Size = 8
              Font.Style = [fsBold]
              FormField = False
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3316
              mmLeft = 96309
              mmTop = 5556
              mmWidth = 7408
              BandType = 1
              LayerName = Foreground
            end
            object ppLine3: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line3'
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 265
              mmLeft = 0
              mmTop = 14023
              mmWidth = 196586
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel10: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label10'
              HyperlinkEnabled = False
              AutoSize = False
              Border.Weight = 1.000000000000000000
              Caption = 'Saldo do Estoque'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Times New Roman'
              Font.Size = 8
              Font.Style = [fsBold]
              FormField = False
              TextAlignment = taCentered
              Transparent = True
              WordWrap = True
              mmHeight = 8202
              mmLeft = 104511
              mmTop = 5556
              mmWidth = 14552
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel11: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label101'
              HyperlinkEnabled = False
              AutoSize = False
              Border.Weight = 1.000000000000000000
              Caption = 'Estoque + Compra'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Times New Roman'
              Font.Size = 8
              Font.Style = [fsBold]
              FormField = False
              TextAlignment = taCentered
              Transparent = True
              WordWrap = True
              mmHeight = 8202
              mmLeft = 119856
              mmTop = 5556
              mmWidth = 16933
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel12: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label12'
              HyperlinkEnabled = False
              AutoSize = False
              Border.Weight = 1.000000000000000000
              Caption = 'Qtde Consumo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Times New Roman'
              Font.Size = 8
              Font.Style = [fsBold]
              FormField = False
              TextAlignment = taCentered
              Transparent = True
              WordWrap = True
              mmHeight = 8202
              mmLeft = 137584
              mmTop = 5556
              mmWidth = 13758
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel13: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label13'
              HyperlinkEnabled = False
              AutoSize = False
              Border.Weight = 1.000000000000000000
              Caption = 'Valor de Custo R$'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Times New Roman'
              Font.Size = 8
              Font.Style = [fsBold]
              FormField = False
              TextAlignment = taCentered
              Transparent = True
              WordWrap = True
              mmHeight = 8202
              mmLeft = 166688
              mmTop = 5556
              mmWidth = 13494
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel14: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label14'
              HyperlinkEnabled = False
              AutoSize = False
              Border.Weight = 1.000000000000000000
              Caption = 'Qtde '#224' Comprar'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Times New Roman'
              Font.Size = 8
              Font.Style = [fsBold]
              FormField = False
              TextAlignment = taCentered
              Transparent = True
              WordWrap = True
              mmHeight = 8202
              mmLeft = 180975
              mmTop = 5556
              mmWidth = 15081
              BandType = 1
              LayerName = Foreground
            end
            object ppLine4: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line2'
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 265
              mmLeft = 0
              mmTop = 0
              mmWidth = 196586
              BandType = 1
              LayerName = Foreground
            end
            object ppLine5: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line5'
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 265
              mmLeft = 0
              mmTop = 5027
              mmWidth = 196586
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel15: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label15'
              HyperlinkEnabled = False
              AutoSize = False
              Border.Weight = 1.000000000000000000
              Caption = '*'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Times New Roman'
              Font.Size = 9
              Font.Style = [fsBold]
              FormField = False
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 8202
              mmLeft = 23283
              mmTop = 5556
              mmWidth = 2646
              BandType = 1
              LayerName = Foreground
            end
            object ppLine19: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line19'
              Border.Weight = 1.000000000000000000
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 8731
              mmLeft = 0
              mmTop = 5292
              mmWidth = 529
              BandType = 1
              LayerName = Foreground
            end
            object ppLine20: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line20'
              Border.Weight = 1.000000000000000000
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 8731
              mmLeft = 4233
              mmTop = 5292
              mmWidth = 529
              BandType = 1
              LayerName = Foreground
            end
            object ppLine21: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line201'
              Border.Weight = 1.000000000000000000
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 8731
              mmLeft = 22754
              mmTop = 5292
              mmWidth = 529
              BandType = 1
              LayerName = Foreground
            end
            object ppLine22: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line22'
              Border.Weight = 1.000000000000000000
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 8996
              mmLeft = 26194
              mmTop = 5292
              mmWidth = 529
              BandType = 1
              LayerName = Foreground
            end
            object ppLine23: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line23'
              Border.Weight = 1.000000000000000000
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 8996
              mmLeft = 95779
              mmTop = 5292
              mmWidth = 529
              BandType = 1
              LayerName = Foreground
            end
            object ppLine24: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line24'
              Border.Weight = 1.000000000000000000
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 8996
              mmLeft = 103981
              mmTop = 5292
              mmWidth = 529
              BandType = 1
              LayerName = Foreground
            end
            object ppLine25: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line25'
              Border.Weight = 1.000000000000000000
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 8996
              mmLeft = 119327
              mmTop = 5292
              mmWidth = 529
              BandType = 1
              LayerName = Foreground
            end
            object ppLine26: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line26'
              Border.Weight = 1.000000000000000000
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 8996
              mmLeft = 137054
              mmTop = 5292
              mmWidth = 529
              BandType = 1
              LayerName = Foreground
            end
            object ppLine27: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line27'
              Border.Weight = 1.000000000000000000
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 8996
              mmLeft = 151607
              mmTop = 5292
              mmWidth = 529
              BandType = 1
              LayerName = Foreground
            end
            object ppLine28: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line28'
              Border.Weight = 1.000000000000000000
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 8996
              mmLeft = 166159
              mmTop = 5292
              mmWidth = 529
              BandType = 1
              LayerName = Foreground
            end
            object ppLine32: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line302'
              Border.Weight = 1.000000000000000000
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 8731
              mmLeft = 180446
              mmTop = 5292
              mmWidth = 529
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel17: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label17'
              HyperlinkEnabled = False
              AutoSize = False
              Border.Weight = 1.000000000000000000
              Caption = 'Consumo Semi Ac.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Times New Roman'
              Font.Size = 8
              Font.Style = [fsBold]
              FormField = False
              TextAlignment = taCentered
              Transparent = True
              WordWrap = True
              mmHeight = 8202
              mmLeft = 152136
              mmTop = 5556
              mmWidth = 13758
              BandType = 1
              LayerName = Foreground
            end
            object ppLine18: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line18'
              Border.Weight = 1.000000000000000000
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 8731
              mmLeft = 196321
              mmTop = 5292
              mmWidth = 529
              BandType = 1
              LayerName = Foreground
            end
          end
          object ppDetailBand1: TppDetailBand
            Background1.Brush.Style = bsClear
            Background2.Brush.Style = bsClear
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 6350
            mmPrintPosition = 0
            object ppDBText5: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText5'
              HyperlinkEnabled = False
              Border.Weight = 1.000000000000000000
              DataField = 'PRD_REFER_ITENS'
              DataPipeline = ppDBItens
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Times New Roman'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppDBItens'
              mmHeight = 3175
              mmLeft = 4763
              mmTop = 1323
              mmWidth = 17727
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText6: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText6'
              HyperlinkEnabled = False
              Border.Weight = 1.000000000000000000
              DataField = 'PRD_DESCRI'
              DataPipeline = ppDBItens
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Times New Roman'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppDBItens'
              mmHeight = 3175
              mmLeft = 26723
              mmTop = 1323
              mmWidth = 68792
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText7: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText7'
              HyperlinkEnabled = False
              Border.Weight = 1.000000000000000000
              DataField = 'PSI_UND'
              DataPipeline = ppDBItens
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Times New Roman'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppDBItens'
              mmHeight = 3175
              mmLeft = 96309
              mmTop = 1323
              mmWidth = 7408
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText8: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText8'
              HyperlinkEnabled = False
              Border.Weight = 1.000000000000000000
              DataField = 'PSI_ESTFISICO'
              DataPipeline = ppDBItens
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Times New Roman'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBItens'
              mmHeight = 3175
              mmLeft = 104511
              mmTop = 1323
              mmWidth = 14552
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText9: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText9'
              HyperlinkEnabled = False
              Border.Weight = 1.000000000000000000
              DataField = 'PSI_ESTANTEC'
              DataPipeline = ppDBItens
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Times New Roman'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBItens'
              mmHeight = 3175
              mmLeft = 119856
              mmTop = 1323
              mmWidth = 16933
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText10: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText10'
              HyperlinkEnabled = False
              Border.Weight = 1.000000000000000000
              DataField = 'PSI_CONSUMO'
              DataPipeline = ppDBItens
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Times New Roman'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBItens'
              mmHeight = 3175
              mmLeft = 137584
              mmTop = 1323
              mmWidth = 13758
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText11: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText11'
              HyperlinkEnabled = False
              Border.Weight = 1.000000000000000000
              DataField = 'PSI_CUSTO_CC'
              DataPipeline = ppDBItens
              DisplayFormat = '#,##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Times New Roman'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBItens'
              mmHeight = 3175
              mmLeft = 166688
              mmTop = 1323
              mmWidth = 13494
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText12: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText12'
              HyperlinkEnabled = False
              Border.Weight = 1.000000000000000000
              DataField = 'PSI_FALTA'
              DataPipeline = ppDBItens
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Times New Roman'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBItens'
              mmHeight = 3175
              mmLeft = 180975
              mmTop = 1323
              mmWidth = 15081
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText13: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText13'
              HyperlinkEnabled = False
              Border.Weight = 1.000000000000000000
              DataField = 'PRD_GRADE'
              DataPipeline = ppDBItens
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Times New Roman'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppDBItens'
              mmHeight = 3175
              mmLeft = 23283
              mmTop = 1323
              mmWidth = 2646
              BandType = 4
              LayerName = Foreground
            end
            object ppLine6: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line6'
              Border.Weight = 1.000000000000000000
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6085
              mmLeft = 0
              mmTop = 0
              mmWidth = 529
              BandType = 4
              LayerName = Foreground
            end
            object ppLine7: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line7'
              Border.Weight = 1.000000000000000000
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6085
              mmLeft = 4233
              mmTop = 0
              mmWidth = 529
              BandType = 4
              LayerName = Foreground
            end
            object ppLine8: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line8'
              Border.Weight = 1.000000000000000000
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6085
              mmLeft = 22754
              mmTop = 0
              mmWidth = 529
              BandType = 4
              LayerName = Foreground
            end
            object ppLine9: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line9'
              Border.Weight = 1.000000000000000000
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6085
              mmLeft = 26194
              mmTop = 0
              mmWidth = 529
              BandType = 4
              LayerName = Foreground
            end
            object ppLine10: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line10'
              Border.Weight = 1.000000000000000000
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6085
              mmLeft = 95779
              mmTop = 0
              mmWidth = 529
              BandType = 4
              LayerName = Foreground
            end
            object ppLine11: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line101'
              Border.Weight = 1.000000000000000000
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6085
              mmLeft = 103981
              mmTop = 0
              mmWidth = 529
              BandType = 4
              LayerName = Foreground
            end
            object ppLine12: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line12'
              Border.Weight = 1.000000000000000000
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6085
              mmLeft = 119327
              mmTop = 0
              mmWidth = 529
              BandType = 4
              LayerName = Foreground
            end
            object ppLine13: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line13'
              Border.Weight = 1.000000000000000000
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6085
              mmLeft = 137054
              mmTop = 0
              mmWidth = 529
              BandType = 4
              LayerName = Foreground
            end
            object ppLine15: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line15'
              Border.Weight = 1.000000000000000000
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6085
              mmLeft = 151607
              mmTop = 0
              mmWidth = 529
              BandType = 4
              LayerName = Foreground
            end
            object ppLine16: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line16'
              Border.Weight = 1.000000000000000000
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6085
              mmLeft = 166159
              mmTop = 0
              mmWidth = 529
              BandType = 4
              LayerName = Foreground
            end
            object ppLine17: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line17'
              Border.Weight = 1.000000000000000000
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6085
              mmLeft = 180446
              mmTop = 0
              mmWidth = 529
              BandType = 4
              LayerName = Foreground
            end
            object ppLine2: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line1'
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 265
              mmLeft = 0
              mmTop = 6085
              mmWidth = 196321
              BandType = 4
              LayerName = Foreground
            end
            object ppDBCalc2: TppDBCalc
              DesignLayer = ppDesignLayer1
              UserName = 'DBCalc2'
              HyperlinkEnabled = False
              Border.Weight = 1.000000000000000000
              DataPipeline = ppDBItens
              DisplayFormat = '00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Times New Roman'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              DBCalcType = dcCount
              DataPipelineName = 'ppDBItens'
              mmHeight = 3316
              mmLeft = 529
              mmTop = 1323
              mmWidth = 3175
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText14: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText101'
              HyperlinkEnabled = False
              Border.Weight = 1.000000000000000000
              DataField = 'PSI_CONSUMO_SEMI'
              DataPipeline = ppDBItens
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Times New Roman'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBItens'
              mmHeight = 3175
              mmLeft = 152136
              mmTop = 1323
              mmWidth = 13758
              BandType = 4
              LayerName = Foreground
            end
            object ppLine30: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line30'
              Border.Weight = 1.000000000000000000
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6350
              mmLeft = 196321
              mmTop = 0
              mmWidth = 529
              BandType = 4
              LayerName = Foreground
            end
          end
          object ppSummaryBand3: TppSummaryBand
            Background.Brush.Style = bsClear
            mmBottomOffset = 0
            mmHeight = 4763
            mmPrintPosition = 0
            object ppLabel5: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label5'
              HyperlinkEnabled = False
              AutoSize = False
              Border.Weight = 1.000000000000000000
              Caption = 'Custo Total de Mercadoria:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Times New Roman'
              Font.Size = 8
              Font.Style = [fsBold]
              FormField = False
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3316
              mmLeft = 114565
              mmTop = 529
              mmWidth = 52652
              BandType = 7
              LayerName = Foreground
            end
            object ppDBCalc1: TppDBCalc
              DesignLayer = ppDesignLayer1
              UserName = 'DBCalc1'
              HyperlinkEnabled = False
              Border.Weight = 1.000000000000000000
              DataField = 'PSI_CUSTO_CC'
              DataPipeline = ppDBItens
              DisplayFormat = '#,##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Times New Roman'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBItens'
              mmHeight = 3316
              mmLeft = 167746
              mmTop = 423
              mmWidth = 12965
              BandType = 7
              LayerName = Foreground
            end
            object ppLine33: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line33'
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 265
              mmLeft = 0
              mmTop = 4498
              mmWidth = 196321
              BandType = 7
              LayerName = Foreground
            end
            object ppLabel16: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label16'
              HyperlinkEnabled = False
              Border.Weight = 1.000000000000000000
              Caption = 'X - Produtos de Grade'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Times New Roman'
              Font.Size = 8
              Font.Style = []
              FormField = False
              Transparent = True
              mmHeight = 3440
              mmLeft = 0
              mmTop = 529
              mmWidth = 62442
              BandType = 7
              LayerName = Foreground
            end
          end
          object ppDesignLayers1: TppDesignLayers
            object ppDesignLayer1: TppDesignLayer
              UserName = 'Foreground'
              LayerType = ltBanded
              Index = 0
            end
          end
        end
      end
    end
    object ppDesignLayers2: TppDesignLayers
      object ppDesignLayer2: TppDesignLayer
        UserName = 'Foreground1'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object ppDBItens: TppDBPipeline
    DataSource = DsItensConsumo
    UserName = 'DBItens'
    Left = 328
    Top = 232
    MasterDataPipelineName = 'ppDBProdutos'
  end
  object SqlCdsItensGrade: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'Select'#13#10'C1.*,'#13#10'P1.PRD_DESCRI,'#13#10'P1.PRD_UND,'#13#10'P1.PTI_CODIGO,'#13#10'P2.P' +
      'TI_SIGLA'#13#10'from PSV_IT01 C1'#13#10'LEFT JOIN PRD0000 P1 ON (C1.prd_refe' +
      'r = P1.prd_refer)'#13#10'LEFT JOIN PRD_TIPO P2 ON (P1.pti_codigo = P2.' +
      'pti_codigo)'#13#10'ORDER BY'#13#10'P1.PRD_DESCRI'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    OnCalcFields = SqlCdsItensGradeCalcFields
    CommandText = 
      'Select'#13#10'C1.*,'#13#10'P1.PRD_DESCRI,'#13#10'P1.PRD_UND,'#13#10'P1.PTI_CODIGO,'#13#10'P2.P' +
      'TI_SIGLA'#13#10'from PSV_IT01 C1'#13#10'LEFT JOIN PRD0000 P1 ON (C1.prd_refe' +
      'r = P1.prd_refer)'#13#10'LEFT JOIN PRD_TIPO P2 ON (P1.pti_codigo = P2.' +
      'pti_codigo)'#13#10'ORDER BY'#13#10'P1.PRD_DESCRI'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 280
    Top = 472
    object SqlCdsItensGradePRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object SqlCdsItensGradePSI_CUSTO: TFMTBCDField
      FieldName = 'PSI_CUSTO'
      Precision = 15
    end
    object SqlCdsItensGradePSI_ESTFISICO: TFMTBCDField
      FieldName = 'PSI_ESTFISICO'
      Precision = 15
    end
    object SqlCdsItensGradePSI_ESTANTEC: TFMTBCDField
      FieldName = 'PSI_ESTANTEC'
      Precision = 15
    end
    object SqlCdsItensGradePSI_CONSUMO: TFMTBCDField
      FieldName = 'PSI_CONSUMO'
      Precision = 15
    end
    object SqlCdsItensGradePSI_FALTA: TFMTBCDField
      FieldName = 'PSI_FALTA'
      Precision = 15
    end
    object SqlCdsItensGradeEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      FixedChar = True
      Size = 3
    end
    object SqlCdsItensGradePSI_REGISTRO: TIntegerField
      FieldName = 'PSI_REGISTRO'
      Required = True
    end
    object SqlCdsItensGradePSI_ESTRESERVA: TFMTBCDField
      FieldName = 'PSI_ESTRESERVA'
      Precision = 15
    end
    object SqlCdsItensGradePSI_STATUS: TStringField
      FieldName = 'PSI_STATUS'
      Size = 1
    end
    object SqlCdsItensGradePED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Size = 7
    end
    object SqlCdsItensGradePSI_DISPONIVEL: TFMTBCDField
      FieldName = 'PSI_DISPONIVEL'
      Precision = 15
    end
    object SqlCdsItensGradePRD_REFER_ITENS: TStringField
      FieldName = 'PRD_REFER_ITENS'
      Size = 11
    end
    object SqlCdsItensGradePRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 50
    end
    object SqlCdsItensGradePRD_UND: TStringField
      FieldName = 'PRD_UND'
      Size = 3
    end
    object SqlCdsItensGradePSI_CUSTO_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'PSI_CUSTO_CC'
      DisplayFormat = '#,###0.000'
      Calculated = True
    end
    object SqlCdsItensGradePSI_CONSUMO_SEMI: TFMTBCDField
      FieldName = 'PSI_CONSUMO_SEMI'
      Precision = 15
    end
    object SqlCdsItensGradePSI_UND: TStringField
      FieldName = 'PSI_UND'
      Size = 3
    end
    object SqlCdsItensGradePTI_CODIGO: TStringField
      FieldName = 'PTI_CODIGO'
      Size = 3
    end
    object SqlCdsItensGradePTI_SIGLA: TStringField
      FieldName = 'PTI_SIGLA'
      Size = 2
    end
  end
  object DsItensGrade: TDataSource
    DataSet = SqlCdsItensGrade
    Left = 312
    Top = 472
  end
end
