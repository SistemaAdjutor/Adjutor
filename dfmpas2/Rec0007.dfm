object FormContasReceberRepetir: TFormContasReceberRepetir
  Left = 767
  Top = 333
  Caption = 'Repetir Lan'#231'amentos'
  ClientHeight = 362
  ClientWidth = 282
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object GroupBox1: TGroupBox
    Left = 6
    Top = 88
    Width = 271
    Height = 233
    Caption = 'Vencimentos das Parcelas'
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 2
      Top = 16
      Width = 267
      Height = 215
      Align = alClient
      Color = 16776176
      DataSource = DsParcela
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Vencimento'
          Title.Alignment = taCenter
          Width = 115
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Valor'
          Title.Alignment = taCenter
          Width = 116
          Visible = True
        end>
    end
  end
  object Bit_Gravar: TBitBtn
    Left = 73
    Top = 329
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
  object Bit_Cancelar: TBitBtn
    Left = 177
    Top = 329
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
  object GroupBox3: TGroupBox
    Left = 6
    Top = 0
    Width = 271
    Height = 87
    Caption = 'Repetir'
    TabOrder = 3
    object Label2: TLabel
      Left = 16
      Top = 39
      Width = 89
      Height = 14
      Caption = 'N'#250'mero de Vezes:'
    end
    object Label3: TLabel
      Left = 22
      Top = 63
      Width = 83
      Height = 14
      Caption = 'Intervalo de Dias:'
    end
    object RbMensal: TRadioButton
      Left = 16
      Top = 16
      Width = 113
      Height = 17
      Caption = '&Mensal'
      Checked = True
      TabOrder = 0
      TabStop = True
      OnEnter = RbMensalEnter
    end
    object RbSemanal: TRadioButton
      Left = 88
      Top = 16
      Width = 113
      Height = 17
      Caption = '&Semanal'
      TabOrder = 1
      OnEnter = RbSemanalEnter
    end
    object RbIntervalo: TRadioButton
      Left = 168
      Top = 16
      Width = 92
      Height = 17
      Caption = '&Intervalo Dias'
      TabOrder = 2
      OnEnter = RbIntervaloEnter
    end
    object RxIntervalo: TRxSpinEdit
      Left = 108
      Top = 60
      Width = 57
      Height = 22
      MaxValue = 1000.000000000000000000
      MinValue = 1.000000000000000000
      Value = 1.000000000000000000
      TabOrder = 3
      OnChange = RxIntervaloChange
    end
    object RxsQunatidade: TRxSpinEdit
      Left = 108
      Top = 36
      Width = 57
      Height = 22
      MaxValue = 1000.000000000000000000
      MinValue = 1.000000000000000000
      Value = 1.000000000000000000
      TabOrder = 4
      OnChange = RxsQunatidadeChange
    end
  end
  object DsParcela: TDataSource
    DataSet = CdsParcela
    Left = 118
    Top = 256
  end
  object CdsParcela: TClientDataSet
    Aggregates = <>
    Params = <>
    BeforeInsert = CdsParcelaBeforeInsert
    BeforePost = CdsParcelaBeforePost
    Left = 150
    Top = 256
    object CdsParcelaVencimento: TDateField
      FieldName = 'Vencimento'
    end
    object CdsParcelaValor: TFloatField
      FieldName = 'Valor'
      DisplayFormat = '###,###,###,##0.00'
    end
  end
end
