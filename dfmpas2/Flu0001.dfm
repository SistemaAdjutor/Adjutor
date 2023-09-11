inherited FormFluxoCaixa: TFormFluxoCaixa
  Left = 410
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsSingle
  Caption = 'An'#225'lise de Fluxo de Caixa'
  ClientHeight = 602
  ClientWidth = 1147
  Font.Charset = ANSI_CHARSET
  Font.Color = clBlack
  Font.Name = 'Arial'
  FormStyle = fsMDIChild
  OldCreateOrder = True
  Position = poDesktopCenter
  Visible = True
  ExplicitWidth = 1153
  ExplicitHeight = 627
  PixelsPerInch = 96
  TextHeight = 14
  object GroupBox2: TGroupBox [0]
    Left = 0
    Top = 0
    Width = 1147
    Height = 49
    Align = alTop
    Caption = 'Filtro'
    TabOrder = 0
    object Label1: TLabel
      Left = 6
      Top = 19
      Width = 57
      Height = 14
      Caption = 'Data Inicial :'
    end
    object Label2: TLabel
      Left = 184
      Top = 19
      Width = 53
      Height = 14
      Caption = 'Data Final :'
    end
    object BitBtn1: TBitBtn
      Left = 937
      Top = 13
      Width = 90
      Height = 25
      Hint = 'Fluxo di'#225'rio do per'#237'odo'
      Caption = '&Atualizar'
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333377F3333333333000033334224333333333333
        337337F3333333330000333422224333333333333733337F3333333300003342
        222224333333333373333337F3333333000034222A22224333333337F337F333
        7F33333300003222A3A2224333333337F3737F337F33333300003A2A333A2224
        33333337F73337F337F33333000033A33333A222433333337333337F337F3333
        0000333333333A222433333333333337F337F33300003333333333A222433333
        333333337F337F33000033333333333A222433333333333337F337F300003333
        33333333A222433333333333337F337F00003333333333333A22433333333333
        3337F37F000033333333333333A223333333333333337F730000333333333333
        333A333333333333333337330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      TabStop = False
      OnClick = BitBtn1Click
    end
    object chkMultiEmpresa: TCheckBox
      Left = 338
      Top = 17
      Width = 241
      Height = 17
      Caption = 'Visualizar Informa'#231#245'es Multi-Empresa'
      Checked = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      State = cbChecked
      TabOrder = 3
    end
    object Dt_Inicio: TJvDateEdit
      Left = 68
      Top = 16
      Width = 90
      Height = 22
      Glyph.Data = {
        76050000424D760500000000000036000000280000001C0000000C0000000100
        2000000000004005000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF008080800080808000808080008080800080808000808080008080
        800080808000808080008080800080808000FF00FF00FF00FF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FF00FF00FF00FF000000000000000000800000000000
        0000800000008000000000000000800000000000000000000000800000008080
        8000FF00FF008080800080808000808080008080800080808000808080008080
        80008080800080808000808080008080800080808000FFFFFF00FF00FF00FF00
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
        FF00FFFFFF00FFFFFF00FFFFFF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FF00
        FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF0000000000000000000000
        0000FFFFFF00000000000000000000000000C0C0C000FFFFFF00800000008080
        8000FF00FF0080808000FFFFFF00808080008080800080808000FF00FF008080
        80008080800080808000FF00FF00FFFFFF0080808000FFFFFF00FF00FF00FF00
        FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00C0C0C000FFFFFF00C0C0
        C00000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
        FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFF
        FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF0000000000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00800000008080
        8000FF00FF0080808000FFFFFF00FF00FF0080808000FFFFFF00FF00FF00FF00
        FF00FFFFFF00FFFFFF0080808000FF00FF0080808000FFFFFF00FF00FF00FF00
        FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
        0000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
        FF0080808000FFFFFF00FF00FF00808080008080800080808000FF00FF00FF00
        FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF000000000000000000FFFF
        FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
        8000FF00FF0080808000FFFFFF008080800080808000FFFFFF00FF00FF008080
        8000FFFFFF00FFFFFF00FFFFFF00FFFFFF0080808000FFFFFF00FF00FF00FF00
        FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
        000000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
        FF0080808000FF00FF00FF00FF0080808000808080008080800080808000FF00
        FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
        8000FF00FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFFFF00FF00FF00FF00
        FF00FFFFFF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF0080808000FFFFFF00FF00FF00FF00FF000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF008080800080808000808080008080800080808000808080008080
        80008080800080808000808080008080800080808000FF00FF00}
      ImageKind = ikCustom
      NumGlyphs = 2
      ButtonWidth = 20
      PopupColor = clBtnFace
      ShowNullDate = False
      YearDigits = dyFour
      TabOrder = 0
      OnEnter = Dt_InicioEnter
    end
    object Dt_final: TJvDateEdit
      Left = 240
      Top = 16
      Width = 89
      Height = 22
      Glyph.Data = {
        76050000424D760500000000000036000000280000001C0000000C0000000100
        2000000000004005000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF008080800080808000808080008080800080808000808080008080
        800080808000808080008080800080808000FF00FF00FF00FF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FF00FF00FF00FF000000000000000000800000000000
        0000800000008000000000000000800000000000000000000000800000008080
        8000FF00FF008080800080808000808080008080800080808000808080008080
        80008080800080808000808080008080800080808000FFFFFF00FF00FF00FF00
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
        FF00FFFFFF00FFFFFF00FFFFFF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FF00
        FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF0000000000000000000000
        0000FFFFFF00000000000000000000000000C0C0C000FFFFFF00800000008080
        8000FF00FF0080808000FFFFFF00808080008080800080808000FF00FF008080
        80008080800080808000FF00FF00FFFFFF0080808000FFFFFF00FF00FF00FF00
        FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00C0C0C000FFFFFF00C0C0
        C00000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
        FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFF
        FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF0000000000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00800000008080
        8000FF00FF0080808000FFFFFF00FF00FF0080808000FFFFFF00FF00FF00FF00
        FF00FFFFFF00FFFFFF0080808000FF00FF0080808000FFFFFF00FF00FF00FF00
        FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
        0000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
        FF0080808000FFFFFF00FF00FF00808080008080800080808000FF00FF00FF00
        FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF000000000000000000FFFF
        FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
        8000FF00FF0080808000FFFFFF008080800080808000FFFFFF00FF00FF008080
        8000FFFFFF00FFFFFF00FFFFFF00FFFFFF0080808000FFFFFF00FF00FF00FF00
        FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
        000000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
        FF0080808000FF00FF00FF00FF0080808000808080008080800080808000FF00
        FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
        8000FF00FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFFFF00FF00FF00FF00
        FF00FFFFFF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF0080808000FFFFFF00FF00FF00FF00FF000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF008080800080808000808080008080800080808000808080008080
        80008080800080808000808080008080800080808000FF00FF00}
      ImageKind = ikCustom
      NumGlyphs = 2
      ButtonWidth = 20
      PopupColor = clBtnFace
      ShowNullDate = False
      YearDigits = dyFour
      TabOrder = 1
      OnEnter = Dt_finalEnter
    end
    object chkIntegrar: TCheckBox
      Left = 584
      Top = 17
      Width = 206
      Height = 17
      Caption = 'Integrar saldo banc'#225'rio no fluxo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
    object btnMensal: TBitBtn
      Left = 1033
      Top = 13
      Width = 90
      Height = 25
      Hint = 'Fluxo mensal do per'#237'odo'
      Caption = 'Fluxo mensal'
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      TabStop = False
      OnClick = btnMensalClick
    end
    object chkSimular: TCheckBox
      Left = 787
      Top = 14
      Width = 144
      Height = 24
      Hint = 'Permitir editar a planilha de previsto a receber e a pagar'
      Caption = 'Permitir simular'
      Checked = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      State = cbChecked
      TabOrder = 6
      OnClick = chkSimularClick
    end
  end
  object pnlFinal: TPanel [1]
    Left = 0
    Top = 561
    Width = 1147
    Height = 41
    Align = alBottom
    TabOrder = 2
    object btnExpotar: TJvArrowButton
      Left = 709
      Top = 9
      Width = 103
      Height = 25
      DropDown = puExportar
      Caption = 'Exportar'
      FillFont.Charset = DEFAULT_CHARSET
      FillFont.Color = clWindowText
      FillFont.Height = -11
      FillFont.Name = 'Tahoma'
      FillFont.Style = []
    end
    object Bit_Sair: TBitBtn
      Left = 946
      Top = 9
      Width = 120
      Height = 25
      Cursor = crHandPoint
      Caption = '&Sair'
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
      TabOrder = 0
      OnClick = Bit_SairClick
    end
    object Bit_Relatorio: TBitBtn
      Left = 816
      Top = 9
      Width = 123
      Height = 25
      Cursor = crHandPoint
      Caption = '&Relat'#243'rio'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
        8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
        8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
        8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
      Spacing = 20
      TabOrder = 1
      OnClick = Bit_RelatorioClick
    end
    object GroupBox3: TGroupBox
      Left = 0
      Top = 2
      Width = 705
      Height = 36
      Caption = 'Op'#231#245'es Gr'#225'fico'
      TabOrder = 2
      object chkPrevistoReceber: TCheckBox
        Left = 8
        Top = 14
        Width = 97
        Height = 17
        Caption = 'Prev. Receber'
        Checked = True
        State = cbChecked
        TabOrder = 0
      end
      object chkRecebido: TCheckBox
        Left = 126
        Top = 14
        Width = 97
        Height = 17
        Caption = 'Recebido'
        TabOrder = 1
      end
      object chkPrevistoPagar: TCheckBox
        Left = 245
        Top = 14
        Width = 97
        Height = 17
        Caption = 'Prev. Pagar'
        Checked = True
        State = cbChecked
        TabOrder = 2
      end
      object chkPago: TCheckBox
        Left = 363
        Top = 14
        Width = 97
        Height = 17
        Caption = 'Pago'
        TabOrder = 3
      end
      object chkSaldoPrevisto: TCheckBox
        Left = 482
        Top = 14
        Width = 97
        Height = 17
        Caption = 'Saldo Previsto'
        TabOrder = 4
      end
      object chkSaldoRealizado: TCheckBox
        Left = 600
        Top = 14
        Width = 97
        Height = 17
        Caption = 'Saldo Realizado'
        TabOrder = 5
      end
    end
  end
  object PageControl1: TPageControl [2]
    Left = 0
    Top = 49
    Width = 1147
    Height = 512
    ActivePage = TabSheet3
    Align = alClient
    TabOrder = 3
    object TabSheet1: TTabSheet
      Caption = 'Fluxo'
      object DbGridFluxoCaixa: TDBGrid
        Left = 0
        Top = 27
        Width = 1139
        Height = 415
        Hint = 'Duplo clique para mostrar detalhe anal'#237'tico'
        Align = alClient
        Color = 16776176
        DataSource = DsFluxo
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect]
        ParentFont = False
        ParentShowHint = False
        PopupMenu = PopupMenu1
        ShowHint = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        OnDblClick = DbGridFluxoCaixaDblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'DATA_MOVIMENTO'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Movimento'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = []
            Width = 76
            Visible = True
          end
          item
            Color = 15000804
            Expanded = False
            FieldName = 'SALDO_INICIAL_PREV'
            ReadOnly = True
            Title.Caption = 'Saldo Inicial'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 74
            Visible = True
          end
          item
            Color = 15000804
            Expanded = False
            FieldName = 'VALOR_PREVISAO_RECEBER'
            Font.Charset = ANSI_CHARSET
            Font.Color = 16744448
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Prev. Receber'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = []
            Width = 94
            Visible = True
          end
          item
            Color = 15000804
            Expanded = False
            FieldName = 'VALOR_PREVISAO_PAGAR'
            Font.Charset = ANSI_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Prev. Pagar'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = []
            Width = 94
            Visible = True
          end
          item
            Color = 15000804
            Expanded = False
            FieldName = 'SALDO_DO_DIA_PREV'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Saldo Dia Prev.'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = []
            Width = 94
            Visible = True
          end
          item
            Color = 15000804
            Expanded = False
            FieldName = 'SALDO_ACUMULADO_PREV'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Acumulado Prev.'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = []
            Width = 94
            Visible = True
          end
          item
            Color = 13434879
            Expanded = False
            FieldName = 'SALDO_INICIAL_REAL'
            ReadOnly = True
            Title.Caption = 'Saldo inicial'
            Title.Color = 13434879
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clRed
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 80
            Visible = True
          end
          item
            Color = 13434879
            Expanded = False
            FieldName = 'VALOR_RECEBIDO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Recebido'
            Title.Color = 13434879
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clRed
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = []
            Width = 94
            Visible = True
          end
          item
            Color = 13434879
            Expanded = False
            FieldName = 'VALOR_DESCONTADO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clOlive
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Descontado'
            Title.Color = 13434879
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clRed
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = []
            Width = 94
            Visible = True
          end
          item
            Color = 13434879
            Expanded = False
            FieldName = 'VALOR_PAGO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Pago'
            Title.Color = 13434879
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clRed
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = []
            Width = 94
            Visible = True
          end
          item
            Color = 13434879
            Expanded = False
            FieldName = 'SALDO_DO_DIA_REAL'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Saldo Dia Real'
            Title.Color = 13434879
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clRed
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = []
            Width = 94
            Visible = True
          end
          item
            Color = 13434879
            Expanded = False
            FieldName = 'SALDO_ACUMULADO_REAL'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Acumulado Real'
            Title.Color = 13434879
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clRed
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = []
            Width = 85
            Visible = True
          end>
      end
      object GroupBox4: TGroupBox
        Left = 0
        Top = 442
        Width = 1139
        Height = 41
        Align = alBottom
        Caption = 'Totais'
        TabOrder = 1
        object edtTotalPrevReceber: TCurrencyEdit
          Left = 164
          Top = 12
          Width = 96
          Height = 21
          Hint = 'Total recebimento previsto'
          AutoSize = False
          Color = 14145495
          DisplayFormat = '###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ReadOnly = True
          ShowHint = True
          TabOrder = 0
        end
        object edtTotalPrevPagar: TCurrencyEdit
          Left = 264
          Top = 13
          Width = 94
          Height = 21
          Hint = 'Total de pagamento previsto'
          AutoSize = False
          Color = 14145495
          DisplayFormat = '###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ReadOnly = True
          ShowHint = True
          TabOrder = 1
        end
        object edtTotalRecebido: TCurrencyEdit
          Left = 603
          Top = 12
          Width = 98
          Height = 21
          Hint = 'Total recebimento realizado *incluso os descontados'
          AutoSize = False
          Color = 13434879
          DisplayFormat = '###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ReadOnly = True
          ShowHint = True
          TabOrder = 2
        end
        object edtTotalDesconto: TCurrencyEdit
          Left = 701
          Top = 12
          Width = 95
          Height = 21
          Hint = 'Total descontado '
          AutoSize = False
          Color = 13434879
          DisplayFormat = '###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clOlive
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ReadOnly = True
          ShowHint = True
          TabOrder = 3
        end
        object edtTotalPago: TCurrencyEdit
          Left = 798
          Top = 12
          Width = 93
          Height = 21
          Hint = 'Total pagamentos realizados'
          AutoSize = False
          Color = 13434879
          DisplayFormat = '###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ReadOnly = True
          ShowHint = True
          TabOrder = 4
        end
        object CurrSaldoAcumuladoPrev: TJvValidateEdit
          Left = 443
          Top = 13
          Width = 102
          Height = 22
          Hint = 'Saldo final previsto'
          Color = 14145495
          CriticalPoints.MaxValueIncluded = False
          CriticalPoints.MinValueIncluded = False
          DisplayFormat = dfFloat
          DecimalPlaces = 2
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ReadOnly = True
          ShowHint = True
          TabOrder = 5
          TextHint = 'Saldo final previsto'
        end
        object CurSaldoAcumuladoReal: TJvValidateEdit
          Left = 994
          Top = 13
          Width = 96
          Height = 22
          Hint = 'Saldo final real'
          Color = 13434879
          CriticalPoints.MaxValueIncluded = False
          CriticalPoints.MinValueIncluded = False
          DisplayFormat = dfFloat
          DecimalPlaces = 2
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ReadOnly = True
          ShowHint = True
          TabOrder = 6
          TextHint = 'Saldo final real'
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1139
        Height = 27
        Align = alTop
        TabOrder = 2
        object pPrevisto: TPanel
          Left = 1
          Top = 1
          Width = 544
          Height = 25
          Align = alLeft
          Caption = 'Previsto'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object Panel3: TPanel
          Left = 545
          Top = 1
          Width = 593
          Height = 25
          Align = alClient
          Caption = 'Realizado'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Gr'#225'fico'
      ImageIndex = 1
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 1139
        Height = 483
        Align = alClient
        Caption = 'Fluxo de Caixa'
        TabOrder = 0
        object chtFluxo: TChart
          Left = 2
          Top = 73
          Width = 1135
          Height = 408
          BackWall.Brush.Style = bsClear
          BackWall.Pen.SmallDots = True
          BottomWall.Color = clBlack
          Gradient.EndColor = clWhite
          Gradient.StartColor = clSilver
          Gradient.Visible = True
          LeftWall.Color = clGray
          Legend.MaxNumRows = 5
          Title.Text.Strings = (
            '')
          Chart3DPercent = 3
          Frame.SmallDots = True
          LeftAxis.Title.Caption = 'Fluxo de Caixa'
          RightAxis.Grid.Color = clTeal
          View3DOptions.Elevation = 272
          View3DOptions.HorizOffset = -3
          View3DOptions.Zoom = 95
          View3DWalls = False
          Zoom.Animated = True
          Align = alClient
          BevelOuter = bvLowered
          ParentColor = True
          TabOrder = 0
          DefaultCanvas = 'TGDIPlusCanvas'
          ColorPaletteIndex = 13
          object Series1: TBarSeries
            BarBrush.Gradient.EndColor = 16744448
            BarBrush.Gradient.Visible = True
            Marks.Visible = False
            Marks.Style = smsValue
            Marks.Callout.Length = 8
            SeriesColor = 16744448
            Title = 'Prev. Receber'
            BarStyle = bsRectGradient
            Gradient.EndColor = 16744448
            Gradient.Visible = True
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Bar'
            YValues.Order = loNone
          end
          object Series2: TBarSeries
            BarBrush.Gradient.EndColor = clBlue
            BarBrush.Gradient.Visible = True
            Marks.Visible = False
            SeriesColor = clBlue
            Title = 'Recebido'
            BarStyle = bsRectGradient
            Gradient.EndColor = clBlue
            Gradient.Visible = True
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Bar'
            YValues.Order = loNone
          end
          object Series3: TBarSeries
            BarBrush.Gradient.EndColor = 8421631
            BarBrush.Gradient.Visible = True
            Marks.Visible = False
            SeriesColor = 8421631
            Title = 'Prev. Pagar'
            BarStyle = bsRectGradient
            Gradient.EndColor = 8421631
            Gradient.Visible = True
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Bar'
            YValues.Order = loNone
          end
          object Series4: TBarSeries
            BarBrush.Gradient.EndColor = clRed
            BarBrush.Gradient.Visible = True
            Marks.Visible = False
            SeriesColor = clRed
            Title = 'Pago'
            BarStyle = bsRectGradient
            Gradient.EndColor = clRed
            Gradient.Visible = True
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Bar'
            YValues.Order = loNone
          end
          object Series5: TLineSeries
            SeriesColor = clOlive
            Title = 'Saldo Previsto'
            Brush.BackColor = clDefault
            Pointer.InflateMargins = True
            Pointer.Style = psRectangle
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Y'
            YValues.Order = loNone
          end
          object Series6: TLineSeries
            SeriesColor = clGreen
            Title = 'Saldo Realizado'
            Brush.BackColor = clDefault
            Dark3D = False
            Pointer.InflateMargins = True
            Pointer.Style = psRectangle
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Y'
            YValues.Order = loNone
          end
        end
        object Panel4: TPanel
          Left = 2
          Top = 16
          Width = 1135
          Height = 57
          Align = alTop
          Color = clWhite
          TabOrder = 1
          object SpeedButton5: TSpeedButton
            Left = 330
            Top = 0
            Width = 65
            Height = 57
            Caption = 'Pontos'
            Flat = True
            Glyph.Data = {
              660F0000424D660F000000000000360000002800000024000000240000000100
              180000000000300F0000C40E0000C40E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFEFEFEFCFCFCFCFCFCF9F9F9F6F6F6F6F6F6F6F6F6F7F7
              F7F4F4F4EFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFF4F4F4F7
              F7F7F6F6F6F6F6F6F6F6F6F9F9F9FCFCFCFCFCFCFEFEFEFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFAFAFADCDCDCCCCCCCC3C3C3BCBCBCB8B8B8B1B1B1B2B2B2AEAE
              AEAAAAAAAAAAAAAAAAAAABABABA9A9A9A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5
              A5A5A5A5A5A5A5A5A9A9A9ABABABAAAAAAAAAAAAAAAAAAAEAEAEB2B2B2B1B1B1
              B8B8B8BCBCBCC3C3C3CCCCCCDCDCDCFAFAFAFAFAFADCDCDCCDCDCDC9C8C8C3C3
              C2BCBCBCBCBBBBB5B5B5B3B3B3B4B4B3B2B2B2ADADADADADACADADADADADADAD
              ADADADADADADADADADADADADADADADADADADADADADADADADADACADADADB2B2B2
              B4B4B3B3B3B3B5B5B5BCBBBBBCBCBCC3C3C2C9C9C8CFCFCFDCDCDCFAFAFAFFFF
              FFFFFFFFFFFFFFDEDFE0E1E1E3DEDFE0DEDFE0DBDBDDD9D9DBDADADBD8D8D9D3
              D3D5D2D2D4D2D2D4D2D2D4D2D2D4D2D2D4D2D2D4D2D2D4D2D2D4D2D2D4D2D2D4
              D2D2D4D2D2D4D3D3D5D8D8D9DADADBD9D9DBDBDBDDDEDFE0DEDFE0E1E1E3DEDF
              E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF97999D00000000000C00000C00000C00
              000C00000C00000C00010D00010D00010D00010D00010D00010D00010D00010D
              00010D00010D00010D00010D00010D00010D00010D00010D00000C00000C0000
              0C00000C00000C00000B0000033C3E47FFFFFFFFFFFFFFFFFFFFFFFF91929704
              07131316210E111C090C19080C18080C18080C18080C18080C18080C18080C18
              080C18080C18080C18080C18080C18080C18080C18080C18080C18080C18080C
              18080C18080C18080C18080C18080C18080C18080C18010411383B46FFFFFFFF
              FFFFFFFFFFFFFFFF9293980407130D101B3F4351A3A5AC9C9EA69C9EA69C9EA6
              9C9EA69C9EA69C9EA69C9EA69C9EA69C9EA69C9EA69C9EA69C9EA69C9EA69C9E
              A69C9EA69C9EA69C9EA69C9EA69C9EA69C9EA69C9EA69C9EA69C9EA69C9EA69C
              9EA69699A0CECFD2FFFFFFFFFFFFFFFFFFFFFFFF929499050814020511BEBFC1
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              939599060A15030611B8B9BCFFFFFFFFFFFFFDFAF6DFCBA3F2ECDFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFF94959A080B16040712B8B9BCFFFFFFFFFFFFCC9B
              41BB90389F7414EEE8DAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF94959A090C160508
              13B9BABCFFFFFFF6EBD6CE9F47BF9644A67F27D1BF96FFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFF95969A0A0D17060914B8B9BCFFFFFFFFFFFFD7AF64C09843AF882FF6
              F3EDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF95979B0B0E18080A15B9BABDFFFFFFFF
              FFFFFFFFFFF0E8D7E5C896DCB773FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF96979B0C
              0F19090B16B9BABDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5A95BE9D3ABFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFF4F4FC5151BE5D5DB8FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF96979C0D101A0A0C17B9BABDFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFC89434F7F1E5FFFFFFFFFFFFFFFFFFFFFFFF2424BB0505A10000
              8C4646A3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF97979C0E111B0B0E18BABABD
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5ECDBC79436FFFFFFFFFFFFFFFF
              FFB9B9E20101B21111A507079134349DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              97989D10121C0C0F18BABBBEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFF6DDA2E3BB668287E700009C2B2BAE9494DD0505A80000936B6BBEFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDDEC3D8C296FDFCFBFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFF97989D11131D0D1019BABBBEFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFDCDCF44146D4956C4687707FEAEEFFFFFFFFFFFFFFFF
              FFFFFFFFFF00008CC1C1E4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1DFC0C49237
              B48932A47D27FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF98999D12141D0E11
              1ABBBBBEFFFFFFADADE404049F2B2B9EB1B1E51818B80202AD9494DDFFFFFFCA
              9831F9F2E0FFFFFFFFFFFFFFFFFFFFFFFFE5E5F4000080FFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFDDBB7DC99C49B8903F9C7214F9F8F5FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFF98999E13151E10121BBCBDBFFFFFFF0000AC1010A305058E0E0E93CC
              CCF2FFFFFFFFFFFFFFFFFFF5EEE1BB8828FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              9696D1060896FFFFFFFEFDFCC9B381936705C2A466D1A757B88F38C2A768FFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF999A9E14161F11131CBCBDBFFFFFFF05
              05B30B0BA00000896969B8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0CBA0C49D4F
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF534B8FA3824BA97D14C8B17EFCFBF9FFFF
              FFFDFDFCF2EADCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF999A9E15
              182012141DBCBCBFFFFFFFCACAEF3030B64E4EB7FFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFCEAD6BCFAA64C5A564F3EEE4E1D0AFAE862FCCA4414738
              69B5B9ECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF9A9B9F16182113151EBCBDC0FFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8CB98C69943B48C389C71
              14C7A868F1EADCFFFFFFE5E7FB000076FBFBFCFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9B9B9F18192214161EBCBDC0
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFE3C183C69943B58D3AA17A21FFFFFFFFFFFFFFFFFFFFFFFFA0A0D2000083FF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              9B9C9F191B23161720BDBDBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFBF6EECFA85BB78F39E4D8BDFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF4242A44D4DA8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFF9C9CA01A1C24171820BDBEC1FFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00007CACACD3FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C9DA01B1D251819
              21BEBEC1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFF3F3F60000960000935151ADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFF9D9DA01C1E25191A22BEBEC0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFACACE80505AC12129E00007DBEBEDDFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9D9EA11D1F261A1C23BEBFC0FFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFED0000
              A9090999000082D6D6E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9E9EA11E
              20271B1D24BFBFC2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF8F8FDC3636B39C9CD4FFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF9E9FA22021281C1E25BFC0C1FFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9D9DA01E20261B1C23BEBDBF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              B3B4B621222922232BD0D1D2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF}
            Layout = blGlyphTop
            OnClick = SpeedButton5Click
          end
          object SpeedButton4: TSpeedButton
            Left = 265
            Top = 0
            Width = 65
            Height = 57
            Caption = 'Barra Horiz.'
            Flat = True
            Glyph.Data = {
              660F0000424D660F000000000000360000002800000024000000240000000100
              180000000000300F0000C40E0000C40E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9E6E5E5F8F8
              F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFD6D5D5E9E8E8F0F0EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8D7D6F0EFEF3131302828282E2E2E32
              32323635353938383C3B3B3F3E3E4342424746454949484C4C4B504F4F545352
              5755565A59585E5C5B615F5E626160626161D1D0D0FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDCDAC6
              C6C60000000000000505050909090E0D0D1211111617151C1B19201F1F252423
              2928272D2C2B3230303636343B39383F3E3D4341404745454543427F7D7D8C8C
              8BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFDDDCDBC9CACA0000000606060C0C0C0F1010151414191718
              1C1D1C22211F2524252B2A292F2E2D3232303835363C3B3A3F3F3E4543424947
              454D4B4B4C4A49828180939392FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDCDBCACACA000000060606
              0C0C0C0F10101514141917181C1D1C22211F2524252B2A292F2E2D3232303835
              363C3B3A3F3F3E4543424947454C4A4B4C4A49838181949392FFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              DDDCDBCACACA0000000606060C0C0C0F10101514141917181C1D1C22211F2524
              252B2A292F2E2D3232303835363C3B3A3F3F3E4543424947454C4A4B4C4A4983
              8181949393FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFDDDCDBCACACA0000000606060C0C0C0F10101514
              141917181C1D1C22211F2524252B2A292F2E2D3232303835363C3B3A3F3F3E45
              43424947454C4A4B4C4A49838181949392FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDCDBC9C9CA0000
              000606060C0C0C0F10101514141917181C1D1C22211F2524252B2A292F2E2D32
              32303835363C3B3A403F3E4543424947464D4B4B4D4B49828180949292FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFDDDCDAC7C7C70000000000000101010505050A09090F0D0D13131218
              17161C1B1B21201F2524232928272E2D2C3231303635343C3938403D3C444242
              4341407B79798C8A89FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8D7D6F4F3F358595A52535557585B5A
              5B5D5D5D605F606262636564656767686A6A6B6C6C6D6E6F6F71727174757576
              7677797A7A7B7C7C7D7F7F808080817A7A7BE3E3E5FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7D6D5ED
              EEF1EBE7E0FFFBEEFFFCF0FFFCF0FFFDF0FFFDF1FFFDF1FFFDF1FFFDF2FFFDF2
              FFFDF2FFFDF2FFFDF3FFFEF3FFFEF3FFFEF3FFFEF4FFFEF4FFFEF4FFFEF4F9F5
              EBF4F1E7F4F1E7F5F1E8F5F2E9F5F2E9F5F3EAF6F3EAF4F1E7FFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFD8D8D8E2DFDA9B5B00AA6C00B07305B3760AB57A10B77F15
              BB8319BD871FBF8B25C29029C3932EC69733C89B38CB9F3ECDA243CFA848D3AB
              4ED5B052D7B358DAB75DDCBC63DEBF67E0C46DE4C772E6CB77E8D07CE9D281E8
              D281E2D292E4DCBAFFFFFFFFFFFFFFFFFFFFFFFFD9D9DADCD4C9AB6B00BE8218
              C0861DC38922C58D27C7912CCA952FCC9936CE9D3BD1A13FD3A444D5A849D7AC
              4EDAB053DCB358DEB85DE1BB62E3BF67E5C36CE8C771EACB76ECCE7BEED380F1
              D685F3DA89F5DE8FF8E294FAE595F5E8B5E7DEB7FFFFFFFFFFFFFFFFFFFFFFFF
              D9D9DADED6CAAF6D00BF8218BF861DC38822C58D27C6912CCA952FCC9936CD9D
              3BD1A13ED3A344D5A849D6AC4EDAB053DCB258DDB85DE1BA62E3BF67E4C36CE8
              C771EACB76ECCD7BEDD380F1D585F3DA88F4DE8FF8E294FAE695F9ECB5E9E0B9
              FFFFFFFFFFFFFFFFFFFFFFFFD9D9DADED6CAB06E00BE8218BF861DC38822C58D
              27C6912CCA952FCC9936CD9D3BD1A13ED3A344D5A849D6AC4EDAB053DCB258DD
              B85DE1BA62E3BF67E4C36CE8C771EACB76ECCD7BEDD380F1D585F3DA88F4DE8F
              F8E294FAE595FAECB6E9E1B9FFFFFFFFFFFFFFFFFFFFFFFFD9D9DADED6CAAF6E
              00BE8218BF861DC38822C58D27C6912CCA952FCC9936CD9D3BD1A13ED3A344D5
              A849D6AC4EDAB053DCB258DDB85DE1BA62E3BF67E4C36CE8C771EACB76ECCD7B
              EDD380F1D585F3DA88F4DE8FF8E294FAE595FAECB6E9E1B9FFFFFFFFFFFFFFFF
              FFFFFFFFD9D9DADED6CAAF6D00BF8218BF861DC38822C58D27C6912CCA952FCC
              9936CD9D3BD1A13ED3A344D5A849D6AC4EDAB053DCB258DDB85DE1BA62E3BF67
              E4C36CE8C771EACB76ECCD7BEDD380F1D585F3DA88F4DE8FF8E294FAE695F9EC
              B5E9E0B9FFFFFFFFFFFFFFFFFFFFFFFFD9D9DADCD4C9AB6A00BE8218C0861DC3
              8922C58D27C7912CCA9530CC9936CE9D3BD1A13ED3A444D5A849D7AC4EDAB053
              DCB358DEB85DE1BB62E3BF67E5C36CE8C771EACB76ECCE7BEED380F2D685F3DA
              89F5DE8FF8E294FBE595F6EAB5E8DEB7FFFFFFFFFFFFFFFFFFFFFFFFD8D8D8E2
              DFDA9A5B00A96C00AE7205B3760AB57A10B77F15BA8319BD871FBE8B25C18F29
              C3932DC69733C89A38CB9F3DCDA243CEA848D2AB4DD4AE52D6B358DAB75DDCBC
              62DEBF67E0C46DE3C772E5CB76E7CF7BE9D281E8D381E2D292E5DDBAFFFFFFFF
              FFFFFFFFFFFFFFFFD7D6D5EDEDF0E4E1DAFAF3E6FAF4E8FAF4E8FAF4E8FAF4E9
              FAF4E9FAF4E9FAF4E9FAF4E9FAF4EAFAF5EAF9F5EAFAF5EAF9F5EAF9F5EBF9F5
              EBF9F5EBF9F5EBF9F5EBF9F6ECF9F6ECF9F6ECF9F6EDF9F6EDF5F2E9F5F3EAF6
              F3EAF4F1E6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8D6D5EFEEEE94939498999A
              9E9EA0A1A1A2A4A5A6A7A7A8AAAAABADADAEB0B0B1B2B3B4B5B5B6B8B8BABBBB
              BDBEBEBFC1C1C2C3C4C5C7C7C8C9CACBCDCCCECFCFD1D2D2D3D5D4D6D7D7D9D6
              D5D7DADADCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              DAD9D8D4D3D2565553706E6D7674727C7A78817F7D8583828A8886908D8B9493
              919997969E9C9AA2A19FA7A6A4ACAAA9B2B0AFB6B5B3BBBAB8C0BFBDC6C3C2CA
              C9C8CECDCCD3D1D0D7D6D5D7D6D5D2D1D0F9F9F9FFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFDAD9D8D5D4D463615F7977757E7C7A83817F8886
              848C8A89918F8D9694929A99979F9D9CA4A2A0A8A7A5ADACAAB2B0AFB7B5B4BB
              BAB8C0BFBDC5C4C2CAC8C7CECDCCD3D2D1D8D6D5DCDBDAE1DFDEDAD9D8FAFAFA
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDAD9D8D6D4D46462
              607977757E7C7A83817F8886848B8989918F8C9694929999979F9C9CA4A29FA7
              A7A5ADACAAB2AFAFB7B5B4BABAB7C0BFBDC5C4C2CAC7C7CDCDCCD3D2D1D8D5D4
              DBDBDAE2E1DFDBDADAFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFDAD9D8D6D5D46462607977757E7C7A83817F8886848B8989918F8C96
              94929999979F9C9CA4A29FA7A7A5ADACAAB2AFAFB7B5B4BABAB7C0BFBDC5C4C2
              CAC7C7CDCDCCD3D2D1D8D5D4DBDBDAE3E0DFDBDBDAFAFAFAFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDAD9D8D6D4D46462607977757E7C7A83
              817F8886848B8989918F8C9694929999979F9C9CA4A29FA7A7A5ADACAAB2AFAF
              B7B5B4BABAB7C0BFBDC5C4C2CAC7C7CDCDCCD3D2D1D8D5D4DBDBDAE2E0DFDBDB
              DAFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDAD9D8D5
              D4D463615F7977757E7C7A83817F8886848C8A89918F8D9694929A99979F9D9C
              A4A2A0A8A7A5ADACAAB2B0AFB7B5B4BBBAB8C0BFBDC5C4C2CAC8C7CECDCCD3D2
              D1D8D6D5DCDBDAE2E0E0DADAD9FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFDAD9D8D3D2D25957567371707977757F7D7B848280888685
              8D8B8993908E9796949C9A99A19F9DA4A3A2AAA9A6AFACACB4B2B1B8B7B5BDBC
              BAC2C1BFC8C5C4CBCBCAD1D0CFD6D4D3DAD9D8DAD9D8D5D5D4FAF9F9FFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8D7D5EDECEC7D7C7A7F7E7D
              8684838988878E8C8A918F8F9593919897969C9B99A09E9DA4A2A0A7A6A4AAA9
              A8AEADACB2B1B0B5B5B3B9B8B6BDBCBAC1BFBEC3C2C2C7C6C6CBCAC9CECDCCCC
              CBCBD1D0D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              D6D5D5E8E7E7E7E8E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFF9F9F9E5E5E5F8F8F8FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF}
            Layout = blGlyphTop
            OnClick = SpeedButton4Click
          end
          object btnPizza: TSpeedButton
            Left = 200
            Top = 0
            Width = 65
            Height = 57
            Caption = #193'rea'
            Flat = True
            Glyph.Data = {
              360C0000424D360C000000000000360000002800000020000000200000000100
              180000000000000C0000C40E0000C40E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFF2FAF5C4ECCAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4F7E9D0
              F3D8D3F4DABEF1C7A5ECAFB3F3B9C2F5C4009B009CD79CFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFDBF5E2CFF3D9D2F5D9B8F0C1A5EEAEBAF5BFB8
              F6BBA9F3ADA7F2ABA9F2AEA9F2AEB1EFB62CAC2D4BC24C52BF52FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFD3F3
              DCD3F5DDCDF4D5B4F1BEA8EFB1BEF6C2B5F5B8A7F3ABA8F2ADABF3AFA8F1ADA7
              F0ACA6F1ACAAF1B1ADF3B3B0F6B9BFF3C430B23161CB6273D174FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFF5FCF8D2F3DCD3F5DBC8F4D1B1F1BBAAF2B2C3F8
              C5B2F5B5A8F3ACAAF2AEABF2AFA7F1ADA9F1AEACF2B3B0F4B6B2F5B9B4F6BBB7
              F8C0B9F8C2B7F7C0B6F7BEB4F7BDC0F5C730B2305FC96072D072FFFFFFEBF9F1
              D0F5DCD4F6DDC4F4CEABF0B7B3F4BAC2F8C3B0F5B2A9F2ADABF3AEAAF1AFA9F2
              AEAEF3B4B2F5B7B4F5BAB8F8BEBBF9C2BCF8C4BAF9C1B8F8C0B7F7BEB5F7BEB4
              F6BCB3F5BCB2F6BBB1F5BBAFF5BBBEF4C430B2315FC96072D072A8EEB8B3F3B7
              BAF5BAA9F2ABA5F1A7A5F0A8A7F1ACAAF2B0B1F4B6B5F6BCB9F8BFBCF9C3BEFB
              C5BCFAC3BAF8C2B8F9C0B7F8BFB6F7BDB4F7BDB3F7BDB3F6BBB2F6BBB1F6BBB0
              F5BAAFF5B9AEF5B9ADF4B8ABF5B7BBF3C331B2315FC96072D072C2F6CAC4FDC7
              ADF3B1B6F6BBBAF9C0C0FBC6C1FBC7BFFAC5BDFAC3BAF9C1B9F8C1B8F8BFB6F8
              BEB5F7BEB4F7BDB3F7BDB2F6BCB1F6BCB0F6BBAFF5BAAEF5BAADF5B9ACF4B8AB
              F4B8AAF4B6A9F3B6A8F2B6A7F3B4B8F2C231B3315FC96072D072BEF3C5BFFBC4
              B5F6B9BFFBC6BBF9C2B9F9C1B8F7C0B8F7BFB7F8BEB6F6BEB5F6BEB4F7BCB3F5
              BCB2F5BCB1F6BBB0F4BAAFF4BAAEF5B9AEF3B8ADF3B8ACF4B7ABF2B6AAF2B6A9
              F3B5A8F1B5A7F1B4A6F2B3A4F1B3B6F1C033B3315FC96072D072BCF2C4BAFAC1
              AFF4B5BBF8C2B8F8BFB7F7BEB6F7BEB5F7BDB4F6BDB3F6BCB2F6BBB1F5BBB0F5
              BAAFF5B9AEF4B9ADF4B7ACF4B7ABF3B7AAF3B5A9F3B5A8F2B5A7F2B3A6F2B3A5
              F1B3A4F1B2A3F1B1A2F1B1A0F1B0B3F0BE33B3315FC96072D072B9F1C0B7F9BF
              AAF2B2B7F8BFB3F7BCB3F6BCB1F6BBB0F6BBB0F5BAAFF5B9ADF5B9ACF4B8ABF4
              B7AAF4B7A9F3B6A8F3B6A7F3B5A6F2B4A5F2B4A4F2B3A3F1B2A2F1B2A1F1B1A0
              F0B09FF0B09EF0AE9DEFAE9BF0ADB0F0BC33B3325FC96072D072B9F0BEB2F7BD
              A7F1B0B3F6BEAFF5BAAEF4BAAFF5B8ADF4B8ABF3B7AAF4B6AAF3B6A9F2B6A8F3
              B4A7F2B4A6F1B4A5F2B3A4F1B2A3F0B2A2F1B1A1F0B0A1EFB0A0F0AF9FEFAE9E
              EEAE9DEFAD9CEEAD9BEDAC99EEABAEEFBB33B3325FC96072D072B6EFBBAFF6BA
              A3EFAEAFF5BAADF3B8ACF4B7ADF2B7ADF2B5AEF3B7ACF1B6A7F1B5A3F2B2A3F1
              B2A3F0B1A2F1B1A2F0B1A1EFAFA0F0AF9FEFAF9EEEAD9DEFAD9CEEAD9BEDAC9A
              EEAB99EDAB98ECAA97EDA994ECA8ACEEBA34B3325FC96072D072B3EDBAABF5B7
              9FEFABACF3B8A8F3B5AAF3B5AAF2B3AAF2B5ABF2B5ACF1B6ADF1B7AFF1B9ABF0
              B6A6F0B5A1F0B19BEFAC99EEAB9AEEAB99EEAB99EEAB98EEAB98EDAA97EDAA96
              EDA894ECA893ECA892ECA690EBA5A8EDB734B3335FC96072D072B2ECB7A6F4B6
              9CEDA9A8F3B6A6F2B2A7F1B2A8F1B2A9F1B3A8F0B3AAF0B5A9F0B5ABEFB6ABEF
              B7ACEFB9AFEEBBB1EFBBADEEBAA8EFB6A2EDB29BEEAD94EBA88EEBA38DEAA38E
              EBA48EEAA38FEAA38EEAA38CE9A3A6EDB534B3345FC96072D072B0ECB4A3F1B2
              99ECA6A6F2B3A4EFB1A5EFAEA5F0B1A6EEB1A7EEB2A7EFB3A8EDB4A8EDB4A8EE
              B6AAECB6AAEDB7AAEEB8ABEEB9ADEDBAADEFBCB0EFBDB2EFC0B3F0C1B0F0BEA9
              EEBAA3EDB59CECB097EBAB8FEAA5A6ECB634B3335FC96072D072AEE8B29FF2B1
              96EAA4A2F0B1A2EFAEA2EFAEA3EEAFA3EEB0A4EEB0A4EDB2A5EDB2A6EDB3A7EC
              B4A7EDB5A8EDB6A8ECB6A9EDB7A9EEB8AAEDB9ABEDB9ABEFBAACEEBBADEFBCAE
              EFBEAFF0BEAEF0BEAFF0BEAFF0C0BEF1C930B3305FC96072D072ABE8AF9CF0AD
              95EAA2A2EEAE9FEEACA0EDACA2EEB1A1EDADA1EDAFA3ECB0A2ECB0A4EBB1A5EC
              B5A5EBB3A5ECB3A6ECB5A6ECB6A7ECB7A8EDB7A8EDB8A8EEB9AAEDB9AAEDBBAB
              EFBBABEEBCAAEDBAAAEDBBA8EDBAB9EFC531B3305FC96072D072B3F0C29CF4B7
              93EAA49EEEAD9EEDACA7F7C595E295A9F6C7A0ECB0A0EAADA0EAAEAAF4C89EE9
              ACA8F0C2A3EBB2A3EBB3A4ECB3A5ECB5A5ECB6A6EDB7A6ECB7A7ECB8A8EEB8A8
              EDBAA8EEBAA7EEB9A6EDB9A6EDB8B7EFC332B3315FC96072D0726EAE2B7FCA57
              83D77BA2F4BC9AEAA766AF1C539D0069B3259AE6A2A6F3C4AAF5CA6BB62D4896
              007DC85BAEF7D2A3EDB7A2EAB3A2EAB3A2ECB4A3EBB5A4ECB6A5ECB7A5ECB7A6
              EDB8A5EDB8A5ECB8A4ECB7A2ECB7B5EEC332B3315FC96072D07254A51160AB08
              64AA0E63A80A5CA50678BC34B7E68D72B72C4D9B0076C04560AC1464AD15ACDE
              7E53A10055A30092DC8FA9F4CAAAF5CBA5EFBEA3ECB8A1EBB4A2ECB5A2ECB6A3
              ECB6A3ECB6A2EBB6A2EAB6A0EBB5B4EDC133B3315FC96072D072FFFFFFCBECC9
              9AD37A56B31381C83BAADF77ABDE7AC5F09EB7E7884AA00071B627B2E384ACE0
              7EC2EE9B8DC94D3A920047980060AE197BC75C93DF98ACF6D0A2EBB7A1EBB4A1
              EAB5A0EAB5A0EBB49FEBB49DEAB3B2EDC033B3315FC96072D072FFFFFFFFFFFF
              FFFFFFFFFFFFCFEBD0A8DA8E89CB5E6ABE2D8ECC72E7F5EBA9DC9278C44283C9
              429AD65D86C964FFFFFFA6D28553A7073D9500489A004B9B009BE8ACA4EFC39E
              EAB39EEAB39DEAB39CE8B19BE9B2B0ECBF33B3315FC96072D072FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4F1
              E3A5D38DFFFFFFFFFFFFFFFFFFFFFFFFECFAF0ACD38A4DA20043950082D176A9
              F6D39AE8B09AE9B19AE8B198E9AFAFECBE33B3315FC96072D072FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6DB22C3B930067
              B52DA7F7D399E9B097E8AE95E8AEACEBBE34B3315FC96072D072FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA6D08531
              900052A0049BEEBE98E9B593E6ACABE9BB34B4325FC96072D072FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5
              F1D837940044950089DC9397EFC0A9E9B934B4325FC96072D072FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFF51A2133B91006FC254B9F9DF34B4315EC96072D072FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF7DBA45308D0061AB223AB54267D36B74D375FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFC4DFB31F85000F750534962163C25DFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FAF462AE630076002D8E15FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB1D2B3}
            Layout = blGlyphTop
            OnClick = btnPizzaClick
          end
          object SpeedButton3: TSpeedButton
            Left = 136
            Top = 0
            Width = 65
            Height = 57
            Caption = 'Linha'
            Flat = True
            Glyph.Data = {
              660F0000424D660F000000000000360000002800000024000000240000000100
              180000000000300F0000130B0000130B00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFFFFFFFEFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFAFAFDC1C1C563636768686C65656A6464686262666161655F5F645F5E
              635E5E635D5D625D5D615D5D615C5C615C5C615B5B605C5C605C5C605C5C605C
              5C605C5C605C5C615D5D615D5D615E5E625E5E625F5F645F5F64616165626266
              64646866666A67676C636368B8B8BCFFFFFF9999980E0E0D20201F1D1D1D1C1C
              1B1D1D1C1D1D1C1D1D1C1D1D1C1D1D1C1D1D1C1D1D1C1D1D1C1D1D1C1D1D1C1D
              1D1C1D1D1C1D1D1C1D1D1C1D1D1C1D1D1C1D1D1C1D1D1C1D1D1C1D1D1C1D1D1C
              1D1D1C1D1D1C1D1D1C1D1D1C1C1C1B1C1C1B1C1C1B0B0B0A878786FFFFFF9A9A
              9F18181D27272C34343839393E37383C37383C37383C37383C37383C37383C37
              383C37383C37383C37383C37383C37383C37383C37383C37383C37383C37383C
              37383C37383C37383C37383C37383C37383C37383C37383C37383C37383C3838
              3D2B2B307E7E82FFFFFF9A9A9F18181D19191DA6A6AAF0F0F4E8E8ECE8E8ECE8
              E8ECE8E8ECE8E8ECE8E8ECE8E8ECE8E8ECE8E8ECE8E8ECE8E8ECE8E8ECE8E8EC
              E8E8ECE8E8ECE8E8ECE8E8ECE8E8ECE8E8ECE8E8ECE8E8ECE8E8ECE8E8ECE8E8
              ECE8E8ECE8E8ECE8E8ECE8E8ECE5E5EAE1E1E5FCFCFF9D9D9E19191A151516A3
              A3A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD
              FDFE9C9C9E18181B151517A1A1A4FFFFFFFCFCFFFCFCFFFCFCFFFCFCFFFCFCFF
              FCFCFFFCFCFFFCFCFFFCFCFFFCFCFFFCFCFFFFFFFFFFFFFFFDFDFFFCFCFFFCFC
              FFFCFCFFFCFCFFFCFCFFFCFCFFFCFCFFFCFCFFFCFCFFFCFCFFFCFCFFFCFCFFFC
              FCFFFCFCFFFCFCFFFCFCFEFBFBFE9B9B9F19191D1515199B9B9FFBFBFFF0F0F4
              F0F0F4F0F0F4F0F0F4F0F0F4F0F0F4F0F0F4F0F0F4F0F0F4F0F0F5FFFBFF92B6
              97A2C0A7FFF9FFFBF7FFF0F1F5F0F0F4F0F0F4F0F0F4F0F0F4F0F0F4F0F0F4F0
              F0F4F0F0F4F0F0F4F0F0F4F0F0F4F0F0F4EFEFF4F5F5F9FAFAFE9A9A9F19191D
              15151AA49FA8FCFCFFEFEFF4EFEFF4EFEFF4EFEFF4EFEFF4EFEFF4EFEFF4EFEF
              F4EFEFF4FFFBFF8CB59109830D08830D1F7E24A3BAA7FFFDFFFBF6FFF0F0F5EF
              EFF4EFEFF4EFEFF4EFEFF4EFEFF4EFEFF4EFEFF4F2F1F6F9F5FDFFFAFFFFFCFF
              F9F8FEF9F9FE9E9E9D1A1A19221D202A5C29FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBDD7BC0784065DB45CC1E6C04BAB4A0F
              8A0D20831FB2CBB1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFBED4BD5DA45C147812E6ECE5FFFFFF9A9A9F18181D241D290D591258A1
              5DFFFFFFF9F9FEF9F9FDF9F9FDF9F9FDF9F9FDF9F9FDFFFFFFDAE3DF0A800E34
              9C39D8E9DDFFFFFFEEF4F29FD1A449A64D0B830F228228ADC5B2FFFFFFFFFFFF
              FFFFFFFBF5FFA3C2A748964D0E7D120D841142A2474BA94FD8E5DDFEFBFF9A9A
              9F19191D221B26306E34148D178BB490FFFFFFFBFAFFFAFAFEFAFAFEFAFAFEFF
              FEFFF6F3FA1382172F9933BDDCC2FFFFFFFAFAFFFDFCFFFFFFFFECF5F0A0D3A5
              48A54B0B841027822C92BD96409145017804198D1E48A44B79BE7DBBDEC1DEEE
              E3FFFFFFFFFDFFF9F9FD9E9E9E1A1A1A1A171A9095904CB24C0A820AB6C7B6F9
              F4F9ECEBECEBEBECEEEDEFFAF0FA258B2629982997C997FDF3FDEBEBECEBEBEC
              EBEBECEBEBECEFEDEFF8F1F9DFE7DF9BD19B48A84823932351AC5185C686BCDE
              BDDBE6DCF5F0F5F5F0F5F0EEF0EBEBECF5F5F6FFFFFF9B9B9F19191C151518AB
              A6AEE6F8E9319B340A7D0EEFEEF2FFFFFFFDFDFFFFFFFF41984421912380C083
              FFFFFFFDFDFFFCFCFFFCFCFFFCFCFFFCFCFFFCFCFFFCFCFFFFFEFFFFFFFFE9F4
              EDCFE7D3EDF5F0FFFFFFFFFFFFFFFEFFFDFDFFFCFCFFFCFCFFFCFCFFFBFBFEFA
              FAFE9B9B9F19191D141418A0A0A4FFFFFFB1D9B527952A218426FFFCFFFFFFFF
              67A86C178B1B64B369FFFFFFFBFAFFF9F9FDF9F9FDF9F9FDF9F9FDF9F9FDF9F9
              FDF9F9FDF9F9FDF9F9FDFDFBFFFFFCFFFCFAFFFAF9FEF9F9FDF9F9FDF9F9FDF9
              F9FDF9F9FDF9F9FDF9F9FDF9F9FD9B9B9F19191D151518A1A1A5FFFFFFFFFFFF
              88C78C1C8E1F519A55A3C8A70D851251AB55FFFDFFFFFCFFFBFBFFFBFBFFFBFB
              FFFBFBFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBFFFFFFFFFFFFFFFBFBFFFB
              FBFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBFFFAFAFEFAFAFD9E9E9E1A1A19
              1616169B9B9AFCFCFCF1F1F2FFF9FF60B3601D901C148D1442A441E9EBE8F7F4
              F7F0F1F0F1F1F0F1F1F0F1F1F0F1F1F0F1F1F0F1F1F0F1F1F0F1F1F0F2F1F1FF
              FFFAC6C6D5BEBDCEFFFFF9F1F1F0F1F1F0F1F1F0F1F1F0F1F1F0F1F1F0F0F0F0
              F8F8F8FFFFFF9A9A9F18181D1515199E9FA3FFFFFFF6F6FAF9F7FDF8F7FD58AD
              5C48A54DD3E6D7FFFAFFF5F6FAF6F6FAF6F6FAF6F6FAF6F6FAF6F6FAF6F6FAF6
              F6FAF6F6FAF9F9FCFFFFFF7B7BB9000093000091AAABCBFFFFFFF6F6FAF6F6FA
              F6F6FAF6F6FAF6F6FAF6F6FAF7F7FCF9F9FD9B9B9F18181D141519A0A0A4FFFF
              FFF9F9FEF9F9FEFDFBFFFEFCFFF0F5F5FFFDFFF9F9FEF9F9FEF9F9FEF9F9FEF9
              F9FEF9F9FEF9F9FEF9F9FEF9F9FEFFFFFFFFFFFE4141A40E0E9D7576CC4E4DBA
              000090DBDBE5FFFFFFF9F9FEF9F9FEF9F9FEF9F9FEF9F9FEF9F9FDF9F9FD9E9E
              9E1A1A19151515A3A3A3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E4EB171895
              2323A57676CAFFFFFFC9C9EB2A29AA111291FEFEF7FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF9B9B9F19191D141518A1A1A5FFFFFFFBFBFFFBFBFFFB
              FBFFFCFBFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBFFFDFDFF
              FFFFFFA3A3CC0000923737B09F9FDCFFFFFFFFFFFFFFFFFFA5A6E0201FA72424
              95FFFFFFFEFEFFFBFBFFFBFBFFFBFBFFFAFAFEFAFAFD9B9B9F19191D16161A95
              9599F1F1F5E7E7EBE7E7EBE7E7EBE7E7EBE7E7EBE7E7EBE7E7EBE7E7EBE7E7EB
              E7E7EBE7E7EBECEDEEFDFDF35A5AA90808994A4AB9B6B7DBF8F8F1E8E8EBE6E7
              EBE8E7EBFBFBF27474C81818A349499FFEFEF5E7E7EBE7E7EBE6E6EAF1F1F5FA
              FAFE9B9B9F19191C141418AAAAAAFFFFFFFDFDFFFCFCFFFCFCFFFCFCFFFCFCFF
              FCFCFFFCFCFFFCFCFFFEFEFFFFFFFFFFFFFFF9F8F82E309F1818A26060C3EAEA
              F6FFFFFFFCFCFFFCFCFFFCFCFFFCFCFFFEFEFFFFFFFF5D5DC20B0C9B7E7FB9FF
              FFFFFCFCFFFCFCFFFBFBFEFAFAFE9E9E9E19191A1E1F1B4E4E74EDECF3FFFFFF
              FFFFFFFFFFFFFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFC2C1D85454A90506
              922B2BAA8889D2FFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFF
              FFFFFFFFFF4747B9060595ADAECDFFFFFFFEFEFEFEFEFEFEFEFE9A9A9F19191D
              24242015166D0102973D3D9EB3B3D0FFFFFFFFFFFFFFFFFFFFFFFFD5D6E36C6B
              B41415940505983E3EB2706FC9B6B6E5FFFFFFFCFCFFFAFAFEFAFAFEFAFAFEFA
              FAFEFAFAFEFAFAFEFAFAFEFAFAFEFFFFFFE4E5F63535B2040491D6D6E3FFFFFF
              F9F9FEF9F9FD9A9A9F18181D1A1A1B8080978A8BD83C3DB309099A13128E8F90
              C39594C72223960101952D2DAB6160C0A4A3D9D3D3EBFEFEFBFBFBFAF2F2F6F1
              F1F6F1F1F6F1F1F6F1F1F6F1F1F6F1F1F6F1F1F6F1F1F6F1F1F6F1F1F6FFFFFA
              BDBEE32928AB0F1092F1F1F0FCFBFDF9F9FE9E9E9D1A1A19161615A4A49FFFFF
              FFE8E8F4ADACE15758BD1B1BA11E1EA25455BB9A99D8D6D8EFFAFAF7FFFFFAFC
              FCF7F7F7F5F6F6F5F6F6F5F6F6F5F6F6F5F6F6F5F6F6F5F6F6F5F6F6F5F6F6F5
              F6F6F5F6F6F5F6F6F5F6F6F5FFFFFBA1A1DB2121A620218FFFFFFDFFFFFF9A9A
              9F19191D141519A0A0A4FFFFFFFEFEFFFFFFFFFBFBFED0CFEFCACBEDF5F6FCFF
              FFFFFFFFFFFBFBFFFAFAFEFAFAFEFAFAFEFAFAFEFAFAFEFAFAFEFAFAFEFAFAFE
              FAFAFEFAFAFEFAFAFEFAFAFEFAFAFEFAFAFEFAFAFEFAFAFEFAFAFEFFFFFF7E7E
              D01B1AA58081BFFFFFFF9B9B9F19191D141519A0A0A4FFFFFFF9F9FDF9F9FDFB
              FBFEFFFFFFFFFFFFFCFCFEF9F9FDF9F9FDF9F9FDF9F9FDF9F9FDF9F9FDF9F9FD
              F9F9FDF9F9FDF9F9FDF9F9FDF9F9FDF9F9FDF9F9FDF9F9FDF9F9FDF9F9FDF9F9
              FDF9F9FDF9F9FDFBFBFEFFFFFFB2B2E2ECECF7FCFCFF9C9C9E18181B151517A2
              A2A5FFFFFFFDFDFFFDFDFFFDFDFFFDFDFFFDFDFFFDFDFFFDFDFFFDFDFFFDFDFF
              FDFDFFFDFDFFFDFDFFFDFDFFFDFDFFFDFDFFFDFDFFFDFDFFFDFDFFFDFDFFFDFD
              FFFDFDFFFDFDFFFDFDFFFDFDFFFDFDFFFDFDFFFDFDFFFEFEFFFFFFFFFFFFFFFB
              FBFE9D9D9E19191A161617979798F5F5F5EAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
              EAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
              EAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
              EAEAEAEAEAE9E9E9F4F4F5FEFEFF9A9A9F19191D141519A0A0A5FFFFFFFAFAFE
              FAFAFEFAFAFEFAFAFEFAFAFEFAFAFEFAFAFEFAFAFEFAFAFEFAFAFEFAFAFEFAFA
              FEFAFAFEFAFAFEFAFAFEFAFAFEFAFAFEFAFAFEFAFAFEFAFAFEFAFAFEFAFAFEFA
              FAFEFAFAFEFAFAFEFAFAFEFAFAFEFAFAFEFAFAFEFAFAFEF9F9FD9A9A9F19191D
              141419A0A0A4FFFFFFF9F9FDF9F9FDF9F9FDF9F9FDF9F9FDF9F9FDF9F9FDF9F9
              FDF9F9FDF9F9FDF9F9FDF9F9FDF9F9FDF9F9FDF9F9FDF9F9FDF9F9FDF9F9FDF9
              F9FDF9F9FDF9F9FDF9F9FDF9F9FDF9F9FDF9F9FDF9F9FDF9F9FDF9F9FDF9F9FD
              F9F9FDF9F9FD9E9E9D161615121211A4A4A3FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF92929725262A20202596969AFFFF
              FFF9F9FDF9F9FDF9F9FDF9F9FDF9F9FDF9F9FDF9F9FDF9F9FDF9F9FDF9F9FDF9
              F9FDF9F9FDF9F9FDF9F9FDF9F9FDF9F9FDF9F9FDF9F9FDF9F9FDF9F9FDF9F9FD
              F9F9FDF9F9FDF9F9FDF9F9FDF9F9FDF9F9FDF9F9FDF9F9FDF9F9FDF9F9FDE8E8
              ECE4E4E8E1E1E5E7E7EBFDFDFFF9F9FDF9F9FDF9F9FDF9F9FDF9F9FDF9F9FDF9
              F9FDF9F9FDF9F9FDF9F9FDF9F9FDF9F9FDF9F9FDF9F9FDF9F9FDF9F9FDF9F9FD
              F9F9FDF9F9FDF9F9FDF9F9FDF9F9FDF9F9FDF9F9FDF9F9FDF9F9FDF9F9FDF9F9
              FDF9F9FDF9F9FDF9F9FD}
            Layout = blGlyphTop
            OnClick = SpeedButton3Click
          end
          object SpeedButton2: TSpeedButton
            Left = 73
            Top = 0
            Width = 65
            Height = 57
            Caption = 'Barra'
            Flat = True
            Glyph.Data = {
              660F0000424D660F000000000000360000002800000024000000240000000100
              180000000000300F0000C40E0000C40E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFEFDFEFDFEFEFEFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFEF9FCFAF0F7F2
              E2F0E6DDEDE1E1F2E7F4F9F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFEFDF7FBF9
              EEF6F0DFEFE3CDE6D5BDDEC7ADD6BAA4CCB2AAD7B9CAE8D4F5FAF6FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFEEDF6F0DCEDE1CAE5D3BADEC6ABD5B997C5A66DA880378B5121833F2993
              4D93C4A3EBF7EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FEFEFFF9FCFEF3FAFDF4FBFFF8FCFCC3E3CEA8D4B78FC0A061A3772F884A0C79
              2C017924067B27228A3F08903600852BA1C9AFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFCFDFEF8FCFEEEF8FEE0F3FCD0EEFCC4EAFCC9ECFEC9E6EE5DA0752684
              44077B2A047C28097F2D0D81300F81320D8030258D440F913B00882B69BA84FF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFDFEFEF6FBFEECF8FDDEF3FDCEEEFDBFEAFCAEE1F898CDE867B2
              DB64B5E480C1C300791A0B83310F84341084341084341084341084340D833226
              8F460F913B00882C72BE8AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFE5F6FECBEEFEBBE8FCABDEF58DC8
              E662B0DB339ED9149AE30F9DE90CA5F21B9CC210842611873711873711873711
              87371187371187370F85352791490F913B00882C72BE8AFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFCFCFEF6F8FEEDF0FDECEFFCFBF8FCC5E6
              F68CC4E157AEDA2FA0DB169FE612A2EC18A4EB1BA5EB1DA5EA18A8F1049CCA12
              872911893A11893A11893A11893A11893A11893A0F883827934B0F913A00882C
              72BE8AFFFFFFFFFFFFFFFFFFFFFFFFFEFEFFFBFCFEF4F6FEE9EEFDDBE3FDCCD8
              FEBCCCFBB6C2EBCFD0EC2EA2DE11A4EB16A7ED1BA9ED1EA9EC1FA9EC1FA9EC1F
              A9EC20A9EC18A9F1079DCA148A2C138C3C138C3C138C3C138C3C138C3C138C3C
              108B3B28974E0F903A00882C72BE8AFFFFFFFFFFFFFDFDFEF3F6FEE7EDFEDAE4
              FECBD9FFBBCDFBA0B6EA768ED3405BCE304CC67B81C220B1F11FADEE21ACEE21
              ACEE21ACEE21ACEE21ACEE21ACEE22ADEE19A9F1079DCB148D2F138E3F138E3F
              138E3F138E3F138E3F138E3F118D3E2899510F903A00882C72BE8AFFFFFFFFFF
              FFF0F5FFCBDCFFB5CAF998AFE46A84D33B5ACE1A3FD71038E7143BE92E4ED816
              2DB624B2F024B1F024B0EF24B0EF24B0EF24B0EF24B0EF24B0EF25B1F019A9F1
              089ECB1690331492421492421492421492421492421492421291412A9C530F90
              3A00882C72BE8AFFFFFFFFFFFFC9D2E8627FD13559D21B45E01743EA1C48EC1F
              4BEB214CEA1F4BEC3255D81D33B726B5F226B5F126B3F126B3F126B3F126B3F1
              26B3F126B3F128B5F118AAF1079ECB1692351593441593441593441593441593
              441593441393432A9D550E8F3900882C72BE8AFFFFFFFFFFFF6283EB1247EF21
              53EF2455EE2556ED2556ED2556ED2556ED2356EF3559DA1C33B628B9F429B8F3
              29B7F229B7F229B7F229B7F229B7F229B7F22AB9F319A9F1099ECC1896381797
              471797471797471797471797471797471596462BA0580E903A00882C72BE8AFF
              FFFFFFFFFF7295F62058F02A5FF12A5FF12A5FF12A5FF12A5FF12A5FF1285FF3
              375EDB1C32B62BBDF62BBCF52ABBF42ABBF42ABBF42ABBF42ABBF42ABBF42DBD
              F519AAF1089FCC19983A1799491799491799491799491799491799491598482C
              A25A0E903A00882C72BE8AFFFFFFFFFFFF739AF82361F42D68F42D68F42D68F4
              2D68F42D68F42D68F42C69F73962DD1B31B62DC1F72DBFF62DBEF62DBEF62DBE
              F62DBEF62DBEF62DBEF62FC0F71AAAF2089FCD1A9B3E189B4D189B4D189B4D18
              9B4D189B4D189B4D169B4B2DA45C0E903A00882C72BE8AFFFFFFFFFFFF76A0F9
              2769F63170F73170F73170F73170F73170F73170F73072FA3B66DF1B30B530C4
              F82FC3F82FC2F72FC2F72FC2F72FC2F72FC2F72FC2F731C5F81AAAF1089FCD1B
              9F411A9F501A9F501A9F501A9F501A9F501A9F50189E4E2FA7600E903900882C
              72BE8AFFFFFFFFFFFF78A5FB2B71F93477FA3477FA3477FA3477FA3477FA3477
              FA3279FD3A69E0192EB532C7FA31C6F931C5F931C5F931C5F931C5F931C5F931
              C5F934C8FA1AAAF108A0CE1CA0441AA1521AA1521AA1521AA1521AA1521AA152
              18A0512FA9620E8F3900882C72BE8AFFFFFFFFFFFF7BA9FD2D77FC377DFC377D
              FC367DFC357DFD347EFE3882FF4588FE4F75E42034B531CAFA33CAFB33C8FA33
              C8FA33C8FA33C8FA33C8FA33C8FA36CCFC19AAF109A0CF1DA4471BA4551BA455
              1BA4551BA4551BA4551BA45519A35430AC640E8F3900882C72BE8AFFFFFFFFFF
              FF7DADFE2F7CFE3782FF3783FF3A87FF4B8EFF4D7FF34B6EE8405EE13B5BE347
              5BDD35CDFB35CCFB35CBFB35CBFB35CBFB35CBFB35CBFB35CBFB38CFFD1AABF2
              09A1CF1EA54A1CA5571CA5571CA5571CA5571CA5571CA5571AA55630AD670E8F
              3900882C72BE8AFFFFFFFFFFFF76AAFF3484FF4B8CFD4E7FF24C6DE73D59DF3B
              5AE03859E13154E1284CDF5064E437D0FD35CEFC36CDFC36CDFC36CDFC36CDFC
              36CDFC36CDFC39D1FE1AABF209A0CF1EA84C1CA75A1CA75A1CA75A1CA75A1CA7
              5A1CA75A1BA75931AF690E8F3800882C72BE8AFFFFFFFFFFFFBCD0FB375BE331
              50DE3A59E03758E13053E02B4FE04C6BE59EAEF0EBEEFBFFFFFF35D1FD36CFFD
              38D0FD38D0FD38D0FD38D0FD38D0FD38D0FD3BD4FF1AACF208A1D020AB4F1DAA
              5D1DAA5D1DAA5D1DAA5D1DAA5D1DAA5D1CA95B32B26C0E8E3800882C72BE8AFF
              FFFFFFFFFFFFFFFFFFFFFF95A7EF2E52E05A76E7A8B6F2F3F5FDFFFFFFFFFFFF
              FFFFFFFFFFFF35D1FE37D1FE39D2FE39D2FE39D2FE39D2FE38D2FE37D1FE3AD6
              FF16AAF108A1CF21AC511FAB5E1FAB5E1FAB5E1FAB5E1FAB5E1FAB5E1DAB5D34
              B36D0D8E3800882C72BE8AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF35D2FF38D2FF3AD3FF39D3FF38D2
              FF37D3FF3AD4FF49D6FF52D4FF42BCFA10A4D020AE541FAE611FAE611FAE611F
              AE611FAE611FAE611EAE6034B56F0D8E3800882C72BE8AFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF35D2
              FF35D2FF37D3FF3AD5FF4DD6FF51D1FF51C9FF45C1FF41C1FF40C3FF44C1E11C
              AE5420B06320B06320B06320B06320B06320B0631EB06234B8710D8E3700882C
              72BE8AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF2FD1FF49D4FF52D0FF51C8FF42C0FF41C1FF3DC0FF36
              BFFF30BDFF4FC7FF7ED5E117AE5721B26521B26521B26521B26521B26521B265
              1FB16435B8730E8E3700882C72BE8AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB4E8FF36BDFF33BCFF3B
              C0FF36BEFF2ABBFF52C7FF9EE0FFE9F8FFFFFFFFDDF3E10EAC5922B36722B367
              22B36722B36722B36722B36720B36636BA750E8D3700882C72BE8AFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFA4E2FF5BCAFFAAE4FFF8FCFFFFFFFFFFFFFFFFFFFFFFFFFF
              D3F0E10EAE5A23B56823B56823B56823B56823B56823B56821B46736BC770E8D
              3700882C72BE8AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFD3F0E00EAF5C23B66A23B66A23B66A23B66A23B6
              6A23B66A21B66936BD770E8D3700882C72BE8BFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD3F0E00FB05D24B7
              6B24B76B24B76B24B76B24B76B24B76B22B66A37BE780E8D3700882C73BE8BFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFD4F0E20FB05D24B76B24B76B24B76B24B76B23B66A21B6691DB56837
              BE79098A3200872A73BE8BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD4F0E20FB05D23B76B23B66A20B6691E
              B56822B76C3DBF7B4BC07D55C07B4EB470058A326DBB86FFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD3F0E10C
              AF5B1EB56826B86E3FC07D4DC07D56BF7A48B86C44B7693FB56738B4623BB364
              8FCCA4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFD1F0E01FB3644CBF7A55BE7846B76A43B6693EB56638B361
              2EAF5A56BE79A0DAB4E8F6EDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6E8D04FBB7231B05C
              36B26035B25F5FC180ACDFBDF7FCF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFC4E8D1B8E4C6FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF}
            Layout = blGlyphTop
            OnClick = SpeedButton2Clck
          end
          object SpeedButton1: TSpeedButton
            Left = 8
            Top = 0
            Width = 65
            Height = 57
            Caption = 'Pizza'
            Flat = True
            Glyph.Data = {
              660F0000424D660F000000000000360000002800000024000000240000000100
              180000000000300F0000C40E0000C40E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFDFDFDFAFDFBF6FCF9F3FDFA
              F1FDF8F4FDFAF8FEFCFCFEFDFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCF3EACDF0CFC2F0D3A5EBC393E9B7
              8DE8B285EAB479EBB272EDB66CEEB975F6C380F7C98AF9D293FEDCAFFEE7CAFC
              EDDBFDF2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFFFEA2DBF59EC3FF36B796
              2CCE3725CB6713CD5F0DD1620CD3640AD86D07DD7805E18104E68806EF9509F1
              9C0BF4A70DFBB319FDBB29F7BC39F5BD8BF4C995F3D7FFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2FDFE87DCFA
              38BDF40AA3E70785FF00A58700CA0700C25000C95200CF6000D26700D96F00DB
              7600E18200E68700ED9200EF9C00F5A700FCB100FCB600F8B300F1AA05EEA204
              E39848E7AEA8F4DAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFEC9F3FA1BC7F200B2F500ACF100A8E5008EFF1DA9A600D00000C66500CF
              5A00D36900D87500E28400E58F00F0A200F3AF00FBB000FAB300FBB600FFBD00
              FDBA00F9B100F1A800EAAD00E79D00E09700D68528DC9AD6FAEFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFCFFFF6BE5FD00C3F700C6F500C0F700B4F100A6ED009D
              F5008EEB02D90500C75100CD5E00D05E00D05F00D05B00D45800CD5300D45F00
              DB7500E78800F3A000F6B200FCBD00FFC500F6C000F0AF00E8A600E39F00DE9B
              00D28400C3605DDDAAF3FDFAFFFFFFFFFFFFFFFFFF8CF4FF00DAFE00D4FA00C9
              F400BBF700B3F100A6EF009DE7008DFF00B1A400AC0000AC0500AB0C00AB0B00
              AF1300B31800B82400BB1F00BA2000B61A00B81C00BE2700C53400CB4800D766
              00E38600E7A200E3A200DE9E00DA9B00D38F00C2693CD091E1F7EEFFFFFFEDFD
              FF00E7FF00DEFE00D4FA00C9F400BCF700B3F100A6EF009EEA008EF500B0FE00
              AA6800B80C00BC2900C03800C53F00C94400CC4900CF5000D15500D35700D359
              00D15600CE4E00CB4700CA4200C33200CE4B00D46700D77D00D78B00D49200CD
              8B00C05E49B0ABFFFFFF9DFBFF00E6FF00E1FE00D3FA00C9F400BCF700B2F100
              A6EE009EEA008AED00B1FF00A8E900B56300C12200C33500C74100CA4500CC4B
              00CF5100D25600D45A00D55B00D65E00D75F00D75F00D65E00D35D00CF4C00C8
              3A00CB4400CE5800CD7100CA8B00D876005F9EFFF2FF77FAFF00E8FF00E1FE00
              D3FA00C9F400BCF700B1F100A4EB009BEA0091EF00AEFF00A6FF00AAD400BE5A
              00C92F00CB4500CD4C00D15200D35B00D75F00D76300D96500DB6700DB6700DA
              6600D86500D86100D76000D25B00CC4F00C54700C64700CE5300FF55003FA3F0
              D3FF74FBFF00E9FF00E0FE00D2F900C7F401BEF501B2F300A9F200A7F400B2F9
              00B0FF00A2FF00A4FF00B0BF00C94C00D03F00D05400D45A00D76300DB6800DC
              6B00DD6D00E07000DF7000DE6F00DA7000D56B00D66600D65F00E75100F73C00
              F03000D82F00E2380014A5D1BBFF6AF9FF00E8FF00DFFD01D6F714CDF50FBCF8
              01B4FB00B6FC00BAFD00C3FF00C1FF00ACFF00A2FF00A5FF00B6AD00D24B00D6
              5500D86000DC6900DE6F00E27300E37600DF7B00DD7E00E37B00F57000FC6900
              FF5900FF5200DA5B00A37000858400559600399A0000C1A8A2FF5FF8FF00E9FF
              03E3FD28D8FA22BEFB03B5FE00BBFF00BEFF00C2FF00C5FF00CBFF00C4FF00AA
              FF00A4FF00A0FF00C19600DD4800D86400DA7300DE7700DC8100E48700FA8000
              FF7000FF6D00FD7700E07F00649A003CAF0027C00008C90004CF0000CF0000C4
              0000C98382FF55F9FF00F0FF2EE7FF2EB5FF00B2FF00BCFF00BEFF00C2FF00C9
              FF00C6FF00CCFF00D1FF00BDFF009DFD00A2FF009BFF00DC6000E34F00F57200
              FF6D00FF5F00FF5A00FB7A007BA90024C10000CB0000D40000D10000CB0000C8
              0000C50000C40000C70000BE0000C67576FF40FDFF01E3FF2AA6FF00B1FF00C4
              FF00C4FF00C6FF00C9FF00C9FF00D2FF00D0FF00D7FF00E6FF00CAFF00A2FF00
              A1FF008CFF00F95E00DB7A00A49C0007CF0000F20000EB0000D40000C90000C6
              0000C10000C20000C30000C50000C50000C40000C30000B70000C16869FF3BFD
              FF00B1FF00B5FF00C5FF00C3FF00C6FF00C8FF00CCFF00D0FF00D2FF00D6FF00
              D8FF00DDFF00E2FF00BEFF009EFF00D5FF175BEA0000CF0000E60000CC0000BF
              0000BF0000C10000C40000C30000C40000C40000C10000C00000BE0000C20000
              C60001CD0000E46B6BFF30F5FF00AAFF00CBFF00C9FF00CCFF00CEFF00D1FF00
              D5FF00D4FF00DAFF00DAFF00DDFF00DEFF00EAFF00E7FF00AEFF00DFFF0A42E9
              0000B20000C10000C10000C30000C20000C10000C20001C20100C70001CC0103
              CF0204DB0306E00207EC0007FE0008FF0000FF6868FF25DAFF00C3FF00DEFF00
              DFFF00E2FF00E2FF00E4FF00E7FF00E8FF00EAFF00ECFF00EEFF00EFFF00F1FF
              00FFFF00E7FF00F7FF003BD70000B20000C10203BF0304C4080AC90C0CD00C0D
              D9090FDF0D08E9000AF3070EF7070CFF080CFF060BFF0107FF0007FF0000FF5F
              61FF69ABFF0059FF067DFF037FFF037FFF0582FF078CFF0B97FF0BA1FF14B1FF
              11BBFF11C5FF11CEFF11D6FF12DFFF14E5FF12FFFF0B3DD71404C02527D82C2E
              DC2B2DE42B2EF0282AF62023FB141CFD1610FF000DFF0911FF080DFF0809FF06
              08FF0105FF0008FF0000FF9192FFDCCEFF0000FF0709FF080AFF0708FF0A07FF
              100FFF1B1EFF1F28FF333FFF3649FF4057FF4864FF4F70FF567AFF6083FF5EA9
              FF5161F0564AEC5558FA5154FC4649FE393CFF2E30FF2125FF121BFF170FFF00
              0CFF0810FF080CFF0809FF0709FF0107FF0004FF0000FFE5E4FFFFFFFF2F2FFF
              0000FF0709FF080BFF0808FF0F0CFF1917FF241BFF352EFF3C33FF4A3EFF5348
              FF5E50FF6958FF705FFF7261FF6D6AFF6163FF5458FF4B4CFF4041FF3337FF2B
              2CFF2022FF1119FF130EFF000DFF080EFF080BFF0809FF050AFF0006FF0000FF
              3A39FFFFFFFFFFFFFFD0D0FF1D1DFF0000FF0811FF0B0FFF0C12FF161DFF1F22
              FF2F32FF3339FF4045FF4A4CFF5054FF585CFF5E5FFF6160FF5B5BFF5559FF4C
              50FF4445FF393CFF3033FF292AFF1F20FF0E17FF0D0AFF0010FF080DFF0809FF
              080BFF050AFF0000FF2D2EFFDBDBFFFFFFFFFFFFFFFFFFFFCBCBFF1615FF0000
              FF0204FF0E11FF161AFF1A1EFF2E2EFF3235FF3A3DFF4548FF4C4FFF5253FF55
              57FF565AFF5758FF4C51FF4B48FF4145FF3838FF2E31FF2426FF1A1DFF1213FF
              080AFF0311FF090DFF060BFF0002FF0000FF2020FFD6D6FFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF8C8FFF0404FF0000FF0005FF121AFF2528FF2C2CFF30
              35FF393CFF3F42FF4146FF4649FF464AFF4145FF4544FF3C3FFF3336FF2D30FF
              2629FF1E20FF1117FF0C0EFF020DFF030BFF0000FF0000FF0807FF9698FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7EBFF7779FF23
              22FF0102FF0F11FF181DFF2325FF2A2BFF3134FF363AFF3A3DFF3E3DFF3A3CFF
              3139FF3031FF2A2CFF2224FF1A1CFF0D14FF0508FF0000FF0103FF0403FF2828
              FF7F80FFF1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFE7E8FF9492FF6E71FF3F44FF3A3BFF3536FF2D2EFF
              292BFF2A2EFF2A2FFF282AFF2629FF2223FF1E22FF191CFF171CFF1F23FF2A2A
              FF3538FF7C7BFF9594FFEBF0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              D6D7FFC7C9FFB8B9FF9E9FFF8F92FF8C8BFF8585FF7D81FF7C7EFF8181FF8486
              FF8B8DFF9799FFB3B4FFC9C9FFD9DAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFFF9F9FFF6F6
              FFF3F3FFF2F3FFF5F5FFF9F9FFFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF}
            Layout = blGlyphTop
            OnClick = SpeedButton1Click
          end
          object SpeedButton6: TSpeedButton
            Left = 858
            Top = 0
            Width = 97
            Height = 57
            Caption = 'Imprimir'
            Flat = True
            Glyph.Data = {
              660F0000424D660F000000000000360000002800000024000000240000000100
              180000000000300F0000C40E0000C40E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFDFFFFE8E9E9EAECECEAECECEAECECEAECECEAEC
              ECEAECECEAECECEBECECEBECECEBECECEBEDEDEBEDEDECEDEDECEDEDECEDEDEC
              EDEDECEEEEECEEEEEDEEEEEDEEEEEDEEEEF2F3F3FFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAE9C9C9987879A88
              889B88889B88889A88889886869685859483839282829080808F7F7F8C7D7D8A
              7C7C887B7B8779798478788277778175757F73737D72727B70707D7373594E4E
              E8E9E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFB8A5A5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFF6E6262FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3EDEDD1C3C3FFFFFFF6F3F3F5F1F1F4
              F1F1F3EEEEF2EDEDF0EBEBEFE9E9EEE7E7EDE6E6EBE5E5EAE3E3E9E1E1E7DFDF
              E6DEDEE5DCDCE4DADAE3D9D9DFD4D4F5F0F0CDC8C8A9A4A4FFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0C8C8C8ADB0B097
              8282FFFFFFF8F5F5F7F4F4F6F3F3F5F2F2F4F0F0F3EEEEF1EDEDF1ECECEFEAEA
              EEE9E9EDE7E7ECE5E5EBE4E4EAE2E2E9E1E1E7DFDFE7DEDEE2D8D8FFFFFF776A
              6A949797BDBDBDDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF75
              7575757171938E8EAAA3A3A99696EFEAEAFEFDFDF8F6F6F7F5F5F6F3F3F5F2F2
              F4F0F0F2EEEEF2EDEDF0EBEBF0EAEAEEE8E8EDE7E7ECE5E5EBE4E4EAE2E2E8E1
              E1E7DEDEF1EAEAF0EFEF928383AEA6A6938D8D726F6F4F4F4FC4C4C4FFFFFFFF
              FFFFFFFFFFFFFFFF8D8E8ECFC8C8FAF2F2F3EBEBF2EBEBEDE5E5BBA8A8FFFFFF
              FAF8F8F9F7F7F8F5F5F7F4F4F6F3F3F5F0F0F4EFEFF2EEEEF2ECECF0EBEBEFE9
              E9EEE8E8EDE6E6ECE5E5EBE3E3E7DFDFFFFFFFA89C9CE9E1E1F2EBEBF3EBEBFC
              F3F3D8D2D2444545FFFFFFFFFFFFFFFFFFFFFFFF656565FAF0F0EAE2E2EAE2E2
              E9E2E2F8F7F7B39E9EFFFFFFF8F6F6F6F5F5F5F3F3F4F2F2F3F0F0F1EEEEF0ED
              EDEFEBEBEEEAEAEDE8E8ECE7E7EBE4E4EAE4E4E9E1E1E6DFDFE8E1E1FFFFFF9C
              8B8BFAF9F9ECE5E5EAE2E2EAE2E2FBF2F25C5B5BC8C9C9FFFFFFFFFFFFDDDDDD
              888383EBE0E0E2D7D7E4D9D9D5CDCD565757494B4BB2B2B2D1D0D0CCCBCBCBCB
              CBCBCACACBC9C9CAC9C9C9C8C8C9C8C8C9C7C7C9C7C7C8C6C6C7C5C5C7C5C5C6
              C4C4C6C3C3CDCBCBB5B5B54A4B4B565757D6CDCDE4D9D9E2D7D7EBE0E08F8A8A
              919292FFFFFFFFFFFFAEAFAFABA2A2DFD2D2DACDCDDBCECEE1D4D45656564747
              475F5F5FA1A1A19A9A9A9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B
              9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9BA2A2A2606060464747565656E1D4D4
              DBCECEDACDCDDFD2D2B0A7A76A6B6BFFFFFFFFFFFF8D8F8FC0B3B3D7C8C8D5C6
              C6D5C6C6E5D5D5404242282A2A282A2A21232322232322232322232322242422
              2424222424222424222424222424222424222424222323222323222323212323
              282A2A282A2A404242E5D5D5D5C6C6D5C6C6D8C8C8C4B7B7535454FFFFFFFFFF
              FF727474CCBBBBD0BFBFCEBEBECEBEBED2C1C1BCAEAEBCADADBCADADBCADADBB
              ABABBAABABBAAAAABAAAAABAAAAABAAAAABAAAAABAAAAABAAAAABAAAAABAAAAA
              BAAAAABAABABBBABABBCADADBCADADBCADADBCAEAED2C1C1CEBEBECEBEBED0BF
              BFD0BEBE474949FDFDFDFFFFFF656767CFBABAC9B6B6C9B6B6C8B6B6C7B4B4C8
              B4B4C9B4B4D0BEBED9CACAE3D8D8EAE1E1EAE4E4E9E3E3E6E0E0E4DEDEE4DEDE
              E4DEDEE4DEDEE6E0E0E9E3E3EAE4E4EAE1E1E3D8D8D9CACAD1BEBEC9B4B4C8B4
              B4C7B4B4C8B6B6C9B6B6C9B6B6D2BEBE454646F5F5F5FFFFFF5F6060CCB6B6C3
              AEAEC0AAAAC1ABABD0C0C0E2D9D9E2E0E0B8A5A5AF9A9AA28888977B7B917373
              8E70708E6F6F8E6F6F8E6F6F8E6F6F8E6F6F8E70708E7070917373977B7BA288
              88AF9A9AB8A6A6E4E2E2E2D9D9D0C0C0C1ABABC0AAAAC3AEAED0B9B9454646F0
              F0F0FFFFFF5E5E5EC8AFAFCDBDBDE5DDDDF4F2F2F4F2F2F3F0F0D5D7D7AE9898
              997C7C9E82829F8484A08484A08585A08585A08585A08585A08585A08585A085
              85A08585A084849F84849E82829D8181917474DDDFDFF3F0F0F4F2F2F4F3F3E5
              DEDECEBDBDCBB3B3454545EFEFEFFFFFFF595959FBF6F6FBFBFBF6F4F4EAE4E4
              EAE4E4EBE5E5E9E8E8B1A5A5CDBDBDAF9696B19999B29A9AB29A9AB29A9AB29A
              9AB29A9AB29A9AB29A9AB29A9AB29A9AB29A9AB29A9AB29A9AB49C9C988585EF
              EFEFEBE5E5EAE5E5EBE5E5ECE7E7F1EEEEF8F2F2434343EFEFEFFFFFFF5B5B5B
              FFFCFCF4F0F0F4F0F0F3F0F0E8E2E2E5DDDDF5F2F2A29999E2D5D5DBCFCFC8B5
              B5C1ACACC3AEAEC3AFAFC3AFAFC3AFAFC3AFAFC3AFAFC3AFAFC3AFAFC3AFAFC3
              AFAFC3AFAFC7B1B1988D8DF8F4F4E7DFDFE7E0E0E7E0E0E7E0E0E7E0E0F7EFEF
              404040F5F5F5FFFFFF646565F1EDEDF3EFEFF1EDEDF2EEEEF3F0F0ECE6E6F3ED
              ED9C9898E9DEDEE1D7D7E3DADADDD1D1D0C0C0CCBABACDBBBBCDBCBCCEBCBCCE
              BCBCCEBCBCCEBCBCCEBCBCCEBCBCCEBCBCD3C0C09A9595F4EDEDE3DBDBE7DEE0
              E8DFE2E4DCDCE5DEDEE7DFDF404141FFFFFFFFFFFF868686D0CCCCF4EFEFEFEB
              EBEFEBEBEFEBEBF0EBEBFAF6F69D9B9BECE4E4E8E1E1E7E0E0E8E1E1EAE4E4E7
              E0E0DFD6D6DACFCFD7CCCCD7CCCCD7CCCCD8CCCCD8CDCDD8CDCDD8CDCDDBCECE
              A1A0A0E8DEDEE3D8DAC0C0ACBABD9AE4D9DEE3D9D9C8C0C0545555FFFFFFFFFF
              FFB8B9B99D9A9AF7F1F1EEE8E8EEE8E8EEE8E8EEE8E8F5EEEEA6A7A7E3DDDDF2
              EFEFEFEBEBEFEBEBEEEBEBEFEBEBEFECECF0EDEDEFEBEBECE8E8EAE4E4E7E2E2
              E6E1E1E5E0E0E7E2E2D9D1D1A9A9A9E0D3D3DED3D4CAC3BA88B253D5C7C9E4D8
              D9989292848585FFFFFFFFFFFFFFFFFF4D4D4DFFFAFAEDE6E6ECE5E5ECE5E5EC
              E5E5F1EAEABFBEBEBDB8B8F0EBEBF1EEEFF4F2F3F6F5F6F8F7F8F9F8F9F9F8F9
              F9F9F9FAF9FAFAF9FAF9F8F8F8F7F7F5F4F4F3EEEEC0BBBBBBB8B8DBCBCBD8CA
              CADBCDCFE3D0DADED2D3F4E7E74A4949D8D8D8FFFFFFFFFFFFFFFFFF8B8B8B92
              8E8EFFF6F6F5EDEDF0E8E8EDE5E5EDE5E5E0DFDF544747EAE3E2D7C9C5D2C4BF
              D1C2BDCDBDB9CEBDB8CBBBB7CABAB6C8B7B5C6B4B2C5B4B2C4B2B1C3B1B1EBE3
              E3544848E0DFDFEEE6E6EEE6E6F1EAEAF7EFEFFFF9F9979494696969FFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFF8D8E8E4A4A4A848080B8B3B3DDD5D5F2E8E8FFFDFD
              574C4CFFFFFFFEFAF6FDF8F2FBF6EFFAF4ECF9F2EAF7EEE7F3EBE5F0E8E2EDE5
              E0EBE2DDE6DEDAE4DBD8FFFFFF564B4BFFFCFCF4EAEADED6D6BBB4B487838349
              4848808181FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCCCCC
              9595956C6D6D5252526C6D6D8A7E7EFFFFFFFBF8F4FAF5F1F9F3EEF7F1EBF7F0
              E9F5EEE5F3EBE3F0E8E1EDE5DFEAE2DDE7DED9E5DAD8FFFFFF8A7E7E7071714B
              4B4B6768688F9090C5C5C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9495955F5151FFFFFFFCFA
              F7FBF7F3F9F5F1F8F3EEF8F2EBF6F0E9F6EEE5F3EAE3F0E8E2EDE5DFEAE1DCE8
              DEDAFFFFFF5A4D4D7E8080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFA99B9BFFFFFFFDFCFAFCF9F7FBF7F4F9F5F1F9F3EEF7F1ECF7F0E9F6
              EEE6F3EBE3F0E8E2EDE4DFEAE1DDFFFFFF6E6161FFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA69797FFFFFFFEFDFDFDFBF9FBF9F6FA
              F7F3FAF5F1F8F3EEF8F2EBF6F0E9F6EEE6F3EAE3F0E8E1EDE5DFFFFFFF6F6060
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA89999FF
              FFFFFFFFFFFEFDFCFDFBF9FBF9F6FBF7F4F9F5F1F9F3EEF8F1ECF7F0E9F6EEE6
              F3EBE3F0E9E2FFFFFF726363FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFAB9C9CFFFFFFFFFFFFFFFFFFFEFDFCFCFBF9FCF9F6FAF7F4
              FAF6F1F8F4EEF8F2EBF7F0E9F6EEE6F3EBE3FFFFFF746565FFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAE9D9DFFFFFFFFFFFFFFFFFF
              FFFFFFFEFCFCFDFBF9FBF9F7FBF7F4FAF5F1F9F3EEF8F1EBF7F0E9F6EEE7FFFF
              FF786666FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              B1A0A0FFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFEFDFDFCFBF9FCF9F6FAF7F4FAF6
              F1F8F3EEF8F2EBF7F0E9FFFFFF7A6969FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFB3A1A1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFDFDFCFDFBF9FCF9F7FBF8F4FAF6F1F9F3EEF8F2EBFFFFFF7D6B6BFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB7A3A3FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFEFDFCFCFBF9FCF9F6FAF7F3F9F5F0F8
              F3EDFFFFFF806E6EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFB6A1A1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7C6969FFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCEC1C1B5A2A2B7A5A5B7A5A5B7A5A5B7
              A5A5B7A5A5B7A5A5B7A5A5B7A5A5B7A5A5B7A5A5B7A5A5B7A5A5B7A4A4B5A8A8
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF}
            Layout = blGlyphTop
            OnClick = SpeedButton6Click
          end
          object SpeedButton7: TSpeedButton
            Left = 792
            Top = 0
            Width = 65
            Height = 57
            Caption = 'Salvar'
            Flat = True
            Glyph.Data = {
              660F0000424D660F000000000000360000002800000024000000240000000100
              180000000000300F0000C40E0000C40E00000000000000000000FFFFFFFFFFFF
              FFFFFFFEFEFEFDFDFDFAFAFAF9F9F9F5F5F5F2F2F2F1F1F1EFEFEFEDEDEDECEC
              ECEBEBEBE8E8E8E9E9E9E9E9E9E7E7E7E7E7E7E9E9E9E9E9E9EAEAEAEAEAEAEB
              EBEBEDEDEDEFEFEFF1F1F1F3F3F3F6F6F6F8F8F8FAFAFAFDFDFDFEFEFEFFFFFF
              FFFFFFFFFFFFFBFBFBDDDDDDC7C8C7C0C1C4B9BBC1B3B6BBB0B2B8AEB1B6ACAF
              B4A9ACB2A9ABB1A7A9AFA5A8ADA5A8ADA4A7ACA4A7ACA4A7ACA5A7ADA4A6ACA6
              A8AEA4A7ACA5A8ADA5A8AEA6A9AFA6A9AFA8ABB1ADABB1AEACB3ADAFB5B0B3B9
              B3B6BCB8BAC0BFC1C5C5C5C6DBDBDBF9F9F9FCFAFDE1E9E6DEDEEBBCB49CA490
              5BAB8C5CA68E5AA58C58A58B58A58C58A48B58A48B58A48B58A48B58A38A57A4
              8A57A48A57A48B57A48B57A38A57A48A57A48B58A58A58A68A56A78C56AC8B54
              8F966191955FAA8D55A98D5AAC8E5BAA9256A89D7BDDE2E5E4E5EAFCFCF8FEFD
              FEFFFFFFE4D8B897670C9477328D80378C7E398C7E398D7E398D7F398D7F3A8D
              7F3A8D7E398C7D388C7E398C7F398C7F398C7F398C7E398C7E398C7E398C7E39
              8D7F378F7D3A927D408C7A3C45AD5E40AE5890793E907D3B8B7F39877C40A66F
              0FB29B62FFFFFFFDFFFEFEFEFBFFFFFFB59E5D9B7419738B691EA4FF279DF527
              9DF5279DF5279DF5279DF5279DF5279DF5279DF5279DF5279DF5279DF5279DF5
              279DF5279DF5279DF5279DF5289EF3299CF733A5FC2AAF9D37B1602DB55B2DB1
              A1349FFF20A2F240A4DE9872218C6B11FFFFFFFDFFFFFEFEFDFFFFFFB4A16398
              7213B7A47BE9FFFFE8F5FAEBF6FBEAF7FBE8F7FBE9F7FBE9F7FBE9F6FBE9F7FB
              E9F6FBE9F7FBE9F7FBE9F7FBE9F6FBE9F7FBE9F6FBE8F7FBEBF7FAEEFCFFAADD
              C92AAD5334B16334B26231AB53ADDFD7F4F8FFE3F4F2926D1396691AFFFFFFFE
              FEFFFEFDFCFFFFFFB5A064997115BFAD77FFFFFFFFFFFFFDFFFBFDFFFCFEFFFD
              FEFFFDFEFFFDFEFFFDFEFFFDFEFFFDFEFFFDFEFFFDFEFFFDFEFFFDFEFFFDFEFF
              FDFEFFFDFFFFFEFFFBFD2AAB5430B06433B26233B16229B26338A958FFFFFFFF
              FFF3926E13916C1CFFFFFFFEFEFFFEFEFDFFFFFFB7A165987418C0AB7DFFFFFF
              FFFFFFC2B6ACAC9A8DAC9C8FAC9C8FAC9C8FAD9C8FAD9C8FAD9C8FAC9C8FAC9C
              8FAC9C8FAD9C90AC9C8FAB9C8FAC9C91BCA09A45A85F2DB06338B16234B16334
              B1633AB06223B05C64BD8FFFFFFF906D1D9A6F1BFFFFFFFEFEFFFFFEFDFFFFFF
              BBA26796761CC6AC79FFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAE6C227
              AC6030B66837B46934B56A35B46A34B56A35B46920AE5DB2DEBDA4721F977020
              FFFFFFFEFEFFFFFEFDFFFFFFBCA36898771DC8AE7BFFFFFFFEFFFFFBFCFBFCFD
              FAFDFEFAFDFDFAFDFDFAFDFDFBFDFDFBFDFDFBFDFDFAFDFDFAFDFEFAFDFDFBFE
              FDFBFFFDFFE1F6E41EAC622ABA6A2FB86D32B86D30B96C30B96C30B96C30B96C
              2FB86C24BB669E8034957221FFFFFFFEFDFFFFFEFDFFFFFFBEA56A9B791FC8AE
              7BFFFFFFFFFFFFC3B9AAAC9C8AAE9F92AE9F91AE9F91AE9F92AE9F92AE9F92AE
              9F91AD9F91AF9F92B09F90AA9F95C0A2942EB16F2EB96C31BB6D2EBA712CBB70
              2DBB6F2DBB6F2DBB6F2DBB6F2DBB6F28BC7042B768A46C1BFFFFFEFEFEFFFFFE
              FDFFFFFFBFA66C9F7B21C9AF7CFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF90DCB521BA69
              28BE732DBD732DBD722DBD722DBD722DBD722DBD722DBD722DBD722BBD7425C0
              77619540FFFFFFFDFFFFFFFEFDFFFFFFC0A76BA07C22CBB17EFFFFFFFFFFFFFB
              FCFCFCFCFCFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFEFEF9FEFE
              FFFEFFC5F0DB15B76927C07429C2752CC1752CC1752CC1752CC1752CC1752CC1
              752CC1752CC1752FC07620C2771EBA6CDAF6E8FFFFFFFFFEFDFFFFFFBFA96DA7
              7C28CBB47DFFFFFFFFFFFFBFB7AEA99B8FAC9D93AC9D93AC9D93AD9D93AD9D93
              AD9D93AC9D93AE9D93AC9E97BFA19621BB7429C37523C4782CC27728C37829C3
              7829C37829C37829C37829C37829C37829C37828C3772BC07B23C37339BD7EFF
              FFFFFFFEFDFFFFFFBFAA6DAF7D2BC8B784FEFFFFFEFFFEFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF64D5A81EC16F20C2
              7922C37822C37925C47A25C47A25C47A25C47A25C47A25C47A25C47A25C47B22
              C87726C57D23C77D13BE7180DDACFFFEFDFFFFFFC1AC6FB0822EB9A160FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFF49D29E53D9A354D9A554D7A441D09322C77B26C87D26C87D26C87D26
              C87D26C87D26C87D25C87D29C68047BD6F45B86D4BD29656CE9BFFFEFDFFFFFF
              C3AC71B28933AC8532BEA362CABF92CABD8CCABD8CCABD8BCABD8BCABD8BCABD
              8BCABD8BCABD8BCABD8BCABD8CCBBC8EDBC295DDC297DAC296E7C2988AC48A1A
              CC7F25CB8025CB8025CB8025CB8025CB8025CB8021CC813CC277C3822EAD7B28
              FFFFFFFFFFFFFFFEFDFFFFFFC4AD73B28A35B58F3CB48C39B58736B48735B487
              36B48736B48736B48736B48736B48736B48736B48736B48736B48735B48736B7
              8736B38736C1823275A8571AD18624CD8124CD8124CD8124CD8124CD8124CD81
              20CF833AC47CBD8A35A98230FFFFFFFEFDFFFFFEFDFFFFFFC6AF74B48C37B690
              3EB6903EB6923DB6923DB6923DB6923DB6923DB6923DB6923DB6923DB6923DB6
              923DB6923DB6923DB6923DB8923DB4923DC18F3A75AF5B1AD38824CF8324CF83
              24CF8324CF8324CF8324CF831FD1843CC57DBE8C36AB8331FFFFFFFEFDFFFFFE
              FDFFFFFFC6B075B88E38BA9240BA9240BA9141BA9141BA9141BA9141BA9141BA
              9141BA9141BA9141BA9141BA9141BA9141BA9141BA9141BC9041B69143C58D3F
              76AF6117D58C21D08821D08821D08821D08821D08821D0881DD28933C880C28C
              3AAE8435FFFFFFFEFEFFFFFEFDFFFFFFC8B177BA903ABC9442BC9442BC9442BC
              9442BC9442BC9442BC9442BC9442BC9442BC9442BC9442BC9442BC9442BC9442
              BC9442BE9342B89444C58F4077B16216D78D20D38820D38820D38820D38820D3
              8820D3881DD48A34CA82C58E3CB08636FFFFFFFEFEFFFFFEFDFFFFFFC9B278BC
              923DBE9644BF9644BE9644BE9644BE9644BE9644BE9644BE9644BE9644BE9644
              BE9644BE9644BE9644BE9644BE9644BF9544BA9646C7914277B36416D99020D5
              8B20D58B20D58B20D58B20D58B20D58B1CD68D36CB84C6903EB2893AFFFFFFFE
              FEFFFFFEFDFFFFFFCBB379C09242C49748C39747BF9846BF9846BF9846BF9846
              BF9846BF9846BF9846BF9846BF9846BF9846BF9846BF9846BF9846BF9846BC97
              49CD924475B46515D89320D48E20D48E20D48E20D48E20D48E20D48E1CD68F32
              CD85CC913FB58B3CFFFFFFFEFEFFFFFEFDFFFFFFCCB67BC39540BD9749B99549
              BC9646BD9748BD9748BD9848BD9848BD9848BD9748BD9748BD9748BD9848BD98
              48BD9848BD9748BE9748BA974BCB914671B36612DB931CD68E1CD68E1CD68E1C
              D68E1CD68E1CD68E18D89034CE86CE9242B68C3CFFFFFFFEFEFFFFFDFDFFFFFF
              CEB77CC4963FC8A559DEBD74D2AF6ACDB065CDB065CDB065CDB065CDB065CEB0
              65CEB065CEB065CDB065CDB065CDB065CEB065CEB066CAB067DCAC647BC3780E
              D9921BD68F1BD68F1AD68F1AD68F1AD68F1AD68F15D89034D088D09544B88E3F
              FFFFFFFEFEFFFFFDFDFFFFFFCFB87EC69445D4B16891701B9576209A73289A73
              259975229974229974229974229974229974229974229974229974229974229A
              7422987522A86D1B5DA25210DE981DD6911CD79119D8911AD8911AD8911AD891
              15D99334D288D19846B99241FFFFFFFEFEFFFFFDFDFFFFFFD0B87ECA9A49C19F
              559B7527A17528966E1A9A772597762797762697762697762797762797762697
              7626977626977626977626977626957627A36E205EA45511DC9617D79016D890
              17D89017D79017D79017D79012D99237D188D59947BE9243FFFFFDFEFEFFFFFE
              FDFFFFFFD4BA80CB9B4BC3A0579B761C968040FFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              A6EFD727E5982EDF9F2EE39E2DDF992DE19B2EE19B2EE19B2CE59F3FDE9BDC97
              47C59C50FFFFFFFEFEFFFFFEFDFFFFFFD6BA81CB9D4DC4A158996F16CABE94FF
              FFFFFFFFFFD2CAB2D6CEB3DACDB2D4C7ACFFFFFFFEFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFEFFD9F9F378E5B973C8806DCA8480DA9A7BD5937CD5
              937CD59376D5958AB168D69C45D4BA89FFFFFFFFFFFFFFFEFDFFFFFFD8BB82CD
              9F4EC6A35A976E16C8BA93FFFFFFFFFFFF92691B9870159B70148A660DFFFFFE
              FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9062
              0C996B1BDFAF5BD69D4AD69E4BD59E4BD59E4CD8A24CC99243F3F1E6FFFFFFFF
              FFFFFFFEFDFFFFFFD9BD84CEA150C8A45C9B7218C9BB96FFFFFFFFFFFF997927
              9E7E2AA17E299C7022FFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFEFEFFFFFFFF9870179F762AD7B369CDA356D1A457CDA359CEA359CA
              9C48E1CAA1FFFFFFFFFFFFFFFFFFFFFEFDFFFFFFDABE84D0A252CBA75EA1781D
              CCBE9AFFFFFFFFFFFFA27E2EA78031A7842DA37625FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFFFFFFFF99751EA37D2EDDB66BCE
              A556D0A559D6A654D3A04AD7BC86FFFFFFFDFEFDFFFFFFFFFFFFFFFEFDFFFFFF
              DCBF86D1A453CDAA61A67E22CFC19DFFFFFFFFFFFFA68333AC8435AC8A32AA7C
              2BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFFFF
              FFFF9E7A23A98334DDB76CD0A757D2A75AD7A450C8AE72FFFFFFFDFDFFFBFFFE
              FFFFFFFFFFFFFFFDFBFCFFFFDCC081D4A555D0AD64AC8328D0C3A1FFFFFFFFFF
              FFAD8437B48A36B38B38AB8130FFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFEFEFFFFFFFFA47D2AB18739E0B571D4A95BDAA74DCAA863
              FFFFFFFDFFFFFFFEFDFEFFFEFFFFFFFFFFFFFFFEFEFEFFFFEAD9B7D59D4ADAAD
              61B2822BD5C397FFFFFFFFFFFFAA8E47B39441B79146A98846FFFFFFFEFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFFFFAA8227B58B34
              E2B865D5A34CD3B070F9FEF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFD
              FFFCFEFDFFFFFFE8DEBCD6BF87C8AF72DFD7BDFEFFFFFDFAFEFFFFFFFFFFFFFF
              FFFFFFFFFFFCFCFFFEFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FEFFFEFFFFFFC4AD71CAB07CDCCB99F0E8D6FFFFFFFDFEFFFCFEFFFEFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF}
            Layout = blGlyphTop
            OnClick = SpeedButton7Click
          end
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Totalizadores'
      ImageIndex = 2
      object GroupBox5: TGroupBox
        Left = 0
        Top = 0
        Width = 1139
        Height = 483
        Align = alClient
        Caption = 'Fluxo de Caixa'
        TabOrder = 0
        object chtTotais: TChart
          Left = 2
          Top = 73
          Width = 1135
          Height = 408
          BackWall.Brush.Style = bsClear
          BackWall.Pen.SmallDots = True
          BottomWall.Color = clBlack
          Gradient.EndColor = clWhite
          Gradient.StartColor = clSilver
          Gradient.Visible = True
          LeftWall.Color = clGray
          Legend.MaxNumRows = 5
          SubTitle.Angle = 1
          Title.AutoSize = False
          Title.Text.Strings = (
            '')
          Title.Visible = False
          Title.AdjustFrame = False
          Chart3DPercent = 3
          Frame.SmallDots = True
          LeftAxis.Title.Caption = 'Fluxo de Caixa'
          RightAxis.Grid.Color = clTeal
          View3DOptions.Elevation = 272
          View3DOptions.HorizOffset = -3
          View3DOptions.Zoom = 95
          Align = alClient
          ParentColor = True
          ParentShowHint = False
          ShowHint = False
          TabOrder = 0
          DefaultCanvas = 'TGDIPlusCanvas'
          ColorPaletteIndex = 13
          object Series7: TLineSeries
            Brush.BackColor = clDefault
            Pointer.InflateMargins = True
            Pointer.Style = psRectangle
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Y'
            YValues.Order = loNone
          end
        end
        object Panel5: TPanel
          Left = 2
          Top = 16
          Width = 1135
          Height = 57
          Align = alTop
          Color = clWhite
          TabOrder = 1
          object SpeedButton9: TSpeedButton
            Left = 201
            Top = 0
            Width = 65
            Height = 57
            Caption = 'Barra Horiz.'
            Flat = True
            Glyph.Data = {
              660F0000424D660F000000000000360000002800000024000000240000000100
              180000000000300F0000C40E0000C40E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9E6E5E5F8F8
              F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFD6D5D5E9E8E8F0F0EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8D7D6F0EFEF3131302828282E2E2E32
              32323635353938383C3B3B3F3E3E4342424746454949484C4C4B504F4F545352
              5755565A59585E5C5B615F5E626160626161D1D0D0FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDCDAC6
              C6C60000000000000505050909090E0D0D1211111617151C1B19201F1F252423
              2928272D2C2B3230303636343B39383F3E3D4341404745454543427F7D7D8C8C
              8BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFDDDCDBC9CACA0000000606060C0C0C0F1010151414191718
              1C1D1C22211F2524252B2A292F2E2D3232303835363C3B3A3F3F3E4543424947
              454D4B4B4C4A49828180939392FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDCDBCACACA000000060606
              0C0C0C0F10101514141917181C1D1C22211F2524252B2A292F2E2D3232303835
              363C3B3A3F3F3E4543424947454C4A4B4C4A49838181949392FFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              DDDCDBCACACA0000000606060C0C0C0F10101514141917181C1D1C22211F2524
              252B2A292F2E2D3232303835363C3B3A3F3F3E4543424947454C4A4B4C4A4983
              8181949393FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFDDDCDBCACACA0000000606060C0C0C0F10101514
              141917181C1D1C22211F2524252B2A292F2E2D3232303835363C3B3A3F3F3E45
              43424947454C4A4B4C4A49838181949392FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDCDBC9C9CA0000
              000606060C0C0C0F10101514141917181C1D1C22211F2524252B2A292F2E2D32
              32303835363C3B3A403F3E4543424947464D4B4B4D4B49828180949292FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFDDDCDAC7C7C70000000000000101010505050A09090F0D0D13131218
              17161C1B1B21201F2524232928272E2D2C3231303635343C3938403D3C444242
              4341407B79798C8A89FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8D7D6F4F3F358595A52535557585B5A
              5B5D5D5D605F606262636564656767686A6A6B6C6C6D6E6F6F71727174757576
              7677797A7A7B7C7C7D7F7F808080817A7A7BE3E3E5FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7D6D5ED
              EEF1EBE7E0FFFBEEFFFCF0FFFCF0FFFDF0FFFDF1FFFDF1FFFDF1FFFDF2FFFDF2
              FFFDF2FFFDF2FFFDF3FFFEF3FFFEF3FFFEF3FFFEF4FFFEF4FFFEF4FFFEF4F9F5
              EBF4F1E7F4F1E7F5F1E8F5F2E9F5F2E9F5F3EAF6F3EAF4F1E7FFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFD8D8D8E2DFDA9B5B00AA6C00B07305B3760AB57A10B77F15
              BB8319BD871FBF8B25C29029C3932EC69733C89B38CB9F3ECDA243CFA848D3AB
              4ED5B052D7B358DAB75DDCBC63DEBF67E0C46DE4C772E6CB77E8D07CE9D281E8
              D281E2D292E4DCBAFFFFFFFFFFFFFFFFFFFFFFFFD9D9DADCD4C9AB6B00BE8218
              C0861DC38922C58D27C7912CCA952FCC9936CE9D3BD1A13FD3A444D5A849D7AC
              4EDAB053DCB358DEB85DE1BB62E3BF67E5C36CE8C771EACB76ECCE7BEED380F1
              D685F3DA89F5DE8FF8E294FAE595F5E8B5E7DEB7FFFFFFFFFFFFFFFFFFFFFFFF
              D9D9DADED6CAAF6D00BF8218BF861DC38822C58D27C6912CCA952FCC9936CD9D
              3BD1A13ED3A344D5A849D6AC4EDAB053DCB258DDB85DE1BA62E3BF67E4C36CE8
              C771EACB76ECCD7BEDD380F1D585F3DA88F4DE8FF8E294FAE695F9ECB5E9E0B9
              FFFFFFFFFFFFFFFFFFFFFFFFD9D9DADED6CAB06E00BE8218BF861DC38822C58D
              27C6912CCA952FCC9936CD9D3BD1A13ED3A344D5A849D6AC4EDAB053DCB258DD
              B85DE1BA62E3BF67E4C36CE8C771EACB76ECCD7BEDD380F1D585F3DA88F4DE8F
              F8E294FAE595FAECB6E9E1B9FFFFFFFFFFFFFFFFFFFFFFFFD9D9DADED6CAAF6E
              00BE8218BF861DC38822C58D27C6912CCA952FCC9936CD9D3BD1A13ED3A344D5
              A849D6AC4EDAB053DCB258DDB85DE1BA62E3BF67E4C36CE8C771EACB76ECCD7B
              EDD380F1D585F3DA88F4DE8FF8E294FAE595FAECB6E9E1B9FFFFFFFFFFFFFFFF
              FFFFFFFFD9D9DADED6CAAF6D00BF8218BF861DC38822C58D27C6912CCA952FCC
              9936CD9D3BD1A13ED3A344D5A849D6AC4EDAB053DCB258DDB85DE1BA62E3BF67
              E4C36CE8C771EACB76ECCD7BEDD380F1D585F3DA88F4DE8FF8E294FAE695F9EC
              B5E9E0B9FFFFFFFFFFFFFFFFFFFFFFFFD9D9DADCD4C9AB6A00BE8218C0861DC3
              8922C58D27C7912CCA9530CC9936CE9D3BD1A13ED3A444D5A849D7AC4EDAB053
              DCB358DEB85DE1BB62E3BF67E5C36CE8C771EACB76ECCE7BEED380F2D685F3DA
              89F5DE8FF8E294FBE595F6EAB5E8DEB7FFFFFFFFFFFFFFFFFFFFFFFFD8D8D8E2
              DFDA9A5B00A96C00AE7205B3760AB57A10B77F15BA8319BD871FBE8B25C18F29
              C3932DC69733C89A38CB9F3DCDA243CEA848D2AB4DD4AE52D6B358DAB75DDCBC
              62DEBF67E0C46DE3C772E5CB76E7CF7BE9D281E8D381E2D292E5DDBAFFFFFFFF
              FFFFFFFFFFFFFFFFD7D6D5EDEDF0E4E1DAFAF3E6FAF4E8FAF4E8FAF4E8FAF4E9
              FAF4E9FAF4E9FAF4E9FAF4E9FAF4EAFAF5EAF9F5EAFAF5EAF9F5EAF9F5EBF9F5
              EBF9F5EBF9F5EBF9F5EBF9F6ECF9F6ECF9F6ECF9F6EDF9F6EDF5F2E9F5F3EAF6
              F3EAF4F1E6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8D6D5EFEEEE94939498999A
              9E9EA0A1A1A2A4A5A6A7A7A8AAAAABADADAEB0B0B1B2B3B4B5B5B6B8B8BABBBB
              BDBEBEBFC1C1C2C3C4C5C7C7C8C9CACBCDCCCECFCFD1D2D2D3D5D4D6D7D7D9D6
              D5D7DADADCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              DAD9D8D4D3D2565553706E6D7674727C7A78817F7D8583828A8886908D8B9493
              919997969E9C9AA2A19FA7A6A4ACAAA9B2B0AFB6B5B3BBBAB8C0BFBDC6C3C2CA
              C9C8CECDCCD3D1D0D7D6D5D7D6D5D2D1D0F9F9F9FFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFDAD9D8D5D4D463615F7977757E7C7A83817F8886
              848C8A89918F8D9694929A99979F9D9CA4A2A0A8A7A5ADACAAB2B0AFB7B5B4BB
              BAB8C0BFBDC5C4C2CAC8C7CECDCCD3D2D1D8D6D5DCDBDAE1DFDEDAD9D8FAFAFA
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDAD9D8D6D4D46462
              607977757E7C7A83817F8886848B8989918F8C9694929999979F9C9CA4A29FA7
              A7A5ADACAAB2AFAFB7B5B4BABAB7C0BFBDC5C4C2CAC7C7CDCDCCD3D2D1D8D5D4
              DBDBDAE2E1DFDBDADAFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFDAD9D8D6D5D46462607977757E7C7A83817F8886848B8989918F8C96
              94929999979F9C9CA4A29FA7A7A5ADACAAB2AFAFB7B5B4BABAB7C0BFBDC5C4C2
              CAC7C7CDCDCCD3D2D1D8D5D4DBDBDAE3E0DFDBDBDAFAFAFAFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDAD9D8D6D4D46462607977757E7C7A83
              817F8886848B8989918F8C9694929999979F9C9CA4A29FA7A7A5ADACAAB2AFAF
              B7B5B4BABAB7C0BFBDC5C4C2CAC7C7CDCDCCD3D2D1D8D5D4DBDBDAE2E0DFDBDB
              DAFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDAD9D8D5
              D4D463615F7977757E7C7A83817F8886848C8A89918F8D9694929A99979F9D9C
              A4A2A0A8A7A5ADACAAB2B0AFB7B5B4BBBAB8C0BFBDC5C4C2CAC8C7CECDCCD3D2
              D1D8D6D5DCDBDAE2E0E0DADAD9FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFDAD9D8D3D2D25957567371707977757F7D7B848280888685
              8D8B8993908E9796949C9A99A19F9DA4A3A2AAA9A6AFACACB4B2B1B8B7B5BDBC
              BAC2C1BFC8C5C4CBCBCAD1D0CFD6D4D3DAD9D8DAD9D8D5D5D4FAF9F9FFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8D7D5EDECEC7D7C7A7F7E7D
              8684838988878E8C8A918F8F9593919897969C9B99A09E9DA4A2A0A7A6A4AAA9
              A8AEADACB2B1B0B5B5B3B9B8B6BDBCBAC1BFBEC3C2C2C7C6C6CBCAC9CECDCCCC
              CBCBD1D0D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              D6D5D5E8E7E7E7E8E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFF9F9F9E5E5E5F8F8F8FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF}
            Layout = blGlyphTop
            OnClick = SpeedButton9Click
          end
          object SpeedButton11: TSpeedButton
            Left = 136
            Top = 0
            Width = 65
            Height = 57
            Caption = 'Linha'
            Flat = True
            Glyph.Data = {
              660F0000424D660F000000000000360000002800000024000000240000000100
              180000000000300F0000130B0000130B00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFFFFFFFEFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFAFAFDC1C1C563636768686C65656A6464686262666161655F5F645F5E
              635E5E635D5D625D5D615D5D615C5C615C5C615B5B605C5C605C5C605C5C605C
              5C605C5C605C5C615D5D615D5D615E5E625E5E625F5F645F5F64616165626266
              64646866666A67676C636368B8B8BCFFFFFF9999980E0E0D20201F1D1D1D1C1C
              1B1D1D1C1D1D1C1D1D1C1D1D1C1D1D1C1D1D1C1D1D1C1D1D1C1D1D1C1D1D1C1D
              1D1C1D1D1C1D1D1C1D1D1C1D1D1C1D1D1C1D1D1C1D1D1C1D1D1C1D1D1C1D1D1C
              1D1D1C1D1D1C1D1D1C1D1D1C1C1C1B1C1C1B1C1C1B0B0B0A878786FFFFFF9A9A
              9F18181D27272C34343839393E37383C37383C37383C37383C37383C37383C37
              383C37383C37383C37383C37383C37383C37383C37383C37383C37383C37383C
              37383C37383C37383C37383C37383C37383C37383C37383C37383C37383C3838
              3D2B2B307E7E82FFFFFF9A9A9F18181D19191DA6A6AAF0F0F4E8E8ECE8E8ECE8
              E8ECE8E8ECE8E8ECE8E8ECE8E8ECE8E8ECE8E8ECE8E8ECE8E8ECE8E8ECE8E8EC
              E8E8ECE8E8ECE8E8ECE8E8ECE8E8ECE8E8ECE8E8ECE8E8ECE8E8ECE8E8ECE8E8
              ECE8E8ECE8E8ECE8E8ECE8E8ECE5E5EAE1E1E5FCFCFF9D9D9E19191A151516A3
              A3A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD
              FDFE9C9C9E18181B151517A1A1A4FFFFFFFCFCFFFCFCFFFCFCFFFCFCFFFCFCFF
              FCFCFFFCFCFFFCFCFFFCFCFFFCFCFFFCFCFFFFFFFFFFFFFFFDFDFFFCFCFFFCFC
              FFFCFCFFFCFCFFFCFCFFFCFCFFFCFCFFFCFCFFFCFCFFFCFCFFFCFCFFFCFCFFFC
              FCFFFCFCFFFCFCFFFCFCFEFBFBFE9B9B9F19191D1515199B9B9FFBFBFFF0F0F4
              F0F0F4F0F0F4F0F0F4F0F0F4F0F0F4F0F0F4F0F0F4F0F0F4F0F0F5FFFBFF92B6
              97A2C0A7FFF9FFFBF7FFF0F1F5F0F0F4F0F0F4F0F0F4F0F0F4F0F0F4F0F0F4F0
              F0F4F0F0F4F0F0F4F0F0F4F0F0F4F0F0F4EFEFF4F5F5F9FAFAFE9A9A9F19191D
              15151AA49FA8FCFCFFEFEFF4EFEFF4EFEFF4EFEFF4EFEFF4EFEFF4EFEFF4EFEF
              F4EFEFF4FFFBFF8CB59109830D08830D1F7E24A3BAA7FFFDFFFBF6FFF0F0F5EF
              EFF4EFEFF4EFEFF4EFEFF4EFEFF4EFEFF4EFEFF4F2F1F6F9F5FDFFFAFFFFFCFF
              F9F8FEF9F9FE9E9E9D1A1A19221D202A5C29FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBDD7BC0784065DB45CC1E6C04BAB4A0F
              8A0D20831FB2CBB1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFBED4BD5DA45C147812E6ECE5FFFFFF9A9A9F18181D241D290D591258A1
              5DFFFFFFF9F9FEF9F9FDF9F9FDF9F9FDF9F9FDF9F9FDFFFFFFDAE3DF0A800E34
              9C39D8E9DDFFFFFFEEF4F29FD1A449A64D0B830F228228ADC5B2FFFFFFFFFFFF
              FFFFFFFBF5FFA3C2A748964D0E7D120D841142A2474BA94FD8E5DDFEFBFF9A9A
              9F19191D221B26306E34148D178BB490FFFFFFFBFAFFFAFAFEFAFAFEFAFAFEFF
              FEFFF6F3FA1382172F9933BDDCC2FFFFFFFAFAFFFDFCFFFFFFFFECF5F0A0D3A5
              48A54B0B841027822C92BD96409145017804198D1E48A44B79BE7DBBDEC1DEEE
              E3FFFFFFFFFDFFF9F9FD9E9E9E1A1A1A1A171A9095904CB24C0A820AB6C7B6F9
              F4F9ECEBECEBEBECEEEDEFFAF0FA258B2629982997C997FDF3FDEBEBECEBEBEC
              EBEBECEBEBECEFEDEFF8F1F9DFE7DF9BD19B48A84823932351AC5185C686BCDE
              BDDBE6DCF5F0F5F5F0F5F0EEF0EBEBECF5F5F6FFFFFF9B9B9F19191C151518AB
              A6AEE6F8E9319B340A7D0EEFEEF2FFFFFFFDFDFFFFFFFF41984421912380C083
              FFFFFFFDFDFFFCFCFFFCFCFFFCFCFFFCFCFFFCFCFFFCFCFFFFFEFFFFFFFFE9F4
              EDCFE7D3EDF5F0FFFFFFFFFFFFFFFEFFFDFDFFFCFCFFFCFCFFFCFCFFFBFBFEFA
              FAFE9B9B9F19191D141418A0A0A4FFFFFFB1D9B527952A218426FFFCFFFFFFFF
              67A86C178B1B64B369FFFFFFFBFAFFF9F9FDF9F9FDF9F9FDF9F9FDF9F9FDF9F9
              FDF9F9FDF9F9FDF9F9FDFDFBFFFFFCFFFCFAFFFAF9FEF9F9FDF9F9FDF9F9FDF9
              F9FDF9F9FDF9F9FDF9F9FDF9F9FD9B9B9F19191D151518A1A1A5FFFFFFFFFFFF
              88C78C1C8E1F519A55A3C8A70D851251AB55FFFDFFFFFCFFFBFBFFFBFBFFFBFB
              FFFBFBFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBFFFFFFFFFFFFFFFBFBFFFB
              FBFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBFFFAFAFEFAFAFD9E9E9E1A1A19
              1616169B9B9AFCFCFCF1F1F2FFF9FF60B3601D901C148D1442A441E9EBE8F7F4
              F7F0F1F0F1F1F0F1F1F0F1F1F0F1F1F0F1F1F0F1F1F0F1F1F0F1F1F0F2F1F1FF
              FFFAC6C6D5BEBDCEFFFFF9F1F1F0F1F1F0F1F1F0F1F1F0F1F1F0F1F1F0F0F0F0
              F8F8F8FFFFFF9A9A9F18181D1515199E9FA3FFFFFFF6F6FAF9F7FDF8F7FD58AD
              5C48A54DD3E6D7FFFAFFF5F6FAF6F6FAF6F6FAF6F6FAF6F6FAF6F6FAF6F6FAF6
              F6FAF6F6FAF9F9FCFFFFFF7B7BB9000093000091AAABCBFFFFFFF6F6FAF6F6FA
              F6F6FAF6F6FAF6F6FAF6F6FAF7F7FCF9F9FD9B9B9F18181D141519A0A0A4FFFF
              FFF9F9FEF9F9FEFDFBFFFEFCFFF0F5F5FFFDFFF9F9FEF9F9FEF9F9FEF9F9FEF9
              F9FEF9F9FEF9F9FEF9F9FEF9F9FEFFFFFFFFFFFE4141A40E0E9D7576CC4E4DBA
              000090DBDBE5FFFFFFF9F9FEF9F9FEF9F9FEF9F9FEF9F9FEF9F9FDF9F9FD9E9E
              9E1A1A19151515A3A3A3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E4EB171895
              2323A57676CAFFFFFFC9C9EB2A29AA111291FEFEF7FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF9B9B9F19191D141518A1A1A5FFFFFFFBFBFFFBFBFFFB
              FBFFFCFBFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBFFFDFDFF
              FFFFFFA3A3CC0000923737B09F9FDCFFFFFFFFFFFFFFFFFFA5A6E0201FA72424
              95FFFFFFFEFEFFFBFBFFFBFBFFFBFBFFFAFAFEFAFAFD9B9B9F19191D16161A95
              9599F1F1F5E7E7EBE7E7EBE7E7EBE7E7EBE7E7EBE7E7EBE7E7EBE7E7EBE7E7EB
              E7E7EBE7E7EBECEDEEFDFDF35A5AA90808994A4AB9B6B7DBF8F8F1E8E8EBE6E7
              EBE8E7EBFBFBF27474C81818A349499FFEFEF5E7E7EBE7E7EBE6E6EAF1F1F5FA
              FAFE9B9B9F19191C141418AAAAAAFFFFFFFDFDFFFCFCFFFCFCFFFCFCFFFCFCFF
              FCFCFFFCFCFFFCFCFFFEFEFFFFFFFFFFFFFFF9F8F82E309F1818A26060C3EAEA
              F6FFFFFFFCFCFFFCFCFFFCFCFFFCFCFFFEFEFFFFFFFF5D5DC20B0C9B7E7FB9FF
              FFFFFCFCFFFCFCFFFBFBFEFAFAFE9E9E9E19191A1E1F1B4E4E74EDECF3FFFFFF
              FFFFFFFFFFFFFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFC2C1D85454A90506
              922B2BAA8889D2FFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFF
              FFFFFFFFFF4747B9060595ADAECDFFFFFFFEFEFEFEFEFEFEFEFE9A9A9F19191D
              24242015166D0102973D3D9EB3B3D0FFFFFFFFFFFFFFFFFFFFFFFFD5D6E36C6B
              B41415940505983E3EB2706FC9B6B6E5FFFFFFFCFCFFFAFAFEFAFAFEFAFAFEFA
              FAFEFAFAFEFAFAFEFAFAFEFAFAFEFFFFFFE4E5F63535B2040491D6D6E3FFFFFF
              F9F9FEF9F9FD9A9A9F18181D1A1A1B8080978A8BD83C3DB309099A13128E8F90
              C39594C72223960101952D2DAB6160C0A4A3D9D3D3EBFEFEFBFBFBFAF2F2F6F1
              F1F6F1F1F6F1F1F6F1F1F6F1F1F6F1F1F6F1F1F6F1F1F6F1F1F6F1F1F6FFFFFA
              BDBEE32928AB0F1092F1F1F0FCFBFDF9F9FE9E9E9D1A1A19161615A4A49FFFFF
              FFE8E8F4ADACE15758BD1B1BA11E1EA25455BB9A99D8D6D8EFFAFAF7FFFFFAFC
              FCF7F7F7F5F6F6F5F6F6F5F6F6F5F6F6F5F6F6F5F6F6F5F6F6F5F6F6F5F6F6F5
              F6F6F5F6F6F5F6F6F5F6F6F5FFFFFBA1A1DB2121A620218FFFFFFDFFFFFF9A9A
              9F19191D141519A0A0A4FFFFFFFEFEFFFFFFFFFBFBFED0CFEFCACBEDF5F6FCFF
              FFFFFFFFFFFBFBFFFAFAFEFAFAFEFAFAFEFAFAFEFAFAFEFAFAFEFAFAFEFAFAFE
              FAFAFEFAFAFEFAFAFEFAFAFEFAFAFEFAFAFEFAFAFEFAFAFEFAFAFEFFFFFF7E7E
              D01B1AA58081BFFFFFFF9B9B9F19191D141519A0A0A4FFFFFFF9F9FDF9F9FDFB
              FBFEFFFFFFFFFFFFFCFCFEF9F9FDF9F9FDF9F9FDF9F9FDF9F9FDF9F9FDF9F9FD
              F9F9FDF9F9FDF9F9FDF9F9FDF9F9FDF9F9FDF9F9FDF9F9FDF9F9FDF9F9FDF9F9
              FDF9F9FDF9F9FDFBFBFEFFFFFFB2B2E2ECECF7FCFCFF9C9C9E18181B151517A2
              A2A5FFFFFFFDFDFFFDFDFFFDFDFFFDFDFFFDFDFFFDFDFFFDFDFFFDFDFFFDFDFF
              FDFDFFFDFDFFFDFDFFFDFDFFFDFDFFFDFDFFFDFDFFFDFDFFFDFDFFFDFDFFFDFD
              FFFDFDFFFDFDFFFDFDFFFDFDFFFDFDFFFDFDFFFDFDFFFEFEFFFFFFFFFFFFFFFB
              FBFE9D9D9E19191A161617979798F5F5F5EAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
              EAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
              EAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
              EAEAEAEAEAE9E9E9F4F4F5FEFEFF9A9A9F19191D141519A0A0A5FFFFFFFAFAFE
              FAFAFEFAFAFEFAFAFEFAFAFEFAFAFEFAFAFEFAFAFEFAFAFEFAFAFEFAFAFEFAFA
              FEFAFAFEFAFAFEFAFAFEFAFAFEFAFAFEFAFAFEFAFAFEFAFAFEFAFAFEFAFAFEFA
              FAFEFAFAFEFAFAFEFAFAFEFAFAFEFAFAFEFAFAFEFAFAFEF9F9FD9A9A9F19191D
              141419A0A0A4FFFFFFF9F9FDF9F9FDF9F9FDF9F9FDF9F9FDF9F9FDF9F9FDF9F9
              FDF9F9FDF9F9FDF9F9FDF9F9FDF9F9FDF9F9FDF9F9FDF9F9FDF9F9FDF9F9FDF9
              F9FDF9F9FDF9F9FDF9F9FDF9F9FDF9F9FDF9F9FDF9F9FDF9F9FDF9F9FDF9F9FD
              F9F9FDF9F9FD9E9E9D161615121211A4A4A3FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF92929725262A20202596969AFFFF
              FFF9F9FDF9F9FDF9F9FDF9F9FDF9F9FDF9F9FDF9F9FDF9F9FDF9F9FDF9F9FDF9
              F9FDF9F9FDF9F9FDF9F9FDF9F9FDF9F9FDF9F9FDF9F9FDF9F9FDF9F9FDF9F9FD
              F9F9FDF9F9FDF9F9FDF9F9FDF9F9FDF9F9FDF9F9FDF9F9FDF9F9FDF9F9FDE8E8
              ECE4E4E8E1E1E5E7E7EBFDFDFFF9F9FDF9F9FDF9F9FDF9F9FDF9F9FDF9F9FDF9
              F9FDF9F9FDF9F9FDF9F9FDF9F9FDF9F9FDF9F9FDF9F9FDF9F9FDF9F9FDF9F9FD
              F9F9FDF9F9FDF9F9FDF9F9FDF9F9FDF9F9FDF9F9FDF9F9FDF9F9FDF9F9FDF9F9
              FDF9F9FDF9F9FDF9F9FD}
            Layout = blGlyphTop
            OnClick = SpeedButton11Click
          end
          object SpeedButton12: TSpeedButton
            Left = 73
            Top = 0
            Width = 65
            Height = 57
            Caption = 'Barra'
            Flat = True
            Glyph.Data = {
              660F0000424D660F000000000000360000002800000024000000240000000100
              180000000000300F0000C40E0000C40E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFEFDFEFDFEFEFEFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFEF9FCFAF0F7F2
              E2F0E6DDEDE1E1F2E7F4F9F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFEFDF7FBF9
              EEF6F0DFEFE3CDE6D5BDDEC7ADD6BAA4CCB2AAD7B9CAE8D4F5FAF6FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFEEDF6F0DCEDE1CAE5D3BADEC6ABD5B997C5A66DA880378B5121833F2993
              4D93C4A3EBF7EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FEFEFFF9FCFEF3FAFDF4FBFFF8FCFCC3E3CEA8D4B78FC0A061A3772F884A0C79
              2C017924067B27228A3F08903600852BA1C9AFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFCFDFEF8FCFEEEF8FEE0F3FCD0EEFCC4EAFCC9ECFEC9E6EE5DA0752684
              44077B2A047C28097F2D0D81300F81320D8030258D440F913B00882B69BA84FF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFDFEFEF6FBFEECF8FDDEF3FDCEEEFDBFEAFCAEE1F898CDE867B2
              DB64B5E480C1C300791A0B83310F84341084341084341084341084340D833226
              8F460F913B00882C72BE8AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFE5F6FECBEEFEBBE8FCABDEF58DC8
              E662B0DB339ED9149AE30F9DE90CA5F21B9CC210842611873711873711873711
              87371187371187370F85352791490F913B00882C72BE8AFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFCFCFEF6F8FEEDF0FDECEFFCFBF8FCC5E6
              F68CC4E157AEDA2FA0DB169FE612A2EC18A4EB1BA5EB1DA5EA18A8F1049CCA12
              872911893A11893A11893A11893A11893A11893A0F883827934B0F913A00882C
              72BE8AFFFFFFFFFFFFFFFFFFFFFFFFFEFEFFFBFCFEF4F6FEE9EEFDDBE3FDCCD8
              FEBCCCFBB6C2EBCFD0EC2EA2DE11A4EB16A7ED1BA9ED1EA9EC1FA9EC1FA9EC1F
              A9EC20A9EC18A9F1079DCA148A2C138C3C138C3C138C3C138C3C138C3C138C3C
              108B3B28974E0F903A00882C72BE8AFFFFFFFFFFFFFDFDFEF3F6FEE7EDFEDAE4
              FECBD9FFBBCDFBA0B6EA768ED3405BCE304CC67B81C220B1F11FADEE21ACEE21
              ACEE21ACEE21ACEE21ACEE21ACEE22ADEE19A9F1079DCB148D2F138E3F138E3F
              138E3F138E3F138E3F138E3F118D3E2899510F903A00882C72BE8AFFFFFFFFFF
              FFF0F5FFCBDCFFB5CAF998AFE46A84D33B5ACE1A3FD71038E7143BE92E4ED816
              2DB624B2F024B1F024B0EF24B0EF24B0EF24B0EF24B0EF24B0EF25B1F019A9F1
              089ECB1690331492421492421492421492421492421492421291412A9C530F90
              3A00882C72BE8AFFFFFFFFFFFFC9D2E8627FD13559D21B45E01743EA1C48EC1F
              4BEB214CEA1F4BEC3255D81D33B726B5F226B5F126B3F126B3F126B3F126B3F1
              26B3F126B3F128B5F118AAF1079ECB1692351593441593441593441593441593
              441593441393432A9D550E8F3900882C72BE8AFFFFFFFFFFFF6283EB1247EF21
              53EF2455EE2556ED2556ED2556ED2556ED2356EF3559DA1C33B628B9F429B8F3
              29B7F229B7F229B7F229B7F229B7F229B7F22AB9F319A9F1099ECC1896381797
              471797471797471797471797471797471596462BA0580E903A00882C72BE8AFF
              FFFFFFFFFF7295F62058F02A5FF12A5FF12A5FF12A5FF12A5FF12A5FF1285FF3
              375EDB1C32B62BBDF62BBCF52ABBF42ABBF42ABBF42ABBF42ABBF42ABBF42DBD
              F519AAF1089FCC19983A1799491799491799491799491799491799491598482C
              A25A0E903A00882C72BE8AFFFFFFFFFFFF739AF82361F42D68F42D68F42D68F4
              2D68F42D68F42D68F42C69F73962DD1B31B62DC1F72DBFF62DBEF62DBEF62DBE
              F62DBEF62DBEF62DBEF62FC0F71AAAF2089FCD1A9B3E189B4D189B4D189B4D18
              9B4D189B4D189B4D169B4B2DA45C0E903A00882C72BE8AFFFFFFFFFFFF76A0F9
              2769F63170F73170F73170F73170F73170F73170F73072FA3B66DF1B30B530C4
              F82FC3F82FC2F72FC2F72FC2F72FC2F72FC2F72FC2F731C5F81AAAF1089FCD1B
              9F411A9F501A9F501A9F501A9F501A9F501A9F50189E4E2FA7600E903900882C
              72BE8AFFFFFFFFFFFF78A5FB2B71F93477FA3477FA3477FA3477FA3477FA3477
              FA3279FD3A69E0192EB532C7FA31C6F931C5F931C5F931C5F931C5F931C5F931
              C5F934C8FA1AAAF108A0CE1CA0441AA1521AA1521AA1521AA1521AA1521AA152
              18A0512FA9620E8F3900882C72BE8AFFFFFFFFFFFF7BA9FD2D77FC377DFC377D
              FC367DFC357DFD347EFE3882FF4588FE4F75E42034B531CAFA33CAFB33C8FA33
              C8FA33C8FA33C8FA33C8FA33C8FA36CCFC19AAF109A0CF1DA4471BA4551BA455
              1BA4551BA4551BA4551BA45519A35430AC640E8F3900882C72BE8AFFFFFFFFFF
              FF7DADFE2F7CFE3782FF3783FF3A87FF4B8EFF4D7FF34B6EE8405EE13B5BE347
              5BDD35CDFB35CCFB35CBFB35CBFB35CBFB35CBFB35CBFB35CBFB38CFFD1AABF2
              09A1CF1EA54A1CA5571CA5571CA5571CA5571CA5571CA5571AA55630AD670E8F
              3900882C72BE8AFFFFFFFFFFFF76AAFF3484FF4B8CFD4E7FF24C6DE73D59DF3B
              5AE03859E13154E1284CDF5064E437D0FD35CEFC36CDFC36CDFC36CDFC36CDFC
              36CDFC36CDFC39D1FE1AABF209A0CF1EA84C1CA75A1CA75A1CA75A1CA75A1CA7
              5A1CA75A1BA75931AF690E8F3800882C72BE8AFFFFFFFFFFFFBCD0FB375BE331
              50DE3A59E03758E13053E02B4FE04C6BE59EAEF0EBEEFBFFFFFF35D1FD36CFFD
              38D0FD38D0FD38D0FD38D0FD38D0FD38D0FD3BD4FF1AACF208A1D020AB4F1DAA
              5D1DAA5D1DAA5D1DAA5D1DAA5D1DAA5D1CA95B32B26C0E8E3800882C72BE8AFF
              FFFFFFFFFFFFFFFFFFFFFF95A7EF2E52E05A76E7A8B6F2F3F5FDFFFFFFFFFFFF
              FFFFFFFFFFFF35D1FE37D1FE39D2FE39D2FE39D2FE39D2FE38D2FE37D1FE3AD6
              FF16AAF108A1CF21AC511FAB5E1FAB5E1FAB5E1FAB5E1FAB5E1FAB5E1DAB5D34
              B36D0D8E3800882C72BE8AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF35D2FF38D2FF3AD3FF39D3FF38D2
              FF37D3FF3AD4FF49D6FF52D4FF42BCFA10A4D020AE541FAE611FAE611FAE611F
              AE611FAE611FAE611EAE6034B56F0D8E3800882C72BE8AFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF35D2
              FF35D2FF37D3FF3AD5FF4DD6FF51D1FF51C9FF45C1FF41C1FF40C3FF44C1E11C
              AE5420B06320B06320B06320B06320B06320B0631EB06234B8710D8E3700882C
              72BE8AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF2FD1FF49D4FF52D0FF51C8FF42C0FF41C1FF3DC0FF36
              BFFF30BDFF4FC7FF7ED5E117AE5721B26521B26521B26521B26521B26521B265
              1FB16435B8730E8E3700882C72BE8AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB4E8FF36BDFF33BCFF3B
              C0FF36BEFF2ABBFF52C7FF9EE0FFE9F8FFFFFFFFDDF3E10EAC5922B36722B367
              22B36722B36722B36722B36720B36636BA750E8D3700882C72BE8AFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFA4E2FF5BCAFFAAE4FFF8FCFFFFFFFFFFFFFFFFFFFFFFFFFF
              D3F0E10EAE5A23B56823B56823B56823B56823B56823B56821B46736BC770E8D
              3700882C72BE8AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFD3F0E00EAF5C23B66A23B66A23B66A23B66A23B6
              6A23B66A21B66936BD770E8D3700882C72BE8BFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD3F0E00FB05D24B7
              6B24B76B24B76B24B76B24B76B24B76B22B66A37BE780E8D3700882C73BE8BFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFD4F0E20FB05D24B76B24B76B24B76B24B76B23B66A21B6691DB56837
              BE79098A3200872A73BE8BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD4F0E20FB05D23B76B23B66A20B6691E
              B56822B76C3DBF7B4BC07D55C07B4EB470058A326DBB86FFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD3F0E10C
              AF5B1EB56826B86E3FC07D4DC07D56BF7A48B86C44B7693FB56738B4623BB364
              8FCCA4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFD1F0E01FB3644CBF7A55BE7846B76A43B6693EB56638B361
              2EAF5A56BE79A0DAB4E8F6EDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6E8D04FBB7231B05C
              36B26035B25F5FC180ACDFBDF7FCF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFC4E8D1B8E4C6FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF}
            Layout = blGlyphTop
            OnClick = SpeedButton12Click
          end
          object SpeedButton13: TSpeedButton
            Left = 8
            Top = 0
            Width = 65
            Height = 57
            Caption = 'Pizza'
            Flat = True
            Glyph.Data = {
              660F0000424D660F000000000000360000002800000024000000240000000100
              180000000000300F0000C40E0000C40E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFDFDFDFAFDFBF6FCF9F3FDFA
              F1FDF8F4FDFAF8FEFCFCFEFDFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCF3EACDF0CFC2F0D3A5EBC393E9B7
              8DE8B285EAB479EBB272EDB66CEEB975F6C380F7C98AF9D293FEDCAFFEE7CAFC
              EDDBFDF2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFFFEA2DBF59EC3FF36B796
              2CCE3725CB6713CD5F0DD1620CD3640AD86D07DD7805E18104E68806EF9509F1
              9C0BF4A70DFBB319FDBB29F7BC39F5BD8BF4C995F3D7FFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2FDFE87DCFA
              38BDF40AA3E70785FF00A58700CA0700C25000C95200CF6000D26700D96F00DB
              7600E18200E68700ED9200EF9C00F5A700FCB100FCB600F8B300F1AA05EEA204
              E39848E7AEA8F4DAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFEC9F3FA1BC7F200B2F500ACF100A8E5008EFF1DA9A600D00000C66500CF
              5A00D36900D87500E28400E58F00F0A200F3AF00FBB000FAB300FBB600FFBD00
              FDBA00F9B100F1A800EAAD00E79D00E09700D68528DC9AD6FAEFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFCFFFF6BE5FD00C3F700C6F500C0F700B4F100A6ED009D
              F5008EEB02D90500C75100CD5E00D05E00D05F00D05B00D45800CD5300D45F00
              DB7500E78800F3A000F6B200FCBD00FFC500F6C000F0AF00E8A600E39F00DE9B
              00D28400C3605DDDAAF3FDFAFFFFFFFFFFFFFFFFFF8CF4FF00DAFE00D4FA00C9
              F400BBF700B3F100A6EF009DE7008DFF00B1A400AC0000AC0500AB0C00AB0B00
              AF1300B31800B82400BB1F00BA2000B61A00B81C00BE2700C53400CB4800D766
              00E38600E7A200E3A200DE9E00DA9B00D38F00C2693CD091E1F7EEFFFFFFEDFD
              FF00E7FF00DEFE00D4FA00C9F400BCF700B3F100A6EF009EEA008EF500B0FE00
              AA6800B80C00BC2900C03800C53F00C94400CC4900CF5000D15500D35700D359
              00D15600CE4E00CB4700CA4200C33200CE4B00D46700D77D00D78B00D49200CD
              8B00C05E49B0ABFFFFFF9DFBFF00E6FF00E1FE00D3FA00C9F400BCF700B2F100
              A6EE009EEA008AED00B1FF00A8E900B56300C12200C33500C74100CA4500CC4B
              00CF5100D25600D45A00D55B00D65E00D75F00D75F00D65E00D35D00CF4C00C8
              3A00CB4400CE5800CD7100CA8B00D876005F9EFFF2FF77FAFF00E8FF00E1FE00
              D3FA00C9F400BCF700B1F100A4EB009BEA0091EF00AEFF00A6FF00AAD400BE5A
              00C92F00CB4500CD4C00D15200D35B00D75F00D76300D96500DB6700DB6700DA
              6600D86500D86100D76000D25B00CC4F00C54700C64700CE5300FF55003FA3F0
              D3FF74FBFF00E9FF00E0FE00D2F900C7F401BEF501B2F300A9F200A7F400B2F9
              00B0FF00A2FF00A4FF00B0BF00C94C00D03F00D05400D45A00D76300DB6800DC
              6B00DD6D00E07000DF7000DE6F00DA7000D56B00D66600D65F00E75100F73C00
              F03000D82F00E2380014A5D1BBFF6AF9FF00E8FF00DFFD01D6F714CDF50FBCF8
              01B4FB00B6FC00BAFD00C3FF00C1FF00ACFF00A2FF00A5FF00B6AD00D24B00D6
              5500D86000DC6900DE6F00E27300E37600DF7B00DD7E00E37B00F57000FC6900
              FF5900FF5200DA5B00A37000858400559600399A0000C1A8A2FF5FF8FF00E9FF
              03E3FD28D8FA22BEFB03B5FE00BBFF00BEFF00C2FF00C5FF00CBFF00C4FF00AA
              FF00A4FF00A0FF00C19600DD4800D86400DA7300DE7700DC8100E48700FA8000
              FF7000FF6D00FD7700E07F00649A003CAF0027C00008C90004CF0000CF0000C4
              0000C98382FF55F9FF00F0FF2EE7FF2EB5FF00B2FF00BCFF00BEFF00C2FF00C9
              FF00C6FF00CCFF00D1FF00BDFF009DFD00A2FF009BFF00DC6000E34F00F57200
              FF6D00FF5F00FF5A00FB7A007BA90024C10000CB0000D40000D10000CB0000C8
              0000C50000C40000C70000BE0000C67576FF40FDFF01E3FF2AA6FF00B1FF00C4
              FF00C4FF00C6FF00C9FF00C9FF00D2FF00D0FF00D7FF00E6FF00CAFF00A2FF00
              A1FF008CFF00F95E00DB7A00A49C0007CF0000F20000EB0000D40000C90000C6
              0000C10000C20000C30000C50000C50000C40000C30000B70000C16869FF3BFD
              FF00B1FF00B5FF00C5FF00C3FF00C6FF00C8FF00CCFF00D0FF00D2FF00D6FF00
              D8FF00DDFF00E2FF00BEFF009EFF00D5FF175BEA0000CF0000E60000CC0000BF
              0000BF0000C10000C40000C30000C40000C40000C10000C00000BE0000C20000
              C60001CD0000E46B6BFF30F5FF00AAFF00CBFF00C9FF00CCFF00CEFF00D1FF00
              D5FF00D4FF00DAFF00DAFF00DDFF00DEFF00EAFF00E7FF00AEFF00DFFF0A42E9
              0000B20000C10000C10000C30000C20000C10000C20001C20100C70001CC0103
              CF0204DB0306E00207EC0007FE0008FF0000FF6868FF25DAFF00C3FF00DEFF00
              DFFF00E2FF00E2FF00E4FF00E7FF00E8FF00EAFF00ECFF00EEFF00EFFF00F1FF
              00FFFF00E7FF00F7FF003BD70000B20000C10203BF0304C4080AC90C0CD00C0D
              D9090FDF0D08E9000AF3070EF7070CFF080CFF060BFF0107FF0007FF0000FF5F
              61FF69ABFF0059FF067DFF037FFF037FFF0582FF078CFF0B97FF0BA1FF14B1FF
              11BBFF11C5FF11CEFF11D6FF12DFFF14E5FF12FFFF0B3DD71404C02527D82C2E
              DC2B2DE42B2EF0282AF62023FB141CFD1610FF000DFF0911FF080DFF0809FF06
              08FF0105FF0008FF0000FF9192FFDCCEFF0000FF0709FF080AFF0708FF0A07FF
              100FFF1B1EFF1F28FF333FFF3649FF4057FF4864FF4F70FF567AFF6083FF5EA9
              FF5161F0564AEC5558FA5154FC4649FE393CFF2E30FF2125FF121BFF170FFF00
              0CFF0810FF080CFF0809FF0709FF0107FF0004FF0000FFE5E4FFFFFFFF2F2FFF
              0000FF0709FF080BFF0808FF0F0CFF1917FF241BFF352EFF3C33FF4A3EFF5348
              FF5E50FF6958FF705FFF7261FF6D6AFF6163FF5458FF4B4CFF4041FF3337FF2B
              2CFF2022FF1119FF130EFF000DFF080EFF080BFF0809FF050AFF0006FF0000FF
              3A39FFFFFFFFFFFFFFD0D0FF1D1DFF0000FF0811FF0B0FFF0C12FF161DFF1F22
              FF2F32FF3339FF4045FF4A4CFF5054FF585CFF5E5FFF6160FF5B5BFF5559FF4C
              50FF4445FF393CFF3033FF292AFF1F20FF0E17FF0D0AFF0010FF080DFF0809FF
              080BFF050AFF0000FF2D2EFFDBDBFFFFFFFFFFFFFFFFFFFFCBCBFF1615FF0000
              FF0204FF0E11FF161AFF1A1EFF2E2EFF3235FF3A3DFF4548FF4C4FFF5253FF55
              57FF565AFF5758FF4C51FF4B48FF4145FF3838FF2E31FF2426FF1A1DFF1213FF
              080AFF0311FF090DFF060BFF0002FF0000FF2020FFD6D6FFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF8C8FFF0404FF0000FF0005FF121AFF2528FF2C2CFF30
              35FF393CFF3F42FF4146FF4649FF464AFF4145FF4544FF3C3FFF3336FF2D30FF
              2629FF1E20FF1117FF0C0EFF020DFF030BFF0000FF0000FF0807FF9698FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7EBFF7779FF23
              22FF0102FF0F11FF181DFF2325FF2A2BFF3134FF363AFF3A3DFF3E3DFF3A3CFF
              3139FF3031FF2A2CFF2224FF1A1CFF0D14FF0508FF0000FF0103FF0403FF2828
              FF7F80FFF1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFE7E8FF9492FF6E71FF3F44FF3A3BFF3536FF2D2EFF
              292BFF2A2EFF2A2FFF282AFF2629FF2223FF1E22FF191CFF171CFF1F23FF2A2A
              FF3538FF7C7BFF9594FFEBF0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              D6D7FFC7C9FFB8B9FF9E9FFF8F92FF8C8BFF8585FF7D81FF7C7EFF8181FF8486
              FF8B8DFF9799FFB3B4FFC9C9FFD9DAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFFF9F9FFF6F6
              FFF3F3FFF2F3FFF5F5FFF9F9FFFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF}
            Layout = blGlyphTop
            OnClick = SpeedButton13Click
          end
          object SpeedButton14: TSpeedButton
            Left = 858
            Top = 0
            Width = 97
            Height = 57
            Caption = 'Imprimir'
            Flat = True
            Glyph.Data = {
              660F0000424D660F000000000000360000002800000024000000240000000100
              180000000000300F0000C40E0000C40E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFDFFFFE8E9E9EAECECEAECECEAECECEAECECEAEC
              ECEAECECEAECECEBECECEBECECEBECECEBEDEDEBEDEDECEDEDECEDEDECEDEDEC
              EDEDECEEEEECEEEEEDEEEEEDEEEEEDEEEEF2F3F3FFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAE9C9C9987879A88
              889B88889B88889A88889886869685859483839282829080808F7F7F8C7D7D8A
              7C7C887B7B8779798478788277778175757F73737D72727B70707D7373594E4E
              E8E9E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFB8A5A5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFF6E6262FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3EDEDD1C3C3FFFFFFF6F3F3F5F1F1F4
              F1F1F3EEEEF2EDEDF0EBEBEFE9E9EEE7E7EDE6E6EBE5E5EAE3E3E9E1E1E7DFDF
              E6DEDEE5DCDCE4DADAE3D9D9DFD4D4F5F0F0CDC8C8A9A4A4FFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0C8C8C8ADB0B097
              8282FFFFFFF8F5F5F7F4F4F6F3F3F5F2F2F4F0F0F3EEEEF1EDEDF1ECECEFEAEA
              EEE9E9EDE7E7ECE5E5EBE4E4EAE2E2E9E1E1E7DFDFE7DEDEE2D8D8FFFFFF776A
              6A949797BDBDBDDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF75
              7575757171938E8EAAA3A3A99696EFEAEAFEFDFDF8F6F6F7F5F5F6F3F3F5F2F2
              F4F0F0F2EEEEF2EDEDF0EBEBF0EAEAEEE8E8EDE7E7ECE5E5EBE4E4EAE2E2E8E1
              E1E7DEDEF1EAEAF0EFEF928383AEA6A6938D8D726F6F4F4F4FC4C4C4FFFFFFFF
              FFFFFFFFFFFFFFFF8D8E8ECFC8C8FAF2F2F3EBEBF2EBEBEDE5E5BBA8A8FFFFFF
              FAF8F8F9F7F7F8F5F5F7F4F4F6F3F3F5F0F0F4EFEFF2EEEEF2ECECF0EBEBEFE9
              E9EEE8E8EDE6E6ECE5E5EBE3E3E7DFDFFFFFFFA89C9CE9E1E1F2EBEBF3EBEBFC
              F3F3D8D2D2444545FFFFFFFFFFFFFFFFFFFFFFFF656565FAF0F0EAE2E2EAE2E2
              E9E2E2F8F7F7B39E9EFFFFFFF8F6F6F6F5F5F5F3F3F4F2F2F3F0F0F1EEEEF0ED
              EDEFEBEBEEEAEAEDE8E8ECE7E7EBE4E4EAE4E4E9E1E1E6DFDFE8E1E1FFFFFF9C
              8B8BFAF9F9ECE5E5EAE2E2EAE2E2FBF2F25C5B5BC8C9C9FFFFFFFFFFFFDDDDDD
              888383EBE0E0E2D7D7E4D9D9D5CDCD565757494B4BB2B2B2D1D0D0CCCBCBCBCB
              CBCBCACACBC9C9CAC9C9C9C8C8C9C8C8C9C7C7C9C7C7C8C6C6C7C5C5C7C5C5C6
              C4C4C6C3C3CDCBCBB5B5B54A4B4B565757D6CDCDE4D9D9E2D7D7EBE0E08F8A8A
              919292FFFFFFFFFFFFAEAFAFABA2A2DFD2D2DACDCDDBCECEE1D4D45656564747
              475F5F5FA1A1A19A9A9A9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B
              9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9BA2A2A2606060464747565656E1D4D4
              DBCECEDACDCDDFD2D2B0A7A76A6B6BFFFFFFFFFFFF8D8F8FC0B3B3D7C8C8D5C6
              C6D5C6C6E5D5D5404242282A2A282A2A21232322232322232322232322242422
              2424222424222424222424222424222424222424222323222323222323212323
              282A2A282A2A404242E5D5D5D5C6C6D5C6C6D8C8C8C4B7B7535454FFFFFFFFFF
              FF727474CCBBBBD0BFBFCEBEBECEBEBED2C1C1BCAEAEBCADADBCADADBCADADBB
              ABABBAABABBAAAAABAAAAABAAAAABAAAAABAAAAABAAAAABAAAAABAAAAABAAAAA
              BAAAAABAABABBBABABBCADADBCADADBCADADBCAEAED2C1C1CEBEBECEBEBED0BF
              BFD0BEBE474949FDFDFDFFFFFF656767CFBABAC9B6B6C9B6B6C8B6B6C7B4B4C8
              B4B4C9B4B4D0BEBED9CACAE3D8D8EAE1E1EAE4E4E9E3E3E6E0E0E4DEDEE4DEDE
              E4DEDEE4DEDEE6E0E0E9E3E3EAE4E4EAE1E1E3D8D8D9CACAD1BEBEC9B4B4C8B4
              B4C7B4B4C8B6B6C9B6B6C9B6B6D2BEBE454646F5F5F5FFFFFF5F6060CCB6B6C3
              AEAEC0AAAAC1ABABD0C0C0E2D9D9E2E0E0B8A5A5AF9A9AA28888977B7B917373
              8E70708E6F6F8E6F6F8E6F6F8E6F6F8E6F6F8E70708E7070917373977B7BA288
              88AF9A9AB8A6A6E4E2E2E2D9D9D0C0C0C1ABABC0AAAAC3AEAED0B9B9454646F0
              F0F0FFFFFF5E5E5EC8AFAFCDBDBDE5DDDDF4F2F2F4F2F2F3F0F0D5D7D7AE9898
              997C7C9E82829F8484A08484A08585A08585A08585A08585A08585A08585A085
              85A08585A084849F84849E82829D8181917474DDDFDFF3F0F0F4F2F2F4F3F3E5
              DEDECEBDBDCBB3B3454545EFEFEFFFFFFF595959FBF6F6FBFBFBF6F4F4EAE4E4
              EAE4E4EBE5E5E9E8E8B1A5A5CDBDBDAF9696B19999B29A9AB29A9AB29A9AB29A
              9AB29A9AB29A9AB29A9AB29A9AB29A9AB29A9AB29A9AB29A9AB49C9C988585EF
              EFEFEBE5E5EAE5E5EBE5E5ECE7E7F1EEEEF8F2F2434343EFEFEFFFFFFF5B5B5B
              FFFCFCF4F0F0F4F0F0F3F0F0E8E2E2E5DDDDF5F2F2A29999E2D5D5DBCFCFC8B5
              B5C1ACACC3AEAEC3AFAFC3AFAFC3AFAFC3AFAFC3AFAFC3AFAFC3AFAFC3AFAFC3
              AFAFC3AFAFC7B1B1988D8DF8F4F4E7DFDFE7E0E0E7E0E0E7E0E0E7E0E0F7EFEF
              404040F5F5F5FFFFFF646565F1EDEDF3EFEFF1EDEDF2EEEEF3F0F0ECE6E6F3ED
              ED9C9898E9DEDEE1D7D7E3DADADDD1D1D0C0C0CCBABACDBBBBCDBCBCCEBCBCCE
              BCBCCEBCBCCEBCBCCEBCBCCEBCBCCEBCBCD3C0C09A9595F4EDEDE3DBDBE7DEE0
              E8DFE2E4DCDCE5DEDEE7DFDF404141FFFFFFFFFFFF868686D0CCCCF4EFEFEFEB
              EBEFEBEBEFEBEBF0EBEBFAF6F69D9B9BECE4E4E8E1E1E7E0E0E8E1E1EAE4E4E7
              E0E0DFD6D6DACFCFD7CCCCD7CCCCD7CCCCD8CCCCD8CDCDD8CDCDD8CDCDDBCECE
              A1A0A0E8DEDEE3D8DAC0C0ACBABD9AE4D9DEE3D9D9C8C0C0545555FFFFFFFFFF
              FFB8B9B99D9A9AF7F1F1EEE8E8EEE8E8EEE8E8EEE8E8F5EEEEA6A7A7E3DDDDF2
              EFEFEFEBEBEFEBEBEEEBEBEFEBEBEFECECF0EDEDEFEBEBECE8E8EAE4E4E7E2E2
              E6E1E1E5E0E0E7E2E2D9D1D1A9A9A9E0D3D3DED3D4CAC3BA88B253D5C7C9E4D8
              D9989292848585FFFFFFFFFFFFFFFFFF4D4D4DFFFAFAEDE6E6ECE5E5ECE5E5EC
              E5E5F1EAEABFBEBEBDB8B8F0EBEBF1EEEFF4F2F3F6F5F6F8F7F8F9F8F9F9F8F9
              F9F9F9FAF9FAFAF9FAF9F8F8F8F7F7F5F4F4F3EEEEC0BBBBBBB8B8DBCBCBD8CA
              CADBCDCFE3D0DADED2D3F4E7E74A4949D8D8D8FFFFFFFFFFFFFFFFFF8B8B8B92
              8E8EFFF6F6F5EDEDF0E8E8EDE5E5EDE5E5E0DFDF544747EAE3E2D7C9C5D2C4BF
              D1C2BDCDBDB9CEBDB8CBBBB7CABAB6C8B7B5C6B4B2C5B4B2C4B2B1C3B1B1EBE3
              E3544848E0DFDFEEE6E6EEE6E6F1EAEAF7EFEFFFF9F9979494696969FFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFF8D8E8E4A4A4A848080B8B3B3DDD5D5F2E8E8FFFDFD
              574C4CFFFFFFFEFAF6FDF8F2FBF6EFFAF4ECF9F2EAF7EEE7F3EBE5F0E8E2EDE5
              E0EBE2DDE6DEDAE4DBD8FFFFFF564B4BFFFCFCF4EAEADED6D6BBB4B487838349
              4848808181FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCCCCC
              9595956C6D6D5252526C6D6D8A7E7EFFFFFFFBF8F4FAF5F1F9F3EEF7F1EBF7F0
              E9F5EEE5F3EBE3F0E8E1EDE5DFEAE2DDE7DED9E5DAD8FFFFFF8A7E7E7071714B
              4B4B6768688F9090C5C5C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9495955F5151FFFFFFFCFA
              F7FBF7F3F9F5F1F8F3EEF8F2EBF6F0E9F6EEE5F3EAE3F0E8E2EDE5DFEAE1DCE8
              DEDAFFFFFF5A4D4D7E8080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFA99B9BFFFFFFFDFCFAFCF9F7FBF7F4F9F5F1F9F3EEF7F1ECF7F0E9F6
              EEE6F3EBE3F0E8E2EDE4DFEAE1DDFFFFFF6E6161FFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA69797FFFFFFFEFDFDFDFBF9FBF9F6FA
              F7F3FAF5F1F8F3EEF8F2EBF6F0E9F6EEE6F3EAE3F0E8E1EDE5DFFFFFFF6F6060
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA89999FF
              FFFFFFFFFFFEFDFCFDFBF9FBF9F6FBF7F4F9F5F1F9F3EEF8F1ECF7F0E9F6EEE6
              F3EBE3F0E9E2FFFFFF726363FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFAB9C9CFFFFFFFFFFFFFFFFFFFEFDFCFCFBF9FCF9F6FAF7F4
              FAF6F1F8F4EEF8F2EBF7F0E9F6EEE6F3EBE3FFFFFF746565FFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAE9D9DFFFFFFFFFFFFFFFFFF
              FFFFFFFEFCFCFDFBF9FBF9F7FBF7F4FAF5F1F9F3EEF8F1EBF7F0E9F6EEE7FFFF
              FF786666FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              B1A0A0FFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFEFDFDFCFBF9FCF9F6FAF7F4FAF6
              F1F8F3EEF8F2EBF7F0E9FFFFFF7A6969FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFB3A1A1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFDFDFCFDFBF9FCF9F7FBF8F4FAF6F1F9F3EEF8F2EBFFFFFF7D6B6BFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB7A3A3FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFEFDFCFCFBF9FCF9F6FAF7F3F9F5F0F8
              F3EDFFFFFF806E6EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFB6A1A1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7C6969FFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCEC1C1B5A2A2B7A5A5B7A5A5B7A5A5B7
              A5A5B7A5A5B7A5A5B7A5A5B7A5A5B7A5A5B7A5A5B7A5A5B7A5A5B7A4A4B5A8A8
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF}
            Layout = blGlyphTop
            OnClick = SpeedButton14Click
          end
          object SpeedButton15: TSpeedButton
            Left = 792
            Top = 0
            Width = 65
            Height = 57
            Caption = 'Salvar'
            Flat = True
            Glyph.Data = {
              660F0000424D660F000000000000360000002800000024000000240000000100
              180000000000300F0000C40E0000C40E00000000000000000000FFFFFFFFFFFF
              FFFFFFFEFEFEFDFDFDFAFAFAF9F9F9F5F5F5F2F2F2F1F1F1EFEFEFEDEDEDECEC
              ECEBEBEBE8E8E8E9E9E9E9E9E9E7E7E7E7E7E7E9E9E9E9E9E9EAEAEAEAEAEAEB
              EBEBEDEDEDEFEFEFF1F1F1F3F3F3F6F6F6F8F8F8FAFAFAFDFDFDFEFEFEFFFFFF
              FFFFFFFFFFFFFBFBFBDDDDDDC7C8C7C0C1C4B9BBC1B3B6BBB0B2B8AEB1B6ACAF
              B4A9ACB2A9ABB1A7A9AFA5A8ADA5A8ADA4A7ACA4A7ACA4A7ACA5A7ADA4A6ACA6
              A8AEA4A7ACA5A8ADA5A8AEA6A9AFA6A9AFA8ABB1ADABB1AEACB3ADAFB5B0B3B9
              B3B6BCB8BAC0BFC1C5C5C5C6DBDBDBF9F9F9FCFAFDE1E9E6DEDEEBBCB49CA490
              5BAB8C5CA68E5AA58C58A58B58A58C58A48B58A48B58A48B58A48B58A38A57A4
              8A57A48A57A48B57A48B57A38A57A48A57A48B58A58A58A68A56A78C56AC8B54
              8F966191955FAA8D55A98D5AAC8E5BAA9256A89D7BDDE2E5E4E5EAFCFCF8FEFD
              FEFFFFFFE4D8B897670C9477328D80378C7E398C7E398D7E398D7F398D7F3A8D
              7F3A8D7E398C7D388C7E398C7F398C7F398C7F398C7E398C7E398C7E398C7E39
              8D7F378F7D3A927D408C7A3C45AD5E40AE5890793E907D3B8B7F39877C40A66F
              0FB29B62FFFFFFFDFFFEFEFEFBFFFFFFB59E5D9B7419738B691EA4FF279DF527
              9DF5279DF5279DF5279DF5279DF5279DF5279DF5279DF5279DF5279DF5279DF5
              279DF5279DF5279DF5279DF5289EF3299CF733A5FC2AAF9D37B1602DB55B2DB1
              A1349FFF20A2F240A4DE9872218C6B11FFFFFFFDFFFFFEFEFDFFFFFFB4A16398
              7213B7A47BE9FFFFE8F5FAEBF6FBEAF7FBE8F7FBE9F7FBE9F7FBE9F6FBE9F7FB
              E9F6FBE9F7FBE9F7FBE9F7FBE9F6FBE9F7FBE9F6FBE8F7FBEBF7FAEEFCFFAADD
              C92AAD5334B16334B26231AB53ADDFD7F4F8FFE3F4F2926D1396691AFFFFFFFE
              FEFFFEFDFCFFFFFFB5A064997115BFAD77FFFFFFFFFFFFFDFFFBFDFFFCFEFFFD
              FEFFFDFEFFFDFEFFFDFEFFFDFEFFFDFEFFFDFEFFFDFEFFFDFEFFFDFEFFFDFEFF
              FDFEFFFDFFFFFEFFFBFD2AAB5430B06433B26233B16229B26338A958FFFFFFFF
              FFF3926E13916C1CFFFFFFFEFEFFFEFEFDFFFFFFB7A165987418C0AB7DFFFFFF
              FFFFFFC2B6ACAC9A8DAC9C8FAC9C8FAC9C8FAD9C8FAD9C8FAD9C8FAC9C8FAC9C
              8FAC9C8FAD9C90AC9C8FAB9C8FAC9C91BCA09A45A85F2DB06338B16234B16334
              B1633AB06223B05C64BD8FFFFFFF906D1D9A6F1BFFFFFFFEFEFFFFFEFDFFFFFF
              BBA26796761CC6AC79FFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAE6C227
              AC6030B66837B46934B56A35B46A34B56A35B46920AE5DB2DEBDA4721F977020
              FFFFFFFEFEFFFFFEFDFFFFFFBCA36898771DC8AE7BFFFFFFFEFFFFFBFCFBFCFD
              FAFDFEFAFDFDFAFDFDFAFDFDFBFDFDFBFDFDFBFDFDFAFDFDFAFDFEFAFDFDFBFE
              FDFBFFFDFFE1F6E41EAC622ABA6A2FB86D32B86D30B96C30B96C30B96C30B96C
              2FB86C24BB669E8034957221FFFFFFFEFDFFFFFEFDFFFFFFBEA56A9B791FC8AE
              7BFFFFFFFFFFFFC3B9AAAC9C8AAE9F92AE9F91AE9F91AE9F92AE9F92AE9F92AE
              9F91AD9F91AF9F92B09F90AA9F95C0A2942EB16F2EB96C31BB6D2EBA712CBB70
              2DBB6F2DBB6F2DBB6F2DBB6F2DBB6F28BC7042B768A46C1BFFFFFEFEFEFFFFFE
              FDFFFFFFBFA66C9F7B21C9AF7CFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF90DCB521BA69
              28BE732DBD732DBD722DBD722DBD722DBD722DBD722DBD722DBD722BBD7425C0
              77619540FFFFFFFDFFFFFFFEFDFFFFFFC0A76BA07C22CBB17EFFFFFFFFFFFFFB
              FCFCFCFCFCFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFEFEF9FEFE
              FFFEFFC5F0DB15B76927C07429C2752CC1752CC1752CC1752CC1752CC1752CC1
              752CC1752CC1752FC07620C2771EBA6CDAF6E8FFFFFFFFFEFDFFFFFFBFA96DA7
              7C28CBB47DFFFFFFFFFFFFBFB7AEA99B8FAC9D93AC9D93AC9D93AD9D93AD9D93
              AD9D93AC9D93AE9D93AC9E97BFA19621BB7429C37523C4782CC27728C37829C3
              7829C37829C37829C37829C37829C37829C37828C3772BC07B23C37339BD7EFF
              FFFFFFFEFDFFFFFFBFAA6DAF7D2BC8B784FEFFFFFEFFFEFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF64D5A81EC16F20C2
              7922C37822C37925C47A25C47A25C47A25C47A25C47A25C47A25C47A25C47B22
              C87726C57D23C77D13BE7180DDACFFFEFDFFFFFFC1AC6FB0822EB9A160FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFF49D29E53D9A354D9A554D7A441D09322C77B26C87D26C87D26C87D26
              C87D26C87D26C87D25C87D29C68047BD6F45B86D4BD29656CE9BFFFEFDFFFFFF
              C3AC71B28933AC8532BEA362CABF92CABD8CCABD8CCABD8BCABD8BCABD8BCABD
              8BCABD8BCABD8BCABD8BCABD8CCBBC8EDBC295DDC297DAC296E7C2988AC48A1A
              CC7F25CB8025CB8025CB8025CB8025CB8025CB8021CC813CC277C3822EAD7B28
              FFFFFFFFFFFFFFFEFDFFFFFFC4AD73B28A35B58F3CB48C39B58736B48735B487
              36B48736B48736B48736B48736B48736B48736B48736B48736B48735B48736B7
              8736B38736C1823275A8571AD18624CD8124CD8124CD8124CD8124CD8124CD81
              20CF833AC47CBD8A35A98230FFFFFFFEFDFFFFFEFDFFFFFFC6AF74B48C37B690
              3EB6903EB6923DB6923DB6923DB6923DB6923DB6923DB6923DB6923DB6923DB6
              923DB6923DB6923DB6923DB8923DB4923DC18F3A75AF5B1AD38824CF8324CF83
              24CF8324CF8324CF8324CF831FD1843CC57DBE8C36AB8331FFFFFFFEFDFFFFFE
              FDFFFFFFC6B075B88E38BA9240BA9240BA9141BA9141BA9141BA9141BA9141BA
              9141BA9141BA9141BA9141BA9141BA9141BA9141BA9141BC9041B69143C58D3F
              76AF6117D58C21D08821D08821D08821D08821D08821D0881DD28933C880C28C
              3AAE8435FFFFFFFEFEFFFFFEFDFFFFFFC8B177BA903ABC9442BC9442BC9442BC
              9442BC9442BC9442BC9442BC9442BC9442BC9442BC9442BC9442BC9442BC9442
              BC9442BE9342B89444C58F4077B16216D78D20D38820D38820D38820D38820D3
              8820D3881DD48A34CA82C58E3CB08636FFFFFFFEFEFFFFFEFDFFFFFFC9B278BC
              923DBE9644BF9644BE9644BE9644BE9644BE9644BE9644BE9644BE9644BE9644
              BE9644BE9644BE9644BE9644BE9644BF9544BA9646C7914277B36416D99020D5
              8B20D58B20D58B20D58B20D58B20D58B1CD68D36CB84C6903EB2893AFFFFFFFE
              FEFFFFFEFDFFFFFFCBB379C09242C49748C39747BF9846BF9846BF9846BF9846
              BF9846BF9846BF9846BF9846BF9846BF9846BF9846BF9846BF9846BF9846BC97
              49CD924475B46515D89320D48E20D48E20D48E20D48E20D48E20D48E1CD68F32
              CD85CC913FB58B3CFFFFFFFEFEFFFFFEFDFFFFFFCCB67BC39540BD9749B99549
              BC9646BD9748BD9748BD9848BD9848BD9848BD9748BD9748BD9748BD9848BD98
              48BD9848BD9748BE9748BA974BCB914671B36612DB931CD68E1CD68E1CD68E1C
              D68E1CD68E1CD68E18D89034CE86CE9242B68C3CFFFFFFFEFEFFFFFDFDFFFFFF
              CEB77CC4963FC8A559DEBD74D2AF6ACDB065CDB065CDB065CDB065CDB065CEB0
              65CEB065CEB065CDB065CDB065CDB065CEB065CEB066CAB067DCAC647BC3780E
              D9921BD68F1BD68F1AD68F1AD68F1AD68F1AD68F15D89034D088D09544B88E3F
              FFFFFFFEFEFFFFFDFDFFFFFFCFB87EC69445D4B16891701B9576209A73289A73
              259975229974229974229974229974229974229974229974229974229974229A
              7422987522A86D1B5DA25210DE981DD6911CD79119D8911AD8911AD8911AD891
              15D99334D288D19846B99241FFFFFFFEFEFFFFFDFDFFFFFFD0B87ECA9A49C19F
              559B7527A17528966E1A9A772597762797762697762697762797762797762697
              7626977626977626977626977626957627A36E205EA45511DC9617D79016D890
              17D89017D79017D79017D79012D99237D188D59947BE9243FFFFFDFEFEFFFFFE
              FDFFFFFFD4BA80CB9B4BC3A0579B761C968040FFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              A6EFD727E5982EDF9F2EE39E2DDF992DE19B2EE19B2EE19B2CE59F3FDE9BDC97
              47C59C50FFFFFFFEFEFFFFFEFDFFFFFFD6BA81CB9D4DC4A158996F16CABE94FF
              FFFFFFFFFFD2CAB2D6CEB3DACDB2D4C7ACFFFFFFFEFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFEFFD9F9F378E5B973C8806DCA8480DA9A7BD5937CD5
              937CD59376D5958AB168D69C45D4BA89FFFFFFFFFFFFFFFEFDFFFFFFD8BB82CD
              9F4EC6A35A976E16C8BA93FFFFFFFFFFFF92691B9870159B70148A660DFFFFFE
              FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9062
              0C996B1BDFAF5BD69D4AD69E4BD59E4BD59E4CD8A24CC99243F3F1E6FFFFFFFF
              FFFFFFFEFDFFFFFFD9BD84CEA150C8A45C9B7218C9BB96FFFFFFFFFFFF997927
              9E7E2AA17E299C7022FFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFEFEFFFFFFFF9870179F762AD7B369CDA356D1A457CDA359CEA359CA
              9C48E1CAA1FFFFFFFFFFFFFFFFFFFFFEFDFFFFFFDABE84D0A252CBA75EA1781D
              CCBE9AFFFFFFFFFFFFA27E2EA78031A7842DA37625FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFFFFFFFF99751EA37D2EDDB66BCE
              A556D0A559D6A654D3A04AD7BC86FFFFFFFDFEFDFFFFFFFFFFFFFFFEFDFFFFFF
              DCBF86D1A453CDAA61A67E22CFC19DFFFFFFFFFFFFA68333AC8435AC8A32AA7C
              2BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFFFF
              FFFF9E7A23A98334DDB76CD0A757D2A75AD7A450C8AE72FFFFFFFDFDFFFBFFFE
              FFFFFFFFFFFFFFFDFBFCFFFFDCC081D4A555D0AD64AC8328D0C3A1FFFFFFFFFF
              FFAD8437B48A36B38B38AB8130FFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFEFEFFFFFFFFA47D2AB18739E0B571D4A95BDAA74DCAA863
              FFFFFFFDFFFFFFFEFDFEFFFEFFFFFFFFFFFFFFFEFEFEFFFFEAD9B7D59D4ADAAD
              61B2822BD5C397FFFFFFFFFFFFAA8E47B39441B79146A98846FFFFFFFEFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFFFFAA8227B58B34
              E2B865D5A34CD3B070F9FEF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFD
              FFFCFEFDFFFFFFE8DEBCD6BF87C8AF72DFD7BDFEFFFFFDFAFEFFFFFFFFFFFFFF
              FFFFFFFFFFFCFCFFFEFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FEFFFEFFFFFFC4AD71CAB07CDCCB99F0E8D6FFFFFFFDFEFFFCFEFFFEFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF}
            Layout = blGlyphTop
            OnClick = SpeedButton15Click
          end
        end
      end
    end
  end
  object PanelAguarde: TPanel [3]
    Left = 344
    Top = 266
    Width = 293
    Height = 56
    AutoSize = True
    Caption = 'PanelAguarde'
    Color = clWhite
    TabOrder = 1
    Visible = False
    object JvGIFAnimator2: TJvGIFAnimator
      Left = 1
      Top = 1
      Width = 291
      Height = 54
      AsyncDrawing = True
      Center = True
      Image.Data = {
        DD0E000047494638396123013600E60000EAEAEAFFFFFFB0B0B00000005576D5
        FFC60013275F3854A34866BD304A945475D34D6CC61A316F2037785374D15171
        CD415EB15070CC5575D4273F85415EB24D6DC72037792F49932740851327601A
        306F273F845373D10001020000016060600C183A5373D01B31704866BE09122D
        0409161022526C77980E1D473854A21F3678060D2012255A01020403060E0203
        085374D2415FB23954A302040903050D4766BD01020512255B6C77994C6CC50E
        1D48060D1F2740860409155171CE4867BED1D1D1112253070D21304A951A306E
        09132D5576D412255910215209122C4E6DC81F36773955A44C6BC50E1E480C18
        3B0101044765BC5474D25677D63853A2263F84FFFFFF00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000021FF0B4E45545343415045322E3003
        0100000021F904050A0056002C00000000230136000007FF8001828384858687
        88898A8B8C8D8E8F909192939495969798999A9B9C9D9E9FA0A1A2A3A4A5A6A7
        A8A9AAABACADAEAFA84002B3B4B5B6B7B8B9BABBBCBDBEBFC0C1C2C3C4C5C6C7
        C8B740870200CECFD0D1D2D3D4D5D6D7D8D9DADBDCDDDEDFE0E1E2E3D202CCE4
        E8E9EAEBECEDEEEFEDE686CDF0F5F6F7F8F9FAECF285F4FB00030A1C48105D3F
        42FF0A2A5CC8B0A1BE8383123A9C48B1A2C56C100549BCC8B1A3478519036CFC
        48B2A4C978E7AE0D58B9F2594B682C59C27CE952A6B398346BDE1CB07326CF9A
        2D71DA3C499462C891D15E2AFDA973DA5000347FE694B6B427D0A44CAD16DD3A
        F128B6AA50B38675CA33AAD8B1D5C09A45ABB52DD7B705FFBDAA944A176B4C9D
        66870A253B3667D0AC53A7C21D0C50AE359C4D13CF641BD6A660BB88F10216FB
        98B0657B86D39E0DBC792F56B7549732153A9AF2D9CBA8DF65A6269873E8A6A5
        41BF66BCD6ADDFBA8C53EBE6B69A2FE4BF77D9E62D1D7CF66DD84F8FA3ADBCBB
        39B5DECEA34B87077DBAF5EBE3AA63DFCE1D63CAEEE0C35BD32EBE3C77F2E6D3
        4F47FF8134CE0FD1DABB67091F9AFCF903EA3FBB3F5FBF33FEEEF9070080A409
        48A05006E2B752820A32889F83FDC5A7607E123658E183E37DC75A011C76E821
        871E2445C08824963862883099A8220128BAB4A2892DDEF46289314235238935
        7A30C58D2C8AC8638E3CF698E28F3EDE082491431A59E4FF8C3546835E071F46
        5940074B2A60A504574A406592586679E5962E7A292698328AD9259664DA78E6
        9A685669669A1D98B9269C729E49679D6D7229E79D6C66C9679F56FE69C49B19
        CEA392941FB6E0A6031C48D1A8038AEA19020C8C561A69989566FAE8A5654EAA
        A9A58B6ACAA99A8F525A2A0C36845AEAA82D7CEA29A8927E9A6AACA2AAEAE9AC
        989EBAAAAD8C8EEAA486D3CC80A8873324E5C303C8261BC1B2C8160BCD0CCA32
        1BED0BC64A6BEDB2D43E7BEDB5D9BA746CB4D63AFB0CB4E04E5B6DB9CC76EB0C
        B9DBA67B6EBB11A80B00BBF0CA4B6FBBF6A2AB6CBEFA625BA83FD7B8306C872E
        4443C3020857A070C20B17AC2DC30BE7D0B0C1114B5C71FF050E8F0BF1C61853
        CC71C43478FC31C219AF7BF1C5213F7C72C225CF3B32CB22AFBC40CA1ACB4C72
        CC2BB7EC82CD3757835E0F0373584234252060F4D148FF80C0D0D0F43082D24F
        276D34D3CF142D75D23D101DF5D6586B7D35D2543B63F5D74F67DD34D947870D
        C0D8649B5D35DA657B8DB6DA6C7F4D37DC4BCB5D83DDFF2274CD0A4117204434
        2B506038048723AEF80A8427AEF8E314300ECD0E90571E79E396272EF93385C7
        90B9E19B3BD3F9E710EC8039E9A1034039E931A43EBAE39E837E3AEC870F3E79
        EC9FBB8E7BE6BAD3FE78EABF1A6A0D098193100D09321CA07C0AC92F9FBCF1D0
        14E1FCF4CC1F00FD33C8533FFDF5CE64AFFDF2DC03E0FDFFF7D61F4F3EF8E69F
        5F7EF4EAAF8F7DFBE18FFF7DFCCD934FBFFA49A4CF84FD7D47740D0881034134
        4070810418B0800744A000A141C0042230810B7C46031FE8C00B44D01913A420
        040758C10A5E100019D4A0013F18421192B0830E7C020745F8C013A2F0802E7C
        610262F8421AA2F083C10398355010381444430713C0C0068418C4220ED187D0
        00E2108D48442122F1192858621379D0C4273AC3094CCCE20474F0432D4A7103
        56044014BD48451E84718C64046317BF98452E26718A6CC4C019E3F8C539A651
        8D6FA42311ED9846373E0758D23041E04C108D20A8C0020D4064221779484242
        C3048C8CA4221DF90C484A3292947486250F79C9066412FF009BECA4270BC949
        459A12919F0CE5292749CA52AE72948F14252B63294B15A4D29597BCE52B4BA9
        4B5C32F29339F49B355830C84232E098C8D44032357003632AF399CB64A633A3
        99CC663E129AD494E635B389CC234C939B2CF8A608A869CD4A8E939BDA34E739
        D709CD723AE306E854A637B7894E7782329E0C08273DD959CDFE69E41A38C880
        01062A508216F404D13841410DCA50844243A10C5DE8401DFA0C884AB4A1098D
        684429EA0C8B6A74A219FD2841711052911A80A30008A8494F5A5291A2D4A31F
        7DE94A59FAD099CA74A524F51920D5C3D3F5ECB4A740DD0D7A824A54B80CB5A8
        4825CA5193CAD48F2CB5A950B5C853A34AD5864CB5AA583125C855B3CAD57D84
        4416C908AB58C74AD6B29AF5AC682DEB3260C1D6B6BAF5AD708DAB5CE74AD7BA
        DAF5AE78CD6B5B03010021F904050A0056002C11001C001F000C000007748004
        8283848256878856058B8C8D8B12900A92919389888E98050E1C30219B9C9E9B
        9687998E0FA711A8A9A8A38AA58C154DB10BB4B3B4ADAF8C350823BCBEBFB8B9
        051410C4C5C6C7C1B907CCCDCECCCAAF09D317D4D609D1A513DBDC1B18DDD999
        0DE3E4E51616E1981AEBEC0C22EFEEE98E810021F904050A0056002C24001C00
        1F000C0000077380048283848256878856058B8C8D8B0A129190929289888E98
        050E9B9C9D9B9687998E0FA411A5A6A8A08AA28C0BAE15B0AFB1AAAC8C08B7B8
        B93F08B4B50514C010C1C2C4BDB53207C929C8CAC8C6AC1709D2D1D3D4CFA213
        181BDAD9DDDBD7992A160DE3E4E6E2E0980CEBEC1AED1AE98E810021F904050A
        0056002C37001C001F000C0000077780048283848256878856058B8C8D8B0A90
        1291929189888E9805210E9C309B9D9B9687998E0F3EA611A8A9A6A28AA48C15
        0BB2B1B3B4ADAF8C233F08BABCBEBCB7B80514C4C510C7C8C1B807CCCDCE2907
        CAAF1709D5D6D709D2A4181BDC133CDDDFDCDA990D4BE6E8E90DE498221AEEEF
        0CF2F0EC8E810021F904050A0056002C4A001C001F000C000007748004828384
        8256878856058B8C8D8B0A901292919389888E98050E1C9B9C219D9B9687998E
        11A60FA8A7A7A28AA48C15B00B39B1B2B0ACAE8C08BA51BBBD08B7B805103114
        C3C6C5C3C0B807CCCDCECCCAAE09D3D4D5D3D1A41B13DADB183CDEDED899160D
        E5E6E70DE2980CEC1AEDEF0CEA8E810021F904050A0056002C5D001C001F000C
        0000077480048283848256878856058B8C8D8B120A9190929389888E98051C0E
        219C9B9D9E9687998E11A6A7A80F0FA28AA48C0BB0B115B3B1ACAE8C2308BABB
        BC08B6B705141031C2C3C6C4BFB707CBCC54CD07C9AE09D317D4D5D4D1A413DB
        DC18DD13D9990DE3E4E5E3E1981A0C2244EBECEE1AE88E810021F904050A0056
        002C70001C001F000C0000077480048283848256878856058B8C8D8B46120A92
        91939189888E99050E1C30219C9D9F9C97879A8E3E0FA911AAABA9A48AA68C15
        0BB3B4B6B5AFB18C08BCBDBEBCB9BA051031C4C6C714C1BA07CCCDCECCCAB109
        D3D4D5D3D1A613DADB181BDDDDD89A160DE4E3E5E5E1991A0C22ECEEEBECE98E
        810021F904050A0056002C83001C001F000C0000077780530483848504568889
        56058C8D8E8C0A12929193948A898F99050E9C30219E1C9D3097889A8F110FA9
        A8AAABA48BA68D150BB3B2B4B5AEB08D233508BDBBBEBBB8B905311410C7C6C8
        C5C2B907CECFD0CECCB009D5D643D717D3A61B13DEDFE03CDB9A2A160DE6E5E7
        EAE3991AEE0CF0EF22EEEC8F810021F904050A0056002C96001C001F000C0000
        077380048283848256878856058B8C8D8B0A901291929189888E9805210E9C9D
        9E0E9687998E0FA511A7A8A8A18AA38C15AF39B00BB1AFABAD8C083FB9BBBC08
        B6B7053110C3C4C2C4BFB707CACBCCCAC8AD0917D1D2D4D4CFA318D91B13DADB
        D9D7992A0DE316E5E4E5E0980C1AEB22EDEFE98E810021F904050A0056002CA9
        001C001F000C0000077480048283848256878856058B8C8D8B0A901292919389
        888E98050E219B1C9D309D9687998E11A60FA8A7A7A28AA48C15B00B39B1B2B0
        ACAE8C08BABBBCBAB7B80510C2C314C431BFB807CACB2932CCC8AE09D2D317D4
        09D0A41BDA13DCDD18DCD8990D2AE3E5E4E5E19822EB1A0CECEDEEE98E810021
        F904050A0056002CBC001C001F000C0000077580048283848256878856058B8C
        8D8B120A9190929389888E98051C0E219C9E9F9687998E0F11A5A7A63EA6A18A
        A38C0BB0B115B3B1ACAE8C0835B9BBBC23B6B7051410C2C3C5C4BFB707CA32CB
        CD29C8AE0917D2D4D3D6D0A318131BDBDCDEDBD8990DE32A16E4E6E3E1980C22
        EDEEEC44ECEA8E810021F904050A0056002CCF001C001F000C00000770800482
        83848256878856058B8C8D8B12900A92919389888E98050E1C9B9D9E0E968799
        8E0FA511A6A7A9A18AA38C0BAF15B0B1B0ABAD8C0823B8B9BABAB5B6051014C1
        C2C3C4BEB607C9CACBC9C7AD09D0D1D2D0CEA31B1318D8D7DBD9D599160DE0E1
        E3E2DE980CE8E91A22EAE68E810021F904050A0056002CE2001C001F000C0000
        077380048283848256878856058B8C8D8B0A461290939489888E98050E9B9C9D
        300E9687998E110FA6A5A7A7A18AA38C0B15AFB0B1B2ABAD8C3F08B9BABB35B5
        B6053110C214C3C5BEB63207CACBCC07C7AD1709D2D1D3D3CFA313D9DA181BDD
        DCD7992A160DE4E5E6E0980CEAEB1AED22EAE88E810021F904050A0056002CF5
        001C001F000C0000077580048283848256878856058B8C8D8B0A901291929189
        888E9805210E301C9C9F9F9687998E0FA63E11A7AAA28AA48C150BB1B0B2B3AC
        AE8C0823B935BBBDB6B705311410C4C3C6C3BFB707CBCC32CECCC9AE1709D4D5
        D609D1A4181B13DDDBDFDBD99916E40DE5E716E2980C1AEC22EDEEEDEA8E8100
        3B}
      Threaded = False
    end
    object Panel1: TPanel
      Left = 11
      Top = 9
      Width = 273
      Height = 17
      Caption = 'Processando Calculos'
      Color = clWhite
      ParentBackground = False
      TabOrder = 0
    end
  end
  inherited coCalcula: TACBrCalculadora
    Left = 184
    Top = 40
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 232
    Top = 40
  end
  object ppDBFluxoCx: TppDBPipeline
    DataSource = DsFluxo
    UserName = 'DBFluxoCx'
    Left = 128
    Top = 288
    object ppDBFluxoCxppField1: TppField
      FieldAlias = 'DATA_MOVIMENTO'
      FieldName = 'DATA_MOVIMENTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBFluxoCxppField2: TppField
      FieldAlias = 'VALOR_PREVISAO_RECEBER'
      FieldName = 'VALOR_PREVISAO_RECEBER'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBFluxoCxppField3: TppField
      FieldAlias = 'VALOR_RECEBIDO'
      FieldName = 'VALOR_RECEBIDO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBFluxoCxppField4: TppField
      FieldAlias = 'VALOR_RECEBER'
      FieldName = 'VALOR_RECEBER'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBFluxoCxppField5: TppField
      FieldAlias = 'VALOR_DESCONTADO'
      FieldName = 'VALOR_DESCONTADO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBFluxoCxppField6: TppField
      FieldAlias = 'VALOR_PREVISAO_PAGAR'
      FieldName = 'VALOR_PREVISAO_PAGAR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBFluxoCxppField7: TppField
      FieldAlias = 'VALOR_PAGO'
      FieldName = 'VALOR_PAGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBFluxoCxppField8: TppField
      FieldAlias = 'VALOR_PAGAR'
      FieldName = 'VALOR_PAGAR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBFluxoCxppField9: TppField
      FieldAlias = 'SALDO_DO_DIA_PREV'
      FieldName = 'SALDO_DO_DIA_PREV'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBFluxoCxppField10: TppField
      FieldAlias = 'SALDO_DO_DIA_REAL'
      FieldName = 'SALDO_DO_DIA_REAL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBFluxoCxppField11: TppField
      FieldAlias = 'SALDO_ACUMULADO_PREV'
      FieldName = 'SALDO_ACUMULADO_PREV'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBFluxoCxppField12: TppField
      FieldAlias = 'SALDO_ACUMULADO_REAL'
      FieldName = 'SALDO_ACUMULADO_REAL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDBFluxoCxppField13: TppField
      FieldAlias = 'SALDO_INICIAL_REAL'
      FieldName = 'SALDO_INICIAL_REAL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDBFluxoCxppField14: TppField
      FieldAlias = 'SALDO_INICIAL_PREV'
      FieldName = 'SALDO_INICIAL_PREV'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
  end
  object ppRelFluxoCx: TppReport
    AutoStop = False
    DataPipeline = ppDBFluxoCx
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 10000
    PrinterSetup.mmMarginLeft = 5000
    PrinterSetup.mmMarginRight = 5000
    PrinterSetup.mmMarginTop = 10000
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 1
    Template.FileName = 'C:\JobProgram\Adjutor\FontesRelatorios\RELFLUXOCX.rtm'
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
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
    PreviewFormSettings.ZoomSetting = zs100Percent
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
    Left = 120
    Top = 232
    Version = '16.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBFluxoCx'
    object pp00HeaderBand1: TppHeaderBand
      BeforePrint = pp00HeaderBand1BeforePrint
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 19579
      mmPrintPosition = 0
      object ppLine18: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 205000
        BandType = 0
        LayerName = Foreground
      end
      object LBL_00_EMPRESA: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LBL_00_EMPRESA'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'LABEL_EMPRESA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 794
        mmWidth = 29104
        BandType = 0
        LayerName = Foreground
      end
      object LBL_00_LTITULO1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LBL_00_LTITULO1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'TITULO1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 0
        mmTop = 6085
        mmWidth = 14552
        BandType = 0
        LayerName = Foreground
      end
      object LBL_00_LTITULO2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LBL_00_LTITULO2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'TITULO2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 0
        mmTop = 10848
        mmWidth = 19844
        BandType = 0
        LayerName = Foreground
      end
      object ppLine20: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 15345
        mmWidth = 205000
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable7: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 178330
        mmTop = 794
        mmWidth = 26988
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable8: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 189971
        mmTop = 10848
        mmWidth = 14552
        BandType = 0
        LayerName = Foreground
      end
      object ppLine21: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line3'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 19314
        mmWidth = 205000
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'DATA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 2117
        mmTop = 15875
        mmWidth = 9790
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'RECEBER'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3246
        mmLeft = 38365
        mmTop = 15875
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'PAGAR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3246
        mmLeft = 64823
        mmTop = 15875
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'SALDO BANCO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 89165
        mmTop = 15875
        mmWidth = 20638
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'CAIXA DO DIA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 116946
        mmTop = 15875
        mmWidth = 20638
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'ACUMULADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 142875
        mmTop = 15875
        mmWidth = 19844
        BandType = 0
        LayerName = Foreground
      end
    end
    object pp00DetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 3175
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FLU_DIA'
        DataPipeline = ppDBFluxoCx
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBFluxoCx'
        mmHeight = 3246
        mmLeft = 265
        mmTop = 0
        mmWidth = 14552
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FLU_RECEBE'
        DataPipeline = ppDBFluxoCx
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBFluxoCx'
        mmHeight = 3246
        mmLeft = 38365
        mmTop = 0
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FLU_PAGAR'
        DataPipeline = ppDBFluxoCx
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBFluxoCx'
        mmHeight = 3246
        mmLeft = 64823
        mmTop = 0
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FLU_BANCO'
        DataPipeline = ppDBFluxoCx
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBFluxoCx'
        mmHeight = 3175
        mmLeft = 89165
        mmTop = 0
        mmWidth = 20638
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FLU_SALDO'
        DataPipeline = ppDBFluxoCx
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBFluxoCx'
        mmHeight = 3246
        mmLeft = 116946
        mmTop = 0
        mmWidth = 20638
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FLU_ACUMULO'
        DataPipeline = ppDBFluxoCx
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBFluxoCx'
        mmHeight = 3246
        mmLeft = 142875
        mmTop = 0
        mmWidth = 19844
        BandType = 4
        LayerName = Foreground
      end
    end
    object pp00SummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 1588
      mmPrintPosition = 0
      object ppLine22: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line4'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 205052
        BandType = 7
        LayerName = Foreground
      end
    end
    object raCodeModule3: TraCodeModule
      ProgramStream = {00}
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
  object SqlCdsFluxo: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 'select * from PCD_FLUXO_CAIXA('#39'01.10.2012'#39','#39'01.12.2012'#39','#39'001'#39')'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'select * from PCD_FLUXO_CAIXA('#39'01.10.2012'#39','#39'01.12.2012'#39','#39'001'#39')'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 216
    Top = 400
    object SqlCdsFluxoDATA_MOVIMENTO: TDateField
      FieldName = 'DATA_MOVIMENTO'
      OnGetText = SqlCdsFluxoDATA_MOVIMENTOGetText
    end
    object SqlCdsFluxoVALOR_PREVISAO_RECEBER: TFMTBCDField
      FieldName = 'VALOR_PREVISAO_RECEBER'
      ProviderFlags = [pfInUpdate]
      OnChange = SqlCdsFluxoVALOR_PREVISAO_RECEBERChange
      DisplayFormat = '###,###,##0.00'
      EditFormat = '########0.00'
      Precision = 15
      Size = 4
    end
    object SqlCdsFluxoVALOR_RECEBIDO: TFMTBCDField
      FieldName = 'VALOR_RECEBIDO'
      DisplayFormat = '###,###,##0.00'
      Precision = 15
      Size = 4
    end
    object SqlCdsFluxoVALOR_RECEBER: TFMTBCDField
      FieldName = 'VALOR_RECEBER'
      DisplayFormat = '###,###,##0.00'
      Precision = 15
      Size = 4
    end
    object SqlCdsFluxoVALOR_DESCONTADO: TFMTBCDField
      FieldName = 'VALOR_DESCONTADO'
      DisplayFormat = '###,###,##0.00'
      Precision = 15
      Size = 4
    end
    object SqlCdsFluxoVALOR_PREVISAO_PAGAR: TFMTBCDField
      FieldName = 'VALOR_PREVISAO_PAGAR'
      ProviderFlags = [pfInUpdate]
      OnChange = SqlCdsFluxoVALOR_PREVISAO_PAGARChange
      DisplayFormat = '###,###,##0.00'
      EditFormat = '########0.00'
      Precision = 15
      Size = 4
    end
    object SqlCdsFluxoVALOR_PAGO: TFMTBCDField
      FieldName = 'VALOR_PAGO'
      DisplayFormat = '###,###,##0.00'
      Precision = 15
      Size = 4
    end
    object SqlCdsFluxoVALOR_PAGAR: TFMTBCDField
      FieldName = 'VALOR_PAGAR'
      DisplayFormat = '###,###,##0.00'
      Precision = 15
      Size = 4
    end
    object SqlCdsFluxoSALDO_DO_DIA_PREV: TFMTBCDField
      FieldName = 'SALDO_DO_DIA_PREV'
      DisplayFormat = '###,###,##0.00'
      Precision = 15
      Size = 4
    end
    object SqlCdsFluxoSALDO_DO_DIA_REAL: TFMTBCDField
      FieldName = 'SALDO_DO_DIA_REAL'
      DisplayFormat = '###,###,##0.00'
      Precision = 15
      Size = 4
    end
    object SqlCdsFluxoSALDO_ACUMULADO_PREV: TFMTBCDField
      FieldName = 'SALDO_ACUMULADO_PREV'
      DisplayFormat = '###,###,##0.00'
      Precision = 15
      Size = 4
    end
    object SqlCdsFluxoSALDO_ACUMULADO_REAL: TFMTBCDField
      FieldName = 'SALDO_ACUMULADO_REAL'
      DisplayFormat = '###,###,##0.00'
      Precision = 15
      Size = 4
    end
    object SqlCdsFluxoSALDO_INICIAL_REAL: TFMTBCDField
      FieldName = 'SALDO_INICIAL_REAL'
      DisplayFormat = '###,###,##0.00'
      Precision = 15
      Size = 4
    end
    object SqlCdsFluxoSALDO_INICIAL_PREV: TFMTBCDField
      FieldName = 'SALDO_INICIAL_PREV'
      DisplayFormat = '###,###,##0.00'
      Precision = 15
      Size = 4
    end
  end
  object DsFluxo: TDataSource
    DataSet = SqlCdsFluxo
    Left = 264
    Top = 400
  end
  object frxReport1: TfrxReport
    Version = '5.3.16'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40950.646380902800000000
    ReportOptions.LastChange = 41247.704847488430000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnGetValue = frxReport1GetValue
    Left = 304
    Top = 224
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 256
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 75.590600000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo1: TfrxMemoView
          Width = 589.606680000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[empresa]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Top = 15.118120000000000000
          Width = 589.606680000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Fluxo de Caixa')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Top = 30.236240000000000000
          Width = 589.606680000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[filtro]')
          ParentFont = False
          VAlign = vaCenter
        end
        object SysMemo2: TfrxSysMemoView
          Left = 918.425790000000000000
          Top = 15.118120000000000000
          Width = 128.504020000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[TIME]')
          ParentFont = False
          VAlign = vaCenter
        end
        object SysMemo3: TfrxSysMemoView
          Left = 918.425790000000000000
          Top = 30.236240000000000000
          Width = 128.504020000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[PAGE#] de [TOTALPAGES#]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line1: TfrxLineView
          Top = 45.354360000000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Style = fsDot
          Frame.Typ = [ftTop]
        end
        object Memo4: TfrxMemoView
          Top = 45.354360000000000000
          Width = 79.370130000000000000
          Height = 30.236240000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Movimento')
          ParentFont = False
          VAlign = vaCenter
        end
        object SysMemo1: TfrxSysMemoView
          Left = 918.425790000000000000
          Width = 128.504020000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DATE]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line3: TfrxLineView
          Top = 75.590600000000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Style = fsDot
          Frame.Typ = [ftTop]
        end
        object Shape1: TfrxShapeView
          Left = 79.370130000000000000
          Top = 45.354360000000000000
          Width = 438.425480000000000000
          Height = 15.118120000000000000
          Fill.BackColor = clSilver
        end
        object Memo5: TfrxMemoView
          Left = 79.370130000000000000
          Top = 45.354360000000000000
          Width = 438.425480000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Previs'#227'o')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 79.370130000000000000
          Top = 60.472480000000000000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Prev. Receber')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 192.756030000000000000
          Top = 60.472480000000000000
          Width = 109.606370000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Prev. Pagar')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 302.362400000000000000
          Top = 60.472480000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Prev. Saldo Dia')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 400.630180000000000000
          Top = 60.472480000000000000
          Width = 117.165430000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Prev. Saldo Acumulado')
          ParentFont = False
          VAlign = vaCenter
        end
        object Shape2: TfrxShapeView
          Left = 517.795610000000000000
          Top = 45.354360000000000000
          Width = 529.134200000000000000
          Height = 15.118120000000000000
          Fill.BackColor = clSilver
        end
        object Memo10: TfrxMemoView
          Left = 517.795610000000000000
          Top = 45.354360000000000000
          Width = 529.134200000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Realizado')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 517.795610000000000000
          Top = 60.472480000000000000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Recebido')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 631.181510000000000000
          Top = 60.472480000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Pago')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 831.496600000000000000
          Top = 60.472480000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Prev. Saldo Dia')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 929.764380000000000000
          Top = 60.472480000000000000
          Width = 117.165430000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Prev. Saldo Acumulado')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 729.449290000000000000
          Top = 60.472480000000000000
          Width = 102.047310000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Desconto')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 15.118120000000000000
        Top = 154.960730000000000000
        Width = 1046.929810000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1DATA_MOVIMENTO: TfrxMemoView
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          DataField = 'DATA_MOVIMENTO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."DATA_MOVIMENTO"]')
          ParentFont = False
        end
        object frxDBDataset1VALOR_PREVISAO_RECEBER: TfrxMemoView
          Left = 79.370130000000000000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          DataField = 'VALOR_PREVISAO_RECEBER'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."VALOR_PREVISAO_RECEBER"]')
          ParentFont = False
        end
        object frxDBDataset1VALOR_PREVISAO_PAGAR: TfrxMemoView
          Left = 192.756030000000000000
          Width = 109.606370000000000000
          Height = 15.118120000000000000
          DataField = 'VALOR_PREVISAO_PAGAR'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."VALOR_PREVISAO_PAGAR"]')
          ParentFont = False
        end
        object frxDBDataset1SALDO_DO_DIA_PREV: TfrxMemoView
          Left = 302.362400000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          DataField = 'SALDO_DO_DIA_PREV'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."SALDO_DO_DIA_PREV"]')
          ParentFont = False
        end
        object frxDBDataset1SALDO_ACUMULADO_PREV: TfrxMemoView
          Left = 400.630180000000000000
          Width = 117.165430000000000000
          Height = 15.118120000000000000
          DataField = 'SALDO_ACUMULADO_PREV'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."SALDO_ACUMULADO_PREV"]')
          ParentFont = False
        end
        object frxDBDataset1VALOR_RECEBIDO: TfrxMemoView
          Left = 517.795610000000000000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          DataField = 'VALOR_RECEBIDO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."VALOR_RECEBIDO"]')
          ParentFont = False
        end
        object frxDBDataset1VALOR_PAGO: TfrxMemoView
          Left = 631.181510000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          DataField = 'VALOR_PAGO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."VALOR_PAGO"]')
          ParentFont = False
        end
        object frxDBDataset1VALOR_DESCONTADO: TfrxMemoView
          Left = 729.449290000000000000
          Width = 102.047310000000000000
          Height = 15.118120000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."VALOR_DESCONTADO"]')
          ParentFont = False
        end
        object frxDBDataset1SALDO_DO_DIA_REAL: TfrxMemoView
          Left = 831.496600000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          DataField = 'SALDO_DO_DIA_REAL'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."SALDO_DO_DIA_REAL"]')
          ParentFont = False
        end
        object frxDBDataset1SALDO_ACUMULADO_REAL: TfrxMemoView
          Left = 929.764380000000000000
          Width = 117.165430000000000000
          Height = 15.118120000000000000
          DataField = 'SALDO_ACUMULADO_REAL'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."SALDO_ACUMULADO_REAL"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 3.779530000000000000
        Top = 272.126160000000000000
        Width = 1046.929810000000000000
        object Line2: TfrxLineView
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Style = fsDot
          Frame.Typ = [ftTop]
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 192.756030000000000000
        Width = 1046.929810000000000000
        object Memo16: TfrxMemoView
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Totais')
          ParentFont = False
        end
        object SysMemo4: TfrxSysMemoView
          Left = 79.370130000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."VALOR_PREVISAO_RECEBER">,MasterData1,3)]')
          ParentFont = False
        end
        object SysMemo5: TfrxSysMemoView
          Left = 192.756030000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."VALOR_PREVISAO_PAGAR">,MasterData1,3)]')
          ParentFont = False
        end
        object SysMemo6: TfrxSysMemoView
          Left = 517.795610000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."VALOR_RECEBIDO">,MasterData1,3)]')
          ParentFont = False
        end
        object SysMemo7: TfrxSysMemoView
          Left = 631.181510000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."VALOR_PAGO">,MasterData1,3)]')
          ParentFont = False
        end
        object SysMemo8: TfrxSysMemoView
          Left = 729.449290000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."VALOR_DESCONTADO">,MasterData1,3)]')
          ParentFont = False
        end
        object Line4: TfrxLineView
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Style = fsDot
          Frame.Typ = [ftTop]
        end
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'DATA_MOVIMENTO=DATA_MOVIMENTO'
      'VALOR_PREVISAO_RECEBER=VALOR_PREVISAO_RECEBER'
      'VALOR_RECEBIDO=VALOR_RECEBIDO'
      'VALOR_RECEBER=VALOR_RECEBER'
      'VALOR_DESCONTADO=VALOR_DESCONTADO'
      'VALOR_PREVISAO_PAGAR=VALOR_PREVISAO_PAGAR'
      'VALOR_PAGO=VALOR_PAGO'
      'VALOR_PAGAR=VALOR_PAGAR'
      'SALDO_DO_DIA_PREV=SALDO_DO_DIA_PREV'
      'SALDO_DO_DIA_REAL=SALDO_DO_DIA_REAL'
      'SALDO_ACUMULADO_PREV=SALDO_ACUMULADO_PREV'
      'SALDO_ACUMULADO_REAL=SALDO_ACUMULADO_REAL')
    DataSet = SqlCdsFluxo
    BCDToCurrency = False
    Left = 320
    Top = 168
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    Creator = 'FastReport (http://www.fast-report.com)'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    Left = 112
    Top = 176
  end
  object frxXLSExport1: TfrxXLSExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ExportEMF = True
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = True
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 232
    Top = 184
  end
  object PopupMenu1: TPopupMenu
    Left = 196
    Top = 330
    object Detalhe1: TMenuItem
      Caption = 'Detalhe anal'#237'tico'
      OnClick = Detalhe1Click
    end
    object Detalhesaldoinicialprevisto1: TMenuItem
      Caption = 'Detalhe saldo inicial previsto'
      OnClick = Detalhesaldoinicialprevisto1Click
    end
    object Fluxomensal1: TMenuItem
      Caption = 'Fluxo mensal'
      OnClick = Fluxomensal1Click
    end
  end
  object JvDBGridWordExport1: TJvDBGridWordExport
    Caption = 'Exporting to MS Word...'
    Left = 1076
    Top = 543
  end
  object JvDBGridExcelExport1: TJvDBGridExcelExport
    Caption = 'Exporting to MS Excel...'
    AutoFit = False
    Left = 1052
    Top = 543
  end
  object puExportar: TPopupMenu
    Left = 208
    Top = 184
    object miExcel: TMenuItem
      Caption = 'Excel'
      OnClick = miExcelClick
    end
    object miWord: TMenuItem
      Caption = 'Word'
      OnClick = miWordClick
    end
  end
  object JvSaveDialog1: TJvSaveDialog
    Height = 0
    Width = 0
    Left = 396
    Top = 362
  end
  object SaveDialog1: TSaveDialog
    Left = 816
    Top = 147
  end
end
