object FormAtualizaPreco: TFormAtualizaPreco
  Left = 155
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Atualiza'#231#227'o de Pre'#231'o'
  ClientHeight = 257
  ClientWidth = 468
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
  OnCloseQuery = FormCloseQuery
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 450
    Height = 201
    TabOrder = 0
    object Label1: TLabel
      Left = 27
      Top = 13
      Width = 55
      Height = 13
      Caption = 'Refer'#234'ncia:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 28
      Top = 38
      Width = 54
      Height = 13
      Caption = 'Descri'#231#227'o :'
    end
    object Label6: TLabel
      Left = 17
      Top = 105
      Width = 124
      Height = 13
      Caption = 'Pre'#231'o unit'#225'rio de compra :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 13
      Top = 132
      Width = 127
      Height = 13
      Caption = 'Pre'#231'o unit'#225'rio de trabalho :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 40
      Top = 159
      Width = 101
      Height = 13
      Caption = 'Data da atualiza'#231#227'o :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object SpPesquisa: TSpeedButton
      Left = 176
      Top = 9
      Width = 24
      Height = 21
      Hint = 'Busca Produto'
      Flat = True
      Glyph.Data = {
        42020000424D4202000000000000420000002800000010000000100000000100
        1000030000000002000000000000000000000000000000000000007C0000E003
        00001F0000001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C8C311F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7CCE39734E08211F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7C2C7F8665734E08211F7C1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C2C7F8665734E08211F7C1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C2C7F8665734E1F7C1042CE398C311F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C2C7F104210423E53FF67BF6710422925
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C794EBF67FF67FF67FF7FFF7F524A
        8C311F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C3E53BF67FF67FF67FF7FFF7FFF67
        29251F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7CBF673F4FBF67FF67FF7FFF67FF67
        4A291F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7CBF67BF673F4FFF67FF67FF67FF67
        4A291F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C794EFF7FBF67BF673F4FBF67794E
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C794EFF67FF67FF673E531F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpPesquisaClick
    end
    object EdtRefer: TEdit
      Left = 84
      Top = 9
      Width = 90
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 11
      TabOrder = 0
      OnEnter = EdtReferEnter
      OnExit = EdtReferExit
    end
    object GroupBox1: TGroupBox
      Left = 3
      Top = 53
      Width = 444
      Height = 44
      TabOrder = 2
      object Label3: TLabel
        Left = 7
        Top = 16
        Width = 71
        Height = 13
        Caption = 'Comprado em :'
      end
      object Label4: TLabel
        Left = 131
        Top = 16
        Width = 77
        Height = 13
        Caption = 'Trabalhado em :'
      end
      object Label5: TLabel
        Left = 265
        Top = 16
        Width = 30
        Height = 13
        Caption = 'Fator :'
      end
      object DbePrd_UndComp: TDBEdit
        Left = 81
        Top = 13
        Width = 40
        Height = 21
        TabStop = False
        Color = 14145495
        DataField = 'PRD_UNDCOMP'
        DataSource = DsProduto
        ReadOnly = True
        TabOrder = 0
      end
      object DbePrd_und: TDBEdit
        Left = 213
        Top = 13
        Width = 40
        Height = 21
        TabStop = False
        Color = 14145495
        DataField = 'PRD_UND'
        DataSource = DsProduto
        ReadOnly = True
        TabOrder = 1
      end
      object DbePrd_Fatorc: TDBEdit
        Left = 298
        Top = 13
        Width = 100
        Height = 21
        TabStop = False
        Color = 14145495
        DataField = 'PRD_FATORC'
        DataSource = DsProduto
        ReadOnly = True
        TabOrder = 2
      end
      object DbePrd_divmult: TDBEdit
        Left = 402
        Top = 13
        Width = 17
        Height = 21
        TabStop = False
        Color = 14145495
        DataField = 'PRD_DIVMULT'
        DataSource = DsProduto
        ReadOnly = True
        TabOrder = 3
      end
    end
    object DbePrd_Pcusto: TDBEdit
      Left = 142
      Top = 128
      Width = 90
      Height = 21
      TabStop = False
      Color = 14145495
      DataField = 'PRD_PCUSTO'
      DataSource = DsProduto
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
    object NumEditPrecoCompra: TCurrencyEdit
      Left = 142
      Top = 101
      Width = 90
      Height = 21
      AutoSize = False
      DecimalPlaces = 3
      DisplayFormat = ',0.000;-,0.000'
      TabOrder = 1
      OnEnter = NumEditPrecoCompraEnter
      OnExit = NumEditPrecoCompraExit
    end
    object DBEdit1: TDBEdit
      Left = 84
      Top = 34
      Width = 361
      Height = 21
      TabStop = False
      Color = 14145495
      DataField = 'PRD_DESCRI'
      DataSource = DsProduto
      ReadOnly = True
      TabOrder = 4
    end
    object EdDtAtualiza: TDateEdit
      Left = 142
      Top = 154
      Width = 90
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      GlyphKind = gkEllipsis
      NumGlyphs = 1
      ParentFont = False
      YearDigits = dyFour
      TabOrder = 5
    end
  end
  object Panel3: TPanel
    Left = 177
    Top = 216
    Width = 280
    Height = 33
    BevelInner = bvLowered
    BevelOuter = bvLowered
    Color = 12681984
    TabOrder = 1
    object Bit_Confirmar: TBitBtn
      Left = 5
      Top = 4
      Width = 90
      Height = 25
      Caption = '&Gravar'
      Enabled = False
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
      TabOrder = 0
      TabStop = False
      OnClick = Bit_ConfirmarClick
    end
    object Bit_Cancelar: TBitBtn
      Left = 95
      Top = 4
      Width = 90
      Height = 25
      Caption = 'C&ancelar'
      Enabled = False
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
      TabOrder = 1
      TabStop = False
      OnClick = Bit_CancelarClick
    end
    object Bit_Sair: TBitBtn
      Left = 185
      Top = 4
      Width = 90
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
      TabOrder = 2
      TabStop = False
      OnClick = Bit_SairClick
    end
  end
  object SqlCdsProduto: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'select '#13#10'P1.PRD_REFER,'#13#10'P1.PRD_DESCRI,'#13#10'P1.PRD_UNDCOMP,'#13#10'P1.PRD_' +
      'UND,'#13#10'P1.PRD_FATORC,'#13#10'P1.PRD_DIVMULT,'#13#10'P1.PRD_PCUSTO,'#13#10'P1.PRD_DT' +
      'PCUSTO'#13#10'from PRD0000 P1'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'select '#13#10'P1.PRD_REFER,'#13#10'P1.PRD_DESCRI,'#13#10'P1.PRD_UNDCOMP,'#13#10'P1.PRD_' +
      'UND,'#13#10'P1.PRD_FATORC,'#13#10'P1.PRD_DIVMULT,'#13#10'P1.PRD_PCUSTO,'#13#10'P1.PRD_DT' +
      'PCUSTO'#13#10'from PRD0000 P1'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 216
    Top = 12
    object SqlCdsProdutoPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object SqlCdsProdutoPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 50
    end
    object SqlCdsProdutoPRD_UNDCOMP: TStringField
      FieldName = 'PRD_UNDCOMP'
      Size = 3
    end
    object SqlCdsProdutoPRD_UND: TStringField
      FieldName = 'PRD_UND'
      Size = 3
    end
    object SqlCdsProdutoPRD_FATORC: TFMTBCDField
      FieldName = 'PRD_FATORC'
      Precision = 15
    end
    object SqlCdsProdutoPRD_DIVMULT: TStringField
      FieldName = 'PRD_DIVMULT'
      Size = 1
    end
    object SqlCdsProdutoPRD_PCUSTO: TFMTBCDField
      FieldName = 'PRD_PCUSTO'
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
      currency = True
      Precision = 15
    end
    object SqlCdsProdutoPRD_DTPCUSTO: TSQLTimeStampField
      FieldName = 'PRD_DTPCUSTO'
    end
  end
  object DsProduto: TDataSource
    DataSet = SqlCdsProduto
    Left = 246
    Top = 12
  end
end
