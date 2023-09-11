object FormOperFisc: TFormOperFisc
  Left = 583
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Opera'#231#245'es Fiscais'
  ClientHeight = 560
  ClientWidth = 902
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnDestroy = FormDestroy
  OnKeyPress = FormKeyPress
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Label3: TLabel
    Left = 942
    Top = 292
    Width = 39
    Height = 14
    Caption = 'PIS (%):'
    Enabled = False
    Visible = False
  end
  object Label11: TLabel
    Left = 920
    Top = 315
    Width = 61
    Height = 14
    Caption = 'COFINS (%):'
    Enabled = False
    Visible = False
  end
  object Panel2: TPanel
    Left = 327
    Top = 521
    Width = 452
    Height = 33
    BevelOuter = bvNone
    TabOrder = 5
    object Bit_Cancelar: TBitBtn
      Left = 312
      Top = 9
      Width = 100
      Height = 25
      Cursor = crHandPoint
      Hint = '|Cancela registro atual...'
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
      TabStop = False
      OnClick = Bit_CancelarClick
    end
    object Bit_Sair: TBitBtn
      Left = 313
      Top = 9
      Width = 100
      Height = 25
      Cursor = crHandPoint
      Hint = 'Sair'
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
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      TabStop = False
      OnClick = Bit_SairClick
    end
    object Bit_novo: TBitBtn
      Left = 4
      Top = 9
      Width = 100
      Height = 25
      Cursor = crHandPoint
      Hint = 'Novo'
      Caption = '&Novo'
      Glyph.Data = {
        E6000000424DE60000000000000076000000280000000E0000000E0000000100
        04000000000070000000CE0E0000D80E00001000000000000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3300333333333333330033333333333333003333300033333300333330003333
        3300333330003333330033000000000333003300000000033300330000000003
        3300333330003333330033333000333333003333300033333300333333333333
        33003333333333333300}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      TabStop = False
      OnClick = Bit_novoClick
    end
    object Bit_Excluir: TBitBtn
      Left = 107
      Top = 9
      Width = 100
      Height = 25
      Cursor = crHandPoint
      Hint = 'Exclui registro'
      Caption = '&Excluir'
      Glyph.Data = {
        E6000000424DE60000000000000076000000280000000E0000000E0000000100
        04000000000070000000CE0E0000D80E00001000000000000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3300333333333333330033333333333333003333333333333300333333333333
        3300333333333333330033000000000033003300000000003300330000000000
        3300333333333333330033333333333333003333333333333300333333333333
        33003333333333333300}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      TabStop = False
      OnClick = Bit_ExcluirClick
    end
    object Bit_Gravar: TBitBtn
      Left = 209
      Top = 9
      Width = 100
      Height = 25
      Cursor = crHandPoint
      Hint = 'Grava registro'
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
      TabOrder = 2
      TabStop = False
      OnClick = Bit_GravarClick
    end
  end
  object Panel3: TPanel
    Left = 9
    Top = 522
    Width = 219
    Height = 33
    BevelOuter = bvNone
    TabOrder = 4
    object Bit_Lista: TBitBtn
      Left = 9
      Top = 7
      Width = 100
      Height = 25
      Cursor = crHandPoint
      Hint = 'Consulta'
      Caption = '&Consulta'
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
      TabOrder = 0
      TabStop = False
      OnClick = Bit_ListaClick
    end
    object Bit_Relatorio: TBitBtn
      Left = 109
      Top = 7
      Width = 100
      Height = 25
      Cursor = crHandPoint
      Hint = 'Relat'#243'rios'
      Caption = '&Relat'#243'rios'
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
      TabOrder = 1
      TabStop = False
      OnClick = Bit_RelatorioClick
    end
  end
  object DbRadOperacao: TDBRadioGroup
    Left = 0
    Top = 146
    Width = 525
    Height = 42
    Caption = 'Opera'#231#227'o valida para'
    Columns = 3
    DataField = 'OPE_DENTRO'
    DataSource = DataCadastros.DsOperFisc
    Items.Strings = (
      'Dentro do Estado'
      'Fora do Estado'
      'Independente')
    TabOrder = 0
    Values.Strings = (
      'D'
      'F'
      'I')
  end
  object DbRadTipoNF: TDBRadioGroup
    Left = 531
    Top = 146
    Width = 366
    Height = 42
    Caption = 'Nota Fiscal - Tipo'
    Columns = 2
    DataField = 'OPE_TIPO'
    DataSource = DataCadastros.DsOperFisc
    Items.Strings = (
      'Sa'#237'das (Faturamento)'
      'Entradas (Fornecedores)')
    TabOrder = 1
    Values.Strings = (
      'S'
      'E')
    OnClick = DbRadTipoNFClick
    OnExit = DbRadTipoNFExit
  end
  object CEOPE_PIS: TCurrencyEdit
    Left = 980
    Top = 288
    Width = 50
    Height = 21
    AutoSize = False
    DecimalPlaces = 4
    DisplayFormat = ',0.0000;- ,0.0000'
    Enabled = False
    TabOrder = 2
    Visible = False
    OnEnter = CEOPE_PISEnter
  end
  object CEOPE_COFINS: TCurrencyEdit
    Left = 980
    Top = 315
    Width = 50
    Height = 21
    AutoSize = False
    DecimalPlaces = 4
    DisplayFormat = ',0.0000;- ,0.0000'
    Enabled = False
    TabOrder = 3
    Visible = False
    OnEnter = CEOPE_PISEnter
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 897
    Height = 146
    Caption = 'Natureza da Opera'#231#227'o'
    TabOrder = 6
    object Label2: TLabel
      Left = 799
      Top = 23
      Width = 36
      Height = 14
      Caption = 'C'#243'digo:'
    end
    object Label1: TLabel
      Left = 64
      Top = 23
      Width = 30
      Height = 14
      Caption = 'CFOP:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 45
      Top = 49
      Width = 52
      Height = 14
      Alignment = taRightJustify
      Caption = 'Descri'#231#227'o:'
    end
    object Label8: TLabel
      Left = 423
      Top = 22
      Width = 69
      Height = 14
      Caption = 'CFOP Inversa:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 9
      Top = 75
      Width = 89
      Height = 14
      Caption = 'Descri'#231#227'o na NFe:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 7
      Top = 110
      Width = 89
      Height = 14
      Caption = 'Tipo da Opera'#231#227'o:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object EdtOpe_Codigo: TEdit
      Left = 837
      Top = 19
      Width = 48
      Height = 22
      MaxLength = 3
      TabOrder = 5
      OnEnter = EdtOpe_CodigoEnter
      OnExit = EdtOpe_CodigoExit
      OnKeyPress = EdtOpe_CodigoKeyPress
    end
    object DBECFOP: TDBEdit
      Left = 100
      Top = 21
      Width = 61
      Height = 22
      CharCase = ecUpperCase
      DataField = 'OPE_NATUREZA'
      DataSource = DataCadastros.DsOperFisc
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnExit = DBECFOPExit
      OnKeyPress = EdtOpe_CodigoKeyPress
    end
    object DbeOPE_DESCRI: TDBEdit
      Left = 100
      Top = 45
      Width = 454
      Height = 22
      CharCase = ecUpperCase
      DataField = 'OPE_DESCRI'
      DataSource = DataCadastros.DsOperFisc
      TabOrder = 2
    end
    object dbedtOPE_NATUREZA_ENTRADA: TDBEdit
      Left = 495
      Top = 19
      Width = 58
      Height = 22
      Hint = 'Ex:  CFOP 5102 correspondente 1102'
      CharCase = ecUpperCase
      DataField = 'OPE_NATUREZA_ENTRADA'
      DataSource = DataCadastros.DsOperFisc
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnExit = DBECFOPExit
      OnKeyPress = EdtOpe_CodigoKeyPress
    end
    object DBEOPE_DESCRINATUREZA: TDBEdit
      Left = 100
      Top = 71
      Width = 453
      Height = 22
      CharCase = ecUpperCase
      DataField = 'OPE_DESCRINATUREZA'
      DataSource = DataCadastros.DsOperFisc
      TabOrder = 3
    end
    object dbrgrpOPE_TIPO_OPERACAO: TDBRadioGroup
      Left = 102
      Top = 92
      Width = 787
      Height = 39
      Columns = 5
      DataField = 'OPE_TIPO_OPERACAO'
      DataSource = DataCadastros.DsOperFisc
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      Items.Strings = (
        'Compra'
        'Venda'
        'Outra / Importa'#231#227'o'
        'Devolu'#231#227'o'
        'Remessa p/ Armaz'#233'm Geral')
      ParentFont = False
      TabOrder = 4
      Values.Strings = (
        'C'
        'V'
        'O'
        'D'
        'R')
    end
    object DBRADBloqueia: TDBRadioGroup
      Left = 560
      Top = 16
      Width = 104
      Height = 75
      Caption = 'CFOP'
      DataField = 'OPE_ATIVA'
      DataSource = DataCadastros.DsOperFisc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Items.Strings = (
        '&Ativa'
        '&Inativa')
      ParentFont = False
      TabOrder = 6
      Values.Strings = (
        'S'
        'N')
    end
    object DBNavigator1: TDBNavigator
      Left = 673
      Top = 16
      Width = 120
      Height = 28
      DataSource = DataCadastros.DsOperFisc
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 7
      OnClick = DBNavigator1Click
    end
    object chkOcultar: TDBCheckBox
      Left = 682
      Top = 69
      Width = 97
      Height = 17
      Hint = 
        'Usal para aplica'#231#227'o de regra fiscal, n'#227'o vai aparecer na lista d' +
        'e pedido ou faturamento'
      Caption = 'Ocultar'
      DataField = 'OPE_OCULTA'
      DataSource = DataCadastros.DsOperFisc
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
  end
  object pcImpostos: TPageControl
    Left = 0
    Top = 192
    Width = 897
    Height = 332
    ActivePage = tsPisCofins
    TabOrder = 7
    object tsPrincipal: TTabSheet
      Caption = 'Principal'
      object gbCSOSN: TGroupBox
        Left = 0
        Top = 3
        Width = 168
        Height = 139
        Caption = 'CSOSN Especifico da Opera'#231#227'o'
        TabOrder = 0
        object Label17: TLabel
          Left = 18
          Top = 42
          Width = 39
          Height = 14
          Alignment = taRightJustify
          Caption = 'Sem ST:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object btCson1: TSpeedButton
          Tag = 1
          Left = 124
          Top = 38
          Width = 23
          Height = 22
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            0800000000000001000000000000000000000001000000000000000000000000
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
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00070707070707
            07070707070707070707070707FBFBFBFBFBFBFBFBFBFBFBFB07080808FB0000
            FBFBFBFBFB000000FB08080808FB0000FBFBFBFB00FBFBFB0008080808FB0000
            FBFBFBFB00FBFBFB0008080808FB0000FBFBFBFB00FBFBFB0008080808FB0000
            000000FBFB000000FB08080808FB0000FBFBFBFB00FBFBFB0008080808FB0000
            FBFBFBFB00FBFBFB0008080808FB0000000000FBFB000000FB08080808FCFBFB
            FBFBFBFBFBFBFBFBFB08080808FCFCFBFBFBFBFBFBFBFBFBFB080808FCFCFCFC
            FBFBFBFBFBFBFBFBFB0808FCFCFC080808080808080808080808FCFCFC080808
            08080808080808080808FCFC0808080808080808080808080808}
          OnClick = btCson1Click
        end
        object Label13: TLabel
          Left = 18
          Top = 82
          Width = 39
          Height = 14
          Alignment = taRightJustify
          Caption = 'Com ST:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object btCson2: TSpeedButton
          Tag = 2
          Left = 124
          Top = 78
          Width = 23
          Height = 22
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            0800000000000001000000000000000000000001000000000000000000000000
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
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00070707070707
            07070707070707070707070707FBFBFBFBFBFBFBFBFBFBFBFB07080808FB0000
            FBFBFBFBFB000000FB08080808FB0000FBFBFBFB00FBFBFB0008080808FB0000
            FBFBFBFB00FBFBFB0008080808FB0000FBFBFBFB00FBFBFB0008080808FB0000
            000000FBFB000000FB08080808FB0000FBFBFBFB00FBFBFB0008080808FB0000
            FBFBFBFB00FBFBFB0008080808FB0000000000FBFB000000FB08080808FCFBFB
            FBFBFBFBFBFBFBFBFB08080808FCFCFBFBFBFBFBFBFBFBFBFB080808FCFCFCFC
            FBFBFBFBFBFBFBFBFB0808FCFCFC080808080808080808080808FCFCFC080808
            08080808080808080808FCFC0808080808080808080808080808}
          OnClick = btCson1Click
        end
        object DBEdit3: TDBEdit
          Left = 59
          Top = 38
          Width = 62
          Height = 22
          DataField = 'EMP_CSOSN'
          DataSource = DataCadastros.DsOperFisc
          TabOrder = 0
          OnKeyDown = DBEdit3KeyDown
        end
        object DBEdit1: TDBEdit
          Left = 59
          Top = 78
          Width = 62
          Height = 22
          DataField = 'EMP_CSOSN_ST'
          DataSource = DataCadastros.DsOperFisc
          TabOrder = 1
          OnKeyDown = DBEdit1KeyDown
        end
      end
      object GroupBox4: TGroupBox
        Left = 0
        Top = 148
        Width = 337
        Height = 150
        Caption = 'Op'#231#245'es da Opera'#231#227'o'
        TabOrder = 1
        object DBChOPE_ESTOQUE: TDBCheckBox
          Left = 11
          Top = 20
          Width = 147
          Height = 17
          Caption = 'Movimenta Estoque'
          DataField = 'OPE_ESTOQUE'
          DataSource = DataCadastros.DsOperFisc
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBChOPE_ESCRITA: TDBCheckBox
          Left = 11
          Top = 37
          Width = 123
          Height = 17
          Caption = 'Gerar Escrita Fiscal'
          DataField = 'OPE_ESCRITA'
          DataSource = DataCadastros.DsOperFisc
          TabOrder = 3
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox4: TDBCheckBox
          Left = 11
          Top = 56
          Width = 228
          Height = 17
          Caption = 'Opera'#231#227'o c/ direito a Cr'#233'dito de ICMS e IPI'
          Color = clBtnFace
          Ctl3D = True
          DataField = 'OPE_TEMCREDITO'
          DataSource = DataCadastros.DsOperFisc
          Enabled = False
          ParentColor = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = False
          TabOrder = 4
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object dbchkOPE_ATUALIZA_CUSTO: TDBCheckBox
          Left = 141
          Top = 20
          Width = 191
          Height = 17
          Caption = 'Atualiza pre'#231'o de custo na Compra'
          DataField = 'OPE_ATUALIZA_CUSTO'
          DataSource = DataCadastros.DsOperFisc
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox5: TDBCheckBox
          Left = 11
          Top = 74
          Width = 239
          Height = 17
          Caption = 'Entrada de Industrializa'#231#227'o - Entra o estoque'
          DataField = 'OPE_ENTRADA_INDUST'
          DataSource = DataCadastros.DsOperFisc
          TabOrder = 1
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox6: TDBCheckBox
          Left = 11
          Top = 91
          Width = 239
          Height = 17
          Caption = 'Retorno da Industrializa'#231#227'o- Sai do estoque'
          DataField = 'OPE_RETORNO_INDUST'
          DataSource = DataCadastros.DsOperFisc
          TabOrder = 2
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox8: TDBCheckBox
          Left = 141
          Top = 37
          Width = 193
          Height = 17
          Caption = 'Referencia NFe de Industrializa'#231#227'o'
          DataField = 'OPE_REF_NFE_IND'
          DataSource = DataCadastros.DsOperFisc
          TabOrder = 6
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox9: TDBCheckBox
          Left = 11
          Top = 107
          Width = 182
          Height = 17
          Caption = 'Venda com Sa'#237'da do Armaz'#233'm'
          DataField = 'OPE_VENDA_SAIDA_ARMAZEM'
          DataSource = DataCadastros.DsOperFisc
          TabOrder = 7
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox10: TDBCheckBox
          Left = 11
          Top = 123
          Width = 203
          Height = 17
          Caption = 'Retorno da Industrializ'#231#227'o (Sobras)'
          DataField = 'OPE_RETORNO_INDUST_SOBRA'
          DataSource = DataCadastros.DsOperFisc
          TabOrder = 8
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
      end
      object grpServico: TGroupBox
        Left = 343
        Top = 148
        Width = 299
        Height = 150
        Caption = 'Servi'#231'o'
        TabOrder = 2
        object DBChOPE_SERVICO: TDBCheckBox
          Left = 12
          Top = 21
          Width = 175
          Height = 17
          Caption = 'Servi'#231'o (opera'#231#227'o de servi'#231'o)'
          DataField = 'OPE_SERVICO'
          DataSource = DataCadastros.DsOperFisc
          TabOrder = 0
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          OnClick = DBChOPE_SERVICOClick
        end
        object chkretencao: TDBCheckBox
          Left = 13
          Top = 40
          Width = 121
          Height = 17
          Caption = 'ISS retido na fonte'
          DataField = 'OPE_TEMRETENCAO'
          DataSource = DataCadastros.DsOperFisc
          TabOrder = 1
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          OnClick = DBChOPE_SERVICOClick
        end
        object chkINSSSERVICO: TDBCheckBox
          Left = 13
          Top = 63
          Width = 121
          Height = 17
          Caption = 'Tributa INSS'
          DataField = 'OPE_TRIBUTAR_INSS'
          DataSource = DataCadastros.DsOperFisc
          TabOrder = 2
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          OnClick = DBChOPE_SERVICOClick
        end
        object chkCSLLSERVICOS: TDBCheckBox
          Left = 13
          Top = 86
          Width = 121
          Height = 17
          Caption = 'Tributa CSLL'
          DataField = 'OPE_TRIBUTAR_CSLL'
          DataSource = DataCadastros.DsOperFisc
          TabOrder = 3
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          OnClick = DBChOPE_SERVICOClick
        end
        object ChkTributaIR: TDBCheckBox
          Left = 140
          Top = 40
          Width = 121
          Height = 17
          Caption = 'Tributa IR'
          DataField = 'OPE_TRIBUTAR_IR'
          DataSource = DataCadastros.DsOperFisc
          TabOrder = 4
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          OnClick = DBChOPE_SERVICOClick
        end
        object ChkTributaPIS: TDBCheckBox
          Left = 140
          Top = 63
          Width = 121
          Height = 17
          Caption = 'Tributa PIS'
          DataField = 'OPE_TRIBUTAR_PIS'
          DataSource = DataCadastros.DsOperFisc
          TabOrder = 5
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          OnClick = DBChOPE_SERVICOClick
        end
        object chkTributaCOFINS: TDBCheckBox
          Left = 140
          Top = 86
          Width = 121
          Height = 17
          Caption = 'Tributa COFINS'
          DataField = 'OPE_TRIBUTAR_COFINS'
          DataSource = DataCadastros.DsOperFisc
          TabOrder = 6
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          OnClick = DBChOPE_SERVICOClick
        end
      end
      object GroupBox8: TGroupBox
        Left = 174
        Top = 3
        Width = 468
        Height = 54
        Caption = 'Plano de contas padr'#227'o'
        TabOrder = 3
        object Label12: TLabel
          Left = 5
          Top = 26
          Width = 84
          Height = 14
          Caption = 'Conta Financeira:'
        end
        object DBECCT_CODIGO: TDBEdit
          Left = 94
          Top = 20
          Width = 32
          Height = 22
          CharCase = ecUpperCase
          DataField = 'CCT_CODIGO'
          DataSource = DataCadastros.DsOperFisc
          TabOrder = 0
          OnEnter = DBECCT_CODIGOEnter
          OnExit = DBECCT_CODIGOExit
        end
        object CbxCtaAnalise: TComboBox
          Left = 129
          Top = 20
          Width = 320
          Height = 22
          MaxLength = 35
          TabOrder = 1
          OnClick = CbxCtaAnaliseClick
          OnExit = CbxCtaAnaliseClick
        end
      end
      object GroupBox5: TGroupBox
        Left = 174
        Top = 63
        Width = 468
        Height = 79
        Caption = 'Notas de sa'#237'da - Financeiro'
        TabOrder = 4
        object DBChOPE_SEMVLCOM: TDBCheckBox
          Left = 18
          Top = 25
          Width = 367
          Height = 17
          Caption = 'Sem valor comercial  - (N'#227'o gravar faturas)'
          Color = clBtnFace
          Ctl3D = True
          DataField = 'OPE_SEMVLCOM'
          DataSource = DataCadastros.DsOperFisc
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentCtl3D = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = False
          TabOrder = 0
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          OnClick = DBChOPE_SEMVLCOMClick
        end
        object DBCheckMostraSVC: TDBCheckBox
          Left = 18
          Top = 48
          Width = 324
          Height = 17
          Caption = 'Mostra venctos na Danfe mesmo sem contas '#225' receber'
          Color = clBtnFace
          Ctl3D = True
          DataField = 'OPE_SEMVLCOM_MOSTRAF'
          DataSource = DataCadastros.DsOperFisc
          Enabled = False
          ParentColor = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = False
          TabOrder = 1
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
      end
    end
    object tsIcms: TTabSheet
      Caption = 'ICMS'
      ImageIndex = 1
      object GroupBox9: TGroupBox
        Left = 3
        Top = 2
        Width = 299
        Height = 40
        Caption = 'Configura'#231#245'es Tribut'#225'rias'
        TabOrder = 0
        object DbchOPE_TRIBICMS: TDBCheckBox
          Left = 11
          Top = 16
          Width = 97
          Height = 17
          Caption = 'Tributar ICMS'
          Color = clBtnFace
          Ctl3D = True
          DataField = 'OPE_TRIBICMS'
          DataSource = DataCadastros.DsOperFisc
          ParentColor = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = False
          TabOrder = 0
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
      end
      object GroupBox3: TGroupBox
        Left = 3
        Top = 55
        Width = 299
        Height = 101
        Caption = 'ICMS desonerado'
        TabOrder = 1
        object laliqDes: TLabel
          Left = 14
          Top = 24
          Width = 63
          Height = 14
          Caption = 'Al'#237'quota (%):'
        end
        object Label14: TLabel
          Left = 14
          Top = 50
          Width = 34
          Height = 14
          Caption = 'Motivo:'
        end
        object cxMotivoDesoneracao: TcxDBComboBox
          Left = 54
          Top = 46
          DataBinding.DataField = 'OPE_MOTIVDESON'
          DataBinding.DataSource = DataCadastros.DsOperFisc
          Properties.Items.Strings = (
            '1 '#8211' T'#225'xi'
            '3 '#8211' Produto agropecu'#225'rio/Uso na agropecu'#225'ria'
            '4 '#8211' Frotista/Locadora'
            '5 '#8211' Diplom'#225'tico/Consular'
            
              '6 '#8211' Utilit'#225'rios e Motocicletas da Amaz'#244'nia Ocidental e '#193'reas de ' +
              'Livre Com'#233'rcio'
            '7 '#8211' SUFRAMA'
            '8 '#8211' Venda a '#211'rg'#227'o P'#250'blico'
            '9 '#8211' Outros'
            '10 '#8211' Deficiente Condutor'
            '11 '#8211' Deficiente N'#227'o Condutor'
            '12 '#8211' '#211'rg'#227'o de fomento e desenvolvimento agropecu'#225'rio')
          TabOrder = 0
          Width = 235
        end
        object JvValidateEdit1: TJvValidateEdit
          Left = 83
          Top = 20
          Width = 70
          Height = 22
          CriticalPoints.MaxValueIncluded = False
          CriticalPoints.MinValueIncluded = False
          DisplayFormat = dfFloat
          DecimalPlaces = 2
          EditText = '0,00'
          ReadOnly = True
          TabOrder = 1
          DataConnector.DataSource = dsoperfisc
          DataConnector.DataField = 'OPE_ICMSDESON'
          DataConnector.NullValue = '0'
        end
      end
      object GroupBox7: TGroupBox
        Left = 317
        Top = 2
        Width = 452
        Height = 204
        Caption = 'Regras do ICMS'
        TabOrder = 2
        object Label5: TLabel
          Left = 12
          Top = 79
          Width = 211
          Height = 14
          Caption = 'Diferimento/redu'#231#227'o do valor do ICMS( % ) :'
        end
        object Label15: TLabel
          Left = 62
          Top = 127
          Width = 161
          Height = 14
          Caption = 'Redu'#231#227'o da Base do ICMS ( % ) :'
        end
        object Label7: TLabel
          Left = 29
          Top = 175
          Width = 194
          Height = 14
          Caption = 'Fator de Aumento da Base do Icms ( / ) :'
        end
        object Label19: TLabel
          Left = 16
          Top = 104
          Width = 54
          Height = 14
          Caption = 'Base Legal'
        end
        object Label20: TLabel
          Left = 16
          Top = 149
          Width = 54
          Height = 14
          Caption = 'Base Legal'
        end
        object DbchOPE_IPINABASEICMS: TDBCheckBox
          Left = 10
          Top = 18
          Width = 155
          Height = 17
          Caption = 'Incluir IPI na Base do ICMS'
          Color = clBtnFace
          Ctl3D = True
          DataField = 'OPE_IPINABASEICMS'
          DataSource = DataCadastros.DsOperFisc
          ParentColor = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = False
          TabOrder = 0
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DbChOPE_FRETENABASE: TDBCheckBox
          Left = 10
          Top = 36
          Width = 284
          Height = 17
          Caption = 'Incluir Frete/Seguro/Dp.Acess'#243'rias na Base do ICMS'
          Color = clBtnFace
          Ctl3D = True
          DataField = 'OPE_FRETENABASE'
          DataSource = DataCadastros.DsOperFisc
          ParentColor = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = False
          TabOrder = 1
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox3: TDBCheckBox
          Left = 10
          Top = 56
          Width = 222
          Height = 12
          Caption = 'Incluir Valor do ICMS no Total da Nota'
          Color = clBtnFace
          Ctl3D = True
          DataField = 'OPE_ICMS_TOTALNOTA'
          DataSource = DataCadastros.DsOperFisc
          ParentColor = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = False
          TabOrder = 2
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object CEOPE_REDU_ICM: TCurrencyEdit
          Left = 234
          Top = 76
          Width = 55
          Height = 21
          AutoSize = False
          DecimalPlaces = 4
          DisplayFormat = ',0.0000;- ,0.0000'
          TabOrder = 3
          OnEnter = CEOPE_PISEnter
        end
        object CEO_INDICE_IMP: TCurrencyEdit
          Left = 234
          Top = 124
          Width = 55
          Height = 21
          AutoSize = False
          DecimalPlaces = 5
          DisplayFormat = ',0.0000;- ,0.0000'
          TabOrder = 4
          ZeroEmpty = False
          OnChange = CEO_INDICE_IMPChange
          OnEnter = CEOPE_PISEnter
        end
        object CEO_AUME_ICMS: TCurrencyEdit
          Left = 234
          Top = 172
          Width = 55
          Height = 21
          AutoSize = False
          DecimalPlaces = 5
          DisplayFormat = ',0.0000;- ,0.0000'
          TabOrder = 5
          OnChange = CEO_AUME_ICMSChange
          OnEnter = CEOPE_PISEnter
        end
        object OPE_ARTIGO_DIFERIMENTO: TDBEdit
          Left = 80
          Top = 100
          Width = 210
          Height = 22
          DataField = 'OPE_ARTIGO_DIFERIMENTO'
          DataSource = DataCadastros.DsOperFisc
          TabOrder = 6
        end
        object OPE_ARTIGO_REDUCAO: TDBEdit
          Left = 80
          Top = 147
          Width = 210
          Height = 22
          DataField = 'OPE_ARTIGO_REDUCAO'
          DataSource = DataCadastros.DsOperFisc
          TabOrder = 7
        end
      end
      object rgFormulaBaseICMS: TRadioGroup
        Left = 3
        Top = 162
        Width = 310
        Height = 72
        Caption = 'F'#243'rmula para C'#225'lculo do ICMS Desonerado'
        ItemIndex = 0
        Items.Strings = (
          'Base por dentro ((Base ICMS / 1 - pAliquota) * pAliquota)'
          'Base simples (Base ICMS * pAliquota)')
        TabOrder = 3
        OnClick = rgFormulaBaseICMSClick
      end
      object DBCheckBox7: TDBCheckBox
        Left = 329
        Top = 215
        Width = 232
        Height = 17
        Caption = 'ICMS Desonerado Diminui no Total da Nota'
        DataField = 'OPE_ICMS_DESONERADO_DIMINUI'
        DataSource = DataCadastros.DsOperFisc
        TabOrder = 4
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
    end
    object tsIpi: TTabSheet
      Caption = 'IPI'
      ImageIndex = 2
      object GroupBox10: TGroupBox
        Left = 3
        Top = 1
        Width = 446
        Height = 40
        Caption = 'Configura'#231#245'es Tribut'#225'rias'
        TabOrder = 0
        object lCSTIPI: TLabel
          Left = 149
          Top = 17
          Width = 22
          Height = 14
          Caption = 'CST:'
        end
        object Label16: TLabel
          Left = 245
          Top = 17
          Width = 116
          Height = 14
          Caption = 'C'#243'd. Enquadramento IPI:'
        end
        object ChOPE_TRIBIPI: TDBCheckBox
          Left = 13
          Top = 16
          Width = 121
          Height = 17
          Caption = 'Tributar IPI ou Isentar'
          Color = clBtnFace
          Ctl3D = True
          DataField = 'OPE_TRIBIPI'
          DataSource = DataCadastros.DsOperFisc
          ParentColor = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = False
          TabOrder = 0
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          OnClick = ChOPE_TRIBIPIClick
        end
        object edCSTIPI: TDBEdit
          Left = 177
          Top = 13
          Width = 62
          Height = 22
          DataField = 'OPE_CST_IPI'
          DataSource = DataCadastros.DsOperFisc
          TabOrder = 1
          OnKeyDown = DBEdit3KeyDown
        end
        object DBEdit2: TDBEdit
          Left = 367
          Top = 13
          Width = 62
          Height = 22
          DataField = 'OPE_CENQ_IPI'
          DataSource = DataCadastros.DsOperFisc
          TabOrder = 2
          OnKeyDown = DBEdit3KeyDown
        end
      end
      object GroupBox6: TGroupBox
        Left = 3
        Top = 47
        Width = 446
        Height = 101
        Caption = 'Regras do IPI'
        TabOrder = 1
        object Label6: TLabel
          Left = 14
          Top = 75
          Width = 95
          Height = 14
          Caption = 'Redu'#231#227'o do IPI (%):'
        end
        object DBChOPE_DespImporIPI: TDBCheckBox
          Left = 11
          Top = 35
          Width = 262
          Height = 17
          Caption = 'Incluir Imposto de Importa'#231#227'o na Base do IPI'
          Color = clBtnFace
          Ctl3D = True
          DataField = 'OPE_DESPIMPORIPI'
          DataSource = DataCadastros.DsOperFisc
          ParentColor = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = False
          TabOrder = 2
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object CEOPE_REDU_IPI: TCurrencyEdit
          Left = 113
          Top = 73
          Width = 50
          Height = 21
          AutoSize = False
          DecimalPlaces = 4
          DisplayFormat = ',0.0000;- ,0.0000'
          TabOrder = 1
          OnEnter = CEOPE_PISEnter
        end
        object DBCheckBox2: TDBCheckBox
          Left = 11
          Top = 18
          Width = 278
          Height = 17
          Caption = 'Incluir Frete/Seguro/Desp.Acess'#243'rias na Base do IPI'
          Color = clBtnFace
          Ctl3D = True
          DataField = 'OPE_FRETEBASEIPI'
          DataSource = DataCadastros.DsOperFisc
          ParentColor = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = False
          TabOrder = 0
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox1: TDBCheckBox
          Left = 12
          Top = 55
          Width = 265
          Height = 12
          Caption = 'N'#227'o Incluir valor do IPI no total da Nota (Importa'#231#227'o)'
          Color = clBtnFace
          Ctl3D = True
          DataField = 'OPE_IPI_TOTALNOTA'
          DataSource = DataCadastros.DsOperFisc
          ParentColor = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = False
          TabOrder = 3
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
      end
    end
    object tsPisCofins: TTabSheet
      Caption = 'PIS e COFINS'
      ImageIndex = 3
      object GbTribut: TGroupBox
        Left = 3
        Top = 3
        Width = 294
        Height = 40
        Caption = 'Configura'#231#245'es Tribut'#225'rias'
        TabOrder = 0
        object lCSTPIS: TLabel
          Left = 149
          Top = 16
          Width = 22
          Height = 14
          Caption = 'CST:'
        end
        object ChkTribPISCOFINS: TDBCheckBox
          Left = 11
          Top = 16
          Width = 128
          Height = 17
          Caption = 'Tributar PIS e COFINS'
          Color = clBtnFace
          Ctl3D = True
          DataField = 'OPE_TRIBPISCOFINS'
          DataSource = DataCadastros.DsOperFisc
          ParentColor = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = False
          TabOrder = 0
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          OnClick = ChkTribPISCOFINSClick
        end
        object edCSTPIS: TSgDbSearchCombo
          Left = 177
          Top = 13
          Width = 62
          Height = 22
          TabOrder = 1
          LookupSelect = 'CST,DESCRICAO'
          LookupOrderBy = 'CST'
          LookupTable = 'CSTPISCOFINS'
          LookupDispl = 'CST'
          GridAutoSize = False
          LookupSource = qCstPC
          DataField = 'OPE_CST_PISCOFINS'
          DataSource = DataCadastros.DsOperFisc
          LookupKeyField = 'CST'
          ShowButton = True
          AutoF8WinTitulo = 'CST PIS COFINS'
          AutoF8ColumnsTitulo = 'CST, Descri'#231#227'o'
          GridLeft = 0
          GridWidth = 0
          GridHeight = 100
          GridShowWhenEnter = False
          SelectWithDoubleClick = False
        end
      end
      object GroupBox11: TGroupBox
        Left = 8
        Top = 48
        Width = 393
        Height = 41
        Caption = 'Regras PIS / COFINS'
        TabOrder = 1
        object DBCheckBox11: TDBCheckBox
          Left = 6
          Top = 16
          Width = 379
          Height = 17
          Caption = 
            ' Incluir Frete, Seguro e Despesas Acess'#243'rias na base do PIS e CO' +
            'NFINS'
          Color = clBtnFace
          Ctl3D = True
          DataField = 'OPE_DESP_ACES_PIS_COFINS'
          DataSource = DataCadastros.DsOperFisc
          ParentColor = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = False
          TabOrder = 0
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          OnClick = ChkTribPISCOFINSClick
        end
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Dados Fiscais Adicionais'
      ImageIndex = 4
      object Label18: TLabel
        Left = 192
        Top = 16
        Width = 383
        Height = 16
        Caption = 'As informa'#231#245'es preenchidas devem ser de interesse do fisco'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object GroupBox2: TGroupBox
        Left = 3
        Top = 38
        Width = 883
        Height = 211
        Caption = 'Dados Adicionais Fiscais da CFOP na Danfe'
        TabOrder = 0
        object DbchOPE_IMP_AVISO: TDBCheckBox
          Left = 12
          Top = 174
          Width = 250
          Height = 17
          Caption = 'Imprimir dados fiscais autom'#225'tico na Danfe'
          Color = clBtnFace
          Ctl3D = True
          DataField = 'OPE_IMP_AVISO'
          DataSource = DataCadastros.DsOperFisc
          ParentColor = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = False
          TabOrder = 0
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DbeOPE_AVISOLEGAL: TDBMemo
          Left = 16
          Top = 32
          Width = 361
          Height = 137
          DataField = 'OPE_AVISOLEGAL'
          DataSource = DataCadastros.DsOperFisc
          TabOrder = 1
        end
        object DbeOPE_AVISOLEGAL2: TDBMemo
          Left = 400
          Top = 32
          Width = 361
          Height = 137
          DataField = 'OPE_AVISOLEGAL2'
          DataSource = DataCadastros.DsOperFisc
          TabOrder = 2
        end
      end
    end
  end
  object SqlCdsRelOperFiscal01: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 'select * from OPE0000 order by OPE_DESCRI'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'select * from OPE0000 order by OPE_DESCRI'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 770
    Top = 234
    object SqlCdsRelOperFiscal01OPE_CODIGO: TStringField
      FieldName = 'OPE_CODIGO'
      Required = True
      Size = 3
    end
    object SqlCdsRelOperFiscal01OPE_NATUREZA: TStringField
      FieldName = 'OPE_NATUREZA'
      Size = 4
    end
    object SqlCdsRelOperFiscal01OPE_TIPO: TStringField
      FieldName = 'OPE_TIPO'
      Size = 1
    end
    object SqlCdsRelOperFiscal01OPE_ESCRITA: TStringField
      FieldName = 'OPE_ESCRITA'
      Size = 1
    end
    object SqlCdsRelOperFiscal01OPE_DENTRO: TStringField
      FieldName = 'OPE_DENTRO'
      Size = 1
    end
    object SqlCdsRelOperFiscal01OPE_DESCRI: TStringField
      FieldName = 'OPE_DESCRI'
      Size = 55
    end
    object SqlCdsRelOperFiscal01OPE_TRIBICMS: TStringField
      FieldName = 'OPE_TRIBICMS'
      Size = 1
    end
    object SqlCdsRelOperFiscal01OPE_TRIBIPI: TStringField
      FieldName = 'OPE_TRIBIPI'
      Size = 1
    end
    object SqlCdsRelOperFiscal01OPE_REDU_ICM: TFMTBCDField
      FieldName = 'OPE_REDU_ICM'
      Precision = 15
    end
    object SqlCdsRelOperFiscal01OPE_REDU_IPI: TFMTBCDField
      FieldName = 'OPE_REDU_IPI'
      Precision = 15
    end
    object SqlCdsRelOperFiscal01OPE_IPINABASEICMS: TStringField
      FieldName = 'OPE_IPINABASEICMS'
      Size = 1
    end
    object SqlCdsRelOperFiscal01OPE_FRETENABASE: TStringField
      FieldName = 'OPE_FRETENABASE'
      Size = 1
    end
    object SqlCdsRelOperFiscal01OPE_SEMVLCOM: TStringField
      FieldName = 'OPE_SEMVLCOM'
      Size = 1
    end
    object SqlCdsRelOperFiscal01OPE_IMP_AVISO: TStringField
      FieldName = 'OPE_IMP_AVISO'
      Size = 1
    end
    object SqlCdsRelOperFiscal01OPE_AVISOLEGAL: TStringField
      FieldName = 'OPE_AVISOLEGAL'
      Size = 1000
    end
    object SqlCdsRelOperFiscal01EMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlCdsRelOperFiscal01OPE_AGRUPADO: TStringField
      FieldName = 'OPE_AGRUPADO'
      Size = 4
    end
    object SqlCdsRelOperFiscal01OPE_SUBTRIBUTARIA: TStringField
      FieldName = 'OPE_SUBTRIBUTARIA'
      Size = 1
    end
    object SqlCdsRelOperFiscal01OPE_ESTOQUE: TStringField
      FieldName = 'OPE_ESTOQUE'
      Size = 1
    end
    object SqlCdsRelOperFiscal01CCT_CODIGO: TStringField
      FieldName = 'CCT_CODIGO'
      Size = 3
    end
    object SqlCdsRelOperFiscal01OPV_CODIGO: TIntegerField
      FieldName = 'OPV_CODIGO'
    end
    object SqlCdsRelOperFiscal01OPE_SERVICO: TStringField
      FieldName = 'OPE_SERVICO'
      Size = 1
    end
    object SqlCdsRelOperFiscal01OPE_PIS: TFMTBCDField
      FieldName = 'OPE_PIS'
      Precision = 15
    end
    object SqlCdsRelOperFiscal01OPE_COFINS: TFMTBCDField
      FieldName = 'OPE_COFINS'
      Precision = 15
    end
    object SqlCdsRelOperFiscal01OPE_CONTRISOCIAL: TFMTBCDField
      FieldName = 'OPE_CONTRISOCIAL'
      Precision = 15
    end
    object SqlCdsRelOperFiscal01OPE_DESCRINATUREZA: TStringField
      FieldName = 'OPE_DESCRINATUREZA'
      Size = 25
    end
    object SqlCdsRelOperFiscal01OPE_AVISOLEGAL2: TStringField
      FieldName = 'OPE_AVISOLEGAL2'
      Size = 1000
    end
    object SqlCdsRelOperFiscal01OPE_NOTA_COMPLEMENTAR: TStringField
      FieldName = 'OPE_NOTA_COMPLEMENTAR'
      Size = 1
    end
    object SqlCdsRelOperFiscal01OPE_INDICE_IMP: TFMTBCDField
      FieldName = 'OPE_INDICE_IMP'
      Precision = 15
      Size = 5
    end
    object SqlCdsRelOperFiscal01OPE_FRETEBASEIPI: TStringField
      FieldName = 'OPE_FRETEBASEIPI'
      Size = 1
    end
    object SqlCdsRelOperFiscal01OPE_DESPIMPORIPI: TStringField
      FieldName = 'OPE_DESPIMPORIPI'
      Size = 1
    end
    object SqlCdsRelOperFiscal01OPE_AUMEN_ICMS: TFMTBCDField
      FieldName = 'OPE_AUMEN_ICMS'
      Precision = 15
      Size = 5
    end
    object SqlCdsRelOperFiscal01OPE_ICMS_TOTALNOTA: TStringField
      FieldName = 'OPE_ICMS_TOTALNOTA'
      Size = 1
    end
    object SqlCdsRelOperFiscal01OPE_SEMVLCOM_MOSTRAF: TStringField
      FieldName = 'OPE_SEMVLCOM_MOSTRAF'
      Size = 1
    end
    object SqlCdsRelOperFiscal01OPE_TRIBPISCOFINS: TStringField
      FieldName = 'OPE_TRIBPISCOFINS'
      Size = 1
    end
    object SqlCdsRelOperFiscal01OPE_TEMCREDITO: TStringField
      FieldName = 'OPE_TEMCREDITO'
      Size = 1
    end
    object SqlCdsRelOperFiscal01OPE_ATIVA: TStringField
      FieldName = 'OPE_ATIVA'
      Size = 1
    end
  end
  object DsRelOperFiscal01: TDataSource
    DataSet = SqlCdsRelOperFiscal01
    Left = 602
    Top = 474
  end
  object ppRPRelOperFiscal01: TppReport
    AutoStop = False
    DataPipeline = ppDBRelOperFiscal01
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 15000
    PrinterSetup.mmMarginLeft = 10000
    PrinterSetup.mmMarginRight = 10000
    PrinterSetup.mmMarginTop = 15000
    PrinterSetup.mmPaperHeight = 216000
    PrinterSetup.mmPaperWidth = 279000
    PrinterSetup.PaperSize = 1
    Template.FileName = 'X:\developer\adjutor\fontesrelatorios\RELOPERFISCAL01'
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
    Left = 826
    Top = 402
    Version = '16.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBRelOperFiscal01'
    object pp00HeaderBand2: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 19844
      mmPrintPosition = 0
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 258000
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
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3302
        mmLeft = 0
        mmTop = 794
        mmWidth = 22479
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
        mmTop = 4233
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
        mmTop = 7673
        mmWidth = 14817
        BandType = 0
        LayerName = Foreground
      end
      object ppLine6: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 11113
        mmWidth = 258000
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable3: TppSystemVariable
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
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 230717
        mmTop = 794
        mmWidth = 26988
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable4: TppSystemVariable
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
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 230717
        mmTop = 7673
        mmWidth = 26988
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        CharWrap = True
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'COD CFOP'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7938
        mmLeft = 0
        mmTop = 11642
        mmWidth = 7408
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'DESCRI'#199#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3387
        mmLeft = 8731
        mmTop = 11642
        mmWidth = 68792
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'CFOP'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        WordWrap = True
        mmHeight = 3387
        mmLeft = 85461
        mmTop = 11642
        mmWidth = 7938
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'Redu'#231#227'o IPI'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7673
        mmLeft = 126207
        mmTop = 11642
        mmWidth = 11642
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'Redu'#231#227'o ICMS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7673
        mmLeft = 139436
        mmTop = 11642
        mmWidth = 11377
        BandType = 0
        LayerName = Foreground
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line3'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 19579
        mmWidth = 258000
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'ICMS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3387
        mmLeft = 152665
        mmTop = 11642
        mmWidth = 7938
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'IPI'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3387
        mmLeft = 162719
        mmTop = 11642
        mmWidth = 6350
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label9'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'IPI na Base'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7673
        mmLeft = 183886
        mmTop = 11642
        mmWidth = 8202
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label10'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'Aviso NF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7673
        mmLeft = 202936
        mmTop = 11642
        mmWidth = 7408
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label12'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'Estoque'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3387
        mmLeft = 212196
        mmTop = 11642
        mmWidth = 8996
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label13'
        CharWrap = True
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'Frete Base'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 6879
        mmLeft = 193675
        mmTop = 11642
        mmWidth = 7408
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label14'
        CharWrap = True
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'Subt. Tributaria'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 6879
        mmLeft = 223309
        mmTop = 11642
        mmWidth = 10848
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel14: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label15'
        CharWrap = True
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'Servi'#231'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        WordWrap = True
        mmHeight = 3387
        mmLeft = 235480
        mmTop = 11642
        mmWidth = 9790
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel15: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label16'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'Tipo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 3387
        mmLeft = 95250
        mmTop = 11642
        mmWidth = 15081
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel16: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label17'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'Dentro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 3387
        mmLeft = 111919
        mmTop = 11642
        mmWidth = 12965
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel17: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label18'
        CharWrap = True
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'NF Compl.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 6773
        mmLeft = 247915
        mmTop = 11642
        mmWidth = 10583
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'Sem Vl. Com'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7673
        mmLeft = 171450
        mmTop = 11642
        mmWidth = 10583
        BandType = 0
        LayerName = Foreground
      end
    end
    object pp00DetailBand2: TppDetailBand
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
        DataField = 'OPE_CODIGO'
        DataPipeline = ppDBRelOperFiscal01
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBRelOperFiscal01'
        mmHeight = 3387
        mmLeft = 0
        mmTop = 0
        mmWidth = 7408
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OPE_DESCRI'
        DataPipeline = ppDBRelOperFiscal01
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRelOperFiscal01'
        mmHeight = 3387
        mmLeft = 8731
        mmTop = 0
        mmWidth = 68792
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OPE_NATUREZA'
        DataPipeline = ppDBRelOperFiscal01
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRelOperFiscal01'
        mmHeight = 3387
        mmLeft = 85461
        mmTop = 0
        mmWidth = 7938
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OPE_REDU_IPI'
        DataPipeline = ppDBRelOperFiscal01
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRelOperFiscal01'
        mmHeight = 3175
        mmLeft = 126471
        mmTop = 0
        mmWidth = 10319
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OPE_REDU_ICM'
        DataPipeline = ppDBRelOperFiscal01
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRelOperFiscal01'
        mmHeight = 3175
        mmLeft = 139436
        mmTop = 0
        mmWidth = 11377
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OPE_SEMVLCOM'
        DataPipeline = ppDBRelOperFiscal01
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBRelOperFiscal01'
        mmHeight = 3175
        mmLeft = 171450
        mmTop = 0
        mmWidth = 10583
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OPE_TRIBICMS'
        DataPipeline = ppDBRelOperFiscal01
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRelOperFiscal01'
        mmHeight = 3175
        mmLeft = 152665
        mmTop = 0
        mmWidth = 7938
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText8'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OPE_TRIBIPI'
        DataPipeline = ppDBRelOperFiscal01
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRelOperFiscal01'
        mmHeight = 3175
        mmLeft = 162190
        mmTop = 0
        mmWidth = 6879
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText9'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OPE_IPINABASEICMS'
        DataPipeline = ppDBRelOperFiscal01
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRelOperFiscal01'
        mmHeight = 3175
        mmLeft = 184944
        mmTop = 0
        mmWidth = 6879
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText10'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OPE_IMP_AVISO'
        DataPipeline = ppDBRelOperFiscal01
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRelOperFiscal01'
        mmHeight = 3175
        mmLeft = 202936
        mmTop = 0
        mmWidth = 7938
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText11: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText11'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OPE_ESTOQUE'
        DataPipeline = ppDBRelOperFiscal01
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRelOperFiscal01'
        mmHeight = 3175
        mmLeft = 212196
        mmTop = 0
        mmWidth = 9260
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText12: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText12'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OPE_FRETENABASE'
        DataPipeline = ppDBRelOperFiscal01
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRelOperFiscal01'
        mmHeight = 3175
        mmLeft = 193411
        mmTop = 0
        mmWidth = 8467
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText13: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText13'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OPE_SUBTRIBUTARIA'
        DataPipeline = ppDBRelOperFiscal01
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRelOperFiscal01'
        mmHeight = 3175
        mmLeft = 223838
        mmTop = 0
        mmWidth = 10319
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText14: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText14'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OPE_SERVICO'
        DataPipeline = ppDBRelOperFiscal01
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRelOperFiscal01'
        mmHeight = 3175
        mmLeft = 235480
        mmTop = 0
        mmWidth = 10583
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText15: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText15'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OPE_TIPO'
        DataPipeline = ppDBRelOperFiscal01
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRelOperFiscal01'
        mmHeight = 3387
        mmLeft = 95250
        mmTop = 0
        mmWidth = 15081
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText16: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText16'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OPE_DENTRO'
        DataPipeline = ppDBRelOperFiscal01
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRelOperFiscal01'
        mmHeight = 3387
        mmLeft = 111919
        mmTop = 0
        mmWidth = 12965
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText17: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText17'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OPE_NOTA_COMPLEMENTAR'
        DataPipeline = ppDBRelOperFiscal01
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRelOperFiscal01'
        mmHeight = 3175
        mmLeft = 247915
        mmTop = 0
        mmWidth = 11642
        BandType = 4
        LayerName = Foreground
      end
    end
    object pp00SummaryBand2: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppLine9: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line4'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 258000
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel25: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label11'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Total de Opera'#231#227'o Fiscal Listado(s):'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 0
        mmTop = 529
        mmWidth = 40640
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc2: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataPipeline = ppDBRelOperFiscal01
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBRelOperFiscal01'
        mmHeight = 3175
        mmLeft = 46567
        mmTop = 529
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground
      end
    end
    object raCodeModule2: TraCodeModule
      ProgramStream = {
        01060F5472614576656E7448616E646C65720B50726F6772616D4E616D650610
        444254657874354F6E476574546578740B50726F6772616D54797065070B7474
        50726F63656475726506536F7572636506A470726F6365647572652044425465
        7874354F6E476574546578742876617220546578743A20537472696E67293B0D
        0A5661720D0A202077546573746569636D3A537472696E673B0D0A626567696E
        0D0A2020202077546573746569636D3A3D444252656C4F70657246697363616C
        30315B274F50455F524544555F49434D275D3B0D0A2020202054657874203A3D
        77546573746569636D2B2725273B0D0A656E643B0D0A0D436F6D706F6E656E74
        4E616D65060744425465787435094576656E744E616D6506094F6E4765745465
        7874074576656E7449440235084361726574506F730102000200000001060F54
        72614576656E7448616E646C65720B50726F6772616D4E616D65061044425465
        7874344F6E476574546578740B50726F6772616D54797065070B747450726F63
        656475726506536F7572636506A570726F63656475726520444254657874344F
        6E476574546578742876617220546578743A20537472696E67293B0D0A566172
        0D0A20207754657374654970693A537472696E673B0D0A626567696E0D0A2020
        20207754657374654970693A3D444252656C4F70657246697363616C30315B27
        4F50455F524544555F495049275D3B0D0A2020202054657874203A3D20775465
        7374654970692B2725273B0D0A656E643B0D0A0D436F6D706F6E656E744E616D
        65060744425465787434094576656E744E616D6506094F6E4765745465787407
        4576656E7449440235084361726574506F730102000200000001060F54726145
        76656E7448616E646C65720B50726F6772616D4E616D65061044425465787436
        4F6E476574546578740B50726F6772616D54797065070B747450726F63656475
        726506536F7572636514A800000070726F63656475726520444254657874364F
        6E476574546578742876617220546578743A20537472696E67293B0D0A626567
        696E0D0A20202020696620444252656C4F70657246697363616C30315B274F50
        455F53454D564C434F4D275D3D275327207468656E0D0A202020202020205465
        7874203A3D202753494D270D0A20202020656C73650D0A202020092054657874
        203A3D20274EC3A34F273B2020200D0A656E643B0D0A0D436F6D706F6E656E74
        4E616D65060744425465787436094576656E744E616D6506094F6E4765745465
        7874074576656E7449440235084361726574506F730102000200000001060F54
        72614576656E7448616E646C65720B50726F6772616D4E616D65061044425465
        7874374F6E476574546578740B50726F6772616D54797065070B747450726F63
        656475726506536F7572636514A500000070726F636564757265204442546578
        74374F6E476574546578742876617220546578743A20537472696E67293B0D0A
        626567696E0D0A20202020494620444252656C4F70657246697363616C30315B
        274F50455F5452494249434D53275D3D275327207468656E0D0A202020202020
        2054657874203A3D202753494D270D0A20202020656C73650D0A092054657874
        203A3D20274EC3A34F273B2020200D0A656E643B0D0A0D436F6D706F6E656E74
        4E616D65060744425465787437094576656E744E616D6506094F6E4765745465
        7874074576656E7449440235084361726574506F730102000200000001060F54
        72614576656E7448616E646C65720B50726F6772616D4E616D65061044425465
        7874384F6E476574546578740B50726F6772616D54797065070B747450726F63
        656475726506536F75726365149F00000070726F636564757265204442546578
        74384F6E476574546578742876617220546578743A20537472696E67293B0D0A
        626567696E0D0A20202020696620444252656C4F70657246697363616C30315B
        274F50455F54524942495049275D3D275327207468656E0D0A09205465787420
        3A3D202753494D270D0A20202020656C73650D0A092054657874203A3D20274E
        C3A34F273B090D0A0D0A656E643B0D0A0D436F6D706F6E656E744E616D650607
        44425465787438094576656E744E616D6506094F6E4765745465787407457665
        6E7449440235084361726574506F730102000200000001060F5472614576656E
        7448616E646C65720B50726F6772616D4E616D650610444254657874394F6E47
        6574546578740B50726F6772616D54797065070B747450726F63656475726506
        536F7572636514AA00000070726F63656475726520444254657874394F6E4765
        74546578742876617220546578743A20537472696E67293B0D0A626567696E0D
        0A20202020696620444252656C4F70657246697363616C30315B274F50455F49
        50494E414241534549434D53275D3D275327207468656E0D0A20202020202020
        54657874203A3D202753494D270D0A20202020656C73650D0A09205465787420
        3A3D20274EC3A34F273B2020200D0A656E643B0D0A0D436F6D706F6E656E744E
        616D65060744425465787439094576656E744E616D6506094F6E476574546578
        74074576656E7449440235084361726574506F730102000200000001060F5472
        614576656E7448616E646C65720B50726F6772616D4E616D6506114442546578
        7431304F6E476574546578740B50726F6772616D54797065070B747450726F63
        656475726506536F7572636514A800000070726F636564757265204442546578
        7431304F6E476574546578742876617220546578743A20537472696E67293B0D
        0A626567696E0D0A20202020696620444252656C4F70657246697363616C3031
        5B274F50455F494D505F415649534F275D3D275327207468656E0D0A20202020
        20202054657874203A3D202753494D270D0A20202020656C73650D0A20092054
        657874203A3D20274EC3A34F273B2020200D0A656E643B0D0A0D436F6D706F6E
        656E744E616D6506084442546578743130094576656E744E616D6506094F6E47
        657454657874074576656E7449440235084361726574506F7301020002000000
        01060F5472614576656E7448616E646C65720B50726F6772616D4E616D650611
        44425465787431314F6E476574546578740B50726F6772616D54797065070B74
        7450726F63656475726506536F7572636514A500000070726F63656475726520
        44425465787431314F6E476574546578742876617220546578743A2053747269
        6E67293B0D0A626567696E0D0A20202020696620444252656C4F706572466973
        63616C30315B274F50455F4553544F515545275D3D275327207468656E0D0A20
        20202020202054657874203A3D202753494D270D0A20202020656C73650D0A09
        2054657874203A3D20274EC3A34F273B2020200D0A656E643B0D0A0D436F6D70
        6F6E656E744E616D6506084442546578743131094576656E744E616D6506094F
        6E47657454657874074576656E7449440235084361726574506F730102000200
        000001060F5472614576656E7448616E646C65720B50726F6772616D4E616D65
        061144425465787431324F6E476574546578740B50726F6772616D5479706507
        0B747450726F63656475726506536F7572636514A900000070726F6365647572
        652044425465787431324F6E476574546578742876617220546578743A205374
        72696E67293B0D0A626567696E0D0A20202020696620444252656C4F70657246
        697363616C30315B274F50455F46524554454E4142415345275D3D2753272074
        68656E0D0A2020202020202054657874203A3D202753494D270D0A2020202065
        6C73650D0A092054657874203A3D20274EC3A34F273B2020200D0A656E643B0D
        0A0D436F6D706F6E656E744E616D6506084442546578743132094576656E744E
        616D6506094F6E47657454657874074576656E7449440235084361726574506F
        730102000200000001060F5472614576656E7448616E646C65720B50726F6772
        616D4E616D65061144425465787431334F6E476574546578740B50726F677261
        6D54797065070B747450726F63656475726506536F7572636514AB0000007072
        6F6365647572652044425465787431334F6E4765745465787428766172205465
        78743A20537472696E67293B0D0A626567696E0D0A2020202069662044425265
        6C4F70657246697363616C30315B274F50455F53554254524942555441524941
        275D3D275327207468656E0D0A2020202020202054657874203A3D202753494D
        270D0A20202020656C73650D0A092054657874203A3D20274EC3A34F273B2020
        200D0A656E643B0D0A0D436F6D706F6E656E744E616D65060844425465787431
        33094576656E744E616D6506094F6E47657454657874074576656E7449440235
        084361726574506F730102000200000001060F5472614576656E7448616E646C
        65720B50726F6772616D4E616D65061144425465787431344F6E476574546578
        740B50726F6772616D54797065070B747450726F63656475726506536F757263
        6514A500000070726F6365647572652044425465787431344F6E476574546578
        742876617220546578743A20537472696E67293B0D0A626567696E0D0A202020
        20696620444252656C4F70657246697363616C30315B274F50455F5345525649
        434F275D3D275327207468656E0D0A2020202020202054657874203A3D202753
        494D270D0A20202020656C73650D0A092054657874203A3D20274EC3A34F273B
        2020200D0A656E643B0D0A0D436F6D706F6E656E744E616D6506084442546578
        743134094576656E744E616D6506094F6E47657454657874074576656E744944
        0235084361726574506F730102000200000001060F5472614576656E7448616E
        646C65720B50726F6772616D4E616D65061144425465787431374F6E47657454
        6578740B50726F6772616D54797065070B747450726F63656475726506536F75
        72636514AF00000070726F6365647572652044425465787431374F6E47657454
        6578742876617220546578743A20537472696E67293B0D0A626567696E0D0A20
        202020696620444252656C4F70657246697363616C30315B274F50455F4E4F54
        415F434F4D504C454D454E544152275D3D275327207468656E0D0A2020202020
        202054657874203A3D202753494D270D0A20202020656C73650D0A0920546578
        74203A3D20274EC3A34F273B2020200D0A656E643B0D0A0D436F6D706F6E656E
        744E616D6506084442546578743137094576656E744E616D6506094F6E476574
        54657874074576656E7449440235084361726574506F73010200020000000106
        0F5472614576656E7448616E646C65720B50726F6772616D4E616D6506114442
        5465787431364F6E476574546578740B50726F6772616D54797065070B747450
        726F63656475726506536F7572636506FA70726F636564757265204442546578
        7431364F6E476574546578742876617220546578743A20537472696E67293B0D
        0A626567696E0D0A20202020696620444252656C4F70657246697363616C3031
        5B274F50455F44454E54524F275D3D274427207468656E0D0A20202020202020
        54657874203A3D202744454E54524F270D0A20202020656C73650D0A20202020
        696620444252656C4F70657246697363616C30315B274F50455F44454E54524F
        275D3D274627207468656E0D0A2020202020202054657874203A3D2027464F52
        41270D0A20202020656C73650D0A092054657874203A3D2027494E444550273B
        2020200D0A656E643B0D0A0D436F6D706F6E656E744E616D6506084442546578
        743136094576656E744E616D6506094F6E47657454657874074576656E744944
        0235084361726574506F730102000200000001060F5472614576656E7448616E
        646C65720B50726F6772616D4E616D65061144425465787431354F6E47657454
        6578740B50726F6772616D54797065070B747450726F63656475726506536F75
        72636506A770726F6365647572652044425465787431354F6E47657454657874
        2876617220546578743A20537472696E67293B0D0A626567696E0D0A20202020
        696620444252656C4F70657246697363616C30315B274F50455F5449504F275D
        3D275327207468656E0D0A2020202020202054657874203A3D20275341494441
        270D0A20202020656C73650D0A092054657874203A3D2027454E545241444127
        3B2020200D0A656E643B0D0A0D436F6D706F6E656E744E616D65060844425465
        78743135094576656E744E616D6506094F6E47657454657874074576656E7449
        440235084361726574506F730102000200000000}
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
  object SqlCdsCtaAnalise: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 'select CCT_CODIGO, CCT_DESCRI, EMP_CODIGO from CCT_0000'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'select CCT_CODIGO, CCT_DESCRI, EMP_CODIGO from CCT_0000'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 776
    Top = 330
    object SqlCdsCtaAnaliseCCT_CODIGO: TStringField
      FieldName = 'CCT_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 3
    end
    object SqlCdsCtaAnaliseCCT_DESCRI: TStringField
      FieldName = 'CCT_DESCRI'
      Size = 35
    end
    object SqlCdsCtaAnaliseEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
  object ppDBRelOperFiscal01: TppDBPipeline
    DataSource = DsRelOperFiscal01
    UserName = 'DBRelOperFiscal01'
    Left = 715
    Top = 418
  end
  object qrCSOSN: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM CSON0000 WHERE CSON_ID=0')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 464
    Top = 470
    object qrCSOSNCSON_ID: TIntegerField
      FieldName = 'CSON_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrCSOSNCSON_COD: TStringField
      FieldName = 'CSON_COD'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object qrCSOSNCSON_DESCRICAO: TStringField
      FieldName = 'CSON_DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 115
    end
  end
  object qCstPC: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    Left = 773
    Top = 283
  end
  object dsoperfisc: TJvDataSource
    DataSet = DataCadastros.CdsOperFisc
    Left = 816
    Top = 463
  end
end
