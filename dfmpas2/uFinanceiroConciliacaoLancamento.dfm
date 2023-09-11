object FrmFinanceiroConciliacaoLancamento: TFrmFinanceiroConciliacaoLancamento
  Left = 382
  Top = 271
  Caption = 'Conciliar'
  ClientHeight = 129
  ClientWidth = 473
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 473
    Height = 89
    Align = alTop
    Caption = 'Informa'#231#245'es'
    TabOrder = 0
    object Label1: TLabel
      Left = 54
      Top = 40
      Width = 45
      Height = 14
      Alignment = taRightJustify
      Caption = 'Hist'#243'rico:'
    end
    object Label2: TLabel
      Left = 16
      Top = 61
      Width = 83
      Height = 14
      Caption = 'Data Conciliacao:'
    end
    object Sb_ContaBanco: TSpeedButton
      Left = 442
      Top = 35
      Width = 22
      Height = 21
      Hint = 'Cadastro de Hist'#243'rico'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333333333FFFFFFFFF333333000000000033333377777777773333330FFFFF
        FFF03333337F333333373333330FFFFFFFF03333337F3FF3FFF73333330F00F0
        00F03333F37F773777373330330FFFFFFFF03337FF7F3F3FF3F73339030F0800
        F0F033377F7F737737373339900FFFFFFFF03FF7777F3FF3FFF70999990F00F0
        00007777777F7737777709999990FFF0FF0377777777FF37F3730999999908F0
        F033777777777337F73309999990FFF0033377777777FFF77333099999000000
        3333777777777777333333399033333333333337773333333333333903333333
        3333333773333333333333303333333333333337333333333333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = Sb_ContaBancoClick
    end
    object CbConciliado: TCheckBox
      Left = 102
      Top = 16
      Width = 97
      Height = 17
      Caption = 'Conciliado'
      Checked = True
      State = cbChecked
      TabOrder = 0
      OnClick = CbConciliadoClick
    end
    object RxDataLancamento: TDateEdit
      Left = 102
      Top = 60
      Width = 88
      Height = 22
      ButtonWidth = 20
      NumGlyphs = 2
      YearDigits = dyFour
      TabOrder = 3
    end
    object CbContaBanco: TComboBoxRw
      Left = 148
      Top = 35
      Width = 269
      Height = 22
      TabOrder = 2
      CharCase = ecUpperCase
      LookupSelect = 'HCO_DESCRICAO'
      LookupOrderBy = 'HCO_DESCRICAO'
      LookupTable = 'HIST_CONCILIACAO'
      OnSelect = CbContaBancoSelect
      GridAutoSize = False
      LookupSource = CbContaBanco.InternalSource
      LookupKeyField = 'HCO_REGISTRO'
      ShowButton = True
      LookupTableShare = 'BANCOS'
      AutoF8WinTitulo = 'Hist'#243'ricos'
      AutoF8ColumnsTitulo = 'C'#243'digo, Descri'#231#227'o'
      GridLeft = 0
      GridWidth = 0
      GridHeight = 100
      GridShowWhenEnter = False
      Tabela = 'HIST_CONCILIACAO'
      CamposCarregar = 'HCO_DESCRICAO'
      CamposRetornar = 'HCO_REGISTRO'
      CamposOrdernar = 'HCO_DESCRICAO'
      ConexaoBanco = DataCadastros.SQLConnection1
      Compartilhar = 'BANCOS'
      Localizado = False
      CodigoEmpresa = 0
      ResetaCampos = False
      MultiEmpresa = False
      Localizar = False
      CarregarCombo = False
      itemindex = 0
      style = csDropDown
    end
    object EdContaBanco: TEdit
      Left = 102
      Top = 35
      Width = 43
      Height = 22
      CharCase = ecUpperCase
      Color = clWhite
      MaxLength = 4
      TabOrder = 1
      OnExit = EdContaBancoExit
    end
  end
  object Bit_Cancelar: TBitBtn
    Left = 365
    Top = 99
    Width = 100
    Height = 25
    Cursor = crHandPoint
    Hint = '|Cancela registro atual...'
    Cancel = True
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
    TabOrder = 2
    OnClick = Bit_CancelarClick
  end
  object Bit_Gravar: TBitBtn
    Left = 261
    Top = 99
    Width = 100
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
    TabOrder = 1
    OnClick = Bit_GravarClick
  end
end
