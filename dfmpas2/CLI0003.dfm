object FormClientFats: TFormClientFats
  Left = 61
  Top = 28
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Hist'#243'rico do Cliente'
  ClientHeight = 514
  ClientWidth = 666
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label4: TLabel
    Left = 11
    Top = 239
    Width = 170
    Height = 13
    Caption = 'PARCELAS DA NOTA FISCAL'
    Color = clSilver
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label1: TLabel
    Left = 11
    Top = 9
    Width = 172
    Height = 13
    Caption = 'NOTAS FISCAIS FATURADAS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 11
    Top = 359
    Width = 129
    Height = 13
    Caption = 'PRODUTOS DA NOTA'
    Color = clSilver
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object SpeedButton1: TSpeedButton
    Left = 556
    Top = 1
    Width = 100
    Height = 22
    Caption = '&Sair'
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = SpeedButton1Click
  end
  object DBGrid1: TDBGrid
    Left = 9
    Top = 257
    Width = 648
    Height = 93
    Color = 16776176
    DataSource = DsQReceParc
    FixedColor = 12681984
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clAqua
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'FPC_NUMER'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'N'#186
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FAT_CODIGO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Fatura'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 73
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FPC_VLPARC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Valor'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 87
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FPC_VENCTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Vencto'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FPC_VLPAGO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Vl. Pago'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 88
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FPC_PAGTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Pagto'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FPC_STATUS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Status'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 93
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BAN_APELIDO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Banco'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 86
        Visible = True
      end>
  end
  object DBGrid2: TDBGrid
    Left = 8
    Top = 26
    Width = 649
    Height = 203
    Color = 16776176
    DataSource = DsQReceber
    FixedColor = 12681984
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'FAT_CODIGO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Fatura'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FAT_DTEMIS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Emiss'#227'o'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 76
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Cli_Razao_Lk'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Cliente'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 296
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PED_CODIGO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Pedido'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 46
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FAT_VLFAT'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Valor'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 82
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FAT_QTDITEM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Quant.'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 58
        Visible = True
      end>
  end
  object DbGridItens: TDBGrid
    Left = 9
    Top = 377
    Width = 648
    Height = 129
    Color = 16776176
    DataSource = DsQRecItem
    FixedColor = 12681984
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clAqua
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clNavy
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        FieldName = 'Fat_it02.PRD_REFER'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Refer'#234'ncia'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 93
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRD_DESCRI'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Descri'#231#227'o'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 263
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FIT_QTDE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Quant.'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 76
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FIT_PRECO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Pre'#231'o'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FIT_TOTAL_CC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Total'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 85
        Visible = True
      end>
  end
  object TQReceber: TQuery
    DatabaseName = 'RwDbAdm'
    SQL.Strings = (
      
        'SELECT FAT_CODIGO, CLI_CODIGO, PED_CODIGO, FAT_VLFAT, FAT_QTDITE' +
        'M, FAT_DTEMIS, FAT_CANCELADA'
      'FROM FAT0000'
      'ORDER BY FAT_DTEMIS')
    Left = 352
    object TQReceberFAT_CODIGO: TStringField
      FieldName = 'FAT_CODIGO'
      Origin = 'FAT0000.FAT_CODIGO'
      Size = 6
    end
    object TQReceberCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Origin = 'FAT0000.CLI_CODIGO'
      Size = 5
    end
    object TQReceberPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Origin = 'FAT0000.PED_CODIGO'
      Size = 6
    end
    object TQReceberFAT_VLFAT: TFloatField
      FieldName = 'FAT_VLFAT'
      Origin = 'FAT0000.FAT_VLFAT'
      DisplayFormat = '#,##0.00'
    end
    object TQReceberFAT_QTDITEM: TFloatField
      FieldName = 'FAT_QTDITEM'
      Origin = 'FAT0000.FAT_QTDITEM'
      DisplayFormat = '#,##0'
    end
    object TQReceberFAT_DTEMIS: TDateTimeField
      FieldName = 'FAT_DTEMIS'
      Origin = 'FAT0000.FAT_DTEMIS'
    end
    object TQReceberCli_Razao_Lk: TStringField
      FieldKind = fkLookup
      FieldName = 'Cli_Razao_Lk'
      LookupDataSet = TQCliente
      LookupKeyFields = 'CLI_CODIGO'
      LookupResultField = 'CLI_RAZAO'
      KeyFields = 'CLI_CODIGO'
      Size = 40
      Lookup = True
    end
    object TQReceberFAT_CANCELADA: TBooleanField
      FieldName = 'FAT_CANCELADA'
      Origin = 'FAT0000.FAT_CANCELADA'
    end
  end
  object DsQReceber: TDataSource
    DataSet = TQReceber
    Left = 384
  end
  object TQReceParc: TQuery
    DatabaseName = 'RwDbAdm'
    SQL.Strings = (
      
        'SELECT FAT_PC01.FPC_NUMER, FAT_PC01.FAT_CODIGO, FAT_PC01.FPC_VEN' +
        'CTO, FAT_PC01.FPC_PAGTO, FAT_PC01.BAN_CODIGO, FAT_PC01.FPC_VLPAG' +
        'O, FAT_PC01.FPC_VLPARC, FAT_PC01.FPC_STATUS, BAN0000.BAN_CODIGO,' +
        ' BAN0000.BAN_APELIDO'
      'FROM FAT_PC01'
      '   LEFT OUTER JOIN BAN0000'
      '   ON  (FAT_PC01.BAN_CODIGO = BAN0000.BAN_CODIGO)  ')
    Left = 416
    Top = 2
    object TQReceParcFPC_NUMER: TStringField
      FieldName = 'FPC_NUMER'
      Origin = 'FAT_PC01.FPC_NUMER'
      Size = 2
    end
    object TQReceParcFAT_CODIGO: TStringField
      FieldName = 'FAT_CODIGO'
      Origin = 'FAT_PC01.FAT_CODIGO'
      Size = 6
    end
    object TQReceParcFPC_VENCTO: TDateTimeField
      FieldName = 'FPC_VENCTO'
      Origin = 'FAT_PC01.FPC_VENCTO'
    end
    object TQReceParcFPC_PAGTO: TDateTimeField
      FieldName = 'FPC_PAGTO'
      Origin = 'FAT_PC01.FPC_PAGTO'
    end
    object TQReceParcFAT_PC01BAN_CODIGO: TStringField
      FieldName = 'FAT_PC01.BAN_CODIGO'
      Origin = 'FAT_PC01.BAN_CODIGO'
      Size = 4
    end
    object TQReceParcFPC_VLPAGO: TFloatField
      FieldName = 'FPC_VLPAGO'
      Origin = 'FAT_PC01.FPC_VLPAGO'
      DisplayFormat = '#,##0.00'
    end
    object TQReceParcFPC_VLPARC: TFloatField
      FieldName = 'FPC_VLPARC'
      Origin = 'FAT_PC01.FPC_VLPARC'
      DisplayFormat = '#,##0.00'
    end
    object TQReceParcFPC_STATUS: TStringField
      FieldName = 'FPC_STATUS'
      Origin = 'FAT_PC01.FPC_STATUS'
      Size = 12
    end
    object TQReceParcBAN0000BAN_CODIGO: TStringField
      FieldName = 'BAN0000.BAN_CODIGO'
      Origin = 'BAN0000.BAN_CODIGO'
      Size = 4
    end
    object TQReceParcBAN_APELIDO: TStringField
      FieldName = 'BAN_APELIDO'
      Origin = 'BAN0000.BAN_APELIDO'
      Size = 14
    end
  end
  object TQCliente: TQuery
    DatabaseName = 'RwDbAdm'
    SQL.Strings = (
      'SELECT CLI_CODIGO, CLI_RAZAO'
      'FROM CLI0000 ')
    Left = 311
  end
  object DsQReceParc: TDataSource
    DataSet = TQReceParc
    Left = 445
    Top = 2
  end
  object TQRecItem: TQuery
    OnCalcFields = TQRecItemCalcFields
    DatabaseName = 'RwDbAdm'
    SQL.Strings = (
      
        'SELECT Fat_it02.FAT_CODIGO, Fat_it02.PRD_CODIGO, Fat_it02.PRD_RE' +
        'FER, Fat_it02.FIT_QTDE, Fat_it02.FIT_IPIALIQ, Fat_it02.FIT_PRECO' +
        ', Fat_it02.EMP_CODIGO, Prd0000.PRD_DESCRI, Prd0000.PRD_REFER'
      'FROM FAT_IT02 , PRD0000 '
      'WHERE  (Fat_it02.PRD_REFER = Prd0000.PRD_REFER)  ')
    Left = 480
    object TQRecItemFAT_CODIGO: TStringField
      FieldName = 'FAT_CODIGO'
      Origin = 'FAT_IT02.FAT_CODIGO'
      Size = 6
    end
    object TQRecItemPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Origin = 'FAT_IT02.PRD_CODIGO'
      Size = 4
    end
    object TQRecItemFat_it02PRD_REFER: TStringField
      FieldName = 'Fat_it02.PRD_REFER'
      Origin = 'FAT_IT02.PRD_REFER'
      Size = 11
    end
    object TQRecItemFIT_QTDE: TFloatField
      FieldName = 'FIT_QTDE'
      Origin = 'FAT_IT02.FIT_QTDE'
    end
    object TQRecItemFIT_IPIALIQ: TFloatField
      FieldName = 'FIT_IPIALIQ'
      Origin = 'FAT_IT02.FIT_IPIALIQ'
    end
    object TQRecItemFIT_PRECO: TFloatField
      FieldName = 'FIT_PRECO'
      Origin = 'FAT_IT02.FIT_PRECO'
      DisplayFormat = '#,##0.00'
    end
    object TQRecItemEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Origin = 'FAT_IT02.EMP_CODIGO'
      Size = 3
    end
    object TQRecItemPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Origin = 'PRD0000.PRD_DESCRI'
      Size = 40
    end
    object TQRecItemPrd0000PRD_REFER: TStringField
      FieldName = 'Prd0000.PRD_REFER'
      Origin = 'PRD0000.PRD_REFER'
      Size = 11
    end
    object TQRecItemFIT_TOTAL_CC: TFloatField
      FieldKind = fkCalculated
      FieldName = 'FIT_TOTAL_CC'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
  end
  object DsQRecItem: TDataSource
    DataSet = TQRecItem
    Left = 512
  end
end
