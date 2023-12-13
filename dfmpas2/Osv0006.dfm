inherited FormOrdServRefazer: TFormOrdServRefazer
  Left = 386
  Top = 230
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Estorno de OP'#180's n'#227'o conclu'#237'das'
  ClientHeight = 292
  ClientWidth = 476
  Font.Name = 'MS Sans Serif'
  KeyPreview = True
  ExplicitWidth = 482
  ExplicitHeight = 321
  PixelsPerInch = 96
  TextHeight = 13
  object GroupEstornar: TGroupBox [0]
    Left = 5
    Top = 58
    Width = 457
    Height = 179
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 26
      Top = 25
      Width = 35
      Height = 13
      Caption = 'OP No:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 313
      Top = 25
      Width = 42
      Height = 13
      Caption = 'Emiss'#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 22
      Top = 52
      Width = 40
      Height = 13
      Caption = 'Produto:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 35
      Top = 78
      Width = 26
      Height = 13
      Caption = 'Qtde:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Bevel1: TBevel
      Left = 2
      Top = 114
      Width = 448
      Height = 38
    end
    object Edt_OP: TEdit
      Left = 62
      Top = 21
      Width = 100
      Height = 21
      CharCase = ecUpperCase
      Color = 14145495
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 6
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object Edt_Emissao: TEdit
      Left = 356
      Top = 21
      Width = 90
      Height = 21
      Color = 14145495
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object Edt_Referencia: TEdit
      Left = 62
      Top = 48
      Width = 100
      Height = 21
      Color = 14145495
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object Edt_Material: TEdit
      Left = 163
      Top = 48
      Width = 283
      Height = 21
      Color = 14145495
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
    object Curr_Qtde: TCurrencyEdit
      Left = 62
      Top = 75
      Width = 95
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 14145495
      DecimalPlaces = 0
      DisplayFormat = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 15
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
    object RadTodas: TRadioButton
      Left = 201
      Top = 130
      Width = 219
      Height = 17
      Caption = 'Todas as O.Ps vinculadas a OP Principal'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      TabStop = True
    end
    object RadUnica: TRadioButton
      Left = 15
      Top = 128
      Width = 165
      Height = 17
      Caption = 'Somente OP selecionada'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object Progrefazer: TProgressBar
      Left = 7
      Top = 155
      Width = 441
      Height = 17
      TabOrder = 7
    end
  end
  object Panel1: TPanel [1]
    Left = 4
    Top = 243
    Width = 449
    Height = 41
    BevelOuter = bvLowered
    TabOrder = 1
    object Bit_GravarMateria: TBitBtn
      Left = 217
      Top = 8
      Width = 110
      Height = 28
      Cursor = crHandPoint
      Hint = '|Grava o Item da Ficha T'#233'cnica...'
      Caption = 'Con&firmar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
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
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      TabStop = False
      OnClick = Bit_GravarMateriaClick
    end
    object Bit_CancelarMateria: TBitBtn
      Left = 333
      Top = 8
      Width = 110
      Height = 28
      Cursor = crHandPoint
      Hint = '|Cancela o Item da Ficha T'#233'cninca...'
      Caption = '&Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
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
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      TabStop = False
      OnClick = Bit_CancelarMateriaClick
    end
  end
  object Panel2: TPanel [2]
    Left = 8
    Top = 1
    Width = 450
    Height = 50
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 2
    object LblInf: TLabel
      Left = 6
      Top = 17
      Width = 194
      Height = 16
      Caption = 'Processar estorno de OP...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
  end
  inherited coCalcula: TACBrCalculadora
    Left = 504
    Top = 8
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 552
    Top = 16
  end
  inherited DBConn: TSQLConnection
    Left = 448
    Top = 9
  end
  inherited qAux: TSQLQuery
    Left = 586
    Top = 157
  end
  object SqlCdsRefazer: TSqlClientDataSet [7]
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'select'#13#10'O2.EMP_CODIGO,'#13#10'O2.OSI_REGISTRO,'#13#10'02.OSV_CODIGO,'#13#10'02.OSV' +
      '_REGISTRO,'#13#10'P1.PRD_CODIGO,'#13#10'O2.PRD_REFER_ITENS,'#13#10'O2.OSI_RESERVAD' +
      'O,'#13#10'O2.osi_statusempenho,'#13#10'CAST((((O2.osi_qtde1+O2.osi_qtde2+O2.' +
      'osi_qtde3+O2.osi_qtde4+O2.osi_qtde5+O2.osi_qtde6+O2.osi_qtde7+O2' +
      '.osi_qtde8))-(O2.osi_apontado+O2.OSI_RESERVADO)) AS numeric(15,4' +
      ')) AS FALTA_APONTAR,'#13#10'((P1.PRD_ESTOQUE+P1.PRD_ENTRADA)-(P1.PRD_S' +
      'AIDA+P1.PRD_RESERVA+P1.PRD_EMPENHO)) AS WSALDO'#13#10'from OSV_IT02 O2' +
      #13#10'left join PRD0000 P1 ON (O2.PRD_REFER_ITENS = P1.PRD_REFER)'#13#10'w' +
      'here  O2.osi_statusempenho <> '#39'S'#39
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'select'#13#10'O2.EMP_CODIGO,'#13#10'O2.OSI_REGISTRO,'#13#10'02.OSV_CODIGO,'#13#10'02.OSV' +
      '_REGISTRO,'#13#10'P1.PRD_CODIGO,'#13#10'O2.PRD_REFER_ITENS,'#13#10'O2.OSI_RESERVAD' +
      'O,'#13#10'O2.osi_statusempenho,'#13#10'CAST((((O2.osi_qtde1+O2.osi_qtde2+O2.' +
      'osi_qtde3+O2.osi_qtde4+O2.osi_qtde5+O2.osi_qtde6+O2.osi_qtde7+O2' +
      '.osi_qtde8))-(O2.osi_apontado+O2.OSI_RESERVADO)) AS numeric(15,4' +
      ')) AS FALTA_APONTAR,'#13#10'((P1.PRD_ESTOQUE+P1.PRD_ENTRADA)-(P1.PRD_S' +
      'AIDA+P1.PRD_RESERVA+P1.PRD_EMPENHO)) AS WSALDO'#13#10'from OSV_IT02 O2' +
      #13#10'left join PRD0000 P1 ON (O2.PRD_REFER_ITENS = P1.PRD_REFER)'#13#10'w' +
      'here  O2.osi_statusempenho <> '#39'S'#39
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 608
    Top = 70
    object SqlCdsRefazerEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlCdsRefazerOSI_REGISTRO: TIntegerField
      FieldName = 'OSI_REGISTRO'
      Required = True
    end
    object SqlCdsRefazerOSV_CODIGO: TStringField
      FieldName = 'OSV_CODIGO'
      Size = 8
    end
    object SqlCdsRefazerPRD_REFER_ITENS: TStringField
      FieldName = 'PRD_REFER_ITENS'
      Size = 11
    end
    object SqlCdsRefazerOSI_RESERVADO: TFMTBCDField
      FieldName = 'OSI_RESERVADO'
      Precision = 15
    end
    object SqlCdsRefazerOSI_STATUSEMPENHO: TStringField
      FieldName = 'OSI_STATUSEMPENHO'
      Size = 1
    end
    object SqlCdsRefazerFALTA_APONTAR: TFMTBCDField
      FieldName = 'FALTA_APONTAR'
      Precision = 15
    end
    object SqlCdsRefazerWSALDO: TFMTBCDField
      FieldName = 'WSALDO'
      Precision = 15
    end
    object SqlCdsRefazerPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Size = 4
    end
  end
  object SqlCdsEstornar: TSqlClientDataSet [8]
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 'select'#13#10'O2.*'#13#10'from OSV_IT02 O2'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'select'#13#10'O2.*'#13#10'from OSV_IT02 O2'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 704
    Top = 111
    object SqlCdsEstornarOSI_REGISTRO: TIntegerField
      FieldName = 'OSI_REGISTRO'
      Required = True
    end
    object SqlCdsEstornarEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlCdsEstornarOSV_CODIGO: TStringField
      FieldName = 'OSV_CODIGO'
      Size = 8
    end
    object SqlCdsEstornarPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object SqlCdsEstornarPRD_REFER_ITENS: TStringField
      FieldName = 'PRD_REFER_ITENS'
      Size = 11
    end
    object SqlCdsEstornarOSI_MODIFICADA: TSQLTimeStampField
      FieldName = 'OSI_MODIFICADA'
    end
    object SqlCdsEstornarOSI_UC: TFloatField
      FieldName = 'OSI_UC'
    end
    object SqlCdsEstornarOSI_QTDE1: TFMTBCDField
      FieldName = 'OSI_QTDE1'
      Precision = 15
    end
    object SqlCdsEstornarOSI_QTDE2: TFMTBCDField
      FieldName = 'OSI_QTDE2'
      Precision = 15
    end
    object SqlCdsEstornarOSI_QTDE3: TFMTBCDField
      FieldName = 'OSI_QTDE3'
      Precision = 15
    end
    object SqlCdsEstornarOSI_QTDE4: TFMTBCDField
      FieldName = 'OSI_QTDE4'
      Precision = 15
    end
    object SqlCdsEstornarOSI_QTDE5: TFMTBCDField
      FieldName = 'OSI_QTDE5'
      Precision = 15
    end
    object SqlCdsEstornarOSI_QTDE6: TFMTBCDField
      FieldName = 'OSI_QTDE6'
      Precision = 15
    end
    object SqlCdsEstornarOSI_QTDE7: TFMTBCDField
      FieldName = 'OSI_QTDE7'
      Precision = 15
    end
    object SqlCdsEstornarOSI_QTDE8: TFMTBCDField
      FieldName = 'OSI_QTDE8'
      Precision = 15
    end
    object SqlCdsEstornarOSI_SITUACAO: TStringField
      FieldName = 'OSI_SITUACAO'
      Size = 1
    end
    object SqlCdsEstornarOSI_RESERVADO: TFMTBCDField
      FieldName = 'OSI_RESERVADO'
      Precision = 15
    end
    object SqlCdsEstornarOSI_EMPENHO: TFMTBCDField
      FieldName = 'OSI_EMPENHO'
      Precision = 15
    end
    object SqlCdsEstornarOSI_APONTADO: TFMTBCDField
      FieldName = 'OSI_APONTADO'
      Precision = 15
    end
    object SqlCdsEstornarOSI_STATUSEMPENHO: TStringField
      FieldName = 'OSI_STATUSEMPENHO'
      Size = 1
    end
    object SqlCdsEstornarOSI_CODIGO_ORIGEM: TStringField
      FieldName = 'OSI_CODIGO_ORIGEM'
      Size = 8
    end
    object SqlCdsEstornarOSI_CODIGO_ARVORE: TStringField
      FieldName = 'OSI_CODIGO_ARVORE'
      Size = 8
    end
  end
  object SqlcdsOrdem: TSqlClientDataSet [9]
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'select OSV_CODIGO, OSV_QTDE, PRD_REFER, OSV_CODIGO_PAI ,OSV_STAT' +
      'US from OSV0001'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'select OSV_CODIGO, OSV_QTDE, PRD_REFER, OSV_CODIGO_PAI ,OSV_STAT' +
      'US from OSV0001'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 728
    Top = 40
    object SqlcdsOrdemOSV_CODIGO: TStringField
      FieldName = 'OSV_CODIGO'
      Required = True
      Size = 8
    end
    object SqlcdsOrdemOSV_QTDE: TFMTBCDField
      FieldName = 'OSV_QTDE'
      Precision = 15
    end
    object SqlcdsOrdemPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object SqlcdsOrdemOSV_CODIGO_PAI: TStringField
      FieldName = 'OSV_CODIGO_PAI'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object SqlcdsOrdemOSV_STATUS: TStringField
      FieldName = 'OSV_STATUS'
      Size = 1
    end
  end
  inherited qAux2: TSQLQuery
    Left = 490
    Top = 148
  end
  inherited qAux3: TSQLQuery
    Left = 482
    Top = 76
  end
end
