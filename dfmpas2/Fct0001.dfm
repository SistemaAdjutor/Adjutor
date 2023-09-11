object FormFichaCusto: TFormFichaCusto
  Left = 3
  Top = 3
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Ficha de Custo'
  ClientHeight = 500
  ClientWidth = 562
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label4: TLabel
    Left = 5
    Top = 13
    Width = 55
    Height = 13
    Caption = 'Refer'#234'ncia:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 453
    Top = 48
    Width = 22
    Height = 13
    Caption = 'Tup:'
  end
  object Label1: TLabel
    Left = 9
    Top = 49
    Width = 51
    Height = 13
    Caption = 'Descri'#231#227'o:'
  end
  object DbGridFichaCustoItem: TDBGrid
    Left = 5
    Top = 72
    Width = 548
    Height = 382
    Color = clAqua
    DataSource = DsFichaCustoItem
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    OnColEnter = DbGridFichaCustoItemColEnter
    OnColExit = DbGridFichaCustoItemColExit
    Columns = <
      item
        Expanded = False
        FieldName = 'PRD_REFER_ITENS'
        Title.Alignment = taCenter
        Title.Caption = 'Ref.M.Prima'
        Width = 76
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRD_DESCRI_Lk'
        Title.Alignment = taCenter
        Title.Caption = 'Descri'#231#227'o'
        Width = 371
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FTI_UC'
        Title.Alignment = taCenter
        Title.Caption = 'UC'
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 6
    Top = 36
    Width = 556
    Height = 4
    Color = clHighlight
    TabOrder = 6
  end
  object DBNavigator1: TDBNavigator
    Left = 433
    Top = 6
    Width = 120
    Height = 25
    DataSource = DsFichaCusto
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    TabOrder = 7
    OnClick = DBNavigator1Click
  end
  object EdtPRD_REFER: TEdit
    Left = 63
    Top = 10
    Width = 98
    Height = 21
    MaxLength = 11
    TabOrder = 0
    OnExit = EdtPRD_REFERExit
  end
  object Panel2: TPanel
    Left = 258
    Top = 462
    Width = 293
    Height = 33
    Cursor = crHandPoint
    BevelInner = bvLowered
    BevelOuter = bvLowered
    Caption = 'Panel2'
    Color = clTeal
    TabOrder = 4
    object Bit_Cancelar: TBitBtn
      Left = 194
      Top = 4
      Width = 95
      Height = 25
      Cursor = crHandPoint
      Hint = '|Cancela registro atual...'
      Caption = '&Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
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
    object Bit_Sair: TBitBtn
      Left = 194
      Top = 4
      Width = 95
      Height = 25
      Cursor = crHandPoint
      Caption = '&Sair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = Bit_SairClick
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
    end
    object Bit_Excluir: TBitBtn
      Left = 4
      Top = 4
      Width = 95
      Height = 25
      Cursor = crHandPoint
      Hint = '|Exclui registro atual..'
      Caption = '&Excluir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = Bit_ExcluirClick
      Glyph.Data = {
        E6000000424DE60000000000000076000000280000000E0000000E0000000100
        04000000000070000000CE0E0000D80E00001000000000000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3300333333333333330033333333333333003333333333333300333333333333
        3300333333333333330033000000000033003300000000003300330000000000
        3300333333333333330033333333333333003333333333333300333333333333
        33003333333333333300}
    end
    object Bit_Gravar: TBitBtn
      Left = 99
      Top = 4
      Width = 95
      Height = 25
      Cursor = crHandPoint
      Hint = '|Grava registro...'
      Caption = '&Gravar'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
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
  end
  object DbeFTP_TUP: TDBEdit
    Left = 479
    Top = 46
    Width = 74
    Height = 21
    DataField = 'FTC_TUP'
    DataSource = DsFichaCusto
    MaxLength = 10
    TabOrder = 2
    OnExit = DbeFTP_TUPExit
  end
  object Panel3: TPanel
    Left = 5
    Top = 462
    Width = 199
    Height = 33
    Cursor = crHandPoint
    BevelInner = bvLowered
    BevelOuter = bvLowered
    Caption = 'Panel3'
    Color = clTeal
    TabOrder = 5
    object Bit_Lista: TBitBtn
      Left = 4
      Top = 4
      Width = 95
      Height = 25
      Cursor = crHandPoint
      Caption = '&Lista'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = Bit_ListaClick
      Glyph.Data = {
        CA010000424DCA01000000000000760000002800000027000000110000000100
        04000000000054010000CE0E0000D80E00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888888888888888888888888880887777777777777777888888888888888888
        8880800000000000000007888888888888888888888080888888888888880788
        8888888888888888888080FF8FF8FF8FF8FF0788888888888888888888808088
        88888888888807888888888888888888888080FF8FF8FF8FF8FF078888888888
        888888888880808888888888888807888888888888888888888080FF8FF8FF8F
        F8FF078888888888888888888880808888888888888807888888888888888888
        888080FF8FF8FF8FF8FF07888888888888888888888080000000000000000788
        8888888888888888888080FF7FF7FF7FF7FF0788888888888888888888808000
        0000000000000788888888888888888888808080CCCCCCCCCCCC078888888888
        8888888888808000000000000000088888888888888888888880888888888888
        8888888888888888888888888880}
      NumGlyphs = 2
    end
    object Bit_Relatorio: TBitBtn
      Left = 99
      Top = 4
      Width = 95
      Height = 25
      Caption = '&Relat'#243'rio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
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
    end
  end
  object Edt_Descricao: TEdit
    Left = 63
    Top = 44
    Width = 378
    Height = 21
    Enabled = False
    TabOrder = 1
    Text = 'Edt_Descricao'
  end
  object DsProdutoAux: TDataSource
    DataSet = TbProdutoAux
    Left = 108
    Top = 209
  end
  object TbProdutoAux: TTable
    DatabaseName = 'RwDbAdm'
    IndexFieldNames = 'PRD_REFER'
    TableName = 'PRD0000'
    Left = 80
    Top = 209
    object TbProdutoAuxPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 40
    end
    object TbProdutoAuxPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
  end
  object TbProduto: TTable
    DatabaseName = 'RwDbAdm'
    TableName = 'PRD0000'
    Left = 18
    Top = 209
    object TbProdutoPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 40
    end
    object TbProdutoPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
  end
  object DsProduto: TDataSource
    DataSet = TbProduto
    Left = 46
    Top = 209
  end
  object DsFichaCusto: TDataSource
    DataSet = TbFichaCusto
    Left = 170
    Top = 209
  end
  object TbFichaCusto: TTable
    BeforeEdit = TbFichaCustoBeforeEdit
    DatabaseName = 'RwDbAdm'
    TableName = 'FTC0000'
    Left = 142
    Top = 209
    object TbFichaCustoPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Required = True
      Size = 11
    end
    object TbFichaCustoFTC_TUP: TFloatField
      DisplayWidth = 10
      FieldName = 'FTC_TUP'
      DisplayFormat = '#,##0.000'
      EditFormat = '#,##0.000'
    end
    object TbFichaCustoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object TbFichaCustoPRD_DESCRI_Lk: TStringField
      FieldKind = fkLookup
      FieldName = 'PRD_DESCRI_Lk'
      LookupDataSet = TbProduto
      LookupKeyFields = 'PRD_REFER'
      LookupResultField = 'PRD_DESCRI'
      KeyFields = 'PRD_REFER'
      Size = 45
      Lookup = True
    end
  end
  object DsFichaCustoItem: TDataSource
    DataSet = TbFichaCustoItem
    Left = 232
    Top = 209
  end
  object TbFichaCustoItem: TTable
    BeforePost = TbFichaCustoItemBeforePost
    BeforeScroll = TbFichaCustoItemBeforeScroll
    DatabaseName = 'RwDbAdm'
    Filter = 'FTI_MODE1 = '#39'X'#39
    Filtered = True
    TableName = 'FTC_IT01'
    Left = 204
    Top = 209
    object TbFichaCustoItemPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Required = True
      Size = 11
    end
    object TbFichaCustoItemFTI_UC: TFloatField
      FieldName = 'FTI_UC'
      DisplayFormat = '#,##0.000'
      EditFormat = '#,##0.000'
    end
    object TbFichaCustoItemFTI_MODE1: TStringField
      FieldName = 'FTI_MODE1'
      Size = 1
    end
    object TbFichaCustoItemPRD_DESCRI_Lk: TStringField
      FieldKind = fkLookup
      FieldName = 'PRD_DESCRI_Lk'
      LookupDataSet = TbProdutoAux
      LookupKeyFields = 'PRD_REFER'
      LookupResultField = 'PRD_DESCRI'
      KeyFields = 'PRD_REFER_ITENS'
      Size = 45
      Lookup = True
    end
    object TbFichaCustoItemPRD_REFER_ITENS: TStringField
      FieldName = 'PRD_REFER_ITENS'
      Size = 11
    end
  end
end
