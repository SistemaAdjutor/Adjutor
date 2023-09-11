object FormEveRepres: TFormEveRepres
  Left = 125
  Top = 151
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Lan'#231'amentos que integram nas comiss'#245'es dos Vendedores'
  ClientHeight = 261
  ClientWidth = 439
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = True
  Position = poDesktopCenter
  Visible = True
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnDestroy = FormDestroy
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 18
    Top = 17
    Width = 98
    Height = 13
    Caption = '&C'#243'digo Lan'#231'amento:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 44
    Top = 75
    Width = 37
    Height = 13
    Caption = 'Evento:'
  end
  object Label3: TLabel
    Left = 31
    Top = 52
    Width = 49
    Height = 13
    Caption = 'Vendedor:'
  end
  object Label4: TLabel
    Left = 54
    Top = 195
    Width = 27
    Height = 13
    Caption = 'Valor:'
  end
  object Label6: TLabel
    Left = 212
    Top = 195
    Width = 26
    Height = 13
    Caption = 'Data:'
  end
  object Label7: TLabel
    Left = 14
    Top = 100
    Width = 67
    Height = 13
    Caption = 'Complemento:'
  end
  object Label5: TLabel
    Left = 57
    Top = 130
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
  object Label8: TLabel
    Left = 53
    Top = 166
    Width = 28
    Height = 13
    Caption = 'IRRF:'
  end
  object DbRadErp_Imposto: TDBRadioGroup
    Left = 82
    Top = 152
    Width = 251
    Height = 35
    Columns = 2
    DataField = 'ERP_IMPOSTO'
    DataSource = DataCadastros1.DsEveRepr
    Items.Strings = (
      'Incidente'
      'N'#227'o Incidente')
    ReadOnly = True
    TabOrder = 7
    TabStop = True
    Values.Strings = (
      'S'
      'N')
  end
  object DbeEve_codigo: TDBEdit
    Left = 82
    Top = 72
    Width = 37
    Height = 21
    DataField = 'EVE_CODIGO'
    DataSource = DataCadastros1.DsEveRepr
    TabOrder = 3
    OnClick = DbeEve_codigoClick
    OnEnter = DbeEve_codigoClick
    OnExit = DbeEve_codigoExit
    OnKeyPress = DbeEve_codigoKeyPress
  end
  object DbeErp_valor: TDBEdit
    Left = 83
    Top = 192
    Width = 100
    Height = 21
    DataField = 'ERP_VALOR'
    DataSource = DataCadastros1.DsEveRepr
    MaxLength = 13
    TabOrder = 8
    OnEnter = DbeErp_valorEnter
  end
  object DbeErp_compl: TDBEdit
    Left = 82
    Top = 96
    Width = 250
    Height = 21
    CharCase = ecUpperCase
    DataField = 'ERP_COMPL'
    DataSource = DataCadastros1.DsEveRepr
    TabOrder = 5
    OnClick = DbeErp_complClick
  end
  object Panel1: TPanel
    Left = 4
    Top = 40
    Width = 426
    Height = 4
    Color = clHighlight
    TabOrder = 13
  end
  object DBNavigator1: TDBNavigator
    Left = 324
    Top = 10
    Width = 108
    Height = 25
    DataSource = DataCadastros1.DsEveRepr
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    TabOrder = 12
    OnClick = DBNavigator1Click
  end
  object TPanel
    Left = 99
    Top = 224
    Width = 339
    Height = 33
    BevelInner = bvLowered
    BevelOuter = bvLowered
    Color = 12681984
    TabOrder = 10
    TabStop = True
    object Bit_Cancelar: TBitBtn
      Left = 251
      Top = 4
      Width = 82
      Height = 25
      Cursor = crHandPoint
      Hint = '|Cancela registro atual...'
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
      TabOrder = 3
      TabStop = False
      OnClick = Bit_CancelarClick
    end
    object Bit_Sair: TBitBtn
      Left = 251
      Top = 4
      Width = 85
      Height = 25
      Cursor = crHandPoint
      Caption = '&Sair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
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
      ParentFont = False
      TabOrder = 4
      TabStop = False
      OnClick = Bit_SairClick
    end
    object Bit_novo: TBitBtn
      Left = 5
      Top = 4
      Width = 82
      Height = 25
      Cursor = crHandPoint
      Caption = '&Novo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Glyph.Data = {
        E6000000424DE60000000000000076000000280000000E0000000E0000000100
        04000000000070000000CE0E0000D80E00001000000000000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3300333333333333330033333333333333003333300033333300333330003333
        3300333330003333330033000000000333003300000000033300330000000003
        3300333330003333330033333000333333003333300033333300333333333333
        33003333333333333300}
      ParentFont = False
      TabOrder = 0
      TabStop = False
      OnClick = Bit_novoClick
    end
    object Bit_Excluir: TBitBtn
      Left = 87
      Top = 4
      Width = 82
      Height = 25
      Cursor = crHandPoint
      Hint = '|Exclui registro atual..'
      Caption = '&Excluir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Glyph.Data = {
        E6000000424DE60000000000000076000000280000000E0000000E0000000100
        04000000000070000000CE0E0000D80E00001000000000000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3300333333333333330033333333333333003333333333333300333333333333
        3300333333333333330033000000000033003300000000003300330000000000
        3300333333333333330033333333333333003333333333333300333333333333
        33003333333333333300}
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      TabStop = False
      OnClick = Bit_ExcluirClick
    end
    object Bit_Gravar: TBitBtn
      Left = 169
      Top = 4
      Width = 82
      Height = 25
      Cursor = crHandPoint
      Hint = '|Grava registro...'
      Caption = '&Gravar'
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
      TabOrder = 2
      TabStop = False
      OnClick = Bit_GravarClick
    end
  end
  object DbRadErp_tipo: TDBRadioGroup
    Left = 82
    Top = 117
    Width = 163
    Height = 35
    Columns = 2
    DataField = 'ERP_TIPO'
    DataSource = DataCadastros1.DsEveRepr
    Items.Strings = (
      'D'#233'bito'
      'Cr'#233'dito')
    ReadOnly = True
    TabOrder = 6
    TabStop = True
    Values.Strings = (
      'D'
      'C')
  end
  object Panel3: TPanel
    Left = 3
    Top = 224
    Width = 94
    Height = 33
    BevelInner = bvLowered
    BevelOuter = bvLowered
    Color = 12681984
    TabOrder = 11
    object Bit_Relatorio: TBitBtn
      Left = 4
      Top = 4
      Width = 85
      Height = 25
      Cursor = crHandPoint
      Caption = '&Relat'#243'rio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
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
      TabOrder = 0
      TabStop = False
      OnClick = Bit_RelatorioClick
    end
  end
  object CbRep: TComboBox
    Left = 120
    Top = 48
    Width = 302
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 2
    OnClick = CbRepClick
    OnExit = CbRepExit
  end
  object CbxEvento: TComboBox
    Left = 120
    Top = 72
    Width = 302
    Height = 21
    TabOrder = 4
    OnClick = CbxEventoClick
  end
  object DbeRep_Codigo: TDBEdit
    Left = 82
    Top = 48
    Width = 37
    Height = 21
    DataField = 'REP_CODIGO'
    DataSource = DataCadastros1.DsEveRepr
    TabOrder = 1
    OnClick = DbeRep_CodigoClick
    OnEnter = DbeRep_CodigoClick
    OnExit = DbeRep_CodigoExit
    OnKeyPress = DbeRep_CodigoKeyPress
  end
  object EdtCod_Lanc: TEdit
    Left = 118
    Top = 13
    Width = 49
    Height = 21
    CharCase = ecUpperCase
    MaxLength = 5
    TabOrder = 0
    OnClick = EdtCod_LancClick
    OnEnter = EdtCod_LancClick
    OnExit = EdtCod_LancExit
    OnKeyPress = EdtCod_LancKeyPress
  end
  object DbDtERP_DATA: TJvDBDateEdit
    Left = 243
    Top = 192
    Width = 90
    Height = 21
    DataField = 'ERP_DATA'
    DataSource = DataCadastros1.DsEveRepr
    Glyph.Data = {
      4E000000424D4E000000000000003E000000280000000F000000040000000100
      010000000000100000000000000000000000020000000200000000000000FFFF
      FF00FFFE00009CE600009CE60000FFFE0000}
    ImageKind = ikCustom
    PopupColor = clBtnFace
    ShowNullDate = False
    YearDigits = dyFour
    TabOrder = 9
    OnExit = DbDtERP_DATAExit
  end
  object CdsRep: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 'select REP_CODIGO, REP_NOME from REP0000'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'select REP_CODIGO, REP_NOME from REP0000'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 336
    Top = 48
    object CdsRepREP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object CdsRepREP_NOME: TStringField
      FieldName = 'REP_NOME'
      Size = 35
    end
  end
  object CdsEvento: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 'select  * from EVE0000'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'select  * from EVE0000'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 296
    Top = 72
    object CdsEventoEVE_CODIGO: TStringField
      FieldName = 'EVE_CODIGO'
      Size = 2
    end
    object CdsEventoEVE_DESCRI: TStringField
      FieldName = 'EVE_DESCRI'
      Size = 25
    end
    object CdsEventoEVE_TIPODC: TStringField
      FieldName = 'EVE_TIPODC'
      Size = 1
    end
    object CdsEventoEVE_IRRF: TStringField
      FieldName = 'EVE_IRRF'
      Size = 1
    end
    object CdsEventoEVE_SITUAC: TStringField
      FieldName = 'EVE_SITUAC'
      Size = 1
    end
    object CdsEventoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
end
