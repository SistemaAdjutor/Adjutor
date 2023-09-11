object FrmKardexPedido: TFrmKardexPedido
  Left = 320
  Top = 123
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Movimentos do produto no estoque (Kardex)'
  ClientHeight = 501
  ClientWidth = 797
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox2: TGroupBox
    Left = 0
    Top = 31
    Width = 797
    Height = 167
    Align = alTop
    Caption = 'Entradas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object DbGrdManutE: TDBGrid
      Left = 2
      Top = 15
      Width = 793
      Height = 150
      Hint = 'Entradas'
      Align = alClient
      Color = 16776176
      DataSource = DsKardexE
      FixedColor = 12681984
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit]
      ParentFont = False
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlue
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      OnDblClick = DbGrdManutEDblClick
      OnKeyPress = DbGrdManutEKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'PES_DATA'
          Title.Alignment = taCenter
          Title.Caption = 'Data'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 63
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'PES_NUMDOC'
          Title.Caption = 'Documento'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MOV_CC'
          Title.Alignment = taCenter
          Title.Caption = 'Movimento'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 68
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PES_QTDE'
          Title.Alignment = taCenter
          Title.Caption = 'Qtde'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PES_VALOR'
          Title.Alignment = taCenter
          Title.Caption = 'Pre'#231'o Liq'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PES_VLCOMIPI_CC'
          Title.Alignment = taCenter
          Title.Caption = 'Pre'#231'o+IPI'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AMX_CODIGO'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'd'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 28
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AMX_DESCRI'
          Title.Alignment = taCenter
          Title.Caption = 'Almoxarifado'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 166
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PES_KARDEX_OBS'
          Title.Alignment = taCenter
          Title.Caption = 'OBS'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end>
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 198
    Width = 797
    Height = 167
    Align = alTop
    Caption = 'Sa'#237'das'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object DbGrdManutS: TDBGrid
      Left = 2
      Top = 15
      Width = 793
      Height = 150
      Hint = 'Sa'#237'das'
      Align = alClient
      Color = 16776176
      DataSource = DsKardexS
      FixedColor = 12681984
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit]
      ParentFont = False
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlue
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      OnDblClick = DbGrdManutSDblClick
      OnKeyPress = DbGrdManutSKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'PES_DATA'
          Title.Alignment = taCenter
          Title.Caption = 'Data'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 63
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'PES_NUMDOC'
          Title.Caption = 'Documento'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindow
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MOV_CC'
          Title.Alignment = taCenter
          Title.Caption = 'Movimento'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 68
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PES_QTDE'
          Title.Alignment = taCenter
          Title.Caption = 'Qtde'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PES_VALOR'
          Title.Alignment = taCenter
          Title.Caption = 'Pre'#231'o Liq'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PES_VLCOMIPI_CC'
          Title.Alignment = taCenter
          Title.Caption = 'Pre'#231'o+IPI'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AMX_CODIGO'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'd'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 28
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AMX_DESCRI'
          Title.Alignment = taCenter
          Title.Caption = 'Almoxarifado'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 169
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PES_KARDEX_OBS'
          Title.Alignment = taCenter
          Title.Caption = 'OBS'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end>
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 797
    Height = 31
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    object Label1: TLabel
      Left = 6
      Top = 11
      Width = 49
      Height = 13
      Caption = 'Produto:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object EdtRefer: TEdit
      Left = 56
      Top = 8
      Width = 83
      Height = 21
      TabStop = False
      Color = 14145495
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object EdtDescricao: TEdit
      Left = 140
      Top = 8
      Width = 477
      Height = 21
      TabStop = False
      Color = 14145495
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
  end
  object GroupMultiAlmox: TGroupBox
    Left = 0
    Top = 365
    Width = 797
    Height = 43
    Align = alTop
    Caption = 'Movimentos do Almoxarifado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    object Label2: TLabel
      Left = 5
      Top = 20
      Width = 55
      Height = 13
      Caption = 'Entradas:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 203
      Top = 20
      Width = 45
      Height = 13
      Caption = 'Sa'#237'das:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 522
      Top = 20
      Width = 119
      Height = 13
      Caption = 'Saldo do movimento:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cEntrada: TCurrencyEdit
      Left = 61
      Top = 16
      Width = 130
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 14145495
      DisplayFormat = '#,###0.000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object cSaida: TCurrencyEdit
      Left = 248
      Top = 16
      Width = 130
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 14145495
      DisplayFormat = '#,###0.000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object cSaldo: TCurrencyEdit
      Left = 642
      Top = 16
      Width = 130
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 14145495
      DisplayFormat = '#,###0.000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 471
    Width = 797
    Height = 30
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 4
    object BitSair: TBitBtn
      Left = 675
      Top = 2
      Width = 100
      Height = 25
      Hint = 'Sair'
      Caption = '&Sair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlight
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = BitSairClick
    end
  end
  object GroupBox4: TGroupBox
    Left = 0
    Top = 407
    Width = 797
    Height = 64
    Align = alBottom
    Caption = 'Posi'#231#227'o Geral do Estoque'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    object Label6: TLabel
      Left = 525
      Top = 37
      Width = 11
      Height = 20
      Caption = '='
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 207
      Top = 32
      Width = 8
      Height = 24
      Caption = '-'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 314
      Top = 33
      Width = 8
      Height = 24
      Caption = '-'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 421
      Top = 33
      Width = 8
      Height = 24
      Caption = '-'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 98
      Top = 35
      Width = 11
      Height = 20
      Caption = '+'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Panel3: TPanel
      Left = 3
      Top = 18
      Width = 100
      Height = 15
      Caption = 'Estoque Inicial'
      Color = 12681984
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DBEdit56: TDBEdit
      Left = 112
      Top = 35
      Width = 90
      Height = 21
      Color = 14145495
      DataField = 'PRD_ENTRADA'
      DataSource = DsRefer
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object Panel4: TPanel
      Left = 104
      Top = 18
      Width = 110
      Height = 15
      Caption = 'Entradas'
      Color = 12681984
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object DBEdit14: TDBEdit
      Left = 219
      Top = 35
      Width = 90
      Height = 21
      Color = 14145495
      DataField = 'PRD_SAIDA'
      DataSource = DsRefer
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object Panel9: TPanel
      Left = 208
      Top = 18
      Width = 111
      Height = 15
      Caption = 'Sa'#237'das'
      Color = 12681984
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object DBEdit18: TDBEdit
      Left = 326
      Top = 35
      Width = 90
      Height = 21
      Color = clWhite
      DataField = 'PRD_RESERVA'
      DataSource = DsRefer
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
    end
    object Panel11: TPanel
      Left = 319
      Top = 18
      Width = 111
      Height = 15
      Caption = 'Qtde em reserva'
      Color = 12681984
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object DBEdit19: TDBEdit
      Left = 432
      Top = 35
      Width = 90
      Height = 21
      Color = 14145495
      DataField = 'PRD_EMPENHO'
      DataSource = DsRefer
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
    end
    object Panel12: TPanel
      Left = 424
      Top = 18
      Width = 105
      Height = 15
      Caption = 'Qtde empenhado'
      Color = 12681984
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
    object DBEdit1: TDBEdit
      Left = 7
      Top = 35
      Width = 90
      Height = 21
      Color = 14145495
      DataField = 'PRD_ESTOQUE'
      DataSource = DsRefer
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
    end
    object Panel10: TPanel
      Left = 528
      Top = 18
      Width = 99
      Height = 15
      Caption = 'Estoque Atual'
      Color = 12681984
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
    end
    object DBEdit17: TDBEdit
      Left = 538
      Top = 35
      Width = 90
      Height = 21
      Color = clMoneyGreen
      DataField = 'PRD_FISICO_CC'
      DataSource = DsRefer
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 11
    end
  end
  object DsKardexE: TDataSource
    DataSet = SqlCdsKardexE
    Left = 272
    Top = 88
  end
  object SqlCdsKardexE: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'select'#13#10'E1.* ,'#13#10'A1.AMX_DESCRI'#13#10'from PRD_ENSA E1'#13#10'LEFT JOIN ALMOX' +
      '0000 A1 ON (A1.AMX_CODIGO = E1.AMX_CODIGO)'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    OnCalcFields = SqlCdsKardexECalcFields
    CommandText = 
      'select'#13#10'E1.* ,'#13#10'A1.AMX_DESCRI'#13#10'from PRD_ENSA E1'#13#10'LEFT JOIN ALMOX' +
      '0000 A1 ON (A1.AMX_CODIGO = E1.AMX_CODIGO)'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 240
    Top = 88
    object SqlCdsKardexEPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object SqlCdsKardexEPES_TIPO: TStringField
      FieldName = 'PES_TIPO'
      Size = 1
    end
    object SqlCdsKardexEPES_QTDE: TFMTBCDField
      FieldName = 'PES_QTDE'
      DisplayFormat = '#,###0.000'
      EditFormat = '####0.000'
      Precision = 15
    end
    object SqlCdsKardexEPES_NUMDOC: TStringField
      FieldName = 'PES_NUMDOC'
      Size = 6
    end
    object SqlCdsKardexEPES_TIPDOC: TStringField
      FieldName = 'PES_TIPDOC'
      Size = 2
    end
    object SqlCdsKardexEPES_DATA: TSQLTimeStampField
      FieldName = 'PES_DATA'
    end
    object SqlCdsKardexEEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlCdsKardexEPES_ORIGEM: TStringField
      FieldName = 'PES_ORIGEM'
      Size = 10
    end
    object SqlCdsKardexEPES_VALOR: TFMTBCDField
      FieldName = 'PES_VALOR'
      DisplayFormat = '#,####0.0000'
      Precision = 15
    end
    object SqlCdsKardexEPES_VAR1: TFMTBCDField
      FieldName = 'PES_VAR1'
      DisplayFormat = '#,###0.000'
      Precision = 15
    end
    object SqlCdsKardexEPES_VAR2: TFMTBCDField
      FieldName = 'PES_VAR2'
      DisplayFormat = '#,###0.000'
      Precision = 15
    end
    object SqlCdsKardexEPES_VAR3: TFMTBCDField
      FieldName = 'PES_VAR3'
      DisplayFormat = '#,###0.000'
      Precision = 15
    end
    object SqlCdsKardexEPES_VAR4: TFMTBCDField
      FieldName = 'PES_VAR4'
      DisplayFormat = '#,###0.000'
      Precision = 15
    end
    object SqlCdsKardexEPES_VAR5: TFMTBCDField
      FieldName = 'PES_VAR5'
      DisplayFormat = '#,###0.000'
      Precision = 15
    end
    object SqlCdsKardexEPES_VAR6: TFMTBCDField
      FieldName = 'PES_VAR6'
      DisplayFormat = '#,###0.000'
      Precision = 15
    end
    object SqlCdsKardexEPES_VAR7: TFMTBCDField
      FieldName = 'PES_VAR7'
      DisplayFormat = '#,###0.000'
      Precision = 15
    end
    object SqlCdsKardexEPES_VAR8: TFMTBCDField
      FieldName = 'PES_VAR8'
      DisplayFormat = '#,###0.000'
      Precision = 15
    end
    object SqlCdsKardexEPES_REGISTRO: TIntegerField
      FieldName = 'PES_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SqlCdsKardexEMOV_CC: TStringField
      FieldKind = fkCalculated
      FieldName = 'MOV_CC'
      Size = 7
      Calculated = True
    end
    object SqlCdsKardexEAMX_CODIGO: TStringField
      FieldName = 'AMX_CODIGO'
      Size = 3
    end
    object SqlCdsKardexEFOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      Size = 4
    end
    object SqlCdsKardexEAMX_DESCRI: TStringField
      FieldName = 'AMX_DESCRI'
      ProviderFlags = []
      Size = 35
    end
    object SqlCdsKardexEPES_IPI: TFMTBCDField
      FieldName = 'PES_IPI'
      Precision = 15
    end
    object SqlCdsKardexEPES_VLCOMIPI_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'PES_VLCOMIPI_CC'
      DisplayFormat = '#,####0.0000'
      EditFormat = '#,####0.0000'
      Calculated = True
    end
    object SqlCdsKardexEPES_KARDEX_OBS: TStringField
      FieldName = 'PES_KARDEX_OBS'
      Size = 80
    end
  end
  object SqlCdsKardexS: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'select'#13#10'E1.* ,'#13#10'A1.AMX_DESCRI'#13#10'from PRD_ENSA E1'#13#10'LEFT JOIN ALMOX' +
      '0000 A1 ON (A1.AMX_CODIGO = E1.AMX_CODIGO)'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    OnCalcFields = SqlCdsKardexSCalcFields
    CommandText = 
      'select'#13#10'E1.* ,'#13#10'A1.AMX_DESCRI'#13#10'from PRD_ENSA E1'#13#10'LEFT JOIN ALMOX' +
      '0000 A1 ON (A1.AMX_CODIGO = E1.AMX_CODIGO)'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 248
    Top = 296
    object SqlCdsKardexSPES_REGISTRO: TIntegerField
      FieldName = 'PES_REGISTRO'
      Required = True
    end
    object SqlCdsKardexSPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object SqlCdsKardexSPES_TIPO: TStringField
      FieldName = 'PES_TIPO'
      Size = 1
    end
    object SqlCdsKardexSPES_QTDE: TFMTBCDField
      FieldName = 'PES_QTDE'
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
      Precision = 15
    end
    object SqlCdsKardexSPES_NUMDOC: TStringField
      FieldName = 'PES_NUMDOC'
      Size = 6
    end
    object SqlCdsKardexSPES_TIPDOC: TStringField
      FieldName = 'PES_TIPDOC'
      Size = 2
    end
    object SqlCdsKardexSPES_DATA: TSQLTimeStampField
      FieldName = 'PES_DATA'
    end
    object SqlCdsKardexSEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlCdsKardexSPES_ORIGEM: TStringField
      FieldName = 'PES_ORIGEM'
      Size = 10
    end
    object SqlCdsKardexSPES_VALOR: TFMTBCDField
      FieldName = 'PES_VALOR'
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
      Precision = 15
    end
    object SqlCdsKardexSPES_VAR1: TFMTBCDField
      FieldName = 'PES_VAR1'
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
      Precision = 15
    end
    object SqlCdsKardexSPES_VAR2: TFMTBCDField
      FieldName = 'PES_VAR2'
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
      Precision = 15
    end
    object SqlCdsKardexSPES_VAR3: TFMTBCDField
      FieldName = 'PES_VAR3'
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
      Precision = 15
    end
    object SqlCdsKardexSPES_VAR4: TFMTBCDField
      FieldName = 'PES_VAR4'
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
      Precision = 15
    end
    object SqlCdsKardexSPES_VAR5: TFMTBCDField
      FieldName = 'PES_VAR5'
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
      Precision = 15
    end
    object SqlCdsKardexSPES_VAR6: TFMTBCDField
      FieldName = 'PES_VAR6'
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
      Precision = 15
    end
    object SqlCdsKardexSPES_VAR7: TFMTBCDField
      FieldName = 'PES_VAR7'
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
      Precision = 15
    end
    object SqlCdsKardexSPES_VAR8: TFMTBCDField
      FieldName = 'PES_VAR8'
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
      Precision = 15
    end
    object SqlCdsKardexSAMX_CODIGO: TStringField
      FieldName = 'AMX_CODIGO'
      Size = 3
    end
    object SqlCdsKardexSFOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      Size = 4
    end
    object SqlCdsKardexSPES_IPI: TFMTBCDField
      FieldName = 'PES_IPI'
      Precision = 15
    end
    object SqlCdsKardexSAMX_DESCRI: TStringField
      FieldName = 'AMX_DESCRI'
      Size = 35
    end
    object SqlCdsKardexSMOV_CC: TStringField
      FieldKind = fkCalculated
      FieldName = 'MOV_CC'
      Size = 10
      Calculated = True
    end
    object SqlCdsKardexSPES_VLCOMIPI_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'PES_VLCOMIPI_CC'
      DisplayFormat = '#,####0.0000'
      EditFormat = '#,####0.0000'
      Calculated = True
    end
    object SqlCdsKardexSPES_KARDEX_OBS: TStringField
      FieldName = 'PES_KARDEX_OBS'
      Size = 80
    end
  end
  object DsKardexS: TDataSource
    DataSet = SqlCdsKardexS
    Left = 280
    Top = 296
  end
  object DsRefer: TDataSource
    DataSet = SqlCdsRefer
    Left = 496
    Top = 280
  end
  object SqlCdsRefer: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'select '#13#10'PTI_CODIGO, '#13#10'PRD_REFER, '#13#10'PRD_DESCRI,'#13#10'PRD_ESTOQUE,'#13#10'P' +
      'RD_ENTRADA,'#13#10'PRD_SAIDA,'#13#10'PRD_RESERVA,'#13#10'PRD_EMPENHO,'#13#10'PRD_PCUSTO,' +
      ' '#13#10'PRD_PVENDA, '#13#10'PRD_PENDENTE, '#13#10'PRD_VAR1, '#13#10'PRD_VAR2, '#13#10'PRD_VAR' +
      '3, '#13#10'PRD_VAR4, '#13#10'PRD_VAR5, '#13#10'PRD_VAR6, '#13#10'PRD_VAR7, '#13#10'PRD_VAR8, '#13 +
      #10'PRD_DCVAR1, '#13#10'PRD_DCVAR2, '#13#10'PRD_DCVAR3, '#13#10'PRD_DCVAR4, '#13#10'PRD_DCV' +
      'AR5, '#13#10'PRD_DCVAR6, '#13#10'PRD_DCVAR7, '#13#10'PRD_DCVAR8 '#13#10'from PRD0000'#13#10'wh' +
      'ere PRD_REFER = :PRD_REFER'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <
      item
        DataType = ftUnknown
        Name = 'PRD_REFER'
        ParamType = ptInput
      end>
    Params = <
      item
        DataType = ftString
        Name = 'PRD_REFER'
        ParamType = ptInput
      end>
    OnCalcFields = SqlCdsReferCalcFields
    CommandText = 
      'select '#13#10'PTI_CODIGO, '#13#10'PRD_REFER, '#13#10'PRD_DESCRI,'#13#10'PRD_ESTOQUE,'#13#10'P' +
      'RD_ENTRADA,'#13#10'PRD_SAIDA,'#13#10'PRD_RESERVA,'#13#10'PRD_EMPENHO,'#13#10'PRD_PCUSTO,' +
      ' '#13#10'PRD_PVENDA, '#13#10'PRD_PENDENTE, '#13#10'PRD_VAR1, '#13#10'PRD_VAR2, '#13#10'PRD_VAR' +
      '3, '#13#10'PRD_VAR4, '#13#10'PRD_VAR5, '#13#10'PRD_VAR6, '#13#10'PRD_VAR7, '#13#10'PRD_VAR8, '#13 +
      #10'PRD_DCVAR1, '#13#10'PRD_DCVAR2, '#13#10'PRD_DCVAR3, '#13#10'PRD_DCVAR4, '#13#10'PRD_DCV' +
      'AR5, '#13#10'PRD_DCVAR6, '#13#10'PRD_DCVAR7, '#13#10'PRD_DCVAR8 '#13#10'from PRD0000'#13#10'wh' +
      'ere PRD_REFER = :PRD_REFER'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 464
    Top = 280
    object SqlCdsReferPTI_CODIGO: TStringField
      FieldName = 'PTI_CODIGO'
      Size = 3
    end
    object SqlCdsReferPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object SqlCdsReferPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 50
    end
    object SqlCdsReferPRD_ESTOQUE: TFMTBCDField
      FieldName = 'PRD_ESTOQUE'
      DisplayFormat = '#,##0.0000'
      Precision = 15
    end
    object SqlCdsReferPRD_ENTRADA: TFMTBCDField
      FieldName = 'PRD_ENTRADA'
      DisplayFormat = '#,##0.0000'
      Precision = 15
    end
    object SqlCdsReferPRD_SAIDA: TFMTBCDField
      FieldName = 'PRD_SAIDA'
      DisplayFormat = '#,##0.0000'
      Precision = 15
    end
    object SqlCdsReferPRD_PENDENTE: TFMTBCDField
      FieldName = 'PRD_PENDENTE'
      DisplayFormat = '#,##0.0000'
      Precision = 15
    end
    object SqlCdsReferPRD_PCUSTO: TFMTBCDField
      FieldName = 'PRD_PCUSTO'
      DisplayFormat = '#,##0.0000'
      Precision = 15
    end
    object SqlCdsReferPRD_PVENDA: TFMTBCDField
      FieldName = 'PRD_PVENDA'
      DisplayFormat = '#,##0.0000'
      Precision = 15
    end
    object SqlCdsReferPRD_VAR1: TFMTBCDField
      FieldName = 'PRD_VAR1'
      Precision = 15
    end
    object SqlCdsReferPRD_VAR2: TFMTBCDField
      FieldName = 'PRD_VAR2'
      Precision = 15
    end
    object SqlCdsReferPRD_VAR3: TFMTBCDField
      FieldName = 'PRD_VAR3'
      Precision = 15
    end
    object SqlCdsReferPRD_VAR4: TFMTBCDField
      FieldName = 'PRD_VAR4'
      Precision = 15
    end
    object SqlCdsReferPRD_VAR5: TFMTBCDField
      FieldName = 'PRD_VAR5'
      Precision = 15
    end
    object SqlCdsReferPRD_VAR6: TFMTBCDField
      FieldName = 'PRD_VAR6'
      Precision = 15
    end
    object SqlCdsReferPRD_VAR7: TFMTBCDField
      FieldName = 'PRD_VAR7'
      Precision = 15
    end
    object SqlCdsReferPRD_VAR8: TFMTBCDField
      FieldName = 'PRD_VAR8'
      Precision = 15
    end
    object SqlCdsReferPRD_DCVAR1: TStringField
      FieldName = 'PRD_DCVAR1'
      Size = 12
    end
    object SqlCdsReferPRD_DCVAR2: TStringField
      FieldName = 'PRD_DCVAR2'
      Size = 12
    end
    object SqlCdsReferPRD_DCVAR3: TStringField
      FieldName = 'PRD_DCVAR3'
      Size = 12
    end
    object SqlCdsReferPRD_DCVAR4: TStringField
      FieldName = 'PRD_DCVAR4'
      Size = 12
    end
    object SqlCdsReferPRD_DCVAR5: TStringField
      FieldName = 'PRD_DCVAR5'
      Size = 12
    end
    object SqlCdsReferPRD_DCVAR6: TStringField
      FieldName = 'PRD_DCVAR6'
      Size = 12
    end
    object SqlCdsReferPRD_DCVAR7: TStringField
      FieldName = 'PRD_DCVAR7'
      Size = 12
    end
    object SqlCdsReferPRD_DCVAR8: TStringField
      FieldName = 'PRD_DCVAR8'
      Size = 12
    end
    object SqlCdsReferPRD_FISICO_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'PRD_FISICO_CC'
      DisplayFormat = '#,##0.0000'
      Calculated = True
    end
    object SqlCdsReferPRD_ANTECIPADO_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'PRD_ANTECIPADO_CC'
      DisplayFormat = '#,##0.0000'
      Calculated = True
    end
    object SqlCdsReferPRD_RESERVA: TFMTBCDField
      FieldName = 'PRD_RESERVA'
      DisplayFormat = '#,##0.0000'
      Precision = 15
    end
    object SqlCdsReferPRD_EMPENHO: TFMTBCDField
      FieldName = 'PRD_EMPENHO'
      DisplayFormat = '#,##0.0000'
      Precision = 15
    end
  end
end
