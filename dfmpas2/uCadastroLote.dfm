object FrmCadastroProdutoLote: TFrmCadastroProdutoLote
  Left = 561
  Top = 314
  Caption = 'Cadastro de Lote'
  ClientHeight = 235
  ClientWidth = 637
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object grp1: TGroupBox
    Left = 0
    Top = 0
    Width = 637
    Height = 77
    Align = alTop
    Caption = 'Produto'
    Enabled = False
    TabOrder = 0
    object Label1: TLabel
      Left = 34
      Top = 24
      Width = 56
      Height = 14
      Caption = 'Refer'#234'ncia:'
    end
    object Label2: TLabel
      Left = 38
      Top = 48
      Width = 52
      Height = 14
      Caption = 'Descri'#231#227'o:'
    end
    object edtReferencia: TEdit
      Left = 95
      Top = 22
      Width = 154
      Height = 22
      TabStop = False
      Color = 14145495
      ReadOnly = True
      TabOrder = 0
    end
    object edtDescricao: TEdit
      Left = 95
      Top = 46
      Width = 530
      Height = 22
      TabStop = False
      Color = 14145495
      ReadOnly = True
      TabOrder = 1
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 77
    Width = 637
    Height = 124
    Align = alTop
    Caption = 'Informa'#231#245'es do Lote'
    TabOrder = 1
    object Label3: TLabel
      Left = 66
      Top = 24
      Width = 24
      Height = 14
      Caption = 'Lote:'
    end
    object Label4: TLabel
      Left = 8
      Top = 51
      Width = 82
      Height = 14
      Caption = 'Data Fabrica'#231#227'o:'
    end
    object Label5: TLabel
      Left = 448
      Top = 51
      Width = 69
      Height = 14
      Caption = 'Data Validade:'
    end
    object Label6: TLabel
      Left = 448
      Top = 24
      Width = 70
      Height = 14
      Caption = 'Pre'#231'o M'#225'ximo:'
    end
    object Label7: TLabel
      Left = 38
      Top = 76
      Width = 52
      Height = 14
      Alignment = taRightJustify
      Caption = 'Descri'#231#227'o:'
    end
    object edtNumeroLote: TEdit
      Left = 95
      Top = 22
      Width = 100
      Height = 22
      TabOrder = 0
    end
    object RxDataFabricacao: TDateEdit
      Left = 95
      Top = 48
      Width = 100
      Height = 22
      NumGlyphs = 2
      TabOrder = 1
    end
    object RxDataValidade: TDateEdit
      Left = 520
      Top = 48
      Width = 100
      Height = 22
      NumGlyphs = 2
      TabOrder = 2
    end
    object CurPrecoMaximo: TCurrencyEdit
      Left = 520
      Top = 22
      Width = 100
      Height = 21
      AutoSize = False
      DisplayFormat = '###,###,##0.00'
      TabOrder = 3
    end
    object edtIdentificacao: TEdit
      Left = 95
      Top = 74
      Width = 523
      Height = 22
      TabOrder = 4
    end
  end
  object Bit_Cancelar: TBitBtn
    Left = 530
    Top = 206
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
    TabOrder = 3
    OnClick = Bit_CancelarClick
  end
  object Bit_Gravar: TBitBtn
    Left = 426
    Top = 206
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
    TabOrder = 2
    OnClick = Bit_GravarClick
  end
  object SqlCdsLotes: TSQLDataSet
    CommandText = 'select * from PRD_LOTE'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DataCadastros.SQLConnection1
    Left = 273
    Top = 107
    object SqlCdsLotesPRDL_REGISTRO: TIntegerField
      FieldName = 'PRDL_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object SqlCdsLotesEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlCdsLotesPRDL_DATA_FABRICACAO: TDateField
      FieldName = 'PRDL_DATA_FABRICACAO'
    end
    object SqlCdsLotesPRDL_DATA_VALIDADE: TDateField
      FieldName = 'PRDL_DATA_VALIDADE'
    end
    object SqlCdsLotesPRDL_LOTE: TStringField
      FieldName = 'PRDL_LOTE'
      Size = 30
    end
    object SqlCdsLotesPRDL_PRECO_MAXIMO: TFMTBCDField
      FieldName = 'PRDL_PRECO_MAXIMO'
      Precision = 20
      Size = 5
    end
    object SqlCdsLotesPRDL_SALDO: TFMTBCDField
      FieldName = 'PRDL_SALDO'
      Precision = 20
      Size = 5
    end
    object SqlCdsLotesPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Size = 10
    end
    object SqlCdsLotesPRDL_CADASTRO: TDateField
      FieldName = 'PRDL_CADASTRO'
    end
    object SqlCdsLotesPRDL_DESCRICAO: TStringField
      FieldName = 'PRDL_DESCRICAO'
      Size = 100
    end
  end
  object DspLotes: TDataSetProvider
    DataSet = SqlCdsLotes
    Options = [poAllowCommandText]
    Left = 313
    Top = 107
  end
  object CdsLotes: TClientDataSet
    Active = True
    Aggregates = <>
    CommandText = 'select * from PRD_LOTE'
    Params = <>
    ProviderName = 'DspLotes'
    Left = 348
    Top = 107
    object CdsLotesPRDL_REGISTRO: TIntegerField
      FieldName = 'PRDL_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CdsLotesEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object CdsLotesPRDL_DATA_FABRICACAO: TDateField
      FieldName = 'PRDL_DATA_FABRICACAO'
    end
    object CdsLotesPRDL_DATA_VALIDADE: TDateField
      FieldName = 'PRDL_DATA_VALIDADE'
    end
    object CdsLotesPRDL_LOTE: TStringField
      FieldName = 'PRDL_LOTE'
      Size = 30
    end
    object CdsLotesPRDL_PRECO_MAXIMO: TFMTBCDField
      FieldName = 'PRDL_PRECO_MAXIMO'
      DisplayFormat = '###,###,##0.000'
      Precision = 20
      Size = 5
    end
    object CdsLotesPRDL_SALDO: TFMTBCDField
      FieldName = 'PRDL_SALDO'
      Precision = 20
      Size = 5
    end
    object CdsLotesPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Size = 10
    end
    object CdsLotesPRDL_CADASTRO: TDateField
      FieldName = 'PRDL_CADASTRO'
    end
    object CdsLotesPRDL_DESCRICAO: TStringField
      FieldName = 'PRDL_DESCRICAO'
      Size = 100
    end
  end
end
