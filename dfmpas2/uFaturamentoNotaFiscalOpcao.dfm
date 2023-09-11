object FrmFaturamentoNovoOpcao: TFrmFaturamentoNovoOpcao
  Left = 1292
  Top = 518
  Width = 470
  Height = 294
  Caption = 'Op'#231#227'o de Nota Fiscal'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  DesignSize = (
    454
    256)
  PixelsPerInch = 96
  TextHeight = 14
  object grpOpcoes: TGroupBox
    Left = 0
    Top = 0
    Width = 454
    Height = 225
    Align = alTop
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = 'Op'#231#245'es'
    TabOrder = 0
    DesignSize = (
      454
      225)
    object Label1: TLabel
      Left = 40
      Top = 47
      Width = 417
      Height = 19
      Anchors = [akLeft, akRight]
      AutoSize = False
      Caption = 'Gerar nota fiscal com base em um pedido de venda.'
    end
    object Label2: TLabel
      Left = 41
      Top = 98
      Width = 417
      Height = 49
      Anchors = [akLeft, akRight]
      AutoSize = False
      Caption = 
        'Gerar nota fiscal com base em uma nota fiscal que foi dado entra' +
        'da no sistema de compras,  ideal para devolu'#231#245'es de desacordo de' +
        ' compra e retorno industrial'
      WordWrap = True
    end
    object Label3: TLabel
      Left = 42
      Top = 172
      Width = 417
      Height = 44
      Anchors = [akLeft, akRight]
      AutoSize = False
      Caption = 
        'Ser'#225' disponibilizado a gera'#231#227'o manual da nota fiscal com livre e' +
        'di'#231#227'o dos campos, ideal para notas fiscais de importa'#231#227'o e expor' +
        'ta'#231#227'o'
      WordWrap = True
    end
    object rbPedido: TRadioButton
      Left = 24
      Top = 21
      Width = 217
      Height = 17
      Anchors = [akLeft, akRight]
      Caption = '&Pedido'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      TabStop = True
    end
    object rbNotaFiscalEntrada: TRadioButton
      Left = 24
      Top = 70
      Width = 265
      Height = 17
      Anchors = [akLeft, akRight]
      Caption = '&Nota Fiscal de Entrada'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object rbManual: TRadioButton
      Left = 24
      Top = 147
      Width = 217
      Height = 17
      Anchors = [akLeft, akRight]
      Caption = '&Manual'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
  end
  object Bit_Cancelar: TBitBtn
    Left = 349
    Top = 228
    Width = 100
    Height = 25
    Cursor = crHandPoint
    Hint = '|Cancela registro atual...'
    Anchors = [akRight, akBottom]
    Cancel = True
    Caption = '&Cancelar'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
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
  object Bit_Gravar: TBitBtn
    Left = 245
    Top = 228
    Width = 100
    Height = 25
    Cursor = crHandPoint
    Hint = '|Grava registro...'
    Anchors = [akRight, akBottom]
    Caption = 'C&onfirmar'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
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
