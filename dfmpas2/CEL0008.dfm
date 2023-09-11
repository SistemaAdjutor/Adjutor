object FormMovCelulas: TFormMovCelulas
  Left = 428
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Monitoramento e Manuten'#231'as das C'#233'lulas'
  ClientHeight = 519
  ClientWidth = 793
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox2: TGroupBox
    Left = 369
    Top = 0
    Width = 112
    Height = 41
    Caption = 'Buscar O.P.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Edt_Nome: TEdit
      Left = 9
      Top = 15
      Width = 88
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 6
      TabOrder = 0
      OnEnter = Edt_NomeEnter
      OnExit = Edt_NomeExit
      OnKeyPress = Edt_NomeKeyPress
    end
  end
  object Panel2: TPanel
    Left = 386
    Top = 472
    Width = 407
    Height = 41
    BevelOuter = bvLowered
    Caption = 'Panel2'
    Color = 10841658
    TabOrder = 5
    object Bit_Relatorio: TBitBtn
      Left = 140
      Top = 6
      Width = 135
      Height = 30
      Cursor = crHandPoint
      Caption = '&Relat'#243'rios'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
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
      TabOrder = 1
      TabStop = False
      OnClick = Bit_RelatorioClick
    end
    object Bit_Manut: TBitBtn
      Left = 5
      Top = 6
      Width = 135
      Height = 30
      Cursor = crHandPoint
      Caption = '&Manuten'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 0
      TabStop = False
      OnClick = Bit_ManutClick
    end
    object Bit_Sair: TBitBtn
      Left = 275
      Top = 6
      Width = 127
      Height = 30
      Cursor = crHandPoint
      Caption = '&Sair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 2
      TabStop = False
      OnClick = BitBtn1Click
    end
  end
  object DBGridMov: TDBGrid
    Left = 0
    Top = 47
    Width = 793
    Height = 418
    Color = 16776176
    Ctl3D = True
    DataSource = DsMovCelula
    FixedColor = 12681984
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = DBGridMovDrawColumnCell
    OnDblClick = DBGridMovDblClick
    OnKeyPress = DBGridMovKeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'CEL_CODIGO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'd.'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CEL_NOME'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'C'#233'lula'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 116
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CEM_DTENTROU'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Entrada'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 61
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'OSV_CODIGO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'O.P.'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 52
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OSV_QTDE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Quant.'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 48
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRD_REFER'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Refer'#234'ncia'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRD_DESCRI'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Produto'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 181
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TUP_TOTAL_CC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'TUP.TOT.'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 63
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CEM_DTCONCLUIU'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Conclus'#227'o'
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
        FieldName = 'FATURAMENTO_CC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Faturamento'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 369
    Height = 41
    Caption = 'Classificar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    TabStop = True
    object Rd_OP: TRadioButton
      Left = 75
      Top = 17
      Width = 43
      Height = 17
      BiDiMode = bdRightToLeft
      Caption = 'O.P.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 2
      OnClick = Rd_CelulaClick
    end
    object Rd_Celula: TRadioButton
      Left = 7
      Top = 17
      Width = 50
      Height = 17
      BiDiMode = bdRightToLeft
      Caption = 'C'#233'lula'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 0
      OnClick = Rd_CelulaClick
    end
    object Rd_Entrada: TRadioButton
      Left = 134
      Top = 17
      Width = 99
      Height = 17
      BiDiMode = bdRightToLeft
      Caption = 'Data de Entrada'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 1
      OnClick = Rd_CelulaClick
    end
    object Rd_Conclu: TRadioButton
      Left = 246
      Top = 17
      Width = 112
      Height = 17
      BiDiMode = bdRightToLeft
      Caption = 'Data da Conclus'#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 3
      OnClick = Rd_CelulaClick
    end
  end
  object BitCancelar: TBitBtn
    Left = 693
    Top = 22
    Width = 100
    Height = 21
    Caption = '&Cancelar'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHighlight
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = BitCancelarClick
  end
  object BitPesquisar: TBitBtn
    Left = 693
    Top = 1
    Width = 100
    Height = 21
    Caption = '&Pesquisar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHighlight
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = BitPesquisarClick
  end
  object SqlCdsMovCelula: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT'#13#10'C3.CEM_REGISTRO,'#13#10'C3.OSV_CODIGO,'#13#10'C3.CEL_CODIGO,'#13#10'C1.CEL' +
      '_NOME,'#13#10'C3.PRD_REFER,'#13#10'P1.PRD_DESCRI,'#13#10'C3.CME_CODIGO,'#13#10'C3.OSV_EM' +
      'ISSAO,'#13#10'C3.OSV_QTDE,'#13#10'C3.PED_CODIGO,'#13#10'C3.CEM_DTENTROU,'#13#10'C3.CEM_D' +
      'TCONCLUIU,'#13#10'C3.CEM_PRECOUNIT,'#13#10'C3.CEM_TUPUNIT,'#13#10'C3.CEM_CELAUX,'#13#10 +
      'C3.CEM_TRABALHO,'#13#10'C3.CEM_TUPTRAB,'#13#10'C3.VCT_TUP,'#13#10'C3.CEM_SITUACAO'#13 +
      #10'FROM CEL_MOV03 C3'#13#10'   LEFT JOIN CEL0000 C1 ON C3.CEL_CODIGO = C' +
      '1.CEL_CODIGO'#13#10'   LEFT JOIN PRD0000 P1 ON C3.PRD_REFER  = P1.PRD_' +
      'REFER'#13#10'ORDER BY C3.OSV_CODIGO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    BeforeEdit = SqlCdsMovCelulaBeforeEdit
    OnCalcFields = SqlCdsMovCelulaCalcFields
    CommandText = 
      'SELECT'#13#10'C3.CEM_REGISTRO,'#13#10'C3.OSV_CODIGO,'#13#10'C3.CEL_CODIGO,'#13#10'C1.CEL' +
      '_NOME,'#13#10'C3.PRD_REFER,'#13#10'P1.PRD_DESCRI,'#13#10'C3.CME_CODIGO,'#13#10'C3.OSV_EM' +
      'ISSAO,'#13#10'C3.OSV_QTDE,'#13#10'C3.PED_CODIGO,'#13#10'C3.CEM_DTENTROU,'#13#10'C3.CEM_D' +
      'TCONCLUIU,'#13#10'C3.CEM_PRECOUNIT,'#13#10'C3.CEM_TUPUNIT,'#13#10'C3.CEM_CELAUX,'#13#10 +
      'C3.CEM_TRABALHO,'#13#10'C3.CEM_TUPTRAB,'#13#10'C3.VCT_TUP,'#13#10'C3.CEM_SITUACAO'#13 +
      #10'FROM CEL_MOV03 C3'#13#10'   LEFT JOIN CEL0000 C1 ON C3.CEL_CODIGO = C' +
      '1.CEL_CODIGO'#13#10'   LEFT JOIN PRD0000 P1 ON C3.PRD_REFER  = P1.PRD_' +
      'REFER'#13#10'ORDER BY C3.OSV_CODIGO'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 540
    Top = 160
    object SqlCdsMovCelulaCEM_REGISTRO: TIntegerField
      FieldName = 'CEM_REGISTRO'
      Required = True
    end
    object SqlCdsMovCelulaOSV_CODIGO: TStringField
      FieldName = 'OSV_CODIGO'
      Required = True
      Size = 6
    end
    object SqlCdsMovCelulaCEL_CODIGO: TStringField
      FieldName = 'CEL_CODIGO'
      Size = 3
    end
    object SqlCdsMovCelulaCEL_NOME: TStringField
      FieldName = 'CEL_NOME'
      Size = 35
    end
    object SqlCdsMovCelulaPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Required = True
      Size = 11
    end
    object SqlCdsMovCelulaPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 50
    end
    object SqlCdsMovCelulaCME_CODIGO: TStringField
      FieldName = 'CME_CODIGO'
      Size = 9
    end
    object SqlCdsMovCelulaOSV_EMISSAO: TDateField
      FieldName = 'OSV_EMISSAO'
    end
    object SqlCdsMovCelulaOSV_QTDE: TFMTBCDField
      FieldName = 'OSV_QTDE'
      DisplayFormat = '#0'
      EditFormat = '#0'
      Precision = 15
    end
    object SqlCdsMovCelulaPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Size = 6
    end
    object SqlCdsMovCelulaCEM_DTENTROU: TDateField
      FieldName = 'CEM_DTENTROU'
    end
    object SqlCdsMovCelulaCEM_DTCONCLUIU: TDateField
      FieldName = 'CEM_DTCONCLUIU'
    end
    object SqlCdsMovCelulaCEM_PRECOUNIT: TFMTBCDField
      FieldName = 'CEM_PRECOUNIT'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
    end
    object SqlCdsMovCelulaCEM_TUPUNIT: TFMTBCDField
      FieldName = 'CEM_TUPUNIT'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
    end
    object SqlCdsMovCelulaCEM_CELAUX: TStringField
      FieldName = 'CEM_CELAUX'
      Size = 1
    end
    object SqlCdsMovCelulaCEM_TRABALHO: TStringField
      FieldName = 'CEM_TRABALHO'
      Size = 30
    end
    object SqlCdsMovCelulaCEM_TUPTRAB: TFMTBCDField
      FieldName = 'CEM_TUPTRAB'
      Precision = 15
    end
    object SqlCdsMovCelulaVCT_TUP: TFMTBCDField
      FieldName = 'VCT_TUP'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
    end
    object SqlCdsMovCelulaCEM_SITUACAO: TStringField
      FieldName = 'CEM_SITUACAO'
      Size = 1
    end
    object SqlCdsMovCelulaFATURAMENTO_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'FATURAMENTO_CC'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Calculated = True
    end
    object SqlCdsMovCelulaTUP_TOTAL_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'TUP_TOTAL_CC'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Calculated = True
    end
  end
  object DsMovCelula: TDataSource
    DataSet = SqlCdsMovCelula
    Left = 556
    Top = 224
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
    Left = 384
    Top = 256
  end
end
