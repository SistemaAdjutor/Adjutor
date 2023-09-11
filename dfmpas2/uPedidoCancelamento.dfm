object FrmPedidoCancelemento: TFrmPedidoCancelemento
  Left = 646
  Top = 463
  Caption = 'Cancelamento do Pedido'
  ClientHeight = 140
  ClientWidth = 409
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 409
    Height = 49
    Align = alTop
    Caption = 'Motivo'
    TabOrder = 0
    object CbMotivo: TComboBoxRw
      Left = 3
      Top = 21
      Width = 369
      Height = 22
      TabOrder = 0
      CharCase = ecUpperCase
      LookupSelect = 'PMT_MOTIVO'
      LookupOrderBy = 'PMT_MOTIVO'
      LookupTable = 'PED_MOTIVO'
      GridAutoSize = False
      LookupSource = CbMotivo.InternalSource
      LookupKeyField = 'PMT_REGISTRO'
      ShowButton = True
      LookupTableShare = 'TABELAS'
      AutoF8WinTitulo = 'Motivos'
      AutoF8ColumnsTitulo = 'C'#243'digo, Descri'#231#227'o'
      GridLeft = 0
      GridWidth = 0
      GridHeight = 100
      GridShowWhenEnter = False
      SelectWithDoubleClick = False
      Tabela = 'PED_MOTIVO'
      CamposCarregar = 'PMT_MOTIVO'
      CamposRetornar = 'PMT_REGISTRO'
      CamposOrdernar = 'PMT_MOTIVO'
      ConexaoBanco = DataCadastros.SQLConnection1
      Compartilhar = 'TABELAS'
      Localizado = False
      CodigoEmpresa = 0
      ResetaCampos = False
      MultiEmpresa = False
      Localizar = False
      CarregarCombo = False
      itemindex = 0
      style = csDropDown
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 49
    Width = 409
    Height = 48
    Align = alTop
    Caption = 'Descri'#231#227'o Adicional'
    TabOrder = 1
    object EdMotivo: TEdit
      Left = 8
      Top = 16
      Width = 393
      Height = 22
      CharCase = ecUpperCase
      MaxLength = 200
      TabOrder = 0
    end
  end
  object Bit_Cancelar: TBitBtn
    Left = 277
    Top = 107
    Width = 111
    Height = 25
    Cursor = crHandPoint
    Hint = '|Cancela registro atual...'
    Cancel = True
    Caption = 'Abandonar'
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
    OnClick = Bit_CancelarClick
  end
  object Bit_Gravar: TBitBtn
    Left = 160
    Top = 107
    Width = 111
    Height = 25
    Cursor = crHandPoint
    Hint = '|Grava registro...'
    Caption = 'Cancelar Pedido'
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
    OnClick = Bit_GravarClick
  end
end
