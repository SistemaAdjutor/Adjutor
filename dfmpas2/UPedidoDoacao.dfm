inherited frmPedidoDoacao: TfrmPedidoDoacao
  BorderIcons = [biSystemMenu]
  Caption = 'Registro de Doa'#231#227'o'
  ClientHeight = 542
  ClientWidth = 1002
  FormStyle = fsMDIChild
  Position = poMainFormCenter
  Visible = True
  OnCloseQuery = FormCloseQuery
  OnResize = FormResize
  ExplicitWidth = 1010
  ExplicitHeight = 569
  PixelsPerInch = 96
  TextHeight = 13
  object pacoes: TPanel [0]
    Left = 0
    Top = 501
    Width = 1002
    Height = 41
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 461
    object BtnConsultar: TBitBtn
      Left = 6
      Top = 6
      Width = 100
      Height = 25
      Cursor = crHandPoint
      Caption = '&Consulta'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        CA010000424DCA01000000000000760000002800000027000000110000000100
        04000000000054010000CE0E0000D80E00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888888888888888888888888880887777777777777777888888888888888888
        8880800000000000000007888888888888888888888080888888888888880788
        8888888888888888888080FF8FF8FF8FF8FF0788888888888888888888808088
        88888888888807888888888888888888888080FF8FF8FF8FF8FF078888888888
        888888888880808888888888888807888888888888888888888080FF8FF8FF8F
        F8FF078888888888888888888880808888888888888807888888888888888888
        888080FF8FF8FF8FF8FF07888888888888888888888080000000000000000788
        8888888888888888888080FF7FF7FF7FF7FF0788888888888888888888808000
        0000000000000788888888888888888888808080CCCCCCCCCCCC078888888888
        8888888888808000000000000000088888888888888888888880888888888888
        8888888888888888888888888880}
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 0
      TabStop = False
      OnClick = BtnConsultarClick
    end
    object BtnNovo: TBitBtn
      Left = 211
      Top = 6
      Width = 100
      Height = 25
      Cursor = crHandPoint
      Caption = '&Novo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        E6000000424DE60000000000000076000000280000000E0000000E0000000100
        04000000000070000000CE0E0000D80E00001000000000000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3300333333333333330033333333333333003333300033333300333330003333
        3300333330003333330033000000000333003300000000033300330000000003
        3300333330003333330033333000333333003333300033333300333333333333
        33003333333333333300}
      ParentFont = False
      TabOrder = 1
      TabStop = False
      OnClick = BtnNovoClick
    end
    object BtnAlterar: TBitBtn
      Left = 314
      Top = 6
      Width = 100
      Height = 25
      Cursor = crHandPoint
      Hint = 'Edita Pedido'
      Caption = 'Editar'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        36060000424D3606000000000000360400002800000020000000100000000100
        0800000000000002000000000000000000000001000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
        A6000020400000206000002080000020A0000020C0000020E000004000000040
        20000040400000406000004080000040A0000040C0000040E000006000000060
        20000060400000606000006080000060A0000060C0000060E000008000000080
        20000080400000806000008080000080A0000080C0000080E00000A0000000A0
        200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
        200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
        200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
        20004000400040006000400080004000A0004000C0004000E000402000004020
        20004020400040206000402080004020A0004020C0004020E000404000004040
        20004040400040406000404080004040A0004040C0004040E000406000004060
        20004060400040606000406080004060A0004060C0004060E000408000004080
        20004080400040806000408080004080A0004080C0004080E00040A0000040A0
        200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
        200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
        200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
        20008000400080006000800080008000A0008000C0008000E000802000008020
        20008020400080206000802080008020A0008020C0008020E000804000008040
        20008040400080406000804080008040A0008040C0008040E000806000008060
        20008060400080606000806080008060A0008060C0008060E000808000008080
        20008080400080806000808080008080A0008080C0008080E00080A0000080A0
        200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
        200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
        200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
        2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
        2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
        2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
        2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
        2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
        2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
        2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF000300000000A4
        00000000A4000303030303A4A4A4A4A4A4A4A4A4A4A4FF0303030300F6F6F6F6
        0008A4A400A40303030303A4FF030303A4FF0303A4A4FF0303030300F6F6F6F6
        00F6072F2F000303030303A4FF030303A4FF030303A4FF0303030300F6A4A4F6
        0007FB1D2F2F0003030303A4FF030303A4FF03030303A4FF03030300F6F6F6F6
        F600FBFB1D2F9000030303A4FF03030303A4FF03030303A4FF030300F6A4A4A4
        A4F600FBFBF79090000303A4FF0303030303A4FF03030303A4FF0300F6F6F6F6
        F6F6F600FBF71E0D0D0003A4FF030303030303A4FF03030303A40300FFA4A4A4
        A4A4A4F600F70DA7A70003A4FF03030303030303A4FF030303A40300FFF6F6F6
        F6F6F6F6F60067AF160003A4FF0303030303030303A4FFFFFFA40300FFA4A4A4
        A4A4A4A4F6A40000000303A4FF0303030303030303A4A4A4A4FF0300FFFFFFF6
        F6F6F6F6F6000303030303A4FF0303030303030303A4FF0303030300FFA4A4A4
        A4F6F6F6F6000303030303A4FF0303030303030303A4FF0303030300FFFFFFFF
        FFF6000000000303030303A4FF0303030303A4A4A4A4FF0303030300FFA4A4A4
        A4FF00F600030303030303A4FF0303030303A4FFA4FF030303030300FFFFFFFF
        FFFF000003030303030303A4FFFFFFFFFFFFA4A4FF0303030303030000000000
        0000030303030303030303A4A4A4A4A4A4A4FF03030303030303}
      NumGlyphs = 2
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      TabStop = False
      OnClick = BtnAlterarClick
    end
    object BtnExcluir: TBitBtn
      Left = 418
      Top = 6
      Width = 100
      Height = 25
      Cursor = crHandPoint
      Hint = 'Estorna faturamento e marca pedido como cancelado'
      Caption = 'Cancela&r'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        E6000000424DE60000000000000076000000280000000E0000000E0000000100
        04000000000070000000CE0E0000D80E00001000000000000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3300333333333333330033333333333333003333333333333300333333333333
        3300333333333333330033000000000033003300000000003300330000000000
        3300333333333333330033333333333333003333333333333300333333333333
        33003333333333333300}
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      TabStop = False
      OnClick = BtnExcluirClick
    end
    object BtnGravar: TBitBtn
      Left = 522
      Top = 6
      Width = 100
      Height = 25
      Cursor = crHandPoint
      Hint = '|Grava registro...'
      Caption = '&Salvar'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
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
      TabOrder = 4
      TabStop = False
      OnClick = BtnGravarClick
    end
    object Bit_Sair: TBitBtn
      Left = 895
      Top = 6
      Width = 100
      Height = 25
      Cursor = crHandPoint
      Caption = '&Sair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000C40E0000C40E00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333330
        0000333333333333777711111111000BB030377777777777337F1EEEEEEE0BBB
        B030373333333733337F1EEEEEEE0BBBB03037F333333733337F1EEEEEEE0BBB
        B03037F333333733337F1EEEEEEE0BBBB03037F333333733337F1EEEEEEE0BBB
        B03037F3333337F3337F1EEEEEEE0BBB003037F3333337F3377F1EEEEEEE0BBB
        B03037F3333337F3337F1EEEEEEE0BBBB03037F3333337F3337F1EEEEEEE0BBB
        B03037F3333337F3337F1EEEEEEE0BBBB03037F3333337F3337F1EEEEEEE0BBB
        B03037FFFFFF37FF337F11111111000BB030377777777777337F333333333330
        0000333333333333777733333333333333333333333333333333}
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 5
      TabStop = False
      OnClick = Bit_SairClick
    end
    object BtnCancelar: TBitBtn
      Left = 622
      Top = 6
      Width = 100
      Height = 25
      Cursor = crHandPoint
      Hint = '|Cancela registro atual...'
      Caption = '&Abandonar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
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
      TabOrder = 6
      TabStop = False
      OnClick = BtnCancelarClick
    end
    object btPesqClinte: TBitBtn
      Left = 107
      Top = 6
      Width = 101
      Height = 25
      Cursor = crHandPoint
      Hint = 'Pesquisa Cliente'
      Caption = 'C&lientes'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      NumGlyphs = 2
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      TabStop = False
      OnClick = btPesqClinteClick
    end
    object ClienteF4: TSgDbSearchCombo
      Left = 53
      Top = 6
      Width = 102
      Height = 24
      EmptyText = 'TODOS OS CLIENTES'
      TabOrder = 8
      CharCase = ecUpperCase
      Visible = False
      font.Charset = DEFAULT_CHARSET
      font.Color = clWindowText
      font.Height = -13
      font.Name = 'Tahoma'
      font.Style = []
      LookupSelect = 'CLI_CODIGO,CLI_RAZAO,CLI_FANTASIA'
      LookupOrderBy = 'CLI_RAZAO'
      LookupTable = 'cli0000'
      LookupDispl = 'CLI_RAZAO'
      OnButtonClick = ClienteF4ButtonClick
      GridAutoSize = False
      LookupSource = qAux
      DataField = 'CLI_CODIGO'
      DataSource = dsPedido
      LookupKeyField = 'CLI_CODIGO'
      ShowButton = True
      LookupTableShare = 'clientes'
      AutoF8WinTitulo = 'Clientes'
      AutoF8ColumnsTitulo = 'C'#243'digo, Nome, Fantasia'
      GridLeft = 0
      GridWidth = 0
      GridHeight = 100
      GridShowWhenEnter = False
      SelectWithDoubleClick = False
    end
    object btnAgenda: TBitBtn
      Left = 723
      Top = 6
      Width = 81
      Height = 25
      Cursor = crHandPoint
      Caption = 'Agenda'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      NumGlyphs = 2
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 9
      TabStop = False
      OnClick = btnAgendaClick
    end
    object BitBtn1: TBitBtn
      Left = 805
      Top = 6
      Width = 87
      Height = 25
      Cursor = crHandPoint
      Caption = 'Renova'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      NumGlyphs = 2
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 10
      TabStop = False
      OnClick = BitBtn1Click
    end
  end
  object pParcelas: TPanel [1]
    Left = 633
    Top = 0
    Width = 369
    Height = 501
    Align = alClient
    TabOrder = 1
    ExplicitHeight = 461
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 367
      Height = 499
      Align = alClient
      DataSource = dsParcelas
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'nparcela'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Parcela'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Width = 51
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DataParcela'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Data vencimento'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Width = 137
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ValorParcela'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Valor parcela'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Width = 106
          Visible = True
        end>
    end
  end
  object Panel1: TPanel [2]
    Left = 0
    Top = 0
    Width = 633
    Height = 501
    Align = alLeft
    TabOrder = 2
    ExplicitHeight = 461
    object pinforPrincipais: TPanel
      Left = 1
      Top = 121
      Width = 631
      Height = 379
      Align = alClient
      TabOrder = 0
      ExplicitHeight = 339
      object Label7: TLabel
        Left = 39
        Top = 11
        Width = 93
        Height = 16
        Alignment = taRightJustify
        Caption = 'N'#250'mero Pedido:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 270
        Top = 12
        Width = 90
        Height = 16
        Alignment = taRightJustify
        Caption = 'Tipo de Pedido:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 38
        Top = 247
        Width = 97
        Height = 16
        Alignment = taRightJustify
        Caption = 'Forma de Pagto:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label10: TLabel
        Left = 76
        Top = 42
        Width = 58
        Height = 16
        Alignment = taRightJustify
        Caption = 'Vendedor:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 86
        Top = 69
        Width = 44
        Height = 16
        Alignment = taRightJustify
        Caption = 'Cliente:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 14
        Top = 127
        Width = 120
        Height = 16
        Alignment = taRightJustify
        Caption = 'N'#250'mero de parcelas:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 20
        Top = 187
        Width = 113
        Height = 16
        Alignment = taRightJustify
        Caption = 'In'#237'cio da 1'#170' parcela:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel
        Left = 93
        Top = 220
        Width = 41
        Height = 16
        Alignment = taRightJustify
        Caption = 'Banco:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label12: TLabel
        Left = 37
        Top = 98
        Width = 97
        Height = 16
        Alignment = taRightJustify
        Caption = 'Valor da parcela:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        Left = 398
        Top = 162
        Width = 95
        Height = 16
        Alignment = taRightJustify
        Caption = 'Total da doa'#231#227'o:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 52
        Top = 276
        Width = 80
        Height = 16
        Alignment = taRightJustify
        Caption = 'Centro Custo:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 42
        Top = 159
        Width = 92
        Height = 16
        Alignment = taRightJustify
        Caption = 'Tipo da parcela:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object edSituacao: TDBText
        Left = 512
        Top = 336
        Width = 114
        Height = 17
        DataField = 'PED_SITUACAO'
        DataSource = dsPedido
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHotLight
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label17: TLabel
        Left = 3
        Top = 334
        Width = 129
        Height = 16
        Alignment = taRightJustify
        Caption = 'Unidade consumidora:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label18: TLabel
        Left = 21
        Top = 303
        Width = 109
        Height = 16
        Alignment = taRightJustify
        Caption = 'Conta Fiananceira:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object edVendedor: TSgDbSearchCombo
        Left = 196
        Top = 38
        Width = 399
        Height = 24
        TabStop = False
        TabOrder = 12
        CharCase = ecUpperCase
        font.Charset = DEFAULT_CHARSET
        font.Color = clWindowText
        font.Height = -13
        font.Name = 'Tahoma'
        font.Style = []
        LookupSelect = 'rep_codigo, rep_nome'
        LookupOrderBy = 'rep_nome'
        LookupTable = 'rep0000'
        LookupDispl = 'REP_NOME'
        OnSelect = edVendedorSelect
        GridAutoSize = False
        LookupSource = qRep
        DataField = 'REP_CODIGO'
        DataSource = dsPedido
        LookupKeyField = 'rep_codigo'
        ShowButton = True
        LookupTableShare = 'REPRESENTANTES'
        AutoF8WinTitulo = 'Vendedores'
        AutoF8ColumnsTitulo = 'C'#243'digo, Nome'
        GridLeft = 0
        GridWidth = 0
        GridHeight = 100
        GridShowWhenEnter = False
        SelectWithDoubleClick = False
      end
      object edFPagto: TSgDbSearchCombo
        Left = 138
        Top = 244
        Width = 265
        Height = 24
        TabOrder = 8
        CharCase = ecUpperCase
        font.Charset = DEFAULT_CHARSET
        font.Color = clWindowText
        font.Height = -13
        font.Name = 'Tahoma'
        font.Style = []
        LookupSelect = 'FPG_DESCRICAO, FPG_REGISTRO'
        LookupOrderBy = 'FPG_DESCRICAO'
        LookupTable = 'FORMA_PAGAMENTO'
        LookupDispl = 'FPG_DESCRICAO'
        GridAutoSize = False
        LookupSource = qFPagto
        DataField = 'FPG_REGISTRO'
        DataSource = dsPedido
        LookupKeyField = 'FPG_REGISTRO'
        ShowButton = True
        AutoF8WinTitulo = 'Formas de Pagamento'
        AutoF8ColumnsTitulo = 'C'#243'digo, Descri'#231#227'o'
        GridLeft = 0
        GridWidth = 0
        GridHeight = 100
        GridShowWhenEnter = False
        SelectWithDoubleClick = False
      end
      object EdPedidoNumero: TDBEdit
        Left = 138
        Top = 7
        Width = 79
        Height = 24
        TabStop = False
        DataField = 'PED_CODIGO'
        DataSource = dsPedido
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 10
      end
      object DBEdit2: TDBEdit
        Left = 138
        Top = 124
        Width = 80
        Height = 27
        DataField = 'PED_PARCELA'
        DataSource = dsPedido
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnExit = CalculoParcelasExit
      end
      object DBEdit3: TDBEdit
        Left = 138
        Top = 38
        Width = 57
        Height = 24
        TabStop = False
        DataField = 'REP_CODIGO'
        DataSource = dsPedido
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 11
        OnExit = DBEdit3Exit
      end
      object edCodigoCliente: TDBEdit
        Left = 138
        Top = 66
        Width = 57
        Height = 24
        DataField = 'CLI_CODIGO'
        DataSource = dsPedido
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object SgDbSearchCombo1: TSgDbSearchCombo
        Left = 367
        Top = 7
        Width = 228
        Height = 24
        TabStop = False
        TabOrder = 13
        CharCase = ecUpperCase
        font.Charset = DEFAULT_CHARSET
        font.Color = clWindowText
        font.Height = -13
        font.Name = 'Tahoma'
        font.Style = []
        LookupSelect = 'OPV_CODIGO, OPV_DESCRICAO'
        LookupOrderBy = 'OPV_DESCRICAO'
        LookupTable = 'opv0000'
        LookupDispl = 'OPV_DESCRICAO'
        GridAutoSize = False
        LookupSource = qOpv
        DataField = 'OPV_CODIGO'
        DataSource = dsPedido
        LookupKeyField = 'OPV_CODIGO'
        ShowButton = True
        AutoF8WinTitulo = 'Tipo de Pedido'
        AutoF8ColumnsTitulo = 'C'#243'digo, Descri'#231#227'o'
        GridLeft = 0
        GridWidth = 0
        GridHeight = 100
        GridShowWhenEnter = False
        SelectWithDoubleClick = False
      end
      object CbBancos: TComboBoxRw
        Left = 138
        Top = 215
        Width = 266
        Height = 24
        TabOrder = 7
        CharCase = ecUpperCase
        font.Charset = DEFAULT_CHARSET
        font.Color = clWindowText
        font.Height = -13
        font.Name = 'Tahoma'
        font.Style = []
        LookupSelect = 'BAN_CODIGO,BAN_APELIDO,BAN_COBTIPO,BAN_COD_APELIDO, FPG_REGISTRO'
        LookupOrderBy = 'ban_apelido'
        LookupTable = 'ban0000'
        LookupDispl = 'BAN_APELIDO'
        OnSelect = CbBancosSelect
        GridAutoSize = False
        LookupSource = CbBancos.InternalSource
        DataField = 'BAN_CODIGO'
        DataSource = dsPedido
        LookupKeyField = 'BAN_CODIGO'
        ShowButton = True
        LookupTableShare = 'BANCOS'
        AutoF8WinTitulo = 'Bancos'
        AutoF8ColumnsTitulo = 'C'#243'digo, Apelido'
        GridLeft = 0
        GridWidth = 0
        GridHeight = 100
        GridShowWhenEnter = False
        SelectWithDoubleClick = False
        Tabela = 'ban0000'
        CamposCarregar = 'BAN_CODIGO,BAN_APELIDO,BAN_COBTIPO,BAN_COD_APELIDO, FPG_REGISTRO'
        CamposRetornar = 'BAN_CODIGO'
        CamposOrdernar = 'ban_apelido'
        ConexaoBanco = DBConn
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
      object JvDBDateEdit1: TJvDBDateEdit
        Left = 138
        Top = 184
        Width = 136
        Height = 27
        DataField = 'PED_INICIOPAG'
        DataSource = dsPedido
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ShowNullDate = False
        TabOrder = 6
        OnExit = CalculoParcelasExit
      end
      object PesqCliente: TSgDbSearchCombo
        Left = 196
        Top = 66
        Width = 399
        Height = 24
        EmptyText = 'TODOS OS CLIENTES'
        TabOrder = 1
        CharCase = ecUpperCase
        font.Charset = DEFAULT_CHARSET
        font.Color = clWindowText
        font.Height = -13
        font.Name = 'Tahoma'
        font.Style = []
        LookupSelect = 'CLI_CODIGO,CLI_RAZAO,CLI_FANTASIA'
        LookupOrderBy = 'CLI_RAZAO'
        LookupTable = 'cli0000'
        LookupDispl = 'CLI_RAZAO'
        OnButtonClick = PesqClienteButtonClick
        OnSelect = PesqClienteSelect
        GridAutoSize = False
        LookupSource = qAux
        DataField = 'CLI_CODIGO'
        DataSource = dsPedido
        LookupKeyField = 'CLI_CODIGO'
        ShowButton = True
        LookupTableShare = 'clientes'
        AutoF8WinTitulo = 'Clientes'
        AutoF8ColumnsTitulo = 'C'#243'digo, Nome, Fantasia'
        GridLeft = 0
        GridWidth = 0
        GridHeight = 100
        GridShowWhenEnter = False
        SelectWithDoubleClick = False
      end
      object edValorParcela: TDBEdit
        Left = 138
        Top = 95
        Width = 80
        Height = 27
        DataField = 'PED_VLPARCELA'
        DataSource = dsPedido
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnExit = CalculoParcelasExit
      end
      object DBEdit1: TDBEdit
        Left = 496
        Top = 156
        Width = 111
        Height = 27
        TabStop = False
        DataField = 'PED_VLTOTAL'
        DataSource = dsParcelas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 5
      end
      object edCCusto: TSgDbSearchCombo
        Left = 138
        Top = 273
        Width = 457
        Height = 24
        TabOrder = 9
        CharCase = ecUpperCase
        font.Charset = DEFAULT_CHARSET
        font.Color = clWindowText
        font.Height = -13
        font.Name = 'Tahoma'
        font.Style = []
        LookupSelect = 'PCX_CODIGO, PCX_DESCRI'
        LookupOrderBy = 'PCX_DESCRI'
        LookupTable = 'pcx0000'
        LookupDispl = 'PCX_DESCRI'
        GridAutoSize = False
        LookupSource = qCCusto
        DataField = 'PCX_CODIGO'
        DataSource = dsPedido
        LookupKeyField = 'PCX_CODIGO'
        FiltroTabela = 'PCX_TIPO = '#39'L'#39' AND PCX_TERMINADO = '#39'N'#39
        ShowButton = True
        AutoF8WinTitulo = 'Centros de Custos'
        AutoF8ColumnsTitulo = 'C'#243'digo, Descri'#231#227'o'
        GridLeft = 0
        GridWidth = 0
        GridHeight = 100
        GridShowWhenEnter = False
        SelectWithDoubleClick = False
      end
      object rtipo: TJvDBComboBox
        Left = 138
        Top = 156
        Width = 136
        Height = 24
        DataField = 'PED_TIPOPARCELA'
        DataSource = dsPedido
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Items.Strings = (
          'Mensal'
          'Bimestral'
          'Trimestral'
          'Semestral'
          'Anual'
          #218'nica')
        ParentFont = False
        TabOrder = 4
        Values.Strings = (
          'Mensal'
          'Bimestral'
          'Trimestral'
          'Semestral'
          'Anual'
          #218'nica')
        ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
        ListSettings.OutfilteredValueFont.Color = clRed
        ListSettings.OutfilteredValueFont.Height = -11
        ListSettings.OutfilteredValueFont.Name = 'Tahoma'
        ListSettings.OutfilteredValueFont.Style = []
        OnExit = CalculoParcelasExit
      end
      object DBEdit4: TDBEdit
        Left = 138
        Top = 330
        Width = 121
        Height = 24
        DataField = 'PED_UND_CONSUMIDORA'
        DataSource = dsPedido
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 12
        ParentFont = False
        TabOrder = 14
      end
      object cbContaFinanceira: TSgDbSearchCombo
        Left = 138
        Top = 302
        Width = 457
        Height = 21
        TabOrder = 15
        CharCase = ecUpperCase
        LookupSelect = 'CCT_CODIGO, CCT_NIVEL, CCT_DESCRI'
        LookupOrderBy = 'CCT_DESCRI'
        LookupTable = 'CCT_0000'
        LookupDispl = 'CCT_DESCRI'
        GridAutoSize = False
        LookupSource = qContafinanceira
        DataField = 'CCT_CODIGO'
        DataSource = dsPedido
        LookupKeyField = 'CCT_CODIGO'
        ShowButton = True
        AutoF8WinTitulo = 'Conta Fiananceira'
        AutoF8ColumnsTitulo = 'C'#243'digo, N'#237'vel, Descri'#231#227'o'
        GridLeft = 0
        GridWidth = 0
        GridHeight = 100
        GridShowWhenEnter = False
        SelectWithDoubleClick = False
      end
    end
    object presultado: TPanel
      Left = 1
      Top = 1
      Width = 631
      Height = 120
      Align = alTop
      TabOrder = 1
      object Label13: TLabel
        Left = 324
        Top = 2
        Width = 33
        Height = 19
        Caption = 'Hoje'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label14: TLabel
        Left = 171
        Top = 4
        Width = 54
        Height = 19
        Caption = 'No m'#234's'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label15: TLabel
        Left = 25
        Top = 3
        Width = 87
        Height = 19
        Caption = 'M'#234's anterior'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label16: TLabel
        Left = 480
        Top = 2
        Width = 67
        Height = 19
        Caption = 'Meta m'#234's'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object edQtdeHoje: TEdit
        Left = 321
        Top = 27
        Width = 140
        Height = 30
        TabStop = False
        Alignment = taCenter
        AutoSelect = False
        AutoSize = False
        Color = 36095
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
      end
      object edQtdeMes: TEdit
        Left = 170
        Top = 27
        Width = 140
        Height = 30
        TabStop = False
        Alignment = taCenter
        AutoSelect = False
        AutoSize = False
        Color = clYellow
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 4
      end
      object edQtdeMesAnt: TEdit
        Left = 20
        Top = 27
        Width = 140
        Height = 30
        TabStop = False
        Alignment = taCenter
        AutoSelect = False
        AutoSize = False
        Color = clSilver
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 5
      end
      object edPercAtingido: TMaskEdit
        Left = 477
        Top = 64
        Width = 140
        Height = 30
        TabStop = False
        Alignment = taCenter
        AutoSelect = False
        AutoSize = False
        Color = clWhite
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 7
        Text = ''
      end
      object edVlrMesAnt: TJvValidateEdit
        Left = 20
        Top = 64
        Width = 140
        Height = 30
        TabStop = False
        AutoSelect = False
        AutoSize = False
        Color = clSilver
        CriticalPoints.MaxValueIncluded = False
        CriticalPoints.MinValueIncluded = False
        DisplayFormat = dfCurrency
        DecimalPlaces = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
        ZeroEmpty = True
      end
      object edMetaMes: TJvValidateEdit
        Left = 477
        Top = 27
        Width = 140
        Height = 30
        TabStop = False
        AutoSelect = False
        AutoSize = False
        Color = clHotLight
        CriticalPoints.MaxValueIncluded = False
        CriticalPoints.MinValueIncluded = False
        DisplayFormat = dfCurrency
        DecimalPlaces = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindow
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 6
        ZeroEmpty = True
      end
      object edVlrHoje: TJvValidateEdit
        Left = 321
        Top = 64
        Width = 140
        Height = 30
        TabStop = False
        AutoSelect = False
        AutoSize = False
        Color = 36095
        CriticalPoints.MaxValueIncluded = False
        CriticalPoints.MinValueIncluded = False
        DisplayFormat = dfCurrency
        DecimalPlaces = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        ZeroEmpty = True
      end
      object edVlrMes: TJvValidateEdit
        Left = 170
        Top = 64
        Width = 140
        Height = 30
        TabStop = False
        AutoSelect = False
        AutoSize = False
        Color = clYellow
        CriticalPoints.MaxValueIncluded = False
        CriticalPoints.MinValueIncluded = False
        DisplayFormat = dfCurrency
        DecimalPlaces = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        ZeroEmpty = True
      end
    end
  end
  inherited coCalcula: TACBrCalculadora
    Left = 824
    Top = 320
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 696
    Top = 344
  end
  inherited DBConn: TSQLConnection
    Left = 840
    Top = 273
  end
  inherited qAux: TSQLQuery
    Left = 714
    Top = 293
  end
  inherited qAux2: TSQLQuery
    Left = 642
    Top = 300
  end
  inherited qAux3: TSQLQuery
    Left = 682
    Top = 404
  end
  object qCli: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select t1.cli_codigo,'
      '       t1.cli_tabpreco,'
      '       t1.cli_razao,'
      '       t1.cli_cgc,'
      '       t1.cli_insc,'
      '       t2.cid_cidade,'
      '       t2.cid_estado,'
      '       t1.cli_modo_trib_st,'
      '       cn1.cnae_carga_trib_media,'
      '       t1.pcx_codigo,'
      '       t1.cli_consfinal,'
      '       t1.CLI_REGIME_TRIBUTARIO,'
      '       t1.OPE_CODIGO,'
      '       t1.pcl_codigo,'
      '       t3.pcl_nome,'
      '       t1.REP_CODIGO,'
      '       t1.TRP_CODIGO,'
      '       t1.cli_fone'
      'from cli0000 t1'
      '       left join cid0000 t2 on (t2.cid_codigo = t1.cid_codigo)'
      
        '       LEFT JOIN cnae CN1 ON (CN1.cnae_registro = t1.cnae_regist' +
        'ro)'
      '       left join pcl0000 t3 on (t3.pcl_codigo = t1.pcl_codigo)'
      'Where t1.Cli_Codigo='#39'-1'#39
      'order by t1.cli_razao'
      ''
      '')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 769
    Top = 236
  end
  object qRep: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select rep_codigo, rep_nome'
      'from rep0000'
      'Where rep_codigo='#39'-1'#39
      'order by rep_nome'
      ''
      '')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 753
    Top = 284
  end
  object qFPagto: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select FPG_DESCRICAO, FPG_REGISTRO'
      'from FORMA_PAGAMENTO'
      'Where FPG_REGISTRO='#39'-1'#39
      'order by FPG_DESCRICAO'
      ''
      '')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 905
    Top = 164
  end
  object qPedido: TSQLQuery
    Params = <>
    Left = 672
    Top = 40
    object qPedidoPED_REGISTRO: TIntegerField
      FieldName = 'PED_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qPedidoPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 7
    end
    object qPedidoOPV_CODIGO: TIntegerField
      FieldName = 'OPV_CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object qPedidoPED_DTENTRADA: TSQLTimeStampField
      FieldName = 'PED_DTENTRADA'
      ProviderFlags = [pfInUpdate]
    end
    object qPedidoREP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object qPedidoPED_COMIS1: TFMTBCDField
      FieldName = 'PED_COMIS1'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 4
    end
    object qPedidoPED_NUMERO_PED_CLIENTE: TStringField
      FieldName = 'PED_NUMERO_PED_CLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object qPedidoPED_CONTATO_CLIENTE: TStringField
      FieldName = 'PED_CONTATO_CLIENTE'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object qPedidoPED_SITUACAO: TStringField
      FieldName = 'PED_SITUACAO'
      ProviderFlags = [pfInUpdate]
      OnGetText = cdsPedidoPED_SITUACAOGetText
      FixedChar = True
      Size = 1
    end
    object qPedidoPED_OBSERVACAO: TBlobField
      FieldName = 'PED_OBSERVACAO'
      ProviderFlags = [pfInUpdate]
    end
    object qPedidoCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object qPedidoBAN_CODIGO: TStringField
      FieldName = 'BAN_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object qPedidoPED_PARCELA: TIntegerField
      FieldName = 'PED_PARCELA'
      ProviderFlags = [pfInUpdate]
    end
    object qPedidoPED_INICIOPAG: TDateField
      FieldName = 'PED_INICIOPAG'
      ProviderFlags = [pfInUpdate]
    end
    object qPedidoPED_TIPOPARCELA: TStringField
      FieldName = 'PED_TIPOPARCELA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object qPedidoPED_VLTOTAL_BRUTO: TFMTBCDField
      FieldName = 'PED_VLTOTAL_BRUTO'
      ProviderFlags = [pfInUpdate]
      EditFormat = '###,###,##0.00'
      Precision = 15
    end
    object qPedidoFPG_REGISTRO: TIntegerField
      FieldName = 'FPG_REGISTRO'
      ProviderFlags = [pfInUpdate]
    end
    object qPedidoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object qPedidoPED_VLTOTAL_LIQ: TFMTBCDField
      FieldName = 'PED_VLTOTAL_LIQ'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object qPedidoPED_VLPARCELA: TFMTBCDField
      FieldName = 'PED_VLPARCELA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object qPedidoPCX_CODIGO: TStringField
      FieldName = 'PCX_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object qPedidoPED_UND_CONSUMIDORA: TIntegerField
      FieldName = 'PED_UND_CONSUMIDORA'
    end
    object qPedidoPED_VLFATURADO: TFMTBCDField
      FieldName = 'PED_VLFATURADO'
      Precision = 15
    end
    object qPedidoCCT_CODIGO: TStringField
      FieldName = 'CCT_CODIGO'
      Size = 3
    end
  end
  object cdsPedido: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPedido'
    Left = 672
    Top = 136
    object cdsPedidoPED_REGISTRO: TIntegerField
      FieldName = 'PED_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPedidoPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 7
    end
    object cdsPedidoOPV_CODIGO: TIntegerField
      FieldName = 'OPV_CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsPedidoPED_DTENTRADA: TSQLTimeStampField
      FieldName = 'PED_DTENTRADA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsPedidoREP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object cdsPedidoPED_COMIS1: TFMTBCDField
      FieldName = 'PED_COMIS1'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 4
    end
    object cdsPedidoPED_NUMERO_PED_CLIENTE: TStringField
      FieldName = 'PED_NUMERO_PED_CLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsPedidoPED_CONTATO_CLIENTE: TStringField
      FieldName = 'PED_CONTATO_CLIENTE'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsPedidoPED_SITUACAO: TStringField
      FieldName = 'PED_SITUACAO'
      ProviderFlags = [pfInUpdate]
      OnGetText = cdsPedidoPED_SITUACAOGetText
      FixedChar = True
      Size = 1
    end
    object cdsPedidoPED_OBSERVACAO: TBlobField
      FieldName = 'PED_OBSERVACAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsPedidoCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object cdsPedidoBAN_CODIGO: TStringField
      FieldName = 'BAN_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object cdsPedidoPED_PARCELA: TIntegerField
      FieldName = 'PED_PARCELA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsPedidoPED_INICIOPAG: TDateField
      FieldName = 'PED_INICIOPAG'
      ProviderFlags = [pfInUpdate]
    end
    object cdsPedidoPED_TIPOPARCELA: TStringField
      FieldName = 'PED_TIPOPARCELA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsPedidoPED_VLTOTAL_BRUTO: TFMTBCDField
      FieldName = 'PED_VLTOTAL_BRUTO'
      ProviderFlags = [pfInUpdate]
      EditFormat = '###,###,##0.00'
      Precision = 15
    end
    object cdsPedidoFPG_REGISTRO: TIntegerField
      FieldName = 'FPG_REGISTRO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsPedidoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object cdsPedidoPED_VLTOTAL_LIQ: TFMTBCDField
      FieldName = 'PED_VLTOTAL_LIQ'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object cdsPedidoPED_VLPARCELA: TFMTBCDField
      FieldName = 'PED_VLPARCELA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object cdsPedidoPCX_CODIGO: TStringField
      FieldName = 'PCX_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object cdsPedidoPED_UND_CONSUMIDORA: TIntegerField
      FieldName = 'PED_UND_CONSUMIDORA'
    end
    object cdsPedidoPED_VLFATURADO: TFMTBCDField
      FieldName = 'PED_VLFATURADO'
      Precision = 15
    end
    object cdsPedidoCCT_CODIGO: TStringField
      FieldName = 'CCT_CODIGO'
      Size = 3
    end
  end
  object dspPedido: TDataSetProvider
    DataSet = qPedido
    Left = 672
    Top = 88
  end
  object dsPedido: TDataSource
    DataSet = cdsPedido
    Left = 672
    Top = 192
  end
  object cdsParcelas: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    AutoCalcFields = False
    FieldDefs = <>
    IndexDefs = <
      item
        Name = 'cdsParcelasIndex1'
        Fields = 'nparcela'
      end>
    IndexName = 'cdsParcelasIndex1'
    Params = <>
    ProviderName = 'dspPedido'
    StoreDefs = True
    Left = 840
    Top = 392
    object cdsParcelasDataParcela: TDateField
      FieldName = 'DataParcela'
    end
    object cdsParcelasValorParcela: TFMTBCDField
      FieldName = 'ValorParcela'
      EditFormat = '###,###,##0.00'
      Precision = 15
    end
    object cdsParcelasnparcela: TIntegerField
      FieldName = 'nparcela'
    end
    object cdsParcelasPED_VLTOTAL: TAggregateField
      FieldName = 'PED_VLTOTAL'
      Visible = True
      Active = True
      currency = True
      DisplayName = ''
      DisplayFormat = '###,###,####0.00'
      Expression = 'SUM(ValorParcela)'
    end
  end
  object dsParcelas: TDataSource
    DataSet = cdsParcelas
    Left = 848
    Top = 168
  end
  object qOpv: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select t1.cli_codigo,'
      '       t1.cli_tabpreco,'
      '       t1.cli_razao,'
      '       t1.cli_cgc,'
      '       t1.cli_insc,'
      '       t2.cid_cidade,'
      '       t2.cid_estado,'
      '       t1.cli_modo_trib_st,'
      '       cn1.cnae_carga_trib_media,'
      '       t1.pcx_codigo,'
      '       t1.cli_consfinal,'
      '       t1.CLI_REGIME_TRIBUTARIO,'
      '       t1.OPE_CODIGO,'
      '       t1.pcl_codigo,'
      '       t3.pcl_nome,'
      '       t1.REP_CODIGO,'
      '       t1.TRP_CODIGO,'
      '       t1.cli_fone'
      'from cli0000 t1'
      '       left join cid0000 t2 on (t2.cid_codigo = t1.cid_codigo)'
      
        '       LEFT JOIN cnae CN1 ON (CN1.cnae_registro = t1.cnae_regist' +
        'ro)'
      '       left join pcl0000 t3 on (t3.pcl_codigo = t1.pcl_codigo)'
      'Where t1.Cli_Codigo='#39'-1'#39
      'order by t1.cli_razao'
      ''
      '')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 561
    Top = 124
  end
  object qCCusto: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select PCX_DESCRI,PCX_CODIGO'
      'from PCX0000'
      'where PCX_CODIGO='#39'-1'#39' and PCX_TIPO = '#39'L'#39
      'order by PCX_DESCRI'
      '')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 744
    Top = 404
  end
  object qContafinanceira: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DBConn
    Left = 624
    Top = 428
  end
end
