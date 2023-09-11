object FormOcpProd: TFormOcpProd
  Left = 172
  Top = 8
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Selecione o item da Ordem de Compra'
  ClientHeight = 512
  ClientWidth = 588
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
  object FiltroProd: TSpeedButton
    Left = 423
    Top = 4
    Width = 80
    Height = 25
    Hint = 'Filtra Produtos'
    BiDiMode = bdLeftToRight
    Caption = 'Filtro'
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
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
    ParentFont = False
    ParentShowHint = False
    ParentBiDiMode = False
    ShowHint = True
    OnClick = FiltroProdClick
  end
  object DbGridProd: TDBGrid
    Left = 7
    Top = 70
    Width = 562
    Height = 437
    Color = clInfoBk
    DataSource = DataModulo.DsProduto
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DbGridProdDblClick
    OnKeyPress = DbGridProdKeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'PRD_REFER'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Refer'#234'ncia'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 105
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRD_DESCRI'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Produto'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 341
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRD_FISICO_CC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Estoque'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 81
        Visible = True
      end>
  end
  object GroupBox1: TGroupBox
    Left = 3
    Top = 1
    Width = 190
    Height = 41
    Caption = 'Pesquisa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object RadRefer: TRadioButton
      Left = 16
      Top = 16
      Width = 81
      Height = 17
      Caption = 'C'#243'digo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = RadReferClick
    end
    object RadProduto: TRadioButton
      Left = 111
      Top = 16
      Width = 64
      Height = 17
      Caption = 'Produto'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      TabStop = True
      OnClick = RadProdutoClick
    end
  end
  object Edt_Pesq: TEdit
    Left = 6
    Top = 45
    Width = 410
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnEnter = Edt_PesqEnter
    OnExit = Edt_PesqExit
  end
end
