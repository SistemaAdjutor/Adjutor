object FormRecalculaComisPed: TFormRecalculaComisPed
  Left = 310
  Top = 0
  BorderIcons = [biMinimize, biMaximize]
  Caption = 'Sincronizar comiss'#227'o com financeiro'
  ClientHeight = 304
  ClientWidth = 442
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object Grp01: TGroupBox
    Left = 0
    Top = 0
    Width = 433
    Height = 52
    Align = alCustom
    Caption = 'Per'#237'odo de datas para sincronizar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Label3: TLabel
      Left = 42
      Top = 25
      Width = 26
      Height = 13
      Caption = 'Data:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 210
      Top = 25
      Width = 19
      Height = 13
      Caption = 'At'#233':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object EditDataI: TJvDateEdit
      Left = 70
      Top = 21
      Width = 100
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Glyph.Data = {
        4E000000424D4E000000000000003E000000280000000F000000040000000100
        010000000000100000000000000000000000020000000200000000000000FFFF
        FF00FFFE00009CE600009CE60000FFFE0000}
      ImageKind = ikCustom
      ParentFont = False
      PopupColor = clBtnFace
      ShowNullDate = False
      YearDigits = dyFour
      TabOrder = 0
      OnExit = EditDataIExit
    end
    object EditDataF: TJvDateEdit
      Left = 237
      Top = 21
      Width = 100
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Glyph.Data = {
        4E000000424D4E000000000000003E000000280000000F000000040000000100
        010000000000100000000000000000000000020000000200000000000000FFFF
        FF00FFFE00009CE600009CE60000FFFE0000}
      ImageKind = ikCustom
      ParentFont = False
      PopupColor = clBtnFace
      ShowNullDate = False
      YearDigits = dyFour
      TabOrder = 1
      OnExit = EditDataFExit
    end
  end
  object PrBar: TProgressBar
    Left = 0
    Top = 246
    Width = 431
    Height = 21
    Align = alCustom
    Max = 0
    ParentShowHint = False
    ShowHint = False
    TabOrder = 1
  end
  object BitConfirmar: TBitBtn
    Left = 225
    Top = 270
    Width = 100
    Height = 25
    Caption = '&Confirmar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333330000333333333333333333333333F33333333333
      00003333344333333333333333388F3333333333000033334224333333333333
      338338F3333333330000333422224333333333333833338F3333333300003342
      222224333333333383333338F3333333000034222A22224333333338F338F333
      8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
      33333338F83338F338F33333000033A33333A222433333338333338F338F3333
      0000333333333A222433333333333338F338F33300003333333333A222433333
      333333338F338F33000033333333333A222433333333333338F338F300003333
      33333333A222433333333333338F338F00003333333333333A22433333333333
      3338F38F000033333333333333A223333333333333338F830000333333333333
      333A333333333333333338330000333333333333333333333333333333333333
      0000}
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 2
    OnClick = BitConfirmarClick
  end
  object BitCancelar: TBitBtn
    Left = 328
    Top = 270
    Width = 100
    Height = 25
    Caption = '&Sair'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Glyph.Data = {
      CA010000424DCA01000000000000760000002800000026000000110000000100
      0400000000005401000000000000000000001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
      8888888FFFFFFFFFFFFFFFFFFF008888888888880000078FFFFFFFFFFFFFFFFF
      FF00833333333000BB03078FFFFFFFFFFFFFFFFFFF00830000000BBBBB03078F
      FFFFFFFFFFFFFFFFFF00830000000BBBBB03078FFFFFFFFFFFFFFFFFFF008300
      00000BBBBB03078FFFFFFFFFFFFFFFFFFF00830000000BBBBB03078FFFFFFFFF
      FFFFFFFFFF00830000000BBBBB03078FFFFFFFFFFFFFFFFFFF00830000000BBB
      B003008FFFFFFFFFFFFFFFFFFF00830000000BBBBB03078FFFFFFFFFFFFFFFFF
      FF00830000000BBBBB03078FFFFFFFFFFFFFFFFFFF00830000000BBBBB03078F
      FFFFFFFFFFFFFFFFFF00830000000BBBBB03078FFFFFFFFFFFFFFFFFFF008300
      00000BBBBB03078FFFFFFFFFFFFFFFFFFF00833333333000BB03078FFFFFFFFF
      FFFFFFFFFF008888888888880000088FFFFFFFFFFFFFFFFFFF00888888888888
      8888888FFFFFFFFFFFFFFFFFFF00}
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 3
    OnClick = BitCancelarClick
  end
  object Memo1: TMemo
    Left = 1
    Top = 60
    Width = 432
    Height = 181
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Lines.Strings = (
      '  Sincronizar comiss'#245'es dos pedidos com o contas '#224' receber'
      ''
      
        '  Rotina sincroniza a comiss'#227'o atual de cada pedido com as fatur' +
        'as do'
      
        '  contas '#224' receber, acertando pedidos que foram feitas corre'#231#245'es' +
        ' ma-'
      '  nuais ap'#243's o faturamento do mesmo.'
      ''
      '  O processo atualiza o seguinte :'
      ''
      
        '   Sincroniza o percentual de comiss'#227'o no contas '#224' Receber de ac' +
        'ordo'
      '   com o percentual atual no cadastro de cada pedido.')
    ParentFont = False
    TabOrder = 4
  end
  object SqlCdsItem: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT T1.PRF_REGISTRO,'#13#10'T1.PED_CODIGO,'#13#10'T1.PRD_REFER,'#13#10'T1.PRF_Q' +
      'TDE,'#13#10'T1.PRF_PRECO,'#13#10'T1.PRF_PRECO_BRUTO,'#13#10'T1.PRF_ACRESCIMO,'#13#10'T1.' +
      'PRF_ITEMCOMIS FROM PED_IT01 T1'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'SELECT T1.PRF_REGISTRO,'#13#10'T1.PED_CODIGO,'#13#10'T1.PRD_REFER,'#13#10'T1.PRF_Q' +
      'TDE,'#13#10'T1.PRF_PRECO,'#13#10'T1.PRF_PRECO_BRUTO,'#13#10'T1.PRF_ACRESCIMO,'#13#10'T1.' +
      'PRF_ITEMCOMIS FROM PED_IT01 T1'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 312
    Top = 5
    object SqlCdsItemPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Size = 7
    end
    object SqlCdsItemPRF_QTDE: TFMTBCDField
      FieldName = 'PRF_QTDE'
      Precision = 15
      Size = 4
    end
    object SqlCdsItemPRF_PRECO: TFMTBCDField
      FieldName = 'PRF_PRECO'
      Precision = 15
      Size = 5
    end
    object SqlCdsItemPRF_ITEMCOMIS: TFMTBCDField
      FieldName = 'PRF_ITEMCOMIS'
      Precision = 15
      Size = 4
    end
    object SqlCdsItemPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object SqlCdsItemPRF_REGISTRO: TIntegerField
      FieldName = 'PRF_REGISTRO'
      Required = True
    end
    object SqlCdsItemPRF_PRECO_BRUTO: TFMTBCDField
      FieldName = 'PRF_PRECO_BRUTO'
      Precision = 15
      Size = 5
    end
    object SqlCdsItemPRF_ACRESCIMO: TFMTBCDField
      FieldName = 'PRF_ACRESCIMO'
      Precision = 15
      Size = 5
    end
  end
  object DsComissaoProd: TDataSource
    Left = 161
    Top = 264
  end
  object DsItemPedidos: TDataSource
    DataSet = SqlCdsItem
    Left = 344
    Top = 8
  end
  object SQLCdsPedidos: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 'Select * from PED0000'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'Select * from PED0000'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 88
    Top = 259
    object SQLCdsPedidosPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Required = True
      Size = 7
    end
    object SQLCdsPedidosPED_COMIS1: TFMTBCDField
      FieldName = 'PED_COMIS1'
      Precision = 15
      Size = 4
    end
  end
  object DsPedidos: TDataSource
    DataSet = SQLCdsPedidos
    Left = 120
    Top = 262
  end
end
