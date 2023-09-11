inherited FormPedidoDuplicar: TFormPedidoDuplicar
  Left = 209
  Top = 205
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'C'#243'pia de Pedido'
  ClientHeight = 216
  ClientWidth = 688
  Font.Charset = ANSI_CHARSET
  Font.Name = 'Arial'
  KeyPreview = True
  Position = poDesktopCenter
  ExplicitWidth = 694
  ExplicitHeight = 241
  PixelsPerInch = 96
  TextHeight = 14
  object GroupBox1: TGroupBox [0]
    Left = 1
    Top = 0
    Width = 518
    Height = 76
    Caption = 'Pedido Origem - ATUAL'
    TabOrder = 0
    object Label2: TLabel
      Left = 71
      Top = 53
      Width = 35
      Height = 14
      Caption = 'Cliente:'
    end
    object Label3: TLabel
      Left = 16
      Top = 30
      Width = 90
      Height = 14
      Caption = 'N'#250'mero do Pedido:'
    end
    object Edt_Cod_Cliente: TEdit
      Left = 116
      Top = 49
      Width = 80
      Height = 22
      TabStop = False
      Color = 14145495
      ReadOnly = True
      TabOrder = 0
    end
    object Edt_Nome_Pedido: TEdit
      Left = 199
      Top = 49
      Width = 310
      Height = 22
      TabStop = False
      Color = 14145495
      ReadOnly = True
      TabOrder = 1
    end
    object Edt_Cod_Pedido: TEdit
      Left = 116
      Top = 26
      Width = 80
      Height = 22
      TabStop = False
      CharCase = ecUpperCase
      Color = 14145495
      MaxLength = 7
      ReadOnly = True
      TabOrder = 2
    end
  end
  object Progresso: TProgressBar [1]
    Left = 10
    Top = 184
    Width = 411
    Height = 24
    TabOrder = 2
  end
  object GroupBox2: TGroupBox [2]
    Left = 520
    Top = 0
    Width = 161
    Height = 76
    Hint = 'Mudar valores do Pedido Duplicado'
    Caption = 'Duplicado com'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    object LBL_VALOR: TLabel
      Left = 60
      Top = 51
      Width = 21
      Height = 14
      Alignment = taRightJustify
      Caption = '(%):'
    end
    object CurrDescto: TCurrencyEdit
      Left = 81
      Top = 47
      Width = 76
      Height = 21
      AutoSize = False
      DecimalPlaces = 15
      DisplayFormat = '#,##0.00'
      TabOrder = 2
      ZeroEmpty = False
    end
    object Rad_Valor: TRadioButton
      Left = 10
      Top = 20
      Width = 52
      Height = 17
      Caption = 'P&re'#231'o'
      TabOrder = 0
      OnClick = Rad_ValorClick
    end
    object Rad_Porcentual: TRadioButton
      Left = 70
      Top = 20
      Width = 84
      Height = 17
      Caption = '&Porcentagem'
      Checked = True
      TabOrder = 1
      TabStop = True
      OnClick = Rad_PorcentualClick
    end
  end
  object GroupBox3: TGroupBox [3]
    Left = 1
    Top = 77
    Width = 681
    Height = 75
    Caption = 'Pedido Destino - DUPLICADO'
    TabOrder = 3
    object Label4: TLabel
      Left = 22
      Top = 28
      Width = 84
      Height = 14
      Caption = 'Pedido duplicado:'
    end
    object Label6: TLabel
      Left = 71
      Top = 51
      Width = 35
      Height = 14
      Caption = 'Cliente:'
    end
    object Label1: TLabel
      Left = 199
      Top = 28
      Width = 40
      Height = 14
      Alignment = taRightJustify
      Caption = 'Entrega:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Edt_Duplicar_Codigo: TEdit
      Left = 116
      Top = 24
      Width = 80
      Height = 22
      TabStop = False
      CharCase = ecUpperCase
      Color = 14145495
      MaxLength = 7
      ReadOnly = True
      TabOrder = 0
    end
    object edClienteDestino: TEdit
      Left = 116
      Top = 47
      Width = 80
      Height = 22
      ReadOnly = True
      TabOrder = 1
    end
    object cbClienteDestino: TComboBox
      Left = 199
      Top = 47
      Width = 474
      Height = 22
      CharCase = ecUpperCase
      TabOrder = 2
      OnClick = cbClienteDestinoClick
      OnExit = cbClienteDestinoExit
    end
    object dtePrazoEntrega: TJvDateEdit
      Left = 245
      Top = 24
      Width = 92
      Height = 22
      Glyph.Data = {
        76050000424D760500000000000036000000280000001C0000000C0000000100
        2000000000004005000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF008080800080808000808080008080800080808000808080008080
        800080808000808080008080800080808000FF00FF00FF00FF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FF00FF00FF00FF000000000000000000800000000000
        0000800000008000000000000000800000000000000000000000800000008080
        8000FF00FF008080800080808000808080008080800080808000808080008080
        80008080800080808000808080008080800080808000FFFFFF00FF00FF00FF00
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
        FF00FFFFFF00FFFFFF00FFFFFF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FF00
        FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF0000000000000000000000
        0000FFFFFF00000000000000000000000000C0C0C000FFFFFF00800000008080
        8000FF00FF0080808000FFFFFF00808080008080800080808000FF00FF008080
        80008080800080808000FF00FF00FFFFFF0080808000FFFFFF00FF00FF00FF00
        FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00C0C0C000FFFFFF00C0C0
        C00000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
        FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFF
        FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF0000000000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00800000008080
        8000FF00FF0080808000FFFFFF00FF00FF0080808000FFFFFF00FF00FF00FF00
        FF00FFFFFF00FFFFFF0080808000FF00FF0080808000FFFFFF00FF00FF00FF00
        FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
        0000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
        FF0080808000FFFFFF00FF00FF00808080008080800080808000FF00FF00FF00
        FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF000000000000000000FFFF
        FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
        8000FF00FF0080808000FFFFFF008080800080808000FFFFFF00FF00FF008080
        8000FFFFFF00FFFFFF00FFFFFF00FFFFFF0080808000FFFFFF00FF00FF00FF00
        FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
        000000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
        FF0080808000FF00FF00FF00FF0080808000808080008080800080808000FF00
        FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
        8000FF00FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFFFF00FF00FF00FF00
        FF00FFFFFF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF0080808000FFFFFF00FF00FF00FF00FF000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF008080800080808000808080008080800080808000808080008080
        80008080800080808000808080008080800080808000FF00FF00}
      ImageKind = ikCustom
      NumGlyphs = 2
      PopupColor = clBtnFace
      ShowNullDate = False
      YearDigits = dyFour
      TabOrder = 3
    end
  end
  object btnConfirma: TBitBtn [4]
    Left = 492
    Top = 180
    Width = 95
    Height = 25
    Cursor = crHandPoint
    Hint = '|Grava registro...'
    Caption = 'C&onfirma'
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
    TabOrder = 4
    TabStop = False
    OnClick = btnConfirmaClick
  end
  object btnBit_Cancelar: TBitBtn [5]
    Left = 587
    Top = 180
    Width = 95
    Height = 25
    Cursor = crHandPoint
    Hint = '|Cancela registro atual...'
    Caption = '&Cancelar'
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
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
    TabStop = False
    OnClick = btnBit_CancelarClick
  end
  inherited coCalcula: TACBrCalculadora
    Left = 8
    Top = 40
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 424
    Top = 0
  end
  inherited DBConn: TSQLConnection
    Left = 16
    Top = 161
  end
  object SqlCdsCalculaPed: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'Select'#13#10'P1.PRF_REGISTRO,'#13#10'P1.EMP_CODIGO,'#13#10'P1.PED_CODIGO,'#13#10'P1.PRF' +
      '_QTDE,'#13#10'P1.PRF_QTDEFAT,'#13#10'P1.PRF_PRECO,'#13#10'P1.PRF_IPIALIQ,'#13#10'P1.PRF_' +
      'SITUACAO,'#13#10'P1.PRF_PRECO_BRUTO,'#13#10'P2.PED_VLFRETE,'#13#10'P2.PED_DESP_ACE' +
      'S,'#13#10'P2.PED_VLSEGURO,'#13#10'P2.ped_tpdescto,'#13#10'P2.ped_desctopc1,'#13#10'P2.pe' +
      'd_desctopc2,'#13#10'P2.PED_DESCTOVL'#13#10'from PED_IT01 P1'#13#10'LEFT JOIN PED00' +
      '00 P2 ON (P1.PED_CODIGO = P2.PED_CODIGO) AND (P1.emp_codigo = P2' +
      '.EMP_CODIGO)'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    OnCalcFields = SqlCdsCalculaPedCalcFields
    CommandText = 
      'Select'#13#10'P1.PRF_REGISTRO,'#13#10'P1.EMP_CODIGO,'#13#10'P1.PED_CODIGO,'#13#10'P1.PRF' +
      '_QTDE,'#13#10'P1.PRF_QTDEFAT,'#13#10'P1.PRF_PRECO,'#13#10'P1.PRF_IPIALIQ,'#13#10'P1.PRF_' +
      'SITUACAO,'#13#10'P1.PRF_PRECO_BRUTO,'#13#10'P2.PED_VLFRETE,'#13#10'P2.PED_DESP_ACE' +
      'S,'#13#10'P2.PED_VLSEGURO,'#13#10'P2.ped_tpdescto,'#13#10'P2.ped_desctopc1,'#13#10'P2.pe' +
      'd_desctopc2,'#13#10'P2.PED_DESCTOVL'#13#10'from PED_IT01 P1'#13#10'LEFT JOIN PED00' +
      '00 P2 ON (P1.PED_CODIGO = P2.PED_CODIGO) AND (P1.emp_codigo = P2' +
      '.EMP_CODIGO)'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 520
    Top = 48
    object SqlCdsCalculaPedPRF_REGISTRO: TIntegerField
      FieldName = 'PRF_REGISTRO'
      Required = True
    end
    object SqlCdsCalculaPedEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlCdsCalculaPedPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Size = 7
    end
    object SqlCdsCalculaPedPRF_QTDE: TFMTBCDField
      FieldName = 'PRF_QTDE'
      Precision = 15
    end
    object SqlCdsCalculaPedPRF_QTDEFAT: TFMTBCDField
      FieldName = 'PRF_QTDEFAT'
      Precision = 15
    end
    object SqlCdsCalculaPedPRF_IPIALIQ: TFMTBCDField
      FieldName = 'PRF_IPIALIQ'
      Precision = 15
    end
    object SqlCdsCalculaPedPED_VLFRETE: TFMTBCDField
      FieldName = 'PED_VLFRETE'
      Precision = 15
    end
    object SqlCdsCalculaPedPED_DESP_ACES: TFMTBCDField
      FieldName = 'PED_DESP_ACES'
      Precision = 15
    end
    object SqlCdsCalculaPedPED_VLSEGURO: TFMTBCDField
      FieldName = 'PED_VLSEGURO'
      Precision = 15
    end
    object SqlCdsCalculaPedPED_DESCTOVL: TFMTBCDField
      FieldName = 'PED_DESCTOVL'
      Precision = 15
    end
    object SqlCdsCalculaPedPRF_TOTAL_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'PRF_TOTAL_CC'
      Calculated = True
    end
    object SqlCdsCalculaPedPRF_SITUACAO: TStringField
      FieldName = 'PRF_SITUACAO'
      Size = 1
    end
    object SqlCdsCalculaPedPRF_TOTAL_BRUTO_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'PRF_TOTAL_BRUTO_CC'
      Calculated = True
    end
    object SqlCdsCalculaPedPRF_PRECO: TFMTBCDField
      FieldName = 'PRF_PRECO'
      Precision = 20
      Size = 5
    end
    object SqlCdsCalculaPedPRF_PRECO_BRUTO: TFMTBCDField
      FieldName = 'PRF_PRECO_BRUTO'
      Precision = 20
      Size = 5
    end
  end
  object SQLClienteDestino: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 'SELECT T1.CLI_CODIGO,T1.CLI_RAZAO FROM CLI0000 T1'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'SELECT T1.CLI_CODIGO,T1.CLI_RAZAO FROM CLI0000 T1'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 403
    Top = 109
    object SQLClienteDestinoCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Required = True
      Size = 5
    end
    object SQLClienteDestinoCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Size = 55
    end
  end
  object DsClientDestino: TDataSource
    DataSet = SQLClienteDestino
    Left = 504
    Top = 109
  end
end
