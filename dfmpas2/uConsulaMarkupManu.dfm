object FrmConsultaMarkupManu: TFrmConsultaMarkupManu
  Left = 404
  Top = 200
  Caption = 'Manuten'#231#227'o do custo do item no pedido'
  ClientHeight = 402
  ClientWidth = 596
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
    Width = 596
    Height = 74
    Align = alTop
    Caption = 'Pedido'
    Enabled = False
    TabOrder = 0
    object Label1: TLabel
      Left = 35
      Top = 24
      Width = 35
      Height = 14
      Caption = 'Pedido:'
    end
    object Label3: TLabel
      Left = 219
      Top = 24
      Width = 43
      Height = 14
      Caption = 'Emiss'#227'o:'
    end
    object Label4: TLabel
      Left = 429
      Top = 24
      Width = 31
      Height = 14
      Caption = 'Custo:'
    end
    object Label7: TLabel
      Left = 35
      Top = 48
      Width = 35
      Height = 14
      Caption = 'Cliente:'
    end
    object edtPedido: TEdit
      Left = 72
      Top = 21
      Width = 121
      Height = 22
      Color = 14145495
      TabOrder = 0
      Text = 'edtPedido'
    end
    object edtEmissaoPedido: TEdit
      Left = 264
      Top = 21
      Width = 121
      Height = 22
      Color = 14145495
      TabOrder = 1
      Text = 'edtPedido'
    end
    object CurCustoPedido: TCurrencyEdit
      Left = 464
      Top = 21
      Width = 113
      Height = 21
      AutoSize = False
      Color = 14145495
      DisplayFormat = '###,###,##0.00'
      TabOrder = 2
    end
    object edtCliente: TEdit
      Left = 72
      Top = 45
      Width = 505
      Height = 22
      Color = 14145495
      TabOrder = 3
      Text = 'edtPedido'
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 74
    Width = 596
    Height = 75
    Align = alTop
    Caption = 'Nota Fiscal'
    Enabled = False
    TabOrder = 1
    object Label2: TLabel
      Left = 14
      Top = 24
      Width = 56
      Height = 14
      Caption = 'Nota Fiscal:'
    end
    object Label5: TLabel
      Left = 429
      Top = 24
      Width = 31
      Height = 14
      Caption = 'Custo:'
    end
    object Label6: TLabel
      Left = 219
      Top = 24
      Width = 43
      Height = 14
      Caption = 'Emiss'#227'o:'
    end
    object Label8: TLabel
      Left = 44
      Top = 48
      Width = 26
      Height = 14
      Caption = 'NF-e:'
    end
    object edtNotaFiscal: TEdit
      Left = 74
      Top = 21
      Width = 121
      Height = 22
      Color = 14145495
      TabOrder = 0
      Text = 'edtPedido'
    end
    object CurCustoNotaFiscal: TCurrencyEdit
      Left = 464
      Top = 21
      Width = 113
      Height = 21
      AutoSize = False
      Color = 14145495
      DisplayFormat = '###,###,##0.00'
      TabOrder = 1
    end
    object edtEmissaoNotaFiscal: TEdit
      Left = 264
      Top = 21
      Width = 121
      Height = 22
      Color = 14145495
      TabOrder = 2
      Text = 'edtPedido'
    end
    object edtNfe: TEdit
      Left = 72
      Top = 45
      Width = 121
      Height = 22
      Color = 14145495
      TabOrder = 3
      Text = 'edtPedido'
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 225
    Width = 596
    Height = 139
    Align = alTop
    Caption = 'Novo Custo Unit'#225'rio'
    TabOrder = 3
    object Label9: TLabel
      Left = 38
      Top = 24
      Width = 31
      Height = 14
      Caption = 'Custo:'
    end
    object Label13: TLabel
      Left = 52
      Top = 50
      Width = 449
      Height = 84
      Caption = 
        'A altera'#231#227'o do "Pre'#231'o de custo" n'#227'o modificar'#225' a comiss'#227'o do ite' +
        'm no pedido.'#13#10'N'#227'o modificar'#225' o pre'#231'o de custo oficial que consta' +
        ' no cadastro do produto.'#13#10#13#10'Orientamos revisar este item no pedi' +
        'do de venda e fazer a manuten'#231#227'o de sua '#13#10'comiss'#227'o,tamb'#233'm acerta' +
        'r ou revisar no cadastro do produto se o pre'#231'o de custo'#13#10'atual '#233 +
        ' correto.   '
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label14: TLabel
      Left = 427
      Top = 29
      Width = 42
      Height = 14
      Caption = 'ALERTA'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object CurNovoCusto: TCurrencyEdit
      Left = 72
      Top = 21
      Width = 113
      Height = 21
      AutoSize = False
      Color = clWhite
      DisplayFormat = '###,###,##0.00'
      TabOrder = 0
    end
  end
  object Bit_Gravar: TBitBtn
    Left = 407
    Top = 371
    Width = 90
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
    TabOrder = 4
    TabStop = False
    OnClick = Bit_GravarClick
  end
  object Bit_Cancelar: TBitBtn
    Left = 498
    Top = 371
    Width = 90
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
    TabOrder = 5
    TabStop = False
    OnClick = Bit_CancelarClick
  end
  object GroupBox4: TGroupBox
    Left = 0
    Top = 149
    Width = 596
    Height = 76
    Align = alTop
    Caption = 'Cadastro do Produto'
    Enabled = False
    TabOrder = 2
    object Label10: TLabel
      Left = 14
      Top = 24
      Width = 56
      Height = 14
      Caption = 'Refer'#234'ncia:'
    end
    object Label11: TLabel
      Left = 18
      Top = 48
      Width = 52
      Height = 14
      Caption = 'Descri'#231#227'o:'
    end
    object Label12: TLabel
      Left = 402
      Top = 24
      Width = 58
      Height = 14
      Caption = 'Custo Atual:'
    end
    object edtProdutoReferencia: TEdit
      Left = 72
      Top = 21
      Width = 121
      Height = 22
      Color = 14145495
      TabOrder = 0
      Text = 'edtPedido'
    end
    object CurProdutoCusto: TCurrencyEdit
      Left = 464
      Top = 21
      Width = 113
      Height = 21
      AutoSize = False
      Color = 14145495
      DisplayFormat = '###,###,##0.00'
      TabOrder = 1
    end
    object edtProdutoDescricao: TEdit
      Left = 72
      Top = 45
      Width = 505
      Height = 22
      Color = 14145495
      TabOrder = 2
      Text = 'edtPedido'
    end
  end
  object SQLCdsPedidos: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 'Select * from PED0000'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'Select * from PED0000'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 288
    Top = 163
    object SQLCdsPedidosPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Required = True
      Size = 7
    end
    object SQLCdsPedidosPED_COMIS1: TFMTBCDField
      FieldName = 'PED_COMIS1'
      Precision = 15
      Size = 4
    end
    object SQLCdsPedidosREP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      Size = 3
    end
  end
  object SqlCdsItem: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT T1.PRF_REGISTRO,'#13#10'T1.PED_CODIGO,'#13#10'T1.PRD_REFER,'#13#10'T1.PRF_Q' +
      'TDE,'#13#10'T1.PRF_PRECO,'#13#10'T1.PRF_PRECO_BRUTO,'#13#10'T1.PRF_ACRESCIMO,'#13#10'T1.' +
      'PRF_ITEMCOMIS FROM PED_IT01 T1'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'SELECT T1.PRF_REGISTRO,'#13#10'T1.PED_CODIGO,'#13#10'T1.PRD_REFER,'#13#10'T1.PRF_Q' +
      'TDE,'#13#10'T1.PRF_PRECO,'#13#10'T1.PRF_PRECO_BRUTO,'#13#10'T1.PRF_ACRESCIMO,'#13#10'T1.' +
      'PRF_ITEMCOMIS FROM PED_IT01 T1'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 320
    Top = 165
    object SqlCdsItemPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Size = 7
    end
    object SqlCdsItemPRF_QTDE: TFMTBCDField
      FieldName = 'PRF_QTDE'
      Precision = 15
      Size = 4
    end
    object SqlCdsItemPRF_PRECO: TFMTBCDField
      FieldName = 'PRF_PRECO'
      Precision = 15
      Size = 5
    end
    object SqlCdsItemPRF_ITEMCOMIS: TFMTBCDField
      FieldName = 'PRF_ITEMCOMIS'
      Precision = 15
      Size = 4
    end
    object SqlCdsItemPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object SqlCdsItemPRF_REGISTRO: TIntegerField
      FieldName = 'PRF_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SqlCdsItemPRF_PRECO_BRUTO: TFMTBCDField
      FieldName = 'PRF_PRECO_BRUTO'
      Precision = 15
      Size = 5
    end
    object SqlCdsItemPRF_ACRESCIMO: TFMTBCDField
      FieldName = 'PRF_ACRESCIMO'
      Precision = 15
      Size = 5
    end
  end
end
