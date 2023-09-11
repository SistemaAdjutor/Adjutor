object FrmFluxoCaixa: TFrmFluxoCaixa
  Left = -1
  Top = 1
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Previs'#227'o de Fluxo de Caixa'
  ClientHeight = 525
  ClientWidth = 792
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 7
    Top = 493
    Width = 778
    Height = 6
    Shape = bsTopLine
  end
  object GroupBox1: TGroupBox
    Left = 248
    Top = 0
    Width = 544
    Height = 54
    Align = alCustom
    Caption = 'Informe o per'#237'odo para o Fluxo do Caixa'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 6
      Top = 25
      Width = 56
      Height = 13
      Caption = '&Data Inicial:'
      FocusControl = DataInicial
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 161
      Top = 25
      Width = 51
      Height = 13
      Caption = 'Data &Final:'
      FocusControl = DataFinal
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object BitCancelar: TBitBtn
      Left = 434
      Top = 17
      Width = 100
      Height = 25
      Cursor = crHandPoint
      Caption = 'Cancela&r'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = BitCancelarClick
    end
    object BitPesquisa: TBitBtn
      Left = 334
      Top = 17
      Width = 100
      Height = 25
      Cursor = crHandPoint
      Caption = 'Consul&tar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Glyph.Data = {
        DE030000424DDE030000000000003600000028000000180000000D0000000100
        180000000000A8030000C30E0000C30E00000000000000000000FFFFFFCBB78F
        AA8845A58139A58139A58139A58139A58139A58139AA88456A4B0D6A4B0DFFFF
        FFB1B1B17F7F7F7878787878787878787878787878787979797F7F7F46464645
        4545CBB78FC2AB7FE5E5E5E9E9E7E5E5E5E5E5E5E5E5E5E5E5E5E6DCC7856628
        6A4B0DD5B472B1B1B1A4A4A4E4E4E4E8E8E8E5E5E5E5E5E5E5E5E5E5E5E5D8D8
        D85F5F5F454545AAAAAAA58139E9E9E7EBEBEAEBEBEAE9E9E7E9E9E7E9E9E7E6
        DCC78566286A4B0DD5B472DABB7D787878E9E9E9EAEAEAEAEAEAE9E9E9E9E9E9
        E8E8E8D8D8D85F5F5F454545ABABABB2B2B2A58139F1EFEBE9E9E7D3C4A7B6A5
        83B6A583CBB78FB596586A4B0DC6A563FDEAC5A58139797979EFEFEFE8E8E8BE
        BEBE9F9F9FA0A0A0B1B1B18E8E8E4545459C9C9CE4E4E4797979A58139F2F2F2
        D3C4A7B59658FFE4AFFDEAC5D5B4726A4B0DDABB7DFDEAC5EBEBEAA581397878
        78F2F2F2C0C0C08E8E8EDCDCDCE4E4E4AAAAAA454545B2B2B2E4E4E4EAEAEA78
        7878A58139F8F8F8AA8845FFEFD2FFFFFFFDFCFAFFEFD2C6A563CBB78FF1EFEB
        F2F2F2A58139797979F9F9F97F7F7FEAEAEAFFFFFFFBFBFBEAEAEA9C9C9CB1B1
        B1EEEEEEF2F2F2787878A58139FDFCFAAA8845FFFFFFFFFFFFFFF6E7FDEAC5FD
        DC9CB7A176E9E9E7F2F2F2A58139787878FCFCFC808080FFFFFFFFFFFFF3F3F3
        E4E4E4D3D3D39A9A9AE9E9E9F3F3F3797979A58139FFFFFFAA8845FCFAF6FFF4
        DFFFEFD2FDEAC5FDEAC5B59F72F1EFEBF8F8F8A58139777777FFFFFF808080F9
        F9F9F1F1F1EAEAEAE3E3E3E4E4E4999999EDEDEDF8F8F8787878A58139FFFFFF
        AA8845FFEFD2FDEAC5FDDC9CFFF6E7FDEAC5C2AB7FF1EFEBFDFCFAA581397878
        78FFFFFF7F7F7FEAEAEAE4E4E4D2D2D2F4F4F4E4E4E4A4A4A4EFEFEFFCFCFC78
        7878A58139FFFFFFCBB78FA58139FFE4AFFFF6E7FDEAC5B59658E5D6B7FDFCFA
        FFFFFFA58139797979FFFFFFB1B1B1797979DCDCDCF3F3F3E4E4E48E8E8ED1D1
        D1FCFCFCFFFFFF787878A58139FDFCFAF9F6F2C2AB7FA58139856628A58139D3
        C4A7FCFAF6FFFFFFFDFCFAA58139797979FDFDFDF5F5F5A3A3A37979795F5F5F
        797979BFBFBFF9F9F9FFFFFFFCFCFC787878CBB78FCBB78FFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCBB78FCBB78FB1B1B1B0B0B0FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB1B1B1B0B0B0FFFFFFCBB78F
        A58139A58139A58139A58139A58139A58139A58139A58139CBB78FFFFFFFFFFF
        FFB1B1B1787878777777797979797979777777787878797979777777B1B1B1FF
        FFFF}
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 2
      OnClick = BitPesquisaClick
    end
    object DataInicial: TJvDateEdit
      Left = 63
      Top = 22
      Width = 83
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Glyph.Data = {
        DA020000424DDA0200000000000036000000280000000D0000000D0000000100
        200000000000A402000000000000000000000000000000000000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F00000000000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000000000000000000000000000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F0000000000000000000000000000000000000000000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F0000000000000000000000000000000
        0000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000}
      ImageKind = ikCustom
      ButtonWidth = 17
      ParentFont = False
      PopupColor = clBtnFace
      ShowNullDate = False
      TabOrder = 0
      OnExit = DataInicialExit
    end
    object DataFinal: TJvDateEdit
      Left = 213
      Top = 22
      Width = 83
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Glyph.Data = {
        DA020000424DDA0200000000000036000000280000000D0000000D0000000100
        200000000000A402000000000000000000000000000000000000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F00000000000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000000000000000000000000000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F0000000000000000000000000000000000000000000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F0000000000000000000000000000000
        0000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
        F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000}
      ImageKind = ikCustom
      ButtonWidth = 17
      ParentFont = False
      PopupColor = clBtnFace
      ShowNullDate = False
      TabOrder = 1
      OnExit = DataFinalExit
    end
  end
  object BitSair: TBitBtn
    Left = 671
    Top = 498
    Width = 100
    Height = 25
    Caption = '&Sair'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = BitSairClick
  end
  object BitImprimir: TBitBtn
    Left = 570
    Top = 498
    Width = 100
    Height = 25
    Caption = '&Imprimir'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      0400000000008000000000000000000000001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
      888F8800000000000888808888888880808800000000000008080888888BBB88
      0008088888877788080800000000000008800888888888808080800000000008
      0800880FFFFFFFF080808880F00000F000088880FFFFFFFF088888880F00000F
      088888880FFFFFFFF08888888000000000888888888888888888}
    ParentFont = False
    TabOrder = 4
    TabStop = False
    OnClick = BitImprimirClick
  end
  object BitSaldo: TBitBtn
    Left = 469
    Top = 498
    Width = 100
    Height = 25
    Caption = 'Saldo &Banco'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Glyph.Data = {
      F2010000424DF201000000000000760000002800000024000000130000000100
      0400000000007C01000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333334433333
      3333333333388F3333333333000033334224333333333333338338F333333333
      0000333422224333333333333833338F33333333000033422222243333333333
      83333338F3333333000034222A22224333333338F33F33338F33333300003222
      A2A2224333333338F383F3338F33333300003A2A222A222433333338F8333F33
      38F33333000034A22222A22243333338833333F3338F333300004222A2222A22
      2433338F338F333F3338F3330000222A3A2224A22243338F3838F338F3338F33
      0000A2A333A2224A2224338F83338F338F3338F300003A33333A2224A2224338
      333338F338F3338F000033333333A2224A2243333333338F338F338F00003333
      33333A2224A2233333333338F338F83300003333333333A2224A333333333333
      8F338F33000033333333333A222433333333333338F338F30000333333333333
      A224333333333333338F38F300003333333333333A223333333333333338F8F3
      000033333333333333A3333333333333333383330000}
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 3
    TabStop = False
    Visible = False
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 54
    Width = 792
    Height = 361
    Caption = 'Fluxo Caixa'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 1
    object RxDBGridFluxo: TRxDBGrid
      Left = 2
      Top = 15
      Width = 788
      Height = 344
      Align = alClient
      DataSource = DSFluxoCaixa
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clNavy
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      FixedCols = 1
      RowColor2 = 16776176
      Columns = <
        item
          Color = 8404992
          Expanded = False
          FieldName = 'DATA_MOVIMENTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Data'
          Width = 75
          Visible = True
        end
        item
          Color = 16772033
          Expanded = False
          FieldName = 'VALOR_PREVISAO_RECEBER'
          Title.Alignment = taCenter
          Title.Caption = 'Prev. Receber'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'VALOR_RECEBIDO'
          Title.Alignment = taCenter
          Title.Caption = 'Recebido'
          Width = 135
          Visible = True
        end
        item
          Color = 12574719
          Expanded = False
          FieldName = 'VALOR_RECEBER'
          Title.Alignment = taCenter
          Title.Caption = #224' Receber'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'VALOR_DESCONTADO'
          Title.Alignment = taCenter
          Title.Caption = 'Negociados'
          Width = 135
          Visible = True
        end
        item
          Color = 16772033
          Expanded = False
          FieldName = 'VALOR_PREVISAO_PAGAR'
          Title.Alignment = taCenter
          Title.Caption = 'Prev. Pagar'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'VALOR_PAGO'
          Title.Alignment = taCenter
          Title.Caption = 'Pago'
          Width = 135
          Visible = True
        end
        item
          Color = 12574719
          Expanded = False
          FieldName = 'VALOR_PAGAR'
          Title.Alignment = taCenter
          Title.Caption = #224' Pagar'
          Visible = False
        end
        item
          Color = 16772033
          Expanded = False
          FieldName = 'SALDO_DO_DIA_PREV'
          Title.Alignment = taCenter
          Title.Caption = 'Prev. Saldo'
          Visible = False
        end
        item
          Color = clWhite
          Expanded = False
          FieldName = 'SALDO_DO_DIA_REAL'
          Title.Alignment = taCenter
          Title.Caption = 'Saldo Real'
          Width = 135
          Visible = True
        end
        item
          Color = 16772033
          Expanded = False
          FieldName = 'SALDO_ACUMULADO_PREV'
          Title.Caption = 'Prev. Acumulado'
          Visible = False
        end
        item
          Color = 12574719
          Expanded = False
          FieldName = 'SALDO_ACUMULADO_REAL'
          Title.Alignment = taCenter
          Title.Caption = 'Acumulado'
          Width = 135
          Visible = True
        end>
    end
  end
  object GroupBox4: TGroupBox
    Left = 0
    Top = 465
    Width = 792
    Height = 31
    Align = alCustom
    Caption = 'Legenda'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 2
    object Label14: TLabel
      Left = 106
      Top = 11
      Width = 99
      Height = 13
      Caption = 'Valores Previstos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label15: TLabel
      Left = 352
      Top = 11
      Width = 109
      Height = 13
      Caption = 'Valores Realizados'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label16: TLabel
      Left = 646
      Top = 11
      Width = 104
      Height = 13
      Caption = 'Valores a Realizar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Panel1: TPanel
      Left = 87
      Top = 10
      Width = 17
      Height = 16
      BevelOuter = bvNone
      BorderStyle = bsSingle
      Color = 16772033
      TabOrder = 0
    end
    object Panel2: TPanel
      Left = 332
      Top = 9
      Width = 17
      Height = 16
      BevelOuter = bvNone
      BorderStyle = bsSingle
      Color = clWindow
      TabOrder = 1
    end
    object Panel3: TPanel
      Left = 626
      Top = 9
      Width = 17
      Height = 16
      BevelOuter = bvNone
      BorderStyle = bsSingle
      Color = 12574719
      TabOrder = 2
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 415
    Width = 792
    Height = 50
    Align = alCustom
    Caption = 'Totalizando'
    Color = clBtnFace
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 6
    object Label3: TLabel
      Left = 86
      Top = 10
      Width = 41
      Height = 13
      Caption = 'Receber'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 163
      Top = 10
      Width = 46
      Height = 13
      Caption = 'Recebido'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 239
      Top = 10
      Width = 50
      Height = 13
      Caption = #224' Receber'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 316
      Top = 10
      Width = 57
      Height = 13
      Caption = 'Negociados'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 393
      Top = 10
      Width = 28
      Height = 13
      Caption = 'Pagar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 470
      Top = 10
      Width = 25
      Height = 13
      Caption = 'Pago'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 547
      Top = 10
      Width = 37
      Height = 13
      Caption = #224' Pagar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 624
      Top = 10
      Width = 55
      Height = 13
      Caption = 'Saldo Prev.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 701
      Top = 10
      Width = 52
      Height = 13
      Caption = 'Saldo Real'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object CTotalReceberPv: TCurrencyEdit
      Left = 86
      Top = 25
      Width = 75
      Height = 21
      AutoSize = False
      Color = 16772033
      DecimalPlaces = 4
      DisplayFormat = '###,###,###,##0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      ZeroEmpty = False
    end
    object CTotalRecebido: TCurrencyEdit
      Left = 163
      Top = 25
      Width = 75
      Height = 21
      AutoSize = False
      DecimalPlaces = 4
      DisplayFormat = '###,###,###,##0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      ZeroEmpty = False
    end
    object CTotalReceber: TCurrencyEdit
      Left = 239
      Top = 25
      Width = 75
      Height = 21
      AutoSize = False
      Color = 12574719
      DecimalPlaces = 4
      DisplayFormat = '###,###,###,##0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
      ZeroEmpty = False
    end
    object CTotalNegociados: TCurrencyEdit
      Left = 316
      Top = 25
      Width = 75
      Height = 21
      AutoSize = False
      DecimalPlaces = 4
      DisplayFormat = '###,###,###,##0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
      ZeroEmpty = False
    end
    object CTotalPagarPV: TCurrencyEdit
      Left = 393
      Top = 25
      Width = 75
      Height = 21
      AutoSize = False
      Color = 16772033
      DecimalPlaces = 4
      DisplayFormat = '###,###,###,##0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
      ZeroEmpty = False
    end
    object CTotalPago: TCurrencyEdit
      Left = 470
      Top = 25
      Width = 75
      Height = 21
      AutoSize = False
      DecimalPlaces = 4
      DisplayFormat = '###,###,###,##0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
      ZeroEmpty = False
    end
    object CTotalPagar: TCurrencyEdit
      Left = 547
      Top = 25
      Width = 75
      Height = 21
      AutoSize = False
      Color = 12574719
      DecimalPlaces = 4
      DisplayFormat = '###,###,###,##0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
      ZeroEmpty = False
    end
    object CTotalSaldoPv: TCurrencyEdit
      Left = 624
      Top = 25
      Width = 75
      Height = 21
      AutoSize = False
      Color = 16772033
      DecimalPlaces = 4
      DisplayFormat = '###,###,###,##0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 7
      ZeroEmpty = False
    end
    object CTotalSaldo: TCurrencyEdit
      Left = 701
      Top = 25
      Width = 75
      Height = 21
      AutoSize = False
      Color = 12574719
      DecimalPlaces = 4
      DisplayFormat = '###,###,###,##0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 8
      ZeroEmpty = False
    end
  end
  object GroupBox5: TGroupBox
    Left = 0
    Top = 0
    Width = 250
    Height = 54
    Caption = 'Pesquisar'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 7
    object Rad_Analitico: TRadioButton
      Left = 8
      Top = 25
      Width = 63
      Height = 17
      Caption = '&Analitico'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TabStop = True
      OnClick = Rad_AnaliticoClick
    end
    object Rad_Realizado: TRadioButton
      Left = 87
      Top = 25
      Width = 70
      Height = 17
      Caption = 'Reali&zado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Rad_AnaliticoClick
    end
    object Rad_Previsto: TRadioButton
      Left = 177
      Top = 25
      Width = 59
      Height = 17
      Caption = 'Pre&visto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = Rad_AnaliticoClick
    end
  end
  object SQLFluxoCaixa: TSQLDataSet
    CommandText = 
      'Select'#13#10'*'#13#10'from PCD_FLUXO_CAIXA('#39'01.11.2005'#39','#39'30.11.2005'#39','#39'1'#39','#39'G' +
      #39');'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DataCadastros.SQLConnection1
    Left = 40
    Top = 496
  end
  object CDSFluxoCaixa: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'DSPFluxoCaixa'
    Left = 96
    Top = 496
    object CDSFluxoCaixaDATA_MOVIMENTO: TDateField
      Alignment = taCenter
      FieldName = 'DATA_MOVIMENTO'
    end
    object CDSFluxoCaixaVALOR_PREVISAO_RECEBER: TFMTBCDField
      FieldName = 'VALOR_PREVISAO_RECEBER'
      DisplayFormat = '###,###,###,###,##0.00'
      Precision = 15
    end
    object CDSFluxoCaixaVALOR_RECEBIDO: TFMTBCDField
      FieldName = 'VALOR_RECEBIDO'
      DisplayFormat = '###,###,###,###,##0.00'
      Precision = 15
    end
    object CDSFluxoCaixaVALOR_RECEBER: TFMTBCDField
      FieldName = 'VALOR_RECEBER'
      DisplayFormat = '###,###,###,###,##0.00'
      Precision = 15
    end
    object CDSFluxoCaixaVALOR_DESCONTADO: TFMTBCDField
      FieldName = 'VALOR_DESCONTADO'
      DisplayFormat = '###,###,###,###,##0.00'
      Precision = 15
    end
    object CDSFluxoCaixaVALOR_PREVISAO_PAGAR: TFMTBCDField
      FieldName = 'VALOR_PREVISAO_PAGAR'
      DisplayFormat = '###,###,###,###,##0.00'
      Precision = 15
    end
    object CDSFluxoCaixaVALOR_PAGO: TFMTBCDField
      FieldName = 'VALOR_PAGO'
      DisplayFormat = '###,###,###,###,##0.00'
      Precision = 15
    end
    object CDSFluxoCaixaVALOR_PAGAR: TFMTBCDField
      FieldName = 'VALOR_PAGAR'
      DisplayFormat = '###,###,###,###,##0.00'
      Precision = 15
    end
    object CDSFluxoCaixaSALDO_DO_DIA_PREV: TFMTBCDField
      FieldName = 'SALDO_DO_DIA_PREV'
      DisplayFormat = '###,###,###,###,##0.00'
      Precision = 15
    end
    object CDSFluxoCaixaSALDO_DO_DIA_REAL: TFMTBCDField
      FieldName = 'SALDO_DO_DIA_REAL'
      DisplayFormat = '###,###,###,###,##0.00'
      Precision = 15
    end
    object CDSFluxoCaixaSALDO_ACUMULADO_PREV: TFMTBCDField
      FieldName = 'SALDO_ACUMULADO_PREV'
      DisplayFormat = '###,###,###,###,##0.00'
      Precision = 15
    end
    object CDSFluxoCaixaSALDO_ACUMULADO_REAL: TFMTBCDField
      FieldName = 'SALDO_ACUMULADO_REAL'
      DisplayFormat = '###,###,###,###,##0.00'
      Precision = 15
    end
    object CDSFluxoCaixaTOTAL_PV_RECEBER: TAggregateField
      Alignment = taRightJustify
      FieldName = 'TOTAL_PV_RECEBER'
      Active = True
      DisplayName = ''
      DisplayFormat = '###,###,###,##0.00'
      Expression = 'SUM(VALOR_PREVISAO_RECEBER)'
    end
    object CDSFluxoCaixaTOTAL_RECEBIDO: TAggregateField
      Alignment = taRightJustify
      FieldName = 'TOTAL_RECEBIDO'
      Active = True
      DisplayName = ''
      DisplayFormat = '###,###,###,##0.00'
      Expression = 'SUM(VALOR_RECEBIDO)'
    end
    object CDSFluxoCaixaTOTAL_RECEBER: TAggregateField
      Alignment = taRightJustify
      FieldName = 'TOTAL_RECEBER'
      Active = True
      DisplayName = ''
      DisplayFormat = '###,###,###,###,##0.00'
      Expression = 'SUM(VALOR_RECEBER)'
    end
    object CDSFluxoCaixaTOTAL_PV_PAGAR: TAggregateField
      Alignment = taRightJustify
      FieldName = 'TOTAL_PV_PAGAR'
      Active = True
      DisplayName = ''
      DisplayFormat = '###,###,###,###,##0.00'
      Expression = 'SUM(VALOR_PREVISAO_PAGAR)'
    end
    object CDSFluxoCaixaTOTAL_PAGO: TAggregateField
      Alignment = taRightJustify
      FieldName = 'TOTAL_PAGO'
      Active = True
      DisplayName = ''
      DisplayFormat = '###,###,###,###,##0.00'
      Expression = 'SUM(VALOR_PAGO)'
    end
    object CDSFluxoCaixaTOTAL_PAGAR: TAggregateField
      Alignment = taRightJustify
      FieldName = 'TOTAL_PAGAR'
      Active = True
      DisplayName = ''
      DisplayFormat = '###,###,###,###,##0.00'
      Expression = 'SUM(VALOR_PAGAR)'
    end
    object CDSFluxoCaixaTOTAL_DESCONTADO: TAggregateField
      Alignment = taRightJustify
      FieldName = 'TOTAL_DESCONTADO'
      Active = True
      DisplayName = ''
      DisplayFormat = '###,###,###,###,##0.00'
      Expression = 'SUM(VALOR_DESCONTADO)'
    end
    object CDSFluxoCaixaTOTAL_SALDO_PV: TAggregateField
      Alignment = taRightJustify
      FieldName = 'TOTAL_SALDO_PV'
      Active = True
      DisplayName = ''
      DisplayFormat = '###,###,###,###,##0.00'
      Expression = 'SUM(SALDO_DO_DIA_PREV)'
    end
    object CDSFluxoCaixaTOTAL_SALDO_REAL: TAggregateField
      Alignment = taRightJustify
      FieldName = 'TOTAL_SALDO_REAL'
      Active = True
      DisplayName = ''
      DisplayFormat = '###,###,###,###,##0.00'
      Expression = 'SUM(SALDO_DO_DIA_REAL)'
    end
  end
  object DSPFluxoCaixa: TDataSetProvider
    DataSet = SQLFluxoCaixa
    Options = [poAllowCommandText]
    Left = 68
    Top = 496
  end
  object DSFluxoCaixa: TDataSource
    DataSet = CDSFluxoCaixa
    Left = 124
    Top = 496
  end
  object ppDBFluxoCaixa: TppDBPipeline
    DataSource = DSFluxoCaixa
    UserName = 'DBFluxoCaixa'
    Left = 152
    Top = 496
    object ppDBFluxoCaixappField1: TppField
      FieldAlias = 'DATA_MOVIMENTO'
      FieldName = 'DATA_MOVIMENTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBFluxoCaixappField2: TppField
      FieldAlias = 'VALOR_PREVISAO_RECEBER'
      FieldName = 'VALOR_PREVISAO_RECEBER'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBFluxoCaixappField3: TppField
      FieldAlias = 'VALOR_RECEBIDO'
      FieldName = 'VALOR_RECEBIDO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBFluxoCaixappField4: TppField
      FieldAlias = 'VALOR_RECEBER'
      FieldName = 'VALOR_RECEBER'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBFluxoCaixappField5: TppField
      FieldAlias = 'VALOR_DESCONTADO'
      FieldName = 'VALOR_DESCONTADO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBFluxoCaixappField6: TppField
      FieldAlias = 'VALOR_PREVISAO_PAGAR'
      FieldName = 'VALOR_PREVISAO_PAGAR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBFluxoCaixappField7: TppField
      FieldAlias = 'VALOR_PAGO'
      FieldName = 'VALOR_PAGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBFluxoCaixappField8: TppField
      FieldAlias = 'VALOR_PAGAR'
      FieldName = 'VALOR_PAGAR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBFluxoCaixappField9: TppField
      FieldAlias = 'SALDO_DO_DIA_PREV'
      FieldName = 'SALDO_DO_DIA_PREV'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBFluxoCaixappField10: TppField
      FieldAlias = 'SALDO_DO_DIA_REAL'
      FieldName = 'SALDO_DO_DIA_REAL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBFluxoCaixappField11: TppField
      FieldAlias = 'SALDO_ACUMULADO_PREV'
      FieldName = 'SALDO_ACUMULADO_PREV'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBFluxoCaixappField12: TppField
      FieldAlias = 'SALDO_ACUMULADO_REAL'
      FieldName = 'SALDO_ACUMULADO_REAL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
  end
  object ppReportFluxo: TppReport
    AutoStop = False
    DataPipeline = ppDBFluxoCaixa
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 10000
    PrinterSetup.mmMarginLeft = 10000
    PrinterSetup.mmMarginRight = 10000
    PrinterSetup.mmMarginTop = 10000
    PrinterSetup.mmPaperHeight = 216000
    PrinterSetup.mmPaperWidth = 279000
    PrinterSetup.PaperSize = 1
    Template.FileName = 'C:\JobProgram\Developer\Adjutor\FontesRelatorios\RELMASTER.rtm'
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'English (United States)'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PreviewFormSettings.WindowState = wsMaximized
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 180
    Top = 496
    Version = '16.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBFluxoCaixa'
    object ppHeaderBand5: TppHeaderBand
      Background.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 23548
      mmPrintPosition = 0
      object ppLine38: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 232040
        BandType = 0
        LayerName = Foreground
      end
      object LBL_00_EMPRESA: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LBL_00_EMPRESA'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'LABEL_EMPRESA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 265
        mmTop = 794
        mmWidth = 159809
        BandType = 0
        LayerName = Foreground
      end
      object LBL_00_LTITULO1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LBL_00_LTITULO1'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'TITULO1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 5292
        mmWidth = 160073
        BandType = 0
        LayerName = Foreground
      end
      object LBL_00_LTITULO2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LBL_00_LTITULO2'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'TITULO2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 9790
        mmWidth = 160073
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable13: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 198702
        mmTop = 794
        mmWidth = 32544
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable14: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 212990
        mmTop = 9790
        mmWidth = 18256
        BandType = 0
        LayerName = Foreground
      end
      object ppLine39: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line4'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 14552
        mmWidth = 232040
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'Data do Movimento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7673
        mmLeft = 0
        mmTop = 15346
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'Previs'#227'o '#224' Receber'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7673
        mmLeft = 20638
        mmTop = 15346
        mmWidth = 15346
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'Valor Recebido'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7673
        mmLeft = 42333
        mmTop = 15346
        mmWidth = 13494
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'Valor '#224' Receber'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7673
        mmLeft = 63236
        mmTop = 15346
        mmWidth = 12171
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'Valor Negociado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7673
        mmLeft = 80169
        mmTop = 15346
        mmWidth = 15081
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'Previs'#227'o '#224' Pagar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7673
        mmLeft = 101865
        mmTop = 15346
        mmWidth = 12700
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'Valor Pago'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7673
        mmLeft = 125413
        mmTop = 15346
        mmWidth = 8467
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'Valor '#224' Pagar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7673
        mmLeft = 143140
        mmTop = 15346
        mmWidth = 10054
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label9'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'Previs'#227'o de Saldo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7673
        mmLeft = 157692
        mmTop = 15346
        mmWidth = 15346
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label10'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'Saldo Real'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7673
        mmLeft = 184150
        mmTop = 15346
        mmWidth = 8202
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label101'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'Previs'#227'o Acumulado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7673
        mmLeft = 194998
        mmTop = 15346
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label12'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'Valor Acumulado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7673
        mmLeft = 214578
        mmTop = 15346
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 23283
        mmWidth = 232040
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand6: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'DATA_MOVIMENTO'
        DataPipeline = ppDBFluxoCaixa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBFluxoCaixa'
        mmHeight = 3598
        mmLeft = 0
        mmTop = 529
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'VALOR_PREVISAO_RECEBER'
        DataPipeline = ppDBFluxoCaixa
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBFluxoCaixa'
        mmHeight = 3598
        mmLeft = 19579
        mmTop = 529
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'VALOR_RECEBIDO'
        DataPipeline = ppDBFluxoCaixa
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBFluxoCaixa'
        mmHeight = 3598
        mmLeft = 38894
        mmTop = 529
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'VALOR_RECEBER'
        DataPipeline = ppDBFluxoCaixa
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBFluxoCaixa'
        mmHeight = 3598
        mmLeft = 58473
        mmTop = 529
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'VALOR_DESCONTADO'
        DataPipeline = ppDBFluxoCaixa
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBFluxoCaixa'
        mmHeight = 3598
        mmLeft = 78052
        mmTop = 529
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'VALOR_PREVISAO_PAGAR'
        DataPipeline = ppDBFluxoCaixa
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBFluxoCaixa'
        mmHeight = 3598
        mmLeft = 97631
        mmTop = 529
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'VALOR_PAGO'
        DataPipeline = ppDBFluxoCaixa
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBFluxoCaixa'
        mmHeight = 3598
        mmLeft = 116946
        mmTop = 529
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText8'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'VALOR_PAGAR'
        DataPipeline = ppDBFluxoCaixa
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBFluxoCaixa'
        mmHeight = 3598
        mmLeft = 136261
        mmTop = 529
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText9'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'SALDO_DO_DIA_PREV'
        DataPipeline = ppDBFluxoCaixa
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBFluxoCaixa'
        mmHeight = 3598
        mmLeft = 155840
        mmTop = 529
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText10'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'SALDO_DO_DIA_REAL'
        DataPipeline = ppDBFluxoCaixa
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBFluxoCaixa'
        mmHeight = 3598
        mmLeft = 175419
        mmTop = 529
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText11: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText101'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'SALDO_ACUMULADO_PREV'
        DataPipeline = ppDBFluxoCaixa
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBFluxoCaixa'
        mmHeight = 3598
        mmLeft = 194998
        mmTop = 529
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText12: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText12'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'SALDO_ACUMULADO_REAL'
        DataPipeline = ppDBFluxoCaixa
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBFluxoCaixa'
        mmHeight = 3598
        mmLeft = 214578
        mmTop = 529
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppDesignLayers1: TppDesignLayers
      object ppDesignLayer1: TppDesignLayer
        UserName = 'Foreground'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
end
