object FormOrdServProcesso: TFormOrdServProcesso
  Left = 364
  Top = 248
  Width = 978
  Height = 587
  BorderIcons = [biSystemMenu]
  Caption = 'Acompanhamento da Produ'#231#227'o : Follow Up'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid3: TDBGrid
    Left = 50
    Top = 157
    Width = 679
    Height = 150
    DataSource = DsQPcpSeq
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Color = clInfoBk
        Expanded = False
        FieldName = 'SEC_DESCRI'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Processo'
        Width = 249
        Visible = True
      end
      item
        Color = cl3DLight
        Expanded = False
        FieldName = 'SPC_QTDE_E'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Entrada'
        Width = 77
        Visible = True
      end
      item
        Color = clInfoBk
        Expanded = False
        FieldName = 'SPC_ENTRADA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Data entrada'
        Width = 74
        Visible = True
      end
      item
        Color = clGray
        Expanded = False
        FieldName = 'SPC_QTDE_S'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clYellow
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Sa'#237'da'
        Width = 85
        Visible = True
      end
      item
        Color = clInfoBk
        Expanded = False
        FieldName = 'SPC_SAIDA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Data sa'#237'da'
        Width = 72
        Visible = True
      end
      item
        Color = clInfoBk
        Expanded = False
        FieldName = 'Situacao_CC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Situa'#231#227'o'
        Width = 80
        Visible = True
      end>
  end
  object GrpDestino: TGroupBox
    Left = 367
    Top = 58
    Width = 362
    Height = 96
    Caption = 'PROCESSO DESTINO'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGray
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object Panel3: TPanel
      Left = 7
      Top = 19
      Width = 349
      Height = 72
      TabOrder = 0
      object Label7: TLabel
        Left = 10
        Top = 32
        Width = 37
        Height = 13
        Caption = 'Entrada'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 123
        Top = 31
        Width = 32
        Height = 13
        Caption = 'Quant.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBLkCboSecaoDescri: TDBLookupComboBox
        Left = 7
        Top = 8
        Width = 235
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        KeyField = 'SEC_CODIGO'
        ListField = 'SEC_DESCRI'
        ListSource = DsQSecao
        ParentFont = False
        TabOrder = 0
      end
      object DataEntrada: TDateEdit
        Left = 9
        Top = 45
        Width = 90
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        GlyphKind = gkEllipsis
        NumGlyphs = 1
        ParentFont = False
        YearDigits = dyFour
        TabOrder = 1
        OnExit = DataEntradaExit
      end
      object Qtde_Entrada: TCurrencyEdit
        Left = 122
        Top = 45
        Width = 75
        Height = 21
        AutoSize = False
        DisplayFormat = ',0.00;-,0.00'
        TabOrder = 2
        OnExit = Qtde_EntradaExit
      end
    end
    object Bit_Gravar: TBitBtn
      Left = 266
      Top = 25
      Width = 80
      Height = 25
      Cursor = crHandPoint
      Hint = '|Grava registro...'
      Caption = '&Gravar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      TabStop = False
      OnClick = Bit_GravarClick
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
    end
    object Bit_Cancelar: TBitBtn
      Left = 266
      Top = 57
      Width = 80
      Height = 25
      Cursor = crHandPoint
      Hint = '|Cancela registro atual...'
      Caption = '&Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      TabStop = False
      OnClick = Bit_CancelarClick
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        04000000000068010000CE0E0000D80E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033333333333333333333333F333333333333
        0000333333333333333333333388F333333F3333000033300333333300033333
        38F38F333F88F33300003330003333300033333338F338F3F8338F3300003333
        000333000333333338F3338F833338F3000033333000300033333333338F3338
        3333F8330000333333000003333333333338F333333F83330000333333300033
        3333333333338F3333383333000033333300000333333333333338F333833333
        00003333300030003333333333333833338F3333000033330003330003333333
        33338333338F333300003330003333300033333333383338F338F33300003330
        0333333300033333338333838F338F3300003333333333333003333333833833
        38F338F300003333333333333333333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
  end
  object GrpOrigem: TGroupBox
    Left = 50
    Top = 57
    Width = 305
    Height = 96
    Caption = 'PROCESSO ORIGEM'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object Panel2: TPanel
      Left = 8
      Top = 19
      Width = 289
      Height = 72
      TabOrder = 0
      object SpeedOrigem: TSpeedButton
        Left = 245
        Top = 38
        Width = 35
        Height = 25
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          33333FF3333333333333447333333333333377FFF33333333333744473333333
          333337773FF3333333333444447333333333373F773FF3333333334444447333
          33333373F3773FF3333333744444447333333337F333773FF333333444444444
          733333373F3333773FF333334444444444733FFF7FFFFFFF77FF999999999999
          999977777777777733773333CCCCCCCCCC3333337333333F7733333CCCCCCCCC
          33333337F3333F773333333CCCCCCC3333333337333F7733333333CCCCCC3333
          333333733F77333333333CCCCC333333333337FF7733333333333CCC33333333
          33333777333333333333CC333333333333337733333333333333}
        NumGlyphs = 2
        OnClick = SpeedOrigemClick
      end
      object Label5: TLabel
        Left = 10
        Top = 32
        Width = 37
        Height = 13
        Caption = 'Entrada'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 98
        Top = 31
        Width = 32
        Height = 13
        Caption = 'Quant.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DbeEntrada: TDBEdit
        Left = 8
        Top = 46
        Width = 80
        Height = 21
        DataField = 'SPC_ENTRADA'
        DataSource = DsQPcpSeq
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object DbeQtde: TDBEdit
        Left = 96
        Top = 46
        Width = 75
        Height = 21
        DataField = 'SPC_QTDE_E'
        DataSource = DsQPcpSeq
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object DbeDescri: TDBEdit
        Left = 8
        Top = 6
        Width = 230
        Height = 21
        Color = 14145495
        DataField = 'SEC_DESCRI'
        DataSource = DsQPcpSeq
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
    end
  end
  object Panel1: TPanel
    Left = 79
    Top = 2
    Width = 616
    Height = 51
    BevelInner = bvLowered
    BevelOuter = bvLowered
    Color = clTeal
    TabOrder = 3
    object Label1: TLabel
      Left = 7
      Top = 6
      Width = 121
      Height = 13
      Caption = 'Ordem de Produ'#231#227'o :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 456
      Top = 30
      Width = 69
      Height = 13
      Caption = 'Qtde Total :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 346
      Top = 6
      Width = 44
      Height = 13
      Caption = 'Pedido:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 78
      Top = 29
      Width = 49
      Height = 13
      Caption = 'Produto:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object EdtOSV_CODIGO: TEdit
      Left = 129
      Top = 2
      Width = 57
      Height = 21
      Color = 14145495
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 6
      ParentFont = False
      TabOrder = 0
      Text = 'EdtOSV_CODIGO'
    end
    object EdtPED_CODIGO: TEdit
      Left = 393
      Top = 2
      Width = 57
      Height = 21
      Color = 14145495
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 6
      ParentFont = False
      TabOrder = 1
      Text = 'EdtPED_CODIGO'
    end
    object EdtDesc_Produto: TEdit
      Left = 129
      Top = 25
      Width = 320
      Height = 21
      Color = 14145495
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 40
      ParentFont = False
      TabOrder = 2
      Text = 'EdtDesc_Produto'
    end
    object NEditQtdeTotal: TCurrencyEdit
      Left = 525
      Top = 24
      Width = 85
      Height = 21
      AutoSize = False
      Color = 14145495
      DisplayFormat = ',0.00;-,0.00'
      TabOrder = 3
    end
  end
  object DBGrid1: TDBGrid
    Left = 9
    Top = 339
    Width = 767
    Height = 166
    DataSource = DsQPcpGeral
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit]
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Color = clInfoBk
        Expanded = False
        FieldName = 'SEC_DESCRI'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Processo'
        Width = 233
        Visible = True
      end
      item
        Color = clInfoBk
        Expanded = False
        FieldName = 'OSV_CODIGO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'O.P.'
        Width = 53
        Visible = True
      end
      item
        Color = clInfoBk
        Expanded = False
        FieldName = 'PED_CODIGO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Pedido'
        Width = 60
        Visible = True
      end
      item
        Color = cl3DLight
        Expanded = False
        FieldName = 'SPC_QTDE_E'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Entrada'
        Width = 73
        Visible = True
      end
      item
        Color = clInfoBk
        Expanded = False
        FieldName = 'SPC_ENTRADA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Data entrada'
        Width = 74
        Visible = True
      end
      item
        Color = clInfoBk
        Expanded = False
        FieldName = 'SITUACAO_CC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Situa'#231#227'o'
        Width = 67
        Visible = True
      end
      item
        Color = clInfoBk
        Expanded = False
        FieldName = 'SPC_PRDDESCRI'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Caption = 'Produto'
        Visible = True
      end>
  end
  object Panel4: TPanel
    Left = 208
    Top = 312
    Width = 352
    Height = 24
    BevelInner = bvLowered
    BevelOuter = bvLowered
    Caption = 'POSI'#199#195'O GLOBAL DAS ORDENS EM PROCESSO'
    Color = clTeal
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clYellow
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
  end
  object TQSecao: TQuery
    DatabaseName = 'RwDbAdm'
    SQL.Strings = (
      'SELECT SEC_CODIGO, SEC_DESCRI'
      'FROM PCP_SECAO Pcp_secao')
    Left = 208
    Top = 240
    object TQSecaoSEC_CODIGO: TStringField
      FieldName = 'SEC_CODIGO'
      Origin = 'PCP_SECAO.SEC_CODIGO'
      Size = 2
    end
    object TQSecaoSEC_DESCRI: TStringField
      FieldName = 'SEC_DESCRI'
      Origin = 'PCP_SECAO.SEC_DESCRI'
      Size = 30
    end
  end
  object DsQSecao: TDataSource
    DataSet = TQSecao
    Left = 341
    Top = 240
  end
  object TQPcpSeq: TQuery
    OnCalcFields = TQPcpSeqCalcFields
    DatabaseName = 'RwDbAdm'
    SQL.Strings = (
      
        'SELECT Pcp_seq.OSV_CODIGO, Pcp_seq.SEC_CODIGO, Pcp_seq.SPC_ENTRA' +
        'DA, Pcp_seq.SPC_QTDE_E, Pcp_seq.SPC_SAIDA, Pcp_seq.SPC_QTDE_S, P' +
        'cp_seq.SPC_SITUACAO, Pcp_seq.EMP_CODIGO, Pcp_secao.SEC_CODIGO, P' +
        'cp_secao.SEC_DESCRI, Pcp_seq.SPC_PREVISAO, Pcp_seq.SPC_SEQ, Pcp_' +
        'seq.PED_CODIGO'
      'FROM PCP_SEQ Pcp_seq, PCP_SECAO Pcp_secao'
      'WHERE  (Pcp_seq.SEC_CODIGO = Pcp_secao.SEC_CODIGO)  '
      'ORDER BY Pcp_seq.OSV_CODIGO, Pcp_seq.SPC_SEQ')
    Left = 313
    Top = 240
    object TQPcpSeqOSV_CODIGO: TStringField
      FieldName = 'OSV_CODIGO'
      Origin = 'PCP_SEQ.OSV_CODIGO'
      Size = 6
    end
    object TQPcpSeqPcp_seqSEC_CODIGO: TStringField
      FieldName = 'Pcp_seq.SEC_CODIGO'
      Origin = 'PCP_SEQ.SEC_CODIGO'
      Size = 2
    end
    object TQPcpSeqSPC_ENTRADA: TDateTimeField
      FieldName = 'SPC_ENTRADA'
      Origin = 'PCP_SEQ.SPC_ENTRADA'
      EditMask = '99/99/9999;1;_'
    end
    object TQPcpSeqSPC_QTDE_E: TFloatField
      FieldName = 'SPC_QTDE_E'
      Origin = 'PCP_SEQ.SPC_QTDE_E'
    end
    object TQPcpSeqSPC_SAIDA: TDateTimeField
      FieldName = 'SPC_SAIDA'
      Origin = 'PCP_SEQ.SPC_SAIDA'
      EditMask = '99/99/9999;1;_'
    end
    object TQPcpSeqSPC_QTDE_S: TFloatField
      FieldName = 'SPC_QTDE_S'
      Origin = 'PCP_SEQ.SPC_QTDE_S'
    end
    object TQPcpSeqSPC_SITUACAO: TStringField
      FieldName = 'SPC_SITUACAO'
      Origin = 'PCP_SEQ.SPC_SITUACAO'
      Size = 1
    end
    object TQPcpSeqEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Origin = 'PCP_SEQ.EMP_CODIGO'
      Size = 3
    end
    object TQPcpSeqPcp_secaoSEC_CODIGO: TStringField
      FieldName = 'Pcp_secao.SEC_CODIGO'
      Origin = 'PCP_SECAO.SEC_CODIGO'
      Size = 2
    end
    object TQPcpSeqSEC_DESCRI: TStringField
      FieldName = 'SEC_DESCRI'
      Origin = 'PCP_SECAO.SEC_DESCRI'
      Size = 30
    end
    object TQPcpSeqSPC_SEQ: TStringField
      FieldName = 'SPC_SEQ'
      Origin = 'PCP_SEQ.SPC_SEQ'
      Size = 2
    end
    object TQPcpSeqPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Origin = 'PCP_SEQ.PED_CODIGO'
      Size = 6
    end
    object TQPcpSeqSituacao_CC: TStringField
      FieldKind = fkCalculated
      FieldName = 'Situacao_CC'
      Size = 10
      Calculated = True
    end
    object TQPcpSeqSPC_PREVISAO: TDateTimeField
      FieldName = 'SPC_PREVISAO'
      Origin = 'PCP_SEQ.SPC_PREVISAO'
    end
  end
  object DsQPcpSeq: TDataSource
    DataSet = TQPcpSeq
    Left = 235
    Top = 240
  end
  object TQPcpGeral: TQuery
    OnCalcFields = TQPcpGeralCalcFields
    DatabaseName = 'RwDbAdm'
    SQL.Strings = (
      
        'SELECT Pcp_seq.OSV_CODIGO, Pcp_seq.SEC_CODIGO, Pcp_seq.SPC_ENTRA' +
        'DA, Pcp_seq.SPC_QTDE_E, Pcp_seq.SPC_SAIDA, Pcp_seq.SPC_QTDE_S, P' +
        'cp_seq.SPC_SITUACAO, Pcp_seq.EMP_CODIGO, Pcp_secao.SEC_CODIGO, P' +
        'cp_secao.SEC_DESCRI, Pcp_seq.SPC_PREVISAO, Pcp_seq.SPC_SEQ, Pcp_' +
        'seq.PED_CODIGO, Pcp_seq.SPC_PRDDESCRI'
      'FROM PCP_SEQ Pcp_seq, PCP_SECAO Pcp_secao'
      'WHERE  (Pcp_seq.SEC_CODIGO = Pcp_secao.SEC_CODIGO)  '
      'ORDER BY Pcp_seq.OSV_CODIGO, Pcp_seq.SPC_SEQ')
    Left = 320
    Top = 432
    object TQPcpGeralOSV_CODIGO: TStringField
      FieldName = 'OSV_CODIGO'
      Origin = 'PCP_SEQ.OSV_CODIGO'
      Size = 6
    end
    object TQPcpGeralSPC_SEQ: TStringField
      FieldName = 'SPC_SEQ'
      Origin = 'PCP_SEQ.SPC_SEQ'
      Size = 2
    end
    object TQPcpGeralPcp_seqSEC_CODIGO: TStringField
      FieldName = 'Pcp_seq.SEC_CODIGO'
      Origin = 'PCP_SEQ.SEC_CODIGO'
      Size = 2
    end
    object TQPcpGeralSPC_ENTRADA: TDateTimeField
      FieldName = 'SPC_ENTRADA'
      Origin = 'PCP_SEQ.SPC_ENTRADA'
      EditMask = '99/99/9999;1;_'
    end
    object TQPcpGeralSPC_QTDE_E: TFloatField
      FieldName = 'SPC_QTDE_E'
      Origin = 'PCP_SEQ.SPC_QTDE_E'
    end
    object TQPcpGeralSPC_SAIDA: TDateTimeField
      FieldName = 'SPC_SAIDA'
      Origin = 'PCP_SEQ.SPC_SAIDA'
      EditMask = '99/99/9999;1;_'
    end
    object TQPcpGeralSPC_QTDE_S: TFloatField
      FieldName = 'SPC_QTDE_S'
      Origin = 'PCP_SEQ.SPC_QTDE_S'
    end
    object TQPcpGeralSPC_SITUACAO: TStringField
      FieldName = 'SPC_SITUACAO'
      Origin = 'PCP_SEQ.SPC_SITUACAO'
      Size = 1
    end
    object TQPcpGeralEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Origin = 'PCP_SEQ.EMP_CODIGO'
      Size = 3
    end
    object TQPcpGeralPcp_secaoSEC_CODIGO: TStringField
      FieldName = 'Pcp_secao.SEC_CODIGO'
      Origin = 'PCP_SECAO.SEC_CODIGO'
      Size = 2
    end
    object TQPcpGeralSEC_DESCRI: TStringField
      FieldName = 'SEC_DESCRI'
      Origin = 'PCP_SECAO.SEC_DESCRI'
      Size = 30
    end
    object TQPcpGeralPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Origin = 'PCP_SEQ.PED_CODIGO'
      Size = 6
    end
    object TQPcpGeralSITUACAO_CC: TStringField
      FieldKind = fkCalculated
      FieldName = 'SITUACAO_CC'
      Size = 10
      Calculated = True
    end
    object TQPcpGeralSPC_PRDDESCRI: TStringField
      FieldName = 'SPC_PRDDESCRI'
      Origin = 'PCP_SEQ.SPC_PRDDESCRI'
      Size = 40
    end
    object TQPcpGeralSPC_PREVISAO: TDateTimeField
      FieldName = 'SPC_PREVISAO'
      Origin = 'PCP_SEQ.SPC_PREVISAO'
    end
  end
  object DsQPcpGeral: TDataSource
    DataSet = TQPcpGeral
    Left = 360
    Top = 432
  end
end
