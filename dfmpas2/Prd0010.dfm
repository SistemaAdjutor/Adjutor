object FormEtiqbarra: TFormEtiqbarra
  Left = 45
  Top = 40
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Etiquetas de C'#243'digo de Barras'
  ClientHeight = 495
  ClientWidth = 718
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
  object Label4: TLabel
    Left = 495
    Top = 88
    Width = 50
    Height = 13
    Caption = 'Etiquetas :'
  end
  object Label5: TLabel
    Left = 495
    Top = 175
    Width = 150
    Height = 13
    Caption = 'Informa'#231#245'es sobre as etiquetas:'
  end
  object Label7: TLabel
    Left = 205
    Top = 53
    Width = 65
    Height = 13
    Caption = 'Selecionado :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object FiltroProd: TSpeedButton
    Left = 635
    Top = 11
    Width = 71
    Height = 23
    Hint = 'Filtra Tipo de Produto'
    BiDiMode = bdLeftToRight
    Caption = 'Filtro'
    Flat = True
    Glyph.Data = {
      42010000424D4201000000000000760000002800000013000000110000000100
      040000000000CC00000000000000000000001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
      8888888D261788707777777777777885AA5A80000000000700707885AA5A80FF
      F0B00F07F0707885AA5A80FFFF0BB007F0707880BF2D80FCFFC0BBB000707888
      738680FFFFFF0BBBB000788801C380FCCFCFF00BBBB078818E4E80FFF000000B
      BBBB08809DD480FCC0BBBBB00000008788BA80FFFF00BBBB00707888666080FC
      FFCC00BBB07078808C9680FFFFFFFF00BB0078806B0B80FCCFCCCF0700B08884
      1A0980FFFFFFFF07000008805550800000000008888880834471888888888888
      888888803185}
    Layout = blGlyphRight
    ParentShowHint = False
    ParentBiDiMode = False
    ShowHint = True
    OnClick = FiltroProdClick
  end
  object LblNome: TLabel
    Left = 194
    Top = 13
    Width = 58
    Height = 13
    Caption = 'Refer'#234'ncia :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object DBGridProd: TDBGrid
    Left = 7
    Top = 78
    Width = 477
    Height = 417
    DataSource = DataModulo.DsProduto
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit]
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = DBGridProdCellClick
    OnKeyDown = DBGridProdKeyDown
    OnKeyUp = DBGridProdKeyUp
    Columns = <
      item
        Expanded = False
        FieldName = 'PRD_REFER'
        Title.Caption = 'Refer'#234'ncia'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        Title.Caption = 'Produto'
        Width = 310
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRD_CODBARRA'
        Title.Caption = 'Cod.Barra'
        Visible = True
      end>
  end
  object GroupBox1: TGroupBox
    Left = 6
    Top = 7
    Width = 181
    Height = 65
    Caption = 'Pesquisa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    object RadNome: TRadioButton
      Left = 8
      Top = 29
      Width = 73
      Height = 17
      Caption = 'Descri'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = RadNomeClick
    end
    object RadRefer: TRadioButton
      Left = 91
      Top = 29
      Width = 81
      Height = 17
      Caption = 'Refer'#234'ncia'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = RadReferClick
    end
  end
  object GroupBox2: TGroupBox
    Left = 493
    Top = 252
    Width = 217
    Height = 105
    Caption = 'Informa'#231#245'es da Etiqueta'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    object Label1: TLabel
      Left = 42
      Top = 29
      Width = 27
      Height = 13
      Caption = 'Lote :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 25
      Top = 53
      Width = 44
      Height = 13
      Caption = 'Validade:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 11
      Top = 79
      Width = 58
      Height = 13
      Caption = 'Embalagem:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object EditLote: TEdit
      Left = 71
      Top = 24
      Width = 80
      Height = 21
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 0
    end
    object EditValidade: TEdit
      Left = 71
      Top = 49
      Width = 80
      Height = 21
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 1
    end
    object EditQtde: TEdit
      Left = 71
      Top = 74
      Width = 56
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
  end
  object LboxModelos: TListBox
    Left = 493
    Top = 103
    Width = 218
    Height = 69
    ItemHeight = 13
    TabOrder = 2
    OnClick = LboxModelosClick
  end
  object MemModelos: TMemo
    Left = 493
    Top = 190
    Width = 217
    Height = 60
    Color = clBtnFace
    Lines.Strings = (
      'Line1'
      'Line2'
      'Line3'
      'Line4')
    TabOrder = 3
  end
  object GroupBox3: TGroupBox
    Left = 493
    Top = 363
    Width = 217
    Height = 40
    Caption = 'C'#243'pias'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    object Label6: TLabel
      Left = 24
      Top = 18
      Width = 102
      Height = 13
      Caption = 'Numero de Etiquetas:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object EditCopias: TEdit
      Left = 128
      Top = 14
      Width = 50
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 5
      ParentFont = False
      TabOrder = 0
      Text = '1'
      OnKeyPress = EditCopiasKeyPress
    end
  end
  object PanProduto: TPanel
    Left = 272
    Top = 47
    Width = 381
    Height = 25
    Alignment = taLeftJustify
    BevelInner = bvLowered
    BevelOuter = bvLowered
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object EditRefer: TEdit
    Left = 254
    Top = 9
    Width = 102
    Height = 21
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MaxLength = 11
    ParentFont = False
    TabOrder = 0
    Visible = False
    OnEnter = EditReferEnter
    OnExit = EditReferExit
  end
  object BitImprimir: TBitBtn
    Left = 618
    Top = 417
    Width = 92
    Height = 25
    Caption = '&Imprimir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = BitImprimirClick
  end
  object GroupBox4: TGroupBox
    Left = 492
    Top = 407
    Width = 118
    Height = 75
    Caption = 'Dispositivo de sa'#237'da'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    object RadVideo: TRadioButton
      Left = 14
      Top = 23
      Width = 65
      Height = 17
      Caption = '&V'#237'deo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object RadImpressora: TRadioButton
      Left = 14
      Top = 48
      Width = 81
      Height = 17
      Caption = '&Impressora'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      TabStop = True
    end
  end
  object Bit_Sair: TBitBtn
    Left = 618
    Top = 456
    Width = 92
    Height = 25
    Cursor = crHandPoint
    Caption = '&Sair'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
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
  object TbCodbar: TTable
    DatabaseName = 'RwDbAdm'
    TableName = 'CDBAR001'
    Left = 480
    object TbCodbarCB_PRD_REFER: TStringField
      FieldName = 'CB_PRD_REFER'
      Size = 11
    end
    object TbCodbarCB_PRD_DESCRI: TStringField
      FieldName = 'CB_PRD_DESCRI'
      Size = 40
    end
    object TbCodbarCB_PRD_COMPL: TStringField
      FieldName = 'CB_PRD_COMPL'
      Size = 15
    end
    object TbCodbarCB_EAN13: TStringField
      FieldName = 'CB_EAN13'
      Size = 13
    end
    object TbCodbarCB_LOTE: TStringField
      FieldName = 'CB_LOTE'
      Size = 10
    end
    object TbCodbarCB_VALIDADE: TStringField
      FieldName = 'CB_VALIDADE'
      Size = 10
    end
    object TbCodbarCB_PRD_UND: TStringField
      FieldName = 'CB_PRD_UND'
      Size = 3
    end
    object TbCodbarCB_LDETAIL1: TStringField
      FieldName = 'CB_LDETAIL1'
      Size = 40
    end
    object TbCodbarCB_LDETAIL2: TStringField
      FieldName = 'CB_LDETAIL2'
      Size = 40
    end
    object TbCodbarCB_LDETAIL3: TStringField
      FieldName = 'CB_LDETAIL3'
      Size = 40
    end
    object TbCodbarCB_LDETAIL4: TStringField
      FieldName = 'CB_LDETAIL4'
      Size = 40
    end
    object TbCodbarCB_QUANT: TStringField
      FieldName = 'CB_QUANT'
      Size = 12
    end
  end
  object DsCodbar: TDataSource
    DataSet = TbCodbar
    Left = 512
  end
  object TbNumer: TTable
    DatabaseName = 'RwDbAdm'
    TableName = 'NF_SEQ03'
    Left = 544
    object TbNumerNFSEQUENC: TStringField
      FieldName = 'NFSEQUENC'
      Size = 6
    end
    object TbNumerOS_SEQUENC: TStringField
      FieldName = 'OS_SEQUENC'
      Size = 6
    end
    object TbNumerCB_LOTE: TStringField
      FieldName = 'CB_LOTE'
      Size = 10
    end
    object TbNumerCB_VALIDADE: TStringField
      FieldName = 'CB_VALIDADE'
      Size = 10
    end
  end
  object DsNumer: TDataSource
    DataSet = TbNumer
    Left = 576
  end
end
