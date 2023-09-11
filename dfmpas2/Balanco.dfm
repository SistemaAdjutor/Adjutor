object FormBalanco: TFormBalanco
  Left = 279
  Top = 128
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Balan'#231'o Autom'#225'tico'
  ClientHeight = 622
  ClientWidth = 1029
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bit_Zerar: TBitBtn
    Left = 549
    Top = 8
    Width = 100
    Height = 25
    Caption = '&Processar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
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
    TabStop = False
    OnClick = Bit_ZerarClick
  end
  object GrpSeleciona: TGroupBox
    Left = 95
    Top = 0
    Width = 451
    Height = 89
    Caption = 'Filtrar Produtos a zerar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object Label18: TLabel
      Left = 16
      Top = 21
      Width = 24
      Height = 13
      Caption = 'Tipo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label19: TLabel
      Left = 9
      Top = 43
      Width = 32
      Height = 13
      Caption = 'Grupo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label20: TLabel
      Left = 6
      Top = 67
      Width = 34
      Height = 13
      Caption = 'Almox.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object EdtTipo: TEdit
      Left = 42
      Top = 18
      Width = 28
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 3
      ParentFont = False
      TabOrder = 0
      OnClick = EdtTipoClick
      OnEnter = EdtTipoEnter
      OnExit = EdtTipoExit
      OnKeyPress = EdtTipoKeyPress
    end
    object EdtGrupo: TEdit
      Left = 42
      Top = 40
      Width = 28
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 3
      ParentFont = False
      TabOrder = 2
      OnClick = EdtGrupoClick
      OnEnter = EdtGrupoEnter
      OnExit = EdtGrupoExit
      OnKeyPress = EdtGrupoKeyPress
    end
    object CbTipo: TComboBox
      Left = 71
      Top = 18
      Width = 256
      Height = 21
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 25
      ParentFont = False
      TabOrder = 1
      OnClick = CbTipoClick
      OnEnter = CbTipoEnter
      OnExit = CbTipoExit
    end
    object CbGrupo: TComboBox
      Left = 71
      Top = 40
      Width = 256
      Height = 21
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 25
      ParentFont = False
      TabOrder = 3
      OnClick = CbGrupoClick
      OnEnter = CbGrupoEnter
      OnExit = CbGrupoExit
    end
    object BitCancelar: TBitBtn
      Left = 335
      Top = 44
      Width = 108
      Height = 25
      Caption = '&Cancela sele'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlight
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = BitCancelarClick
    end
    object BitPesquisar: TBitBtn
      Left = 335
      Top = 18
      Width = 108
      Height = 25
      Caption = 'Con&firma sele'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlight
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = BitPesquisarClick
    end
    object EdAlmox: TEdit
      Left = 42
      Top = 64
      Width = 28
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 3
      ParentFont = False
      TabOrder = 6
      OnClick = EdAlmoxClick
      OnEnter = EdAlmoxEnter
      OnExit = EdAlmoxExit
      OnKeyPress = EdAlmoxKeyPress
    end
    object CbAlmox: TComboBox
      Left = 71
      Top = 64
      Width = 256
      Height = 21
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 25
      ParentFont = False
      TabOrder = 7
      OnClick = CbAlmoxClick
      OnEnter = CbAlmoxEnter
      OnExit = CbAlmoxExit
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 560
    Width = 1029
    Height = 62
    Align = alBottom
    Caption = 'Processando'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    object ProgressBar1: TProgressBar
      Left = 4
      Top = 18
      Width = 640
      Height = 26
      TabOrder = 0
    end
  end
  object Bit_Sair: TBitBtn
    Left = 549
    Top = 34
    Width = 100
    Height = 25
    Caption = '&Sair'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
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
    TabStop = False
    OnClick = Bit_SairClick
  end
  object Panel1: TPanel
    Left = 0
    Top = 400
    Width = 650
    Height = 157
    BevelOuter = bvNone
    TabOrder = 5
    object PnBalanco: TPanel
      Left = 0
      Top = 3
      Width = 649
      Height = 154
      BevelInner = bvLowered
      BevelWidth = 2
      Color = clWhite
      TabOrder = 0
      object Label1: TLabel
        Left = 14
        Top = 30
        Width = 557
        Height = 13
        Caption = 
          'Est'#225' Rotina executa o Balan'#231'o autom'#225'tico do  Estoque. O Saldo do' +
          ' Estoque continuar'#225' o mesmo.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 12
        Top = 49
        Width = 549
        Height = 13
        Caption = 
          'O processo recontar'#225' todos os registros de Entradas e Sa'#237'das e i' +
          'niciar'#225' o novo saldo a partir da'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 13
        Top = 66
        Width = 538
        Height = 13
        Caption = 
          'data do balan'#231'o. Os valores do  Estoque Pendente (compras em abe' +
          'rto) continuar'#227'o o mesmo.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 14
        Top = 85
        Width = 56
        Height = 13
        Caption = 'Aten'#231#227'o :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 67
        Top = 106
        Width = 450
        Height = 13
        Caption = 
          'Voc'#234' pode utilizar o Filtro acima para executar est'#225' rotina some' +
          'nte para alguns'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 67
        Top = 123
        Width = 157
        Height = 13
        Caption = 'tipos de produtos ou grupo.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 232
        Top = 8
        Width = 143
        Height = 13
        Caption = 'BALAN'#199'O AUTOM'#193'TICO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object PnZerar: TPanel
      Left = 0
      Top = 4
      Width = 649
      Height = 152
      BevelInner = bvLowered
      BevelWidth = 2
      Color = clWhite
      TabOrder = 1
      object Label9: TLabel
        Left = 218
        Top = 10
        Width = 123
        Height = 13
        Caption = 'ZERAR O ESTOQUE '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 25
        Top = 62
        Width = 520
        Height = 13
        Caption = 
          'Este processo vai limpar todos os movimentos de Entradas e Sa'#237'da' +
          's do Estoque e deixar o '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label11: TLabel
        Left = 25
        Top = 81
        Width = 130
        Height = 13
        Caption = 'estoque Inicial zerado.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label12: TLabel
        Left = 14
        Top = 88
        Width = 5
        Height = 13
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label14: TLabel
        Left = 54
        Top = 30
        Width = 459
        Height = 13
        Caption = 'CUIDADO!!  PROCESSO ELIMINA O INVENT'#193'RIO DE ESTOQUE DO PASSADO.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label15: TLabel
        Left = 86
        Top = 100
        Width = 450
        Height = 13
        Caption = 
          'Voc'#234' pode utilizar o Filtro acima para executar est'#225' rotina some' +
          'nte para alguns'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label16: TLabel
        Left = 90
        Top = 117
        Width = 380
        Height = 13
        Caption = 'tipos de produtos, grupo ou mesmo de um almoxarifado espec'#237'fico.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 95
    Height = 89
    Caption = 'Op'#231#227'o'
    TabOrder = 0
    object Chk_Limpar_Kardex: TCheckBox
      Left = 4
      Top = 31
      Width = 87
      Height = 17
      Caption = 'Limpar Kardex'
      TabOrder = 0
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 96
    Width = 647
    Height = 299
    Color = 16776176
    DataSource = DsProduto
    FixedColor = 12681984
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'PRD_REFER'
        Title.Alignment = taCenter
        Title.Caption = 'Refer'#234'ncia'
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
        FieldName = 'PRD_DESCRI'
        Title.Alignment = taCenter
        Title.Caption = 'Descri'#231#227'o'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindow
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 232
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRD_ESTOQUE'
        Title.Alignment = taCenter
        Title.Caption = 'Estoque'
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
        FieldName = 'PRD_ENTRADA'
        Title.Alignment = taCenter
        Title.Caption = 'Entrada'
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
        FieldName = 'PRD_SAIDA'
        Title.Alignment = taCenter
        Title.Caption = 'Sa'#237'da'
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
        FieldName = 'PRD_ESTFISICO_CC'
        Title.Caption = 'Est.Fisico'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindow
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRD_PENDENTE'
        Title.Alignment = taCenter
        Title.Caption = 'Compra'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindow
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 60
        Visible = True
      end>
  end
  object SqlCdsTipo: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 'SELECT * FROM PRD_TIPO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'SELECT * FROM PRD_TIPO'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 288
    Top = 14
    object SqlCdsTipoPTI_CODIGO: TStringField
      FieldName = 'PTI_CODIGO'
      Required = True
      Size = 3
    end
    object SqlCdsTipoPTI_DESCRI: TStringField
      DisplayWidth = 100
      FieldName = 'PTI_DESCRI'
      Size = 100
    end
    object SqlCdsTipoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
  object SqlCdsGrupo: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 'SELECT * FROM PRD_GRUPO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'SELECT * FROM PRD_GRUPO'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 416
    Top = 125
    object SqlCdsGrupoPGR_CODIGO: TStringField
      FieldName = 'PGR_CODIGO'
      Required = True
      Size = 3
    end
    object SqlCdsGrupoPGR_DESCRI: TStringField
      FieldName = 'PGR_DESCRI'
      Size = 25
    end
    object SqlCdsGrupoPGR_COMISS: TStringField
      FieldName = 'PGR_COMISS'
      Size = 1
    end
    object SqlCdsGrupoPGR_COM_PERC: TFMTBCDField
      FieldName = 'PGR_COM_PERC'
      Precision = 15
    end
    object SqlCdsGrupoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
  object SqlCdsProduto: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT P1.PRD_REFER,'#13#10'P1.PRD_DESCRI,'#13#10'P1.PRD_ESTOQUE,'#13#10'P1.PRD_EN' +
      'TRADA,'#13#10'P1.PRD_PENDENTE,'#13#10'P1.PRD_SAIDA,'#13#10'P1.PRD_RESERVA,'#13#10'P1.PRD' +
      '_EMPENHO'#13#10'from PRD0000 P1'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    OnCalcFields = SqlCdsProdutoCalcFields
    CommandText = 
      'SELECT P1.PRD_REFER,'#13#10'P1.PRD_DESCRI,'#13#10'P1.PRD_ESTOQUE,'#13#10'P1.PRD_EN' +
      'TRADA,'#13#10'P1.PRD_PENDENTE,'#13#10'P1.PRD_SAIDA,'#13#10'P1.PRD_RESERVA,'#13#10'P1.PRD' +
      '_EMPENHO'#13#10'from PRD0000 P1'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 270
    Top = 160
    object SqlCdsProdutoPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object SqlCdsProdutoPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 50
    end
    object SqlCdsProdutoPRD_ESTOQUE: TFMTBCDField
      FieldName = 'PRD_ESTOQUE'
      Precision = 15
    end
    object SqlCdsProdutoPRD_ENTRADA: TFMTBCDField
      FieldName = 'PRD_ENTRADA'
      Precision = 15
    end
    object SqlCdsProdutoPRD_PENDENTE: TFMTBCDField
      FieldName = 'PRD_PENDENTE'
      Precision = 15
    end
    object SqlCdsProdutoPRD_SAIDA: TFMTBCDField
      FieldName = 'PRD_SAIDA'
      Precision = 15
    end
    object SqlCdsProdutoPRD_ESTFISICO_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'PRD_ESTFISICO_CC'
      currency = False
      Calculated = True
    end
    object SqlCdsProdutoPRD_RESERVA: TFMTBCDField
      FieldName = 'PRD_RESERVA'
      Precision = 15
      Size = 4
    end
    object SqlCdsProdutoPRD_EMPENHO: TFMTBCDField
      FieldName = 'PRD_EMPENHO'
      Precision = 15
      Size = 4
    end
  end
  object DsProduto: TDataSource
    DataSet = SqlCdsProduto
    Left = 342
    Top = 162
  end
  object CdsAtualiza: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspAtualiza'
    Left = 198
    Top = 156
  end
  object DspAtualiza: TDataSetProvider
    DataSet = SqlAtualiza
    Options = [poAllowCommandText]
    Left = 134
    Top = 156
  end
  object SqlAtualiza: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DataCadastros.SQLConnection1
    Left = 60
    Top = 154
  end
  object SQLCdsAlmox: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 'select * from ALMOX0000'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'select * from ALMOX0000'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 504
    Top = 141
    object SQLCdsAlmoxAMX_CODIGO: TStringField
      FieldName = 'AMX_CODIGO'
      Required = True
      Size = 3
    end
    object SQLCdsAlmoxAMX_DESCRI: TStringField
      FieldName = 'AMX_DESCRI'
      Required = True
      Size = 35
    end
    object SQLCdsAlmoxAMX_TIPO: TStringField
      FieldName = 'AMX_TIPO'
      Size = 35
    end
    object SQLCdsAlmoxEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Required = True
      Size = 3
    end
  end
  object SqlCdsPrdManut: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'select'#13#10'E1.* ,'#13#10'A1.AMX_DESCRI,'#13#10'  case E1.PES_TIPO'#13#10'    when '#39'E'#39 +
      ' then '#39'Entrada'#39#13#10'    when '#39'S'#39' then '#39'Sa'#237'da'#39#13#10'  end as PES_TIPO_CA' +
      #13#10'from PRD_ENSA E1'#13#10'left join ALMOX0000 A1 on (A1.AMX_CODIGO = E' +
      '1.AMX_CODIGO)'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'select'#13#10'E1.* ,'#13#10'A1.AMX_DESCRI,'#13#10'  case E1.PES_TIPO'#13#10'    when '#39'E'#39 +
      ' then '#39'Entrada'#39#13#10'    when '#39'S'#39' then '#39'Sa'#237'da'#39#13#10'  end as PES_TIPO_CA' +
      #13#10'from PRD_ENSA E1'#13#10'left join ALMOX0000 A1 on (A1.AMX_CODIGO = E' +
      '1.AMX_CODIGO)'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 600
    Top = 280
    object SqlCdsPrdManutPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object SqlCdsPrdManutPES_TIPO: TStringField
      FieldName = 'PES_TIPO'
      Size = 1
    end
    object SqlCdsPrdManutPES_QTDE: TFMTBCDField
      FieldName = 'PES_QTDE'
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
      Precision = 15
    end
    object SqlCdsPrdManutPES_NUMDOC: TStringField
      FieldName = 'PES_NUMDOC'
      Size = 6
    end
    object SqlCdsPrdManutPES_TIPDOC: TStringField
      FieldName = 'PES_TIPDOC'
      Size = 2
    end
    object SqlCdsPrdManutPES_DATA: TSQLTimeStampField
      FieldName = 'PES_DATA'
    end
    object SqlCdsPrdManutEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlCdsPrdManutPES_ORIGEM: TStringField
      FieldName = 'PES_ORIGEM'
      Size = 10
    end
    object SqlCdsPrdManutPES_VALOR: TFMTBCDField
      FieldName = 'PES_VALOR'
      DisplayFormat = '#,####0.0000'
      Precision = 15
    end
    object SqlCdsPrdManutPES_VAR1: TFMTBCDField
      FieldName = 'PES_VAR1'
      DisplayFormat = '#,###0.000'
      Precision = 15
    end
    object SqlCdsPrdManutPES_VAR2: TFMTBCDField
      FieldName = 'PES_VAR2'
      DisplayFormat = '#,###0.000'
      Precision = 15
    end
    object SqlCdsPrdManutPES_VAR3: TFMTBCDField
      FieldName = 'PES_VAR3'
      DisplayFormat = '#,###0.000'
      Precision = 15
    end
    object SqlCdsPrdManutPES_VAR4: TFMTBCDField
      FieldName = 'PES_VAR4'
      DisplayFormat = '#,###0.000'
      Precision = 15
    end
    object SqlCdsPrdManutPES_VAR5: TFMTBCDField
      FieldName = 'PES_VAR5'
      DisplayFormat = '#,###0.000'
      Precision = 15
    end
    object SqlCdsPrdManutPES_VAR6: TFMTBCDField
      FieldName = 'PES_VAR6'
      DisplayFormat = '#,###0.000'
      Precision = 15
    end
    object SqlCdsPrdManutPES_VAR7: TFMTBCDField
      FieldName = 'PES_VAR7'
      DisplayFormat = '#,###0.000'
      Precision = 15
    end
    object SqlCdsPrdManutPES_VAR8: TFMTBCDField
      FieldName = 'PES_VAR8'
      DisplayFormat = '#,###0.000'
      Precision = 15
    end
    object SqlCdsPrdManutPES_REGISTRO: TIntegerField
      FieldName = 'PES_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SqlCdsPrdManutAMX_CODIGO: TStringField
      FieldName = 'AMX_CODIGO'
      Size = 3
    end
    object SqlCdsPrdManutFOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      Size = 4
    end
    object SqlCdsPrdManutAMX_DESCRI: TStringField
      FieldName = 'AMX_DESCRI'
      ProviderFlags = []
      Size = 35
    end
    object SqlCdsPrdManutPES_IPI: TFMTBCDField
      FieldName = 'PES_IPI'
      Precision = 15
    end
    object SqlCdsPrdManutPES_TIPO_CA: TStringField
      FieldName = 'PES_TIPO_CA'
      FixedChar = True
      Size = 7
    end
    object SqlCdsPrdManutPES_IPI_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'PES_IPI_CC'
      DisplayFormat = '#,####0.0000'
      Calculated = True
    end
    object SqlCdsPrdManutPES_FLAG_ACERTO: TStringField
      FieldName = 'PES_FLAG_ACERTO'
      Size = 1
    end
    object SqlCdsPrdManutPES_FLAG_CONTA: TStringField
      FieldName = 'PES_FLAG_CONTA'
      Size = 1
    end
    object SqlCdsPrdManutPES_HORA: TTimeField
      FieldName = 'PES_HORA'
    end
    object SqlCdsPrdManutCONTA_CC: TStringField
      FieldKind = fkCalculated
      FieldName = 'CONTA_CC'
      Size = 3
      Calculated = True
    end
    object SqlCdsPrdManutPES_KARDEX_TIPO: TStringField
      FieldName = 'PES_KARDEX_TIPO'
      Size = 1
    end
    object SqlCdsPrdManutPES_KARDEX_OBS: TStringField
      FieldName = 'PES_KARDEX_OBS'
      Size = 40
    end
    object SqlCdsPrdManutKARDEX_TIPO: TStringField
      FieldKind = fkCalculated
      FieldName = 'KARDEX_TIPO'
      Size = 10
      Calculated = True
    end
    object SqlCdsPrdManutPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Size = 7
    end
  end
  object SqlConsulta: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    OnCalcFields = SqlCdsProdutoCalcFields
    CommandText = ''
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 248
    Top = 234
  end
  object CdsUpdate1: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = ''
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 448
    Top = 213
  end
end
