object FormOrdServConsiderar: TFormOrdServConsiderar
  Left = 725
  Top = 246
  AutoSize = True
  BorderIcons = []
  Caption = 'Empenho de Materiais para OP'#39's'
  ClientHeight = 543
  ClientWidth = 793
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object GbSecundaria: TGroupBox
    Left = 0
    Top = 429
    Width = 793
    Height = 73
    Align = alTop
    Caption = 'Op'#231#245'es das Ordens de Produ'#231#227'o Secund'#225'rias'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Rad_Sim_Considera: TRadioButton
      Left = 16
      Top = 20
      Width = 681
      Height = 17
      Caption = 
        'Produzir a quantidade solicitada na ficha t'#233'cnica deduzindo o sa' +
        'ldo do estoque'
      Checked = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TabStop = True
    end
    object Rad_Nao_Considera: TRadioButton
      Left = 16
      Top = 43
      Width = 665
      Height = 17
      Caption = 'Produzir a quantidade solicitada na ficha t'#233'cnica'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
  end
  object GbItens: TGroupBox
    Left = 0
    Top = 72
    Width = 793
    Height = 357
    Align = alTop
    Caption = 'Itens para produ'#231#227'o'
    TabOrder = 1
    object DBGridItens: TDBGrid
      Left = 2
      Top = 16
      Width = 789
      Height = 339
      Align = alClient
      Color = 16776176
      DataSource = DsPs2
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'PRD_REFER'
          Title.Alignment = taCenter
          Title.Caption = 'Refer'#234'ncia'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 110
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRD_DESCRI'
          Title.Alignment = taCenter
          Title.Caption = 'Descri'#231#227'o Produto'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 264
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PS2_QTDE'
          Title.Alignment = taCenter
          Title.Caption = 'QTDE'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 93
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PS2_QTDE_CONVERTIDA'
          Title.Alignment = taCenter
          Title.Caption = 'Qtde de origem'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 93
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'rSaldoEstoque'
          Title.Alignment = taCenter
          Title.Caption = 'Saldo do Estoque'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Visible = True
        end
        item
          Color = clYellow
          Expanded = False
          FieldName = 'rQtdeProduzir'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Title.Alignment = taCenter
          Title.Caption = 'QTDE '#224' Produzir'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 98
          Visible = True
        end>
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 0
    Width = 793
    Height = 72
    Align = alTop
    Caption = 'Op'#231#245'es da Ordem de Produ'#231#227'o Principal'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object RbQtdeSolicitada: TRadioButton
      Left = 16
      Top = 27
      Width = 673
      Height = 17
      Caption = 'Produzir a quantidade solicitada'
      Checked = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TabStop = True
      OnEnter = RbQtdeSolicitadaEnter
    end
    object RbSaldo: TRadioButton
      Left = 16
      Top = 40
      Width = 673
      Height = 17
      Caption = 'Produzir a quantidade solicitada deduzindo o saldo do estoque'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnEnter = RbSaldoEnter
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 502
    Width = 793
    Height = 41
    Align = alTop
    TabOrder = 3
    object Btn_OK: TBitBtn
      Left = 592
      Top = 8
      Width = 100
      Height = 25
      Cursor = crHandPoint
      Caption = 'Con&firma'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000CE0E0000D80E00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        555555555555555555555555555555555555555555FF55555555555550055555
        55555555577FF5555555555500005555555555557777F5555555555500005555
        555555557777FF5555555550000005555555555777777F555555550000000555
        5555557777777FF5555557000500005555555777757777F55555700555500055
        55557775555777FF5555555555500005555555555557777F5555555555550005
        555555555555777FF5555555555550005555555555555777FF55555555555570
        05555555555555777FF5555555555557005555555555555777FF555555555555
        5000555555555555577755555555555555555555555555555555}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = Btn_OKClick
    end
    object Bit_Cancelar: TBitBtn
      Left = 692
      Top = 8
      Width = 100
      Height = 25
      Cancel = True
      Caption = '&Cancel'
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      ModalResult = 2
      NumGlyphs = 2
      TabOrder = 1
      OnClick = Bit_CancelarClick
    end
  end
  object DsPs2: TDataSource
    DataSet = SqlCdsPs2
    Left = 568
    Top = 33
  end
  object SqlCdsPs2: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT'#13#10'T2.*,'#13#10'P1.PRD_DESCRI,'#13#10'C1.CLI_RAZAO'#13#10'FROM PSV_IT02 T2'#13#10'L' +
      'EFT JOIN PRD0000 P1 ON (T2.PRD_REFER = P1.PRD_REFER)'#13#10'LEFT JOIN ' +
      'CLI0000 C1 ON (T2.CLI_CODIGO = C1.CLI_CODIGO)'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    OnCalcFields = SqlCdsPs2CalcFields
    CommandText = 
      'SELECT'#13#10'T2.*,'#13#10'P1.PRD_DESCRI,'#13#10'C1.CLI_RAZAO'#13#10'FROM PSV_IT02 T2'#13#10'L' +
      'EFT JOIN PRD0000 P1 ON (T2.PRD_REFER = P1.PRD_REFER)'#13#10'LEFT JOIN ' +
      'CLI0000 C1 ON (T2.CLI_CODIGO = C1.CLI_CODIGO)'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 464
    Top = 33
    object SqlCdsPs2PS2_REGISTRO: TIntegerField
      FieldName = 'PS2_REGISTRO'
      Required = True
    end
    object SqlCdsPs2EMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlCdsPs2PED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Size = 6
    end
    object SqlCdsPs2PRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object SqlCdsPs2PS2_QTDE: TFMTBCDField
      FieldName = 'PS2_QTDE'
      DisplayFormat = '#,##0.000'
      EditFormat = '#,##0.000'
      Precision = 15
    end
    object SqlCdsPs2PS2_QTDE1: TFMTBCDField
      FieldName = 'PS2_QTDE1'
      Precision = 15
    end
    object SqlCdsPs2PS2_QTDE2: TFMTBCDField
      FieldName = 'PS2_QTDE2'
      Precision = 15
    end
    object SqlCdsPs2PS2_QTDE3: TFMTBCDField
      FieldName = 'PS2_QTDE3'
      Precision = 15
    end
    object SqlCdsPs2PS2_QTDE4: TFMTBCDField
      FieldName = 'PS2_QTDE4'
      Precision = 15
    end
    object SqlCdsPs2PS2_QTDE5: TFMTBCDField
      FieldName = 'PS2_QTDE5'
      Precision = 15
    end
    object SqlCdsPs2PS2_QTDE6: TFMTBCDField
      FieldName = 'PS2_QTDE6'
      Precision = 15
    end
    object SqlCdsPs2PS2_QTDE7: TFMTBCDField
      FieldName = 'PS2_QTDE7'
      Precision = 15
    end
    object SqlCdsPs2PS2_QTDE8: TFMTBCDField
      FieldName = 'PS2_QTDE8'
      Precision = 15
    end
    object SqlCdsPs2PS2_FICHA: TStringField
      FieldName = 'PS2_FICHA'
      Size = 1
    end
    object SqlCdsPs2PRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 50
    end
    object SqlCdsPs2PS2_FICHA_CC: TBooleanField
      FieldKind = fkCalculated
      FieldName = 'PS2_FICHA_CC'
      Calculated = True
    end
    object SqlCdsPs2CLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Size = 5
    end
    object SqlCdsPs2PS2_LOTE: TStringField
      FieldName = 'PS2_LOTE'
      Size = 13
    end
    object SqlCdsPs2CLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Size = 55
    end
    object SqlCdsPs2PS2_QTDE_CONVERTIDA: TFMTBCDField
      FieldName = 'PS2_QTDE_CONVERTIDA'
      DisplayFormat = '###,###0.00'
      Precision = 15
      Size = 4
    end
    object SqlCdsPs2rSaldoEstoque: TFloatField
      FieldKind = fkCalculated
      FieldName = 'rSaldoEstoque'
      DisplayFormat = '###,###0.00'
      Calculated = True
    end
    object SqlCdsPs2rQtdeProduzir: TFloatField
      FieldKind = fkCalculated
      FieldName = 'rQtdeProduzir'
      DisplayFormat = '###,###0.00'
      Calculated = True
    end
  end
  object Cds_Prod_Conv: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT'#13#10'    T1.PRD_REFER,'#13#10'    COALESCE(T1.PRD_UTILCONV,'#39'N'#39') AS ' +
      'PRD_UTILCONV,'#13#10'    COALESCE(T1.PRD_FATORC,0) AS PRD_FATORC,'#13#10'   ' +
      ' COALESCE(T1.PRD_DIVMULT,'#39'N'#39') AS PRD_DIVMULT'#13#10'FROM PRD0000  T1'#13#10 +
      '   WHERE T1.PRD_REFER = '#39'301435'#39
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'SELECT'#13#10'    T1.PRD_REFER,'#13#10'    COALESCE(T1.PRD_UTILCONV,'#39'N'#39') AS ' +
      'PRD_UTILCONV,'#13#10'    COALESCE(T1.PRD_FATORC,0) AS PRD_FATORC,'#13#10'   ' +
      ' COALESCE(T1.PRD_DIVMULT,'#39'N'#39') AS PRD_DIVMULT'#13#10'FROM PRD0000  T1'#13#10 +
      '   WHERE T1.PRD_REFER = '#39'301435'#39
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 392
    Top = 32
    object Cds_Prod_ConvPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object Cds_Prod_ConvPRD_UTILCONV: TStringField
      FieldName = 'PRD_UTILCONV'
      Size = 1
    end
    object Cds_Prod_ConvPRD_FATORC: TFMTBCDField
      FieldName = 'PRD_FATORC'
      Precision = 15
    end
    object Cds_Prod_ConvPRD_DIVMULT: TStringField
      FieldName = 'PRD_DIVMULT'
      Size = 1
    end
  end
  object dspPs2: TDataSetProvider
    DataSet = SqlCdsPs2
    Left = 520
    Top = 192
  end
  object cdsPs2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPs2'
    Left = 584
    Top = 200
    object cdsPs2PS2_REGISTRO: TIntegerField
      FieldName = 'PS2_REGISTRO'
      Required = True
    end
    object cdsPs2EMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object cdsPs2PED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Size = 6
    end
    object cdsPs2PRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object cdsPs2PS2_QTDE: TFMTBCDField
      FieldName = 'PS2_QTDE'
      DisplayFormat = '#,##0.000'
      EditFormat = '#,##0.000'
      Precision = 15
    end
    object cdsPs2PS2_QTDE1: TFMTBCDField
      FieldName = 'PS2_QTDE1'
      Precision = 15
    end
    object cdsPs2PS2_QTDE2: TFMTBCDField
      FieldName = 'PS2_QTDE2'
      Precision = 15
    end
    object cdsPs2PS2_QTDE3: TFMTBCDField
      FieldName = 'PS2_QTDE3'
      Precision = 15
    end
    object cdsPs2PS2_QTDE4: TFMTBCDField
      FieldName = 'PS2_QTDE4'
      Precision = 15
    end
    object cdsPs2PS2_QTDE5: TFMTBCDField
      FieldName = 'PS2_QTDE5'
      Precision = 15
    end
    object cdsPs2PS2_QTDE6: TFMTBCDField
      FieldName = 'PS2_QTDE6'
      Precision = 15
    end
    object cdsPs2PS2_QTDE7: TFMTBCDField
      FieldName = 'PS2_QTDE7'
      Precision = 15
    end
    object cdsPs2PS2_QTDE8: TFMTBCDField
      FieldName = 'PS2_QTDE8'
      Precision = 15
    end
    object cdsPs2PRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 50
    end
    object cdsPs2PS2_FICHA: TStringField
      FieldName = 'PS2_FICHA'
      Size = 1
    end
    object cdsPs2CLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Size = 5
    end
    object cdsPs2PS2_LOTE: TStringField
      FieldName = 'PS2_LOTE'
      Size = 13
    end
    object cdsPs2CLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Size = 55
    end
  end
end
