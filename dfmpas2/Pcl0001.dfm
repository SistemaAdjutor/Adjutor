object FormParcelas: TFormParcelas
  Left = 242
  Top = 103
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Parcelas'
  ClientHeight = 542
  ClientWidth = 560
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = True
  Position = poDesktopCenter
  Visible = True
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnDestroy = FormDestroy
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object DBNavigator1: TDBNavigator
    Left = 433
    Top = 10
    Width = 116
    Height = 25
    DataSource = DataCadastros.DsParcelas
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    TabOrder = 1
    OnClick = DBNavigator1Click
  end
  object DbChkPCL_DISPONIVEL: TDBCheckBox
    Left = 12
    Top = 10
    Width = 161
    Height = 16
    Caption = 'Parcelamento dispon'#237'vel'
    DataField = 'PCL_DISPONIVEL'
    DataSource = DataCadastros.DsParcelas
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object Bit_Lista: TBitBtn
    Left = 7
    Top = 512
    Width = 85
    Height = 25
    Cursor = crHandPoint
    Caption = 'C&onsulta'
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
    TabOrder = 8
    TabStop = False
    OnClick = Bit_ListaClick
  end
  object Bit_Relatorio: TBitBtn
    Left = 92
    Top = 512
    Width = 85
    Height = 25
    Cursor = crHandPoint
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
    TabOrder = 9
    TabStop = False
    OnClick = Bit_RelatorioClick
  end
  object Bit_novo: TBitBtn
    Left = 231
    Top = 512
    Width = 80
    Height = 25
    Cursor = crHandPoint
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
    TabOrder = 10
    TabStop = False
    OnClick = Bit_novoClick
  end
  object Bit_Excluir: TBitBtn
    Left = 311
    Top = 512
    Width = 80
    Height = 25
    Cursor = crHandPoint
    Hint = '|Exclui registro atual..'
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
    TabOrder = 11
    TabStop = False
    OnClick = Bit_ExcluirClick
  end
  object Bit_Gravar: TBitBtn
    Left = 391
    Top = 512
    Width = 80
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
    TabOrder = 12
    TabStop = False
    OnClick = Bit_GravarClick
  end
  object Bit_Cancelar: TBitBtn
    Left = 471
    Top = 512
    Width = 80
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
    TabOrder = 13
    TabStop = False
    OnClick = Bit_CancelarClick
  end
  object Bit_Sair: TBitBtn
    Left = 471
    Top = 512
    Width = 80
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
    TabOrder = 14
    TabStop = False
    OnClick = Bit_SairClick
  end
  object grpInformacoes: TGroupBox
    Left = 8
    Top = 37
    Width = 545
    Height = 185
    Caption = 'Informa'#231#245'es'
    TabOrder = 2
    object lbl1: TLabel
      Left = 22
      Top = 46
      Width = 45
      Height = 14
      Caption = 'Parcelas:'
    end
    object lbl2: TLabel
      Left = 31
      Top = 22
      Width = 36
      Height = 14
      Caption = 'C'#243'digo:'
    end
    object lbl6: TLabel
      Left = 18
      Top = 70
      Width = 49
      Height = 14
      Caption = 'Desconto:'
    end
    object lbl7: TLabel
      Left = 69
      Top = 91
      Width = 131
      Height = 14
      Caption = 'Ap'#243's o vencimento aplicar:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsUnderline]
      ParentFont = False
    end
    object lbl8: TLabel
      Left = 39
      Top = 110
      Width = 28
      Height = 14
      Caption = 'Multa:'
    end
    object lbl9: TLabel
      Left = 37
      Top = 134
      Width = 30
      Height = 14
      Caption = 'Juros:'
    end
    object lbl10: TLabel
      Left = 338
      Top = 126
      Width = 145
      Height = 14
      Caption = '% do valor total na 1'#176' parcela:'
      ParentShowHint = False
      ShowHint = True
    end
    object Label3: TLabel
      Left = 386
      Top = 150
      Width = 98
      Height = 14
      Caption = ' Taxa na margem %:'
      ParentShowHint = False
      ShowHint = True
    end
    object Label4: TLabel
      Left = 7
      Top = 157
      Width = 172
      Height = 14
      Caption = 'Limite m'#237'nimo de valor para o prazo:'
    end
    object DbePcl_nome: TDBEdit
      Left = 69
      Top = 43
      Width = 468
      Height = 22
      CharCase = ecUpperCase
      DataField = 'PCL_NOME'
      DataSource = DataCadastros.DsParcelas
      TabOrder = 2
    end
    object EdtPCL_CODIGO: TEdit
      Left = 69
      Top = 19
      Width = 30
      Height = 22
      MaxLength = 3
      TabOrder = 0
      OnChange = EdtPCL_CODIGOChange
      OnEnter = EdtPCL_CODIGOEnter
      OnExit = EdtPCL_CODIGOExit
      OnKeyPress = EdtPCL_CODIGOKeyPress
    end
    object dbedtDbePcl_Descto: TDBEdit
      Left = 69
      Top = 67
      Width = 56
      Height = 22
      DataField = 'PCL_DESCTO'
      DataSource = DataCadastros.DsParcelas
      TabOrder = 3
    end
    object dbedtDbePCL_MULTA: TDBEdit
      Left = 69
      Top = 107
      Width = 40
      Height = 22
      DataField = 'PCL_MULTA'
      DataSource = DataCadastros.DsParcelas
      TabOrder = 4
    end
    object dbedtDbePCL_Juros: TDBEdit
      Left = 69
      Top = 131
      Width = 40
      Height = 22
      DataField = 'PCL_JUROS'
      DataSource = DataCadastros.DsParcelas
      TabOrder = 5
    end
    object dbedtPCL_PERCENTUAL_PRIMEIRA_P: TDBEdit
      Left = 485
      Top = 123
      Width = 57
      Height = 22
      DataField = 'PCL_PERCENTUAL_PRIMEIRA_P'
      DataSource = DataCadastros.DsParcelas
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
    end
    object dbrgrpPCL_MODALIDADE: TDBRadioGroup
      Left = 106
      Top = 8
      Width = 431
      Height = 33
      Caption = 'Tipo do Prazo - Implica no Sped'
      Columns = 3
      DataField = 'PCL_MODALIDADE'
      DataSource = DataCadastros.DsParcelas
      Items.Strings = (
        #193' VISTA'
        'PRAZO'
        'SEM PAGAMENTO')
      TabOrder = 1
      Values.Strings = (
        '0'
        '1'
        '2')
      OnClick = dbrgrpPCL_MODALIDADEClick
    end
    object GroupBox1: TGroupBox
      Left = 357
      Top = 64
      Width = 185
      Height = 58
      Caption = 'Adiciona / Decresce:'
      TabOrder = 7
      object Label1: TLabel
        Left = 29
        Top = 19
        Width = 68
        Height = 14
        Caption = 'Comiss'#227'o(%):'
      end
      object Label2: TLabel
        Left = 47
        Top = 39
        Width = 50
        Height = 14
        Caption = 'Verba(%):'
      end
      object DBEdit1: TDBEdit
        Left = 103
        Top = 34
        Width = 74
        Height = 22
        DataField = 'PERC_VERBA'
        DataSource = DataCadastros.DsParcelas
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 103
        Top = 12
        Width = 74
        Height = 22
        DataField = 'PERC_COMISSAO'
        DataSource = DataCadastros.DsParcelas
        TabOrder = 1
      end
    end
    object DBEdit3: TDBEdit
      Left = 486
      Top = 147
      Width = 57
      Height = 22
      DataField = 'PCL_TX_MARGEM'
      DataSource = DataCadastros.DsParcelas
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
    end
    object dbedtValorMinimoVenda: TDBEdit
      Left = 181
      Top = 154
      Width = 129
      Height = 22
      DataField = 'PCL_VALOR_MINIMO_VENDA'
      DataSource = DataCadastros.DsParcelas
      TabOrder = 9
    end
  end
  object grp1: TGroupBox
    Left = 8
    Top = 250
    Width = 270
    Height = 176
    Align = alCustom
    Caption = 'Fixos'
    TabOrder = 5
    object lbl3: TLabel
      Left = 18
      Top = 19
      Width = 100
      Height = 14
      Caption = 'Numero de parcelas:'
    end
    object lbl4: TLabel
      Left = 20
      Top = 45
      Width = 97
      Height = 14
      Caption = 'Dias entre parcelas:'
      ParentShowHint = False
      ShowHint = True
    end
    object lbl5: TLabel
      Left = 4
      Top = 70
      Width = 113
      Height = 14
      Caption = 'Carencia da 1'#170' parcela:'
    end
    object DbePCL_NPARCELAS: TDBEdit
      Left = 120
      Top = 16
      Width = 57
      Height = 22
      CharCase = ecUpperCase
      DataField = 'PCL_NPARCELAS'
      DataSource = DataCadastros.DsParcelas
      TabOrder = 0
    end
    object DbePCL_DIASENTREP: TDBEdit
      Left = 120
      Top = 41
      Width = 57
      Height = 22
      DataField = 'PCL_DIASENTREP'
      DataSource = DataCadastros.DsParcelas
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
    end
    object DbePCL_CARENCIA: TDBEdit
      Left = 120
      Top = 66
      Width = 56
      Height = 22
      DataField = 'PCL_CARENC_PRI'
      DataSource = DataCadastros.DsParcelas
      TabOrder = 2
    end
    object dbchkPCL_MANTERDIA1: TDBCheckBox
      Left = 5
      Top = 98
      Width = 174
      Height = 17
      Caption = 'Manter fixo o dia do vencimento'
      DataField = 'PCL_MANTERDIA'
      DataSource = DataCadastros.DsParcelas
      TabOrder = 3
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
  end
  object rbFixas: TRadioButton
    Left = 8
    Top = 228
    Width = 281
    Height = 17
    Caption = 'Parcelamento c/ dias Fixos entre as parcelas'
    Checked = True
    TabOrder = 3
    TabStop = True
    OnEnter = rbFixasEnter
  end
  object grp2: TGroupBox
    Left = 280
    Top = 250
    Width = 270
    Height = 177
    Caption = 'Vari'#225'vel'
    TabOrder = 6
    object btnAdicionar: TSpeedButton
      Left = 155
      Top = 41
      Width = 23
      Height = 22
      Glyph.Data = {
        D6020000424DD60200000000000036000000280000000F0000000E0000000100
        180000000000A0020000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF5DAE5D1F8F1FC9E4C9FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF46A34600
        8000C1E0C1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF46A346008000C1E0C1FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF46A34600
        8000C1E0C1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFB7DBB7
        2F972F2F972F2F972F2F972F0D860D0080002492242F972F2F972F2F972F51A8
        51FFFFFFFFFFFF000000FFFFFFB1D8B11F8F1F1F8F1F1F8F1F1F8F1F08840800
        8000188C181F8F1F1F8F1F1F8F1F44A244FFFFFFFFFFFF000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF46A346008000C1E0C1FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF46A34600
        8000C1E0C1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF46A346008000C1E0C1FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5DAE5D1F
        8F1FC9E4C9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000}
      OnClick = btnAdicionarClick
    end
    object btnRetirar: TSpeedButton
      Left = 155
      Top = 65
      Width = 23
      Height = 22
      Glyph.Data = {
        FE050000424DFE05000000000000360400002800000017000000130000000100
        080000000000C8010000C40E0000C40E000000010000000100004F4650005044
        5C005C53500061575400625855006B605C0067567B0070656100786C68007B6F
        6B00786B740081747000857873008B7E79008C7F7A008D807B008F817C003D23
        9F00583DAA004424BB004626BC004E30B9004F31B90075648A005E46A5006F57
        A6006D50BC00795EBC007860A1003210C4003714C8003815C9003B18CC002B04
        D4002C05D5002D06D7002E07D8002900DF003009D900340CDC00350DDD00350E
        DE004019DA00421BDD005735CB004823D7004C26DA005C38DD007553DA007654
        DC008670A3008C6CD7008262DB008F6FDA0096888200A2928C00AA9A9400AD9D
        96009E88AC00B09DA400BDABA400B5A2A900C3B0A900C1ACB200B699D800FFFF
        FF00000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000414141414141
        4141414141414141414141414141414141004141414141414141414141414141
        4141414141414141410041414141414141414141414141414141414141414141
        41004141414141413805364141414141414141370D4141414100414141414133
        2511043E41414141414118233741414141004141414141402526010941414141
        3F13251B414141414100414141414141342520021041413F1F233A4141414141
        410041414141414141312516030F3B1F233A4141414141414100414141414141
        4141312515001D223A4141414141414141004141414141414141413025222106
        414141414141414141004141414141414141413F242514070E41414141414141
        410041414141414141413F1F231A282C0A0B3C41414141414100414141414141
        413F1F253241412B2D1708394141414141004141414141413D1E251941414141
        2F271C0C4141414141004141414141411E251241414141414135254141414141
        410041414141412A251341414141414141414141414141414100414141414129
        2E41414141414141414141414141414141004141414141414141414141414141
        4141414141414141410041414141414141414141414141414141414141414141
        4100}
      OnClick = btnRetirarClick
    end
    object lbl11: TLabel
      Left = 7
      Top = 19
      Width = 75
      Height = 14
      Caption = 'Dias da Parcela'
      ParentShowHint = False
      ShowHint = True
    end
    object dbgrdDias: TDBGrid
      Left = 8
      Top = 40
      Width = 145
      Height = 129
      DataSource = dsParcelaVariavel
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'PCP_DIA'
          Title.Caption = 'Nr. Dias'
          Width = 111
          Visible = True
        end>
    end
  end
  object rbVariavel: TRadioButton
    Left = 283
    Top = 228
    Width = 253
    Height = 17
    Caption = 'Parcelamento c/ dias Vari'#225'vel entre as parcelas'
    TabOrder = 4
    OnEnter = rbVariavelEnter
  end
  object grpObservacao: TGroupBox
    Left = 7
    Top = 462
    Width = 545
    Height = 49
    Caption = 'Observa'#231#227'o'
    TabOrder = 7
    object dbedtPCL_OBS: TDBEdit
      Left = 4
      Top = 19
      Width = 533
      Height = 22
      DataField = 'PCL_OBS'
      DataSource = DataCadastros.DsParcelas
      TabOrder = 0
    end
  end
  object DBCheckBox1: TDBCheckBox
    Left = 8
    Top = 436
    Width = 313
    Height = 17
    Caption = 'Executar baixa financeira autom'#225'tica ao faturar'
    DataField = 'pcl_baixa_automa'
    DataSource = DataCadastros.DsParcelas
    TabOrder = 15
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object SqlCdsRelParcelas: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 'select * from PCL0000 order by PCL_CODIGO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'select * from PCL0000 order by PCL_CODIGO'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 205
    Top = 65528
    object SqlCdsRelParcelasPCL_CODIGO: TStringField
      FieldName = 'PCL_CODIGO'
      Size = 2
    end
    object SqlCdsRelParcelasPCL_NOME: TStringField
      FieldName = 'PCL_NOME'
      Size = 35
    end
    object SqlCdsRelParcelasPCL_DESCTO: TFMTBCDField
      FieldName = 'PCL_DESCTO'
      Precision = 15
    end
    object SqlCdsRelParcelasPCL_MULTA: TFMTBCDField
      FieldName = 'PCL_MULTA'
      Precision = 15
    end
    object SqlCdsRelParcelasPCL_JUROS: TFMTBCDField
      FieldName = 'PCL_JUROS'
      Precision = 15
    end
    object SqlCdsRelParcelasPCL_NPARCELAS: TSmallintField
      FieldName = 'PCL_NPARCELAS'
    end
    object SqlCdsRelParcelasPCL_DIASENTREP: TSmallintField
      FieldName = 'PCL_DIASENTREP'
    end
    object SqlCdsRelParcelasPCL_MANTERDIA: TStringField
      FieldName = 'PCL_MANTERDIA'
      Size = 1
    end
    object SqlCdsRelParcelasPCL_CARENC_PRI: TSmallintField
      FieldName = 'PCL_CARENC_PRI'
    end
    object SqlCdsRelParcelasPCL_OBS: TStringField
      FieldName = 'PCL_OBS'
      Size = 50
    end
    object SqlCdsRelParcelasPCL_DISPONIVEL: TStringField
      FieldName = 'PCL_DISPONIVEL'
      Size = 1
    end
    object SqlCdsRelParcelasEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlCdsRelParcelasPCL_PERCENTUAL_PRIMEIRA_P: TFMTBCDField
      FieldName = 'PCL_PERCENTUAL_PRIMEIRA_P'
      Precision = 15
      Size = 2
    end
    object SqlCdsRelParcelasPCL_TIPO: TStringField
      FieldName = 'PCL_TIPO'
      Size = 1
    end
  end
  object DsRelParcelas: TDataSource
    DataSet = SqlCdsRelParcelas
    Left = 261
  end
  object ppDBRelParcelas: TppDBPipeline
    DataSource = DsRelParcelas
    UserName = 'DBRelParcelas'
    Left = 309
  end
  object ppRPRelParcelas01: TppReport
    AutoStop = False
    DataPipeline = ppDBRelParcelas
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 15000
    PrinterSetup.mmMarginLeft = 10000
    PrinterSetup.mmMarginRight = 10000
    PrinterSetup.mmMarginTop = 15000
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 1
    Template.FileName = 
      'C:\JobProgram\Developer\Adjutor\FontesRelatorios\RELPARCELAS01.r' +
      'tm'
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
    Left = 349
    Top = 8
    Version = '16.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBRelParcelas'
    object pp00HeaderBand2: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 19315
      mmPrintPosition = 0
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 196000
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
        mmWidth = 14023
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
        mmTop = 11377
        mmWidth = 196000
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
        mmLeft = 169334
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
        mmLeft = 180975
        mmTop = 7673
        mmWidth = 14552
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'NOME'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3302
        mmLeft = 0
        mmTop = 11906
        mmWidth = 8128
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'N'#186' PARCELAS'
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
        mmLeft = 70379
        mmTop = 11906
        mmWidth = 16140
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
        mmTop = 19050
        mmWidth = 196000
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Dias Entre Parcelas'
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
        mmLeft = 91017
        mmTop = 11906
        mmWidth = 15081
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'CAR'#202'NCIA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3302
        mmLeft = 108215
        mmTop = 11906
        mmWidth = 14097
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'DESCONTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3302
        mmLeft = 126471
        mmTop = 11906
        mmWidth = 14986
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'MULTA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3302
        mmLeft = 145521
        mmTop = 11906
        mmWidth = 9652
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'JUROS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3302
        mmLeft = 159427
        mmTop = 11906
        mmWidth = 8382
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
        DataField = 'PCL_NOME'
        DataPipeline = ppDBRelParcelas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRelParcelas'
        mmHeight = 3302
        mmLeft = 794
        mmTop = 0
        mmWidth = 66940
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PCL_NPARCELAS'
        DataPipeline = ppDBRelParcelas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBRelParcelas'
        mmHeight = 3302
        mmLeft = 70115
        mmTop = 0
        mmWidth = 17568
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PCL_DIASENTREP'
        DataPipeline = ppDBRelParcelas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBRelParcelas'
        mmHeight = 3302
        mmLeft = 91017
        mmTop = 0
        mmWidth = 15875
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PCL_CARENC_PRI'
        DataPipeline = ppDBRelParcelas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBRelParcelas'
        mmHeight = 3302
        mmLeft = 108215
        mmTop = 0
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PCL_DESCTO'
        DataPipeline = ppDBRelParcelas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBRelParcelas'
        mmHeight = 3302
        mmLeft = 126471
        mmTop = 0
        mmWidth = 18521
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PCL_MULTA'
        DataPipeline = ppDBRelParcelas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBRelParcelas'
        mmHeight = 3302
        mmLeft = 145521
        mmTop = 0
        mmWidth = 12650
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PCL_JUROS'
        DataPipeline = ppDBRelParcelas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBRelParcelas'
        mmHeight = 3302
        mmLeft = 158750
        mmTop = 0
        mmWidth = 10795
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
        mmWidth = 196000
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel25: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label11'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Total de Parcelas Listado(s):'
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
        mmWidth = 31962
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc2: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataPipeline = ppDBRelParcelas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBRelParcelas'
        mmHeight = 3175
        mmLeft = 50271
        mmTop = 529
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground
      end
    end
    object raCodeModule2: TraCodeModule
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
  object dsParcelaVariavel: TDataSource
    DataSet = CdsParcelaVariavel
    Left = 520
    Top = 281
  end
  object CdsParcelaVariavel: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 'SELECT * FROM PCL_PARCELA'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'SELECT * FROM PCL_PARCELA'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 520
    Top = 249
    object CdsParcelaVariavelPCP_REGISTRO: TIntegerField
      FieldName = 'PCP_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CdsParcelaVariavelEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object CdsParcelaVariavelPCL_CODIGO: TStringField
      FieldName = 'PCL_CODIGO'
      Size = 3
    end
    object CdsParcelaVariavelPCP_DIA: TIntegerField
      FieldName = 'PCP_DIA'
    end
  end
end
