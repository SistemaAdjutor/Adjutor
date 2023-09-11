object FormTabelaMarkup: TFormTabelaMarkup
  Left = 251
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Tabela de Pre'#231'os e Comiss'#245'es Escalonadas - Aplica'#231#227'o de Markup '
  ClientHeight = 638
  ClientWidth = 767
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnDestroy = FormDestroy
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Label1: TLabel
    Left = 152
    Top = 18
    Width = 84
    Height = 14
    Caption = 'Linha do Produto:'
  end
  object Label13: TLabel
    Left = 21
    Top = 17
    Width = 79
    Height = 14
    Caption = 'C'#243'digo Registro:'
  end
  object DbRadFormacomissao: TDBRadioGroup
    Left = 400
    Top = 42
    Width = 240
    Height = 40
    Align = alCustom
    Caption = 'Forma de aplica'#231#227'o das Comiss'#245'es'
    Columns = 2
    DataField = 'MKP_TIPOCALCULO'
    DataSource = DataCadastros1.DsMarkup
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Items.Strings = (
      'De at'#233
      'Proporcional')
    ParentFont = False
    TabOrder = 2
    Values.Strings = (
      'D'
      'P')
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 85
    Width = 745
    Height = 56
    Caption = 
      'Markup'#180's (%) - para Comissionamento e forma'#231#227'o das Tabelas de Pr' +
      'e'#231'os'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 3
    object Label2: TLabel
      Left = 156
      Top = 30
      Width = 45
      Height = 13
      Caption = 'Tabela 2:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 273
      Top = 30
      Width = 45
      Height = 13
      Caption = 'Tabela 3:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 395
      Top = 31
      Width = 45
      Height = 13
      Caption = 'Tabela 4:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 510
      Top = 29
      Width = 45
      Height = 13
      Caption = 'Tabela 5:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 625
      Top = 30
      Width = 45
      Height = 13
      Caption = 'Tabela 6:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label14: TLabel
      Left = 8
      Top = 30
      Width = 68
      Height = 13
      Caption = 'P.Venda + :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label15: TLabel
      Left = 138
      Top = 27
      Width = 11
      Height = 20
      Caption = '+'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DbEditMkp2: TDBEdit
      Left = 203
      Top = 26
      Width = 55
      Height = 21
      DataField = 'MKP_PERC2'
      DataSource = DataCadastros1.DsMarkup
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object DbEdimkp3: TDBEdit
      Left = 318
      Top = 26
      Width = 55
      Height = 21
      DataField = 'MKP_PERC3'
      DataSource = DataCadastros1.DsMarkup
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object DbEditMkp4: TDBEdit
      Left = 441
      Top = 26
      Width = 55
      Height = 21
      DataField = 'MKP_PERC4'
      DataSource = DataCadastros1.DsMarkup
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object DbEditMkp5: TDBEdit
      Left = 555
      Top = 26
      Width = 55
      Height = 21
      DataField = 'MKP_PERC5'
      DataSource = DataCadastros1.DsMarkup
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object DbEditmkp6: TDBEdit
      Left = 671
      Top = 26
      Width = 55
      Height = 21
      DataField = 'MKP_PERC6'
      DataSource = DataCadastros1.DsMarkup
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object DbEditMkp_padrao: TDBEdit
      Left = 78
      Top = 26
      Width = 55
      Height = 21
      DataField = 'MKP_PERC1'
      DataSource = DataCadastros1.DsMarkup
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
  end
  object GroupBox2: TGroupBox
    Left = 7
    Top = 144
    Width = 745
    Height = 57
    Caption = 'Comiss'#227'o '#224' Pagar (%)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    object Label7: TLabel
      Left = 6
      Top = 29
      Width = 68
      Height = 13
      Caption = 'P.Venda + :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 155
      Top = 30
      Width = 45
      Height = 13
      Caption = 'Tabela 2:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 273
      Top = 30
      Width = 45
      Height = 13
      Caption = 'Tabela 3:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 396
      Top = 30
      Width = 45
      Height = 13
      Caption = 'Tabela 4:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 512
      Top = 30
      Width = 45
      Height = 13
      Caption = 'Tabela 5:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label12: TLabel
      Left = 626
      Top = 29
      Width = 45
      Height = 13
      Caption = 'Tabela 6:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DbEditcompadrao: TDBEdit
      Left = 78
      Top = 25
      Width = 55
      Height = 21
      DataField = 'MKP_COMIS1'
      DataSource = DataCadastros1.DsMarkup
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DbEditcom2: TDBEdit
      Left = 203
      Top = 25
      Width = 55
      Height = 21
      DataField = 'MKP_COMIS2'
      DataSource = DataCadastros1.DsMarkup
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object dbEditcom3: TDBEdit
      Left = 320
      Top = 25
      Width = 55
      Height = 21
      DataField = 'MKP_COMIS3'
      DataSource = DataCadastros1.DsMarkup
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object DbEditcom4: TDBEdit
      Left = 443
      Top = 25
      Width = 55
      Height = 21
      DataField = 'MKP_COMIS4'
      DataSource = DataCadastros1.DsMarkup
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object DbEditcom5: TDBEdit
      Left = 559
      Top = 25
      Width = 55
      Height = 21
      DataField = 'MKP_COMIS5'
      DataSource = DataCadastros1.DsMarkup
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object DbEditcom6: TDBEdit
      Left = 673
      Top = 25
      Width = 55
      Height = 21
      DataField = 'MKP_COMIS6'
      DataSource = DataCadastros1.DsMarkup
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
  end
  object CbLinha: TComboBox
    Left = 274
    Top = 13
    Width = 368
    Height = 22
    Enabled = False
    TabOrder = 0
    Text = 'CbLinha'
    OnChange = CbLinhaChange
  end
  object DBGridMarkups: TDBGrid
    Left = 8
    Top = 205
    Width = 746
    Height = 122
    DataSource = DataCadastros1.DsMarkup
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 5
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Arial'
    TitleFont.Style = []
    OnCellClick = DBGridMarkupsCellClick
    OnKeyDown = DBGridMarkupsKeyDown
    OnKeyUp = DBGridMarkupsKeyUp
    Columns = <
      item
        Expanded = False
        FieldName = 'LIN_CODIGO'
        Title.Alignment = taCenter
        Title.Caption = 'LINHA'
        Width = 102
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MKP_AC_DC'
        Title.Caption = 'TC'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MKP_PERC1'
        Title.Alignment = taCenter
        Title.Caption = 'MKP 1'
        Width = 47
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MKP_PERC2'
        Title.Alignment = taCenter
        Title.Caption = 'MKP 2'
        Width = 47
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MKP_PERC3'
        Title.Alignment = taCenter
        Title.Caption = 'MKP 3'
        Width = 45
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MKP_PERC4'
        Title.Alignment = taCenter
        Title.Caption = 'MKP 4'
        Width = 45
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MKP_PERC5'
        Title.Alignment = taCenter
        Title.Caption = 'MKP 5'
        Width = 48
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MKP_PERC6'
        Title.Alignment = taCenter
        Title.Caption = 'MKP 6'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MKP_COMIS1'
        Title.Alignment = taCenter
        Title.Caption = 'COM 1'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MKP_COMIS2'
        Title.Alignment = taCenter
        Title.Caption = 'COM 2'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MKP_COMIS3'
        Title.Alignment = taCenter
        Title.Caption = 'COM 3'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MKP_COMIS4'
        Title.Alignment = taCenter
        Title.Caption = 'COM 4'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MKP_COMIS5'
        Title.Alignment = taCenter
        Title.Caption = 'COM 5'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MKP_COMIS6'
        Title.Alignment = taCenter
        Title.Caption = 'COM 6'
        Width = 50
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 3
    Top = 333
    Width = 515
    Height = 35
    BevelInner = bvLowered
    BevelOuter = bvLowered
    Caption = 'Panel2'
    Color = 12681984
    TabOrder = 6
    object Bit_novo: TBitBtn
      Left = 6
      Top = 5
      Width = 100
      Height = 26
      Cursor = crHandPoint
      Caption = '&Novo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
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
      TabOrder = 0
      TabStop = False
      OnClick = Bit_novoClick
    end
    object Bit_Gravar: TBitBtn
      Left = 208
      Top = 5
      Width = 100
      Height = 26
      Cursor = crHandPoint
      Hint = '|Grava registro...'
      Caption = '&Gravar'
      Enabled = False
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
      TabStop = False
      OnClick = Bit_GravarClick
    end
    object Bit_Cancelar: TBitBtn
      Left = 309
      Top = 5
      Width = 100
      Height = 26
      Cursor = crHandPoint
      Hint = '|Cancela registro atual...'
      Caption = '&Cancelar'
      Enabled = False
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
      TabStop = False
      OnClick = Bit_CancelarClick
    end
    object Bit_Sair: TBitBtn
      Left = 410
      Top = 5
      Width = 100
      Height = 26
      Cursor = crHandPoint
      Caption = '&Sair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
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
      ParentFont = False
      TabOrder = 3
      TabStop = False
      OnClick = Bit_SairClick
    end
    object Bit_Excluir: TBitBtn
      Left = 107
      Top = 5
      Width = 100
      Height = 26
      Cursor = crHandPoint
      Hint = '|Exclui registro atual..'
      Caption = '&Excluir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
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
      TabOrder = 4
      TabStop = False
      OnClick = Bit_ExcluirClick
    end
  end
  object Panel1: TPanel
    Left = 520
    Top = 333
    Width = 229
    Height = 35
    BevelInner = bvLowered
    BevelOuter = bvLowered
    Caption = 'Panel2'
    Color = 12681984
    TabOrder = 7
    object Bitcalculartab: TBitBtn
      Left = 5
      Top = 5
      Width = 219
      Height = 25
      Cursor = crHandPoint
      Hint = '|Grava registro...'
      Caption = 'Criar Tabelas de Pre'#231'os'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000010000000000000000000
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
      TabOrder = 0
      TabStop = False
      OnClick = BitcalculartabClick
    end
  end
  object EditMkp_codigo: TEdit
    Left = 102
    Top = 13
    Width = 33
    Height = 22
    Color = 14145495
    MaxLength = 3
    ReadOnly = True
    TabOrder = 8
  end
  object EditLIN_CODIGO: TEdit
    Left = 238
    Top = 13
    Width = 33
    Height = 22
    Color = 14145495
    ReadOnly = True
    TabOrder = 9
  end
  object GroupBox3: TGroupBox
    Left = 8
    Top = 371
    Width = 746
    Height = 258
    Caption = 'Produtos para Atualiza'#231#227'o da Tabela de Pre'#231'os'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 10
    object DBGrid1: TDBGrid
      Left = 4
      Top = 18
      Width = 733
      Height = 232
      DataSource = DsSQLCdsProdutos
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlue
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnTitleClick = DBGrid1TitleClick
      Columns = <
        item
          Expanded = False
          FieldName = 'PRD_REFER'
          Title.Caption = 'Refer'#234'ncia'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 89
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRD_DESCRI'
          Title.Caption = 'Descri'#231#227'o'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 223
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRD_PVENDA'
          Title.Alignment = taCenter
          Title.Caption = 'P.Venda'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRD_PVENDA2'
          Title.Alignment = taCenter
          Title.Caption = 'Pre'#231'o 2'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRD_PVENDA3'
          Title.Alignment = taCenter
          Title.Caption = 'Pre'#231'o 3'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRD_PVENDA4'
          Title.Alignment = taCenter
          Title.Caption = 'Pre'#231'o 4'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRD_PVENDA5'
          Title.Alignment = taCenter
          Title.Caption = 'Pre'#231'o 5'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRD_PVENDA6'
          Title.Alignment = taCenter
          Title.Caption = 'Pre'#231'o 6'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 65
          Visible = True
        end>
    end
  end
  object DbRadTipoCalculo: TDBRadioGroup
    Left = 9
    Top = 42
    Width = 264
    Height = 40
    Align = alCustom
    Caption = 'Tipo de C'#225'lculo'
    Columns = 2
    DataField = 'MKP_AC_DC'
    DataSource = DataCadastros1.DsMarkup
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Items.Strings = (
      'Acr'#233'scimo'
      'Desconto')
    ParentFont = False
    TabOrder = 1
    Values.Strings = (
      'A'
      'D')
  end
  object SqlCdsLinha: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 'select * from PRD_LINHA'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'select * from PRD_LINHA'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 656
    Top = 19
    object SqlCdsLinhaLIN_CODIGO: TStringField
      FieldName = 'LIN_CODIGO'
      Required = True
      Size = 3
    end
    object SqlCdsLinhaLIN_DESCRI: TStringField
      FieldName = 'LIN_DESCRI'
      Size = 30
    end
    object SqlCdsLinhaEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
  object SQLCdsMarkup: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 'select * from MKP0000 order by LIN_CODIGO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'select * from MKP0000 order by LIN_CODIGO'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 696
    Top = 11
    object SQLCdsMarkupMKP_CODIGO: TStringField
      FieldName = 'MKP_CODIGO'
      Required = True
      Size = 3
    end
    object SQLCdsMarkupLIN_CODIGO: TStringField
      FieldName = 'LIN_CODIGO'
      Size = 3
    end
  end
  object SQLCdsProdutos: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'select PRD_REFER, PRD_DESCRI, PTI_CODIGO, PRD_PVENDA, PRD_PVENDA' +
      '2, PRD_PVENDA3, PRD_PVENDA4, PRD_PVENDA5, PRD_PVENDA6 from PRD00' +
      '00 order by PRD_REFER'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'select PRD_REFER, PRD_DESCRI, PTI_CODIGO, PRD_PVENDA, PRD_PVENDA' +
      '2, PRD_PVENDA3, PRD_PVENDA4, PRD_PVENDA5, PRD_PVENDA6 from PRD00' +
      '00 order by PRD_REFER'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 360
    Top = 435
    object SQLCdsProdutosPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object SQLCdsProdutosPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 50
    end
    object SQLCdsProdutosPRD_PVENDA: TFMTBCDField
      FieldName = 'PRD_PVENDA'
      DisplayFormat = '#,###0.000'
      Precision = 15
      Size = 4
    end
    object SQLCdsProdutosPRD_PVENDA2: TFMTBCDField
      FieldName = 'PRD_PVENDA2'
      DisplayFormat = '#,###0.000'
      Precision = 15
      Size = 4
    end
    object SQLCdsProdutosPRD_PVENDA3: TFMTBCDField
      FieldName = 'PRD_PVENDA3'
      DisplayFormat = '#,###0.000'
      Precision = 15
      Size = 4
    end
    object SQLCdsProdutosPRD_PVENDA4: TFMTBCDField
      FieldName = 'PRD_PVENDA4'
      DisplayFormat = '#,###0.000'
      Precision = 15
      Size = 4
    end
    object SQLCdsProdutosPRD_PVENDA5: TFMTBCDField
      FieldName = 'PRD_PVENDA5'
      DisplayFormat = '#,###0.000'
      Precision = 15
      Size = 4
    end
    object SQLCdsProdutosPRD_PVENDA6: TFMTBCDField
      FieldName = 'PRD_PVENDA6'
      DisplayFormat = '#,###0.000'
      Precision = 15
      Size = 4
    end
  end
  object DsSQLCdsProdutos: TDataSource
    DataSet = SQLCdsProdutos
    Left = 400
    Top = 435
  end
end
