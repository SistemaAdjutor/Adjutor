object FormCaixaFixo: TFormCaixaFixo
  Left = 29
  Top = 81
  AutoSize = True
  BorderIcons = [biSystemMenu]
  Caption = 'Caixa Fixo - Lan'#231'amentos'
  ClientHeight = 469
  ClientWidth = 726
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnDestroy = FormDestroy
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object GroupLancto: TGroupBox
    Left = 0
    Top = 0
    Width = 478
    Height = 127
    Caption = 'Lan'#231'amento do Caixa'
    TabOrder = 1
    object Label1: TLabel
      Left = 15
      Top = 23
      Width = 77
      Height = 14
      Caption = 'N'#186' Lan'#231'amento:'
    end
    object Label2: TLabel
      Left = 281
      Top = 22
      Width = 87
      Height = 14
      Caption = 'Data Lan'#231'amento:'
    end
    object Label3: TLabel
      Left = 8
      Top = 49
      Width = 84
      Height = 14
      Caption = 'Conta Financeira:'
    end
    object Label4: TLabel
      Left = 47
      Top = 75
      Width = 45
      Height = 14
      Caption = 'Hist'#243'rico:'
    end
    object Label5: TLabel
      Left = 33
      Top = 102
      Width = 57
      Height = 14
      Caption = 'Documento:'
    end
    object Label6: TLabel
      Left = 211
      Top = 102
      Width = 23
      Height = 14
      Caption = 'Tipo:'
    end
    object Label7: TLabel
      Left = 343
      Top = 102
      Width = 28
      Height = 14
      Caption = 'Valor:'
    end
    object DbEdit_Lancto: TDBEdit
      Left = 98
      Top = 21
      Width = 62
      Height = 22
      DataField = 'CXA_LANCTO'
      DataSource = DataMovimento.DsEnf
      Enabled = False
      TabOrder = 0
      OnEnter = DbEdit_LanctoEnter
    end
    object DbEdit_Historico: TDBEdit
      Left = 93
      Top = 71
      Width = 376
      Height = 22
      CharCase = ecUpperCase
      DataField = 'CXA_HISTORICO'
      DataSource = DataMovimento.DsCaixaFixo
      TabOrder = 4
      OnEnter = DbEdit_HistoricoEnter
    end
    object DbEdit_Doc: TDBEdit
      Left = 93
      Top = 98
      Width = 98
      Height = 22
      DataField = 'CXA_DOCUMENTO'
      DataSource = DataMovimento.DsCaixaFixo
      TabOrder = 5
      OnEnter = DbEdit_DocEnter
    end
    object CbCtaAnalise: TComboBox
      Left = 122
      Top = 45
      Width = 347
      Height = 22
      MaxLength = 50
      TabOrder = 3
      OnClick = CbCtaAnaliseClick
      OnEnter = CbCtaAnaliseEnter
      OnExit = CbCtaAnaliseExit
    end
    object DBEditCtaAnalise: TDBEdit
      Left = 92
      Top = 45
      Width = 29
      Height = 22
      DataField = 'CCT_CODIGO'
      DataSource = DataMovimento.DsCaixaFixo
      TabOrder = 2
      OnClick = DBEditCtaAnaliseClick
      OnEnter = DBEditCtaAnaliseClick
      OnExit = DBEditCtaAnaliseExit
    end
    object CbTipoDoc: TComboBox
      Left = 235
      Top = 98
      Width = 80
      Height = 22
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 6
      Text = 'Dinheiro'
      OnChange = CbTipoDocChange
      OnEnter = CbTipoDocEnter
      OnExit = CbTipoDocExit
      Items.Strings = (
        'Dinheiro'
        'Cheque'
        'Outros'
        'Transp.')
    end
    object DBECxa_Data: TJvDBDateEdit
      Left = 374
      Top = 18
      Width = 95
      Height = 22
      DataField = 'CXA_DATA'
      DataSource = DataMovimento.DsCaixaFixo
      DragMode = dmAutomatic
      Glyph.Data = {
        4E000000424D4E000000000000003E000000280000000F000000040000000100
        010000000000100000000000000000000000020000000200000000000000FFFF
        FF00FFFE00009CE600009CE60000FFFE0000}
      ImageKind = ikCustom
      PopupColor = clBtnFace
      ShowNullDate = False
      YearDigits = dyFour
      TabOrder = 1
      OnEnter = DBECxa_DataEnter
      OnExit = DBECxa_DataExit
    end
    object CCxa_valor: TJvValidateEdit
      Left = 371
      Top = 98
      Width = 98
      Height = 21
      AutoSize = False
      CriticalPoints.MaxValueIncluded = False
      CriticalPoints.MinValueIncluded = False
      DisplayFormat = dfCurrency
      DecimalPlaces = 2
      EditText = '0'
      TabOrder = 7
      OnClick = CCxa_valorClick
      OnEnter = CCxa_valorEnter
      OnExit = CCxa_valorExit
    end
  end
  object GroupBox2: TGroupBox
    Left = 481
    Top = 0
    Width = 245
    Height = 127
    Color = 16579823
    Enabled = False
    ParentColor = False
    TabOrder = 6
    object Label8: TLabel
      Left = 7
      Top = 45
      Width = 74
      Height = 14
      Caption = 'Saldo Anterior :'
    end
    object Label9: TLabel
      Left = 5
      Top = 64
      Width = 74
      Height = 14
      Caption = 'Total Entradas :'
    end
    object Label10: TLabel
      Left = 13
      Top = 83
      Width = 64
      Height = 14
      Caption = 'Total Sa'#237'das :'
    end
    object Label11: TLabel
      Left = 47
      Top = 102
      Width = 33
      Height = 14
      Caption = 'Saldo :'
    end
    object Panel1: TPanel
      Left = 1
      Top = 7
      Width = 242
      Height = 27
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = '    '#218'ltimo caixa fechado : '
      Color = 15910820
      TabOrder = 0
      object DBEdit5: TDBEdit
        Left = 120
        Top = 8
        Width = 87
        Height = 14
        BorderStyle = bsNone
        Color = 15910820
        DataField = 'CXF_DATAFECHA'
        DataSource = DataMovimento.DsFechaCaixa
        ReadOnly = True
        TabOrder = 0
      end
    end
    object DBEdit1: TDBEdit
      Left = 88
      Top = 47
      Width = 90
      Height = 14
      BorderStyle = bsNone
      Color = 15910820
      DataField = 'CXF_ANTERIOR'
      DataSource = DataMovimento.DsFechaCaixa
      ReadOnly = True
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 88
      Top = 65
      Width = 90
      Height = 14
      BorderStyle = bsNone
      Color = 15910820
      DataField = 'CXF_ENTRADAS'
      DataSource = DataMovimento.DsFechaCaixa
      ReadOnly = True
      TabOrder = 2
    end
    object DBEdit3: TDBEdit
      Left = 88
      Top = 84
      Width = 90
      Height = 14
      BorderStyle = bsNone
      Color = 15910820
      DataField = 'CXF_SAIDAS'
      DataSource = DataMovimento.DsFechaCaixa
      ReadOnly = True
      TabOrder = 3
    end
    object DBEdit4: TDBEdit
      Left = 88
      Top = 103
      Width = 90
      Height = 14
      BorderStyle = bsNone
      Color = 15910820
      DataField = 'CC_SaldoCaixa'
      DataSource = DataMovimento.DsFechaCaixa
      ReadOnly = True
      TabOrder = 4
    end
  end
  object DbGridLancto: TDBGrid
    Left = 0
    Top = 173
    Width = 723
    Height = 255
    Color = 16776176
    DataSource = DataMovimento.DsCaixaFixo
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Arial'
    TitleFont.Style = []
    OnCellClick = DbGridLanctoCellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'CXA_LANCTO'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' Lcto'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 49
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CXA_DATA'
        Title.Alignment = taCenter
        Title.Caption = 'Data Lcto'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CXA_DOCUMENTO'
        Title.Alignment = taCenter
        Title.Caption = 'Documento'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 78
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CXA_HISTORICO'
        Title.Alignment = taCenter
        Title.Caption = 'Hist'#243'rico'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 329
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CXA_ENTRADA'
        Title.Alignment = taCenter
        Title.Caption = 'Entrada'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 76
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CXA_SAIDA'
        Title.Alignment = taCenter
        Title.Caption = 'Sa'#237'da'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 71
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CXA_SITUACAO'
        Title.Alignment = taCenter
        Title.Caption = 'S.'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 15
        Visible = True
      end>
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 127
    Width = 318
    Height = 41
    Caption = 'Filtrar'
    TabOrder = 2
    object RadCxAberto: TRadioButton
      Left = 14
      Top = 16
      Width = 107
      Height = 17
      Caption = 'Caixa em &Aberto'
      Checked = True
      TabOrder = 0
      TabStop = True
      OnClick = RadCxAbertoClick
    end
    object RadCxTodos: TRadioButton
      Left = 152
      Top = 16
      Width = 129
      Height = 17
      Caption = 'Todos &Lan'#231'amentos'
      TabOrder = 1
      OnClick = RadCxTodosClick
    end
  end
  object GroupBox4: TGroupBox
    Left = 324
    Top = 127
    Width = 401
    Height = 41
    Caption = 'Classificar'
    TabOrder = 3
    object RadioButton3: TRadioButton
      Left = 14
      Top = 16
      Width = 59
      Height = 17
      Caption = 'N'#186' &Lcto'
      TabOrder = 0
      OnClick = RadioButton3Click
    end
    object RadioButton4: TRadioButton
      Left = 101
      Top = 16
      Width = 57
      Height = 17
      Caption = 'Da&ta'
      Checked = True
      TabOrder = 1
      TabStop = True
      OnClick = RadioButton4Click
    end
    object RadioButton5: TRadioButton
      Left = 201
      Top = 16
      Width = 81
      Height = 17
      Caption = '&Documento'
      TabOrder = 2
      OnClick = RadioButton5Click
    end
    object RadioButton6: TRadioButton
      Left = 313
      Top = 16
      Width = 65
      Height = 17
      Caption = '&Hist'#243'rico'
      TabOrder = 3
      OnClick = RadioButton6Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 436
    Width = 512
    Height = 33
    BevelOuter = bvNone
    TabOrder = 4
    object Bit_Cancelar: TBitBtn
      Left = 406
      Top = 4
      Width = 100
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
      TabOrder = 3
      TabStop = False
      OnClick = Bit_CancelarClick
    end
    object Bit_Sair: TBitBtn
      Left = 406
      Top = 4
      Width = 100
      Height = 25
      Cursor = crHandPoint
      Caption = '&Sair'
      Glyph.Data = {
        CA010000424DCA01000000000000760000002800000026000000110000000100
        04000000000054010000CE0E0000D80E00001000000000000000000000000000
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
      TabOrder = 4
      TabStop = False
      OnClick = Bit_SairClick
    end
    object Bit_novo: TBitBtn
      Left = 106
      Top = 4
      Width = 100
      Height = 25
      Cursor = crHandPoint
      Caption = '&Novo'
      Glyph.Data = {
        E6000000424DE60000000000000076000000280000000E0000000E0000000100
        04000000000070000000CE0E0000D80E00001000000000000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3300333333333333330033333333333333003333300033333300333330003333
        3300333330003333330033000000000333003300000000033300330000000003
        3300333330003333330033333000333333003333300033333300333333333333
        33003333333333333300}
      TabOrder = 0
      TabStop = False
      OnClick = Bit_novoClick
    end
    object Bit_Excluir: TBitBtn
      Left = 206
      Top = 4
      Width = 100
      Height = 25
      Cursor = crHandPoint
      Hint = '|Exclui registro atual..'
      Caption = '&Excluir'
      Glyph.Data = {
        E6000000424DE60000000000000076000000280000000E0000000E0000000100
        04000000000070000000CE0E0000D80E00001000000000000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3300333333333333330033333333333333003333333333333300333333333333
        3300333333333333330033000000000033003300000000003300330000000000
        3300333333333333330033333333333333003333333333333300333333333333
        33003333333333333300}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      TabStop = False
      OnClick = Bit_ExcluirClick
    end
    object Bit_Gravar: TBitBtn
      Left = 306
      Top = 4
      Width = 100
      Height = 25
      Cursor = crHandPoint
      Hint = '|Grava registro...'
      Caption = '&Gravar'
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
      TabOrder = 2
      TabStop = False
      OnClick = Bit_GravarClick
    end
    object Bit_Imprimir: TBitBtn
      Left = 6
      Top = 4
      Width = 100
      Height = 25
      Cursor = crHandPoint
      Caption = '&Imprimir'
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
      TabOrder = 5
      TabStop = False
      OnClick = Bit_ImprimirClick
    end
  end
  object Panel3: TPanel
    Left = 521
    Top = 436
    Width = 185
    Height = 32
    BevelOuter = bvNone
    Color = 15910820
    TabOrder = 5
    object Label13: TLabel
      Left = 20
      Top = 8
      Width = 57
      Height = 14
      Caption = 'Saldo Atual:'
    end
    object CCaixa_Atual: TJvValidateEdit
      Left = 79
      Top = 4
      Width = 98
      Height = 21
      AutoSize = False
      Color = 16579823
      CriticalPoints.MaxValueIncluded = False
      CriticalPoints.MinValueIncluded = False
      DisplayFormat = dfCurrency
      DecimalPlaces = 2
      EditText = '0'
      ReadOnly = True
      TabOrder = 0
    end
  end
  object SqlCdsCtaAnalise: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'select CCT_CODIGO, CCT_DESCRI,CCT_CONTA,CCT_TIPO, EMP_CODIGO fro' +
      'm CCT_0000 order by CCT_DESCRI'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'select CCT_CODIGO, CCT_DESCRI,CCT_CONTA,CCT_TIPO, EMP_CODIGO fro' +
      'm CCT_0000 order by CCT_DESCRI'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 168
    Top = 48
    object SqlCdsCtaAnaliseCCT_CODIGO: TStringField
      FieldName = 'CCT_CODIGO'
      Size = 3
    end
    object SqlCdsCtaAnaliseCCT_DESCRI: TStringField
      FieldName = 'CCT_DESCRI'
      Size = 35
    end
    object SqlCdsCtaAnaliseCCT_CONTA: TStringField
      FieldName = 'CCT_CONTA'
      Size = 1
    end
    object SqlCdsCtaAnaliseCCT_TIPO: TStringField
      FieldName = 'CCT_TIPO'
      Size = 1
    end
    object SqlCdsCtaAnaliseEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
  object SqlCdsSaldoAtual: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 'SELECT SUM((CXA_ENTRADA)-(CXA_SAIDA)) AS QRY_TOTAL FROM CAIXA001'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'SELECT SUM((CXA_ENTRADA)-(CXA_SAIDA)) AS QRY_TOTAL FROM CAIXA001'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 518
    Top = 442
    object SqlCdsSaldoAtualQRY_TOTAL: TFMTBCDField
      FieldName = 'QRY_TOTAL'
      Precision = 15
    end
  end
end
