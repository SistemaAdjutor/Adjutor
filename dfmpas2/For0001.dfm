inherited FormFornec: TFormFornec
  Left = 504
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Fornecedores/Favorecidos'
  ClientHeight = 584
  ClientWidth = 974
  Font.Charset = ANSI_CHARSET
  Font.Name = 'Arial'
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = True
  Position = poDesktopCenter
  Visible = True
  OnCloseQuery = FormCloseQuery
  OnKeyPress = FormKeyPress
  ExplicitWidth = 980
  ExplicitHeight = 613
  PixelsPerInch = 96
  TextHeight = 14
  object Label1: TLabel [0]
    Left = 46
    Top = 11
    Width = 36
    Height = 14
    Caption = 'C'#243'digo:'
  end
  object SpeedButton1: TSpeedButton [1]
    Left = 322
    Top = 557
    Width = 174
    Height = 25
    Hint = 'Vincula produtos ao fornecedor'
    Caption = '&Vincular Produtos ao Fornecedor'
    ParentShowHint = False
    ShowHint = True
    Transparent = False
    OnClick = SpeedButton1Click
  end
  object bitImportarXLS: TJvArrowButton [2]
    Left = 503
    Top = 557
    Width = 90
    Height = 25
    DropDown = JvPopupMenu1
    Caption = 'Excel'
    FillFont.Charset = DEFAULT_CHARSET
    FillFont.Color = clWindowText
    FillFont.Height = -11
    FillFont.Name = 'Tahoma'
    FillFont.Style = []
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCCCCC
      CCCCCCCCCCCCCCCFCFCFCFCFCFCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC67
      9D703B86483C86483B86483C86483D87493C86483D8749488D53B5B5B3AFAFAD
      AEAEABADADABADADABB0AFADBBB3B72C7F3A45A15F419E5B409E5B449F5E47A1
      6045A05E47A2623A8647B0B0ADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF24
      7932FFFFFFFFFFFFFFFFFFFFFFFF3A9C55FFFFFFFFFFFF358242AEAEABFFFFFF
      FDFDFCFCFCFBFCFCFBFFFEFEFFFFFF24783247A863FFFFFFFFFFFF329C50FFFF
      FFFFFFFF4BAB66388344ADADABFFFFFFF8F8F8F8F8F8F8F8F8FBFAFBFFFFFF27
      793455B37043A960FFFFFFFFFFFFFFFFFF43A96058B5733A8446ADADABFFFFFF
      F6F5F5F6F5F5F6F5F5F9F7F8FFFFFF24773255B772FFFFFFFFFFFF48AD65FFFF
      FFFFFFFF58B975378344ADADABFFFFFFF3F2F2F3F2F2F3F2F2F6F4F4FFFBFF1D
      742CFFFFFFFFFFFF5BBA7661BD7B5ABA76FFFFFFFFFFFF348141ADADABFFFFFF
      F0F0EFF0F0EFF0F0EFF2F1F1FAF6F872A67B49A86268C8856FCA8A73CC8D71CC
      8C6DCA8971CF8E398445ADADABFFFFFFEEECEBEEEDECEEEDECEEEDECF2EFEFFC
      F4F874A67C2577332A7A37307F3D35824337834539854769A374ADADABFFFFFF
      EAE9E9EBEAEAEBEAEAEAE9E9F5F4F4FFFFFFFFFFFFD8EADCFFFFFFC2B7C0FFFF
      FFCCCCCCFFFFFFFFFFFFADADABFFFFFFE7E7E6E8E8E7E8E8E7E6E7E5FFFFFFCC
      CCCBA9A8A6A9A8A6FFFFFFB3B5BACCCCCCC78443CCCCCCFFFFFFAEAEABFFFFFF
      E4E3E2E5E4E3E5E4E3E4E3E2FFFFFFA6A6A4FBFBFAFFFFFFE9EBEEBCC0C4BB81
      3CF4C073BE8545CCCCCCAEAEACFFFFFFE0DFDEE1DFDEE1DFDEE0DFDEFFFFFFA5
      A5A2FFFFFFE7E8E9CFD1D4BA7E35BA8442B98545BB8646BC8747AFAFADFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E9E9CCCECECCCCCCCCCCCCC8B9
      A8BB8747FFFFFFFFFFFFB8B8B6B0B0ADAEAEACAEAEABAEAEABADAEABAEAEABAF
      AFADB7B8B7FFFFFFBB7F36BB8542BB8747D5B58DFFFFFFFFFFFF}
  end
  object Bit_Sair: TBitBtn [3]
    Left = 868
    Top = 557
    Width = 90
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
    TabOrder = 6
    TabStop = False
    OnClick = Bit_SairClick
  end
  object Bit_Cancelar: TBitBtn [4]
    Left = 867
    Top = 557
    Width = 90
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
    TabOrder = 2
    TabStop = False
    OnClick = Bit_CancelarClick
  end
  object EdtFor_codigo: TEdit [5]
    Left = 85
    Top = 7
    Width = 48
    Height = 22
    HideSelection = False
    MaxLength = 4
    TabOrder = 0
    OnExit = EdtFor_codigoExit
    OnKeyPress = DBeCct_CodigoKeyPress
  end
  object DBNavigator1: TDBNavigator [6]
    Left = 838
    Top = 8
    Width = 120
    Height = 25
    DataSource = DataCadastros.DsFornecedor
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    TabOrder = 1
    OnClick = DBNavigator1Click
  end
  object Bit_Gravar: TBitBtn [7]
    Left = 778
    Top = 557
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
    TabOrder = 3
    TabStop = False
    OnClick = Bit_GravarClick
  end
  object Bit_Excluir: TBitBtn [8]
    Left = 688
    Top = 557
    Width = 90
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
    TabOrder = 4
    TabStop = False
    OnClick = Bit_ExcluirClick
  end
  object Bit_novo: TBitBtn [9]
    Left = 598
    Top = 557
    Width = 90
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
    TabOrder = 5
    TabStop = False
    OnClick = Bit_novoClick
  end
  object Bit_Lista: TBitBtn [10]
    Left = 8
    Top = 557
    Width = 90
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
    TabOrder = 7
    TabStop = False
    OnClick = Bit_ListaClick
  end
  object Bit_Relatorio: TBitBtn [11]
    Left = 98
    Top = 557
    Width = 90
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
    TabOrder = 8
    TabStop = False
    OnClick = Bit_RelatorioClick
  end
  object PageControl1: TPageControl [12]
    Left = 1
    Top = 37
    Width = 973
    Height = 516
    ActivePage = tsCadastro
    TabOrder = 9
    object tsCadastro: TTabSheet
      Caption = 'Cadastro'
      object GroupBox2: TGroupBox
        Left = 3
        Top = -1
        Width = 960
        Height = 157
        Caption = 'Dados Cadastrais'
        TabOrder = 0
        object Label2: TLabel
          Left = 56
          Top = 47
          Width = 30
          Height = 14
          Caption = 'Nome:'
        end
        object Label3: TLabel
          Left = 533
          Top = 47
          Width = 49
          Height = 14
          Caption = 'Endere'#231'o:'
        end
        object Label4: TLabel
          Left = 546
          Top = 76
          Width = 36
          Height = 14
          Caption = 'Cidade:'
        end
        object Label5: TLabel
          Left = 863
          Top = 76
          Width = 36
          Height = 14
          Caption = 'Estado:'
        end
        object Label6: TLabel
          Left = 64
          Top = 73
          Width = 22
          Height = 14
          Caption = 'CEP:'
        end
        object Label7: TLabel
          Left = 555
          Top = 101
          Width = 27
          Height = 14
          Caption = 'Fone:'
        end
        object Label8: TLabel
          Left = 840
          Top = 100
          Width = 21
          Height = 14
          Caption = 'Fax:'
        end
        object Label18: TLabel
          Left = 36
          Top = 24
          Width = 50
          Height = 14
          Caption = 'CNPJ/CPF:'
        end
        object Label19: TLabel
          Left = 19
          Top = 99
          Width = 67
          Height = 14
          Caption = 'Insc.Estadual:'
        end
        object Label22: TLabel
          Left = 252
          Top = 75
          Width = 32
          Height = 14
          Caption = 'Bairro:'
        end
        object SpeedButton5: TSpeedButton
          Left = 930
          Top = 72
          Width = 22
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            0400000000000001000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            33333333333FFFFFFFFF333333000000000033333377777777773333330FFFFF
            FFF03333337F333333373333330FFFFFFFF03333337F3FF3FFF73333330F00F0
            00F03333F37F773777373330330FFFFFFFF03337FF7F3F3FF3F73339030F0800
            F0F033377F7F737737373339900FFFFFFFF03FF7777F3FF3FFF70999990F00F0
            00007777777F7737777709999990FFF0FF0377777777FF37F3730999999908F0
            F033777777777337F73309999990FFF0033377777777FFF77333099999000000
            3333777777777777333333399033333333333337773333333333333903333333
            3333333773333333333333303333333333333337333333333333}
          NumGlyphs = 2
          ParentFont = False
          OnClick = SpeedButton5Click
        end
        object Label9: TLabel
          Left = 55
          Top = 125
          Width = 31
          Height = 14
          Caption = 'e-Mail:'
        end
        object Label14: TLabel
          Left = 561
          Top = 127
          Width = 21
          Height = 14
          Caption = 'Site:'
        end
        object Label13: TLabel
          Left = 319
          Top = 98
          Width = 73
          Height = 14
          Caption = 'Insc.Municipal :'
        end
        object Label23: TLabel
          Left = 776
          Top = 24
          Width = 74
          Height = 13
          Caption = 'Data Cadastro :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label24: TLabel
          Left = 318
          Top = 24
          Width = 75
          Height = 14
          Caption = 'Insc.Subs.Trib.:'
        end
        object Label26: TLabel
          Left = 538
          Top = 24
          Width = 44
          Height = 14
          Caption = 'Suframa:'
        end
        object DBeFor_razao: TDBEdit
          Left = 88
          Top = 44
          Width = 437
          Height = 22
          CharCase = ecUpperCase
          DataField = 'FOR_RAZAO'
          DataSource = DataCadastros.DsFornecedor
          TabOrder = 4
        end
        object DBeFor_endere: TDBEdit
          Left = 584
          Top = 44
          Width = 369
          Height = 22
          CharCase = ecUpperCase
          DataField = 'FOR_ENDERE'
          DataSource = DataCadastros.DsFornecedor
          TabOrder = 5
        end
        object DBeFor_cidade: TDBEdit
          Left = 584
          Top = 72
          Width = 273
          Height = 22
          TabStop = False
          CharCase = ecUpperCase
          Color = 14145495
          DataField = 'FOR_CIDADE'
          DataSource = DataCadastros.DsFornecedor
          ReadOnly = True
          TabOrder = 8
        end
        object DBeFor_uf: TDBEdit
          Left = 902
          Top = 72
          Width = 26
          Height = 22
          TabStop = False
          CharCase = ecUpperCase
          Color = 14145495
          DataField = 'FOR_UF'
          DataSource = DataCadastros.DsFornecedor
          ReadOnly = True
          TabOrder = 9
        end
        object DBeFor_cepEdit1: TDBEdit
          Left = 88
          Top = 69
          Width = 65
          Height = 22
          CharCase = ecUpperCase
          DataField = 'FOR_CEP'
          DataSource = DataCadastros.DsFornecedor
          TabOrder = 6
        end
        object DBeFor_fone: TDBEdit
          Left = 584
          Top = 97
          Width = 90
          Height = 22
          CharCase = ecUpperCase
          DataField = 'FOR_FONE'
          DataSource = DataCadastros.DsFornecedor
          TabOrder = 12
          OnExit = DBeFor_foneExit
        end
        object DBeFor_fax: TDBEdit
          Left = 863
          Top = 97
          Width = 90
          Height = 22
          DataField = 'FOR_FAX'
          DataSource = DataCadastros.DsFornecedor
          TabOrder = 13
        end
        object DBeCGC: TDBEdit
          Left = 88
          Top = 19
          Width = 130
          Height = 22
          CharCase = ecUpperCase
          DataField = 'FOR_CGC'
          DataSource = DataCadastros.DsFornecedor
          TabOrder = 0
          OnEnter = DBeCGCEnter
          OnExit = DBeCGCExit
        end
        object DbeInscricao: TDBEdit
          Left = 88
          Top = 95
          Width = 130
          Height = 22
          CharCase = ecUpperCase
          DataField = 'FOR_INSC'
          DataSource = DataCadastros.DsFornecedor
          TabOrder = 10
        end
        object DBEFOR_BAIRRO: TDBEdit
          Left = 285
          Top = 70
          Width = 240
          Height = 22
          CharCase = ecUpperCase
          DataField = 'FOR_BAIRRO'
          DataSource = DataCadastros.DsFornecedor
          TabOrder = 7
        end
        object DBeFor_email: TDBEdit
          Left = 88
          Top = 122
          Width = 437
          Height = 22
          CharCase = ecLowerCase
          DataField = 'FOR_EMAIL'
          DataSource = DataCadastros.DsFornecedor
          TabOrder = 14
        end
        object DbeFOR_HOME: TDBEdit
          Left = 584
          Top = 124
          Width = 369
          Height = 22
          CharCase = ecLowerCase
          DataField = 'FOR_HOME'
          DataSource = DataCadastros.DsFornecedor
          TabOrder = 15
        end
        object DBEInsMuni: TDBEdit
          Left = 395
          Top = 95
          Width = 130
          Height = 22
          CharCase = ecUpperCase
          DataField = 'FOR_INSCMUNI'
          DataSource = DataCadastros.DsFornecedor
          TabOrder = 11
        end
        object DbeFor_dtinicio: TDBDateEdit
          Left = 853
          Top = 20
          Width = 100
          Height = 22
          DataField = 'FOR_DTCADASTRO'
          DataSource = DataCadastros.DsFornecedor
          NumGlyphs = 2
          TabOrder = 3
          YearDigits = dyFour
          OnExit = DbeFor_dtinicioExit
        end
        object DBEInscCST: TDBEdit
          Left = 395
          Top = 19
          Width = 130
          Height = 22
          CharCase = ecUpperCase
          DataField = 'FOR_INSCST'
          DataSource = DataCadastros.DsFornecedor
          TabOrder = 1
        end
        object dbedtFOR_SUFRAMA: TDBEdit
          Left = 584
          Top = 19
          Width = 130
          Height = 22
          CharCase = ecUpperCase
          DataField = 'FOR_SUFRAMA'
          DataSource = DataCadastros.DsFornecedor
          TabOrder = 2
        end
        object btnConsultarCNPJ_CPF: TButton
          Left = 220
          Top = 18
          Width = 88
          Height = 23
          Hint = 'Consultar CNPJ na Receita Federal'
          Caption = 'Consultar CNPJ'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 16
          OnClick = btnConsultarCNPJ_CPFClick
        end
      end
      object PageControl2: TPageControl
        Left = 1
        Top = 162
        Width = 961
        Height = 154
        ActivePage = TabSheet1
        TabOrder = 1
        object tsfinanceiro: TTabSheet
          Caption = 'Financeiro/Fiscal'
          object GroupBox3: TGroupBox
            Left = 0
            Top = 0
            Width = 953
            Height = 41
            Align = alTop
            Caption = 'Financeiro'
            TabOrder = 0
            object Label21: TLabel
              Left = 505
              Top = 19
              Width = 71
              Height = 14
              Caption = 'Prazo Padr'#227'o :'
            end
            object Label20: TLabel
              Left = 12
              Top = 19
              Width = 84
              Height = 14
              Caption = 'Conta Financeira:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object DBePcl_codigo: TDBEdit
              Left = 578
              Top = 15
              Width = 28
              Height = 22
              TabStop = False
              DataField = 'PCL_CODIGO'
              DataSource = DataCadastros.DsFornecedor
              TabOrder = 2
              OnExit = DBePcl_codigoExit
            end
            object CbxParcela: TComboBoxRw
              Left = 609
              Top = 15
              Width = 312
              Height = 22
              TabOrder = 3
              CharCase = ecUpperCase
              LookupSelect = 'PCL_NOME'
              LookupOrderBy = 'PCL_NOME'
              LookupTable = 'PCL0000'
              GridAutoSize = False
              LookupSource = CbxParcela.InternalSource
              DataField = 'PCL_CODIGO'
              DataSource = DataCadastros.DsFornecedor
              LookupKeyField = 'PCL_CODIGO'
              ShowButton = True
              LookupTableShare = 'TABELAS'
              AutoF8WinTitulo = 'Parcelamento'
              AutoF8ColumnsTitulo = 'C'#243'digo, Descri'#231#227'o'
              GridLeft = 0
              GridWidth = 0
              GridHeight = 100
              GridTop = 0
              GridShowWhenEnter = False
              SelectWithDoubleClick = False
              LimparCampoAoSair = True
              Tabela = 'PCL0000'
              CamposCarregar = 'PCL_NOME'
              CamposRetornar = 'PCL_CODIGO'
              CamposOrdernar = 'PCL_NOME'
              ConexaoBanco = DataCadastros.SQLConnection1
              Compartilhar = 'TABELAS'
              Localizado = False
              CodigoEmpresa = 0
              ResetaCampos = False
              MultiEmpresa = False
              Localizar = False
              CarregarCombo = False
              itemindex = 0
              style = csDropDown
            end
            object DBeCct_Codigo: TDBEdit
              Left = 97
              Top = 15
              Width = 28
              Height = 22
              DataField = 'CCT_CODIGO'
              DataSource = DataCadastros.DsFornecedor
              TabOrder = 0
              OnEnter = DBeCct_CodigoClick
              OnExit = DBeCct_CodigoExit
              OnKeyPress = DBeCct_CodigoKeyPress
            end
            object CbxCtaAnalise: TComboBox
              Left = 129
              Top = 15
              Width = 368
              Height = 22
              ItemIndex = 0
              MaxLength = 40
              TabOrder = 1
              OnClick = CbxCtaAnaliseClick
              OnEnter = CbxCtaAnaliseEnter
              OnExit = CbxCtaAnaliseExit
              Items.Strings = (
                '')
            end
          end
          object DBRadModalidade: TDBRadioGroup
            Left = 0
            Top = 41
            Width = 953
            Height = 40
            Align = alTop
            Caption = 'Modalidade Cont'#225'bil'
            Columns = 3
            DataField = 'FOR_MODALIDADE_CONTABIL'
            DataSource = DataCadastros.DsFornecedor
            Items.Strings = (
              'SIMPLES'
              'LUCRO PRESUMIDO'
              'LUCRO REAL')
            TabOrder = 1
            Values.Strings = (
              'S'
              'P'
              'R')
          end
          object GroupBox5: TGroupBox
            Left = 0
            Top = 81
            Width = 953
            Height = 44
            Align = alTop
            Caption = ' Entrada de Nota - Parametros'
            TabOrder = 2
            object DBCheckBox1: TDBCheckBox
              Left = 15
              Top = 18
              Width = 330
              Height = 20
              Caption = 'Atualiza pre'#231'o de venda dos produtos automaticamente'
              DataField = 'FOR_ATUALIZA_PVENDA'
              DataSource = DataCadastros.DsFornecedor
              TabOrder = 0
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
          end
        end
        object tscontato: TTabSheet
          Caption = 'Dados do Contato'
          ImageIndex = 1
          object GroupBox1: TGroupBox
            Left = 0
            Top = 0
            Width = 953
            Height = 125
            Align = alClient
            TabOrder = 0
            object Label10: TLabel
              Left = 52
              Top = 18
              Width = 30
              Height = 14
              Caption = 'Nome:'
            end
            object Label11: TLabel
              Left = 56
              Top = 43
              Width = 27
              Height = 14
              Caption = 'Fone:'
            end
            object Label12: TLabel
              Left = 61
              Top = 68
              Width = 21
              Height = 14
              Caption = 'Fax:'
            end
            object Label15: TLabel
              Left = 46
              Top = 92
              Width = 37
              Height = 14
              Caption = 'e - Mail:'
            end
            object DBeFor_contato: TDBEdit
              Left = 84
              Top = 15
              Width = 170
              Height = 22
              CharCase = ecUpperCase
              DataField = 'FOR_CONTATO'
              DataSource = DataCadastros.DsFornecedor
              TabOrder = 0
            end
            object DBeFor_foncont: TDBEdit
              Left = 84
              Top = 40
              Width = 90
              Height = 22
              CharCase = ecUpperCase
              DataField = 'FOR_FONCONT'
              DataSource = DataCadastros.DsFornecedor
              TabOrder = 1
            end
            object DBeFor_faxcont: TDBEdit
              Left = 84
              Top = 65
              Width = 90
              Height = 22
              CharCase = ecUpperCase
              DataField = 'FOR_FAXCONT'
              DataSource = DataCadastros.DsFornecedor
              TabOrder = 2
            end
            object DbeFOR_EMAILCONT: TDBEdit
              Left = 84
              Top = 89
              Width = 341
              Height = 22
              CharCase = ecLowerCase
              DataField = 'FOR_EMAILCONT'
              DataSource = DataCadastros.DsFornecedor
              TabOrder = 3
            end
          end
        end
        object TabSheet1: TTabSheet
          Caption = 'Transportadora'
          ImageIndex = 2
          object Label79: TLabel
            Left = 6
            Top = 20
            Width = 36
            Height = 14
            Caption = 'C'#243'digo:'
          end
          object edTRP_CODIGO: TDBEdit
            Tag = 22
            Left = 45
            Top = 16
            Width = 40
            Height = 22
            DataField = 'TRP_CODIGO'
            DataSource = DataCadastros.DsFornecedor
            TabOrder = 0
            OnChange = edTRP_CODIGOChange
            OnExit = edTRP_CODIGOExit
          end
          object CbTransp1: TComboBoxRw
            Left = 86
            Top = 16
            Width = 427
            Height = 22
            TabOrder = 1
            CharCase = ecUpperCase
            LookupSelect = 'TRP_CODIGO,TRP_RAZAO'
            LookupOrderBy = 'TRP_RAZAO'
            LookupTable = 'TRP0000'
            LookupDispl = 'TRP_RAZAO'
            OnSelect = CbTransp1Select
            GridAutoSize = False
            LookupSource = CbTransp1.InternalSource
            LookupKeyField = 'TRP_CODIGO'
            ShowButton = True
            LookupTableShare = 'TRANSPORTADORAS'
            LookupWhere = 'TRP_ATIVO = '#39'S'#39
            AutoF8WinTitulo = 'Transportadoras'
            AutoF8ColumnsTitulo = 'C'#243'digo, Nome'
            GridLeft = 0
            GridWidth = 0
            GridHeight = 100
            GridTop = 0
            GridShowWhenEnter = False
            SelectWithDoubleClick = False
            LimparCampoAoSair = True
            Tabela = 'TRP0000'
            CamposCarregar = 'TRP_CODIGO,TRP_RAZAO'
            CamposRetornar = 'TRP_CODIGO'
            CamposOrdernar = 'TRP_RAZAO'
            ConexaoBanco = DataCadastros.SQLConnection1
            Compartilhar = 'TRANSPORTADORAS'
            Localizado = False
            CodigoEmpresa = 0
            ResetaCampos = False
            MultiEmpresa = False
            Localizar = False
            CarregarCombo = False
            itemindex = 0
            style = csDropDown
          end
        end
      end
      object Pn_Vincular: TPanel
        Left = 373
        Top = 291
        Width = 416
        Height = 135
        BevelInner = bvLowered
        BevelWidth = 2
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        Visible = False
        OnExit = Pn_VincularExit
        object Label17: TLabel
          Left = 10
          Top = 40
          Width = 36
          Height = 14
          Caption = 'C'#243'digo:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label25: TLabel
          Left = 4
          Top = 4
          Width = 408
          Height = 14
          Align = alTop
          Caption = 'Selecione o Produto'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitWidth = 111
        end
        object Label16: TLabel
          Left = 8
          Top = 65
          Width = 40
          Height = 14
          Caption = 'Produto:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object EdtPRD_REFER: TEdit
          Left = 55
          Top = 36
          Width = 80
          Height = 22
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          MaxLength = 11
          ParentFont = False
          TabOrder = 1
          OnExit = EdtPRD_REFERExit
        end
        object Panel4: TPanel
          Left = 122
          Top = 90
          Width = 279
          Height = 33
          BevelInner = bvLowered
          BevelOuter = bvLowered
          Caption = 'Panel3'
          Color = 12681984
          TabOrder = 0
          object Bit_Cancel2: TBitBtn
            Left = 94
            Top = 4
            Width = 90
            Height = 25
            Cancel = True
            Caption = '&Cancelar'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
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
            TabOrder = 0
            TabStop = False
            OnClick = Bit_Cancel2Click
          end
          object Bit_Vincular: TBitBtn
            Left = 4
            Top = 4
            Width = 90
            Height = 25
            Caption = '&Vincular'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Glyph.Data = {
              DE010000424DDE01000000000000760000002800000024000000120000000100
              0400000000006801000000000000000000001000000000000000000000000000
              80000080000000808000800000008000800080800000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              3333333333333333333333330000333333333333333333333333F33333333333
              00003333344333333333333333388F3333333333000033334224333333333333
              338338F3333333330000333422224333333333333833338F3333333300003342
              222224333333333383333338F3333333000034222A22224333333338F338F333
              8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
              33333338F83338F338F33333000033A33333A222433333338333338F338F3333
              0000333333333A222433333333333338F338F33300003333333333A222433333
              333333338F338F33000033333333333A222433333333333338F338F300003333
              33333333A222433333333333338F338F00003333333333333A22433333333333
              3338F38F000033333333333333A223333333333333338F830000333333333333
              333A333333333333333338330000333333333333333333333333333333333333
              0000}
            NumGlyphs = 2
            ParentFont = False
            TabOrder = 1
            TabStop = False
            OnClick = Bit_VincularClick
          end
          object BtnSairVinculo: TBitBtn
            Left = 184
            Top = 4
            Width = 90
            Height = 25
            Cursor = crHandPoint
            Caption = '&Sair'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
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
            TabOrder = 2
            TabStop = False
            OnClick = Bit_Cancel2Click
          end
        end
        object CbxProdu: TComboBox
          Left = 56
          Top = 62
          Width = 345
          Height = 22
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ItemIndex = 0
          MaxLength = 50
          ParentFont = False
          TabOrder = 2
          OnClick = CbxProduClick
          Items.Strings = (
            '')
        end
      end
      object grpInatividade: TGroupBox
        Left = 3
        Top = 318
        Width = 960
        Height = 57
        Caption = 'Situa'#231#227'o'
        TabOrder = 3
        object Label35: TLabel
          Left = 141
          Top = 27
          Width = 101
          Height = 14
          Caption = 'Motivo da Inativa'#231#227'o:'
        end
        object DBRadAtivo: TDBRadioGroup
          Left = 8
          Top = 13
          Width = 126
          Height = 36
          Columns = 2
          DataField = 'FOR_ATIVO'
          DataSource = DataCadastros.DsFornecedor
          Items.Strings = (
            '&Ativo'
            '&Inativo')
          TabOrder = 0
          Values.Strings = (
            'A'
            'I')
        end
        object DBEdtMovito: TDBEdit
          Left = 247
          Top = 24
          Width = 706
          Height = 22
          CharCase = ecUpperCase
          DataField = 'FOR_MOTIVO_INATIVO'
          DataSource = DataCadastros.DsFornecedor
          TabOrder = 1
        end
      end
      object GroupBox4: TGroupBox
        Left = 3
        Top = 376
        Width = 959
        Height = 115
        Caption = 'Observa'#231#227'o'
        TabOrder = 4
        object DBmFor_obs: TDBMemo
          Left = 2
          Top = 16
          Width = 955
          Height = 97
          Align = alClient
          DataField = 'FOR_OBS'
          DataSource = DataCadastros.DsFornecedor
          MaxLength = 4000
          TabOrder = 0
        end
      end
    end
    object TSColaborador: TTabSheet
      Caption = 'Colaborador'
      ImageIndex = 1
      OnShow = TSColaboradorShow
      object Label67: TLabel
        Left = 40
        Top = 464
        Width = 3
        Height = 14
      end
      object PageControl3: TPageControl
        Left = 0
        Top = 0
        Width = 965
        Height = 520
        ActivePage = tsdadoscadastrais
        Align = alTop
        TabOrder = 0
        object tsdadoscadastrais: TTabSheet
          Caption = 'Dados Pessoais'
          object GroupBox6: TGroupBox
            Left = 1
            Top = 0
            Width = 954
            Height = 130
            TabOrder = 0
            object Label27: TLabel
              Left = 25
              Top = 24
              Width = 62
              Height = 14
              Caption = 'Colaborador:'
            end
            object Label28: TLabel
              Left = 38
              Top = 49
              Width = 49
              Height = 14
              Caption = 'Endere'#231'o:'
            end
            object Label30: TLabel
              Left = 4
              Top = 74
              Width = 83
              Height = 14
              Caption = 'Data nascimento:'
            end
            object Label34: TLabel
              Left = 25
              Top = 99
              Width = 62
              Height = 14
              Caption = 'Nome do pai:'
            end
            object Label31: TLabel
              Left = 207
              Top = 75
              Width = 102
              Height = 14
              Caption = 'Local de nascimento:'
            end
            object Label29: TLabel
              Left = 489
              Top = 24
              Width = 66
              Height = 14
              Caption = 'Benefici'#225'rios:'
            end
            object Label32: TLabel
              Left = 487
              Top = 74
              Width = 68
              Height = 14
              Caption = 'Pa'#237's de nasc.:'
            end
            object Label33: TLabel
              Left = 741
              Top = 74
              Width = 57
              Height = 14
              Caption = 'Estado civil:'
            end
            object Label36: TLabel
              Left = 487
              Top = 98
              Width = 68
              Height = 14
              Caption = 'Nome da m'#227'e:'
            end
            object DBEdit5: TDBEdit
              Left = 315
              Top = 70
              Width = 166
              Height = 22
              CharCase = ecUpperCase
              DataField = 'LOCAL_NASC'
              DataSource = DataCadastros.DsFornecedor
              TabOrder = 3
            end
            object DBEdit6: TDBEdit
              Left = 558
              Top = 71
              Width = 148
              Height = 22
              CharCase = ecUpperCase
              DataField = 'NACIONALIDADE'
              DataSource = DataCadastros.DsFornecedor
              TabOrder = 6
            end
            object DBEdit7: TDBEdit
              Left = 806
              Top = 71
              Width = 143
              Height = 22
              CharCase = ecUpperCase
              DataField = 'ESTADO_CIVIL'
              DataSource = DataCadastros.DsFornecedor
              TabOrder = 7
            end
            object DBEdit9: TDBEdit
              Left = 558
              Top = 96
              Width = 391
              Height = 22
              CharCase = ecUpperCase
              DataField = 'MAE'
              DataSource = DataCadastros.DsFornecedor
              TabOrder = 8
            end
            object DBEditColaborador: TDBEdit
              Left = 90
              Top = 20
              Width = 391
              Height = 22
              CharCase = ecUpperCase
              DataField = 'COLABORADOR'
              DataSource = DataCadastros.DsFornecedor
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Left = 90
              Top = 45
              Width = 391
              Height = 22
              CharCase = ecUpperCase
              DataField = 'ENDERECO_COL'
              DataSource = DataCadastros.DsFornecedor
              TabOrder = 1
            end
            object DBEdit8: TDBEdit
              Left = 90
              Top = 95
              Width = 391
              Height = 22
              CharCase = ecUpperCase
              DataField = 'PAI'
              DataSource = DataCadastros.DsFornecedor
              TabOrder = 4
            end
            object DBMemo1: TDBMemo
              Left = 558
              Top = 20
              Width = 391
              Height = 44
              DataField = 'BENEFICIARIOS'
              DataSource = DataCadastros.DsFornecedor
              TabOrder = 5
            end
            object DbeCli_dtinicio: TDBDateEdit
              Left = 90
              Top = 70
              Width = 100
              Height = 22
              DataField = 'DATA_NASC'
              DataSource = DataCadastros.DsFornecedor
              NumGlyphs = 2
              TabOrder = 2
              YearDigits = dyFour
            end
          end
          object GroupBox7: TGroupBox
            Left = 2
            Top = 136
            Width = 953
            Height = 154
            TabOrder = 1
            object Label37: TLabel
              Left = 67
              Top = 25
              Width = 18
              Height = 14
              Caption = 'RG:'
            end
            object Label38: TLabel
              Left = 251
              Top = 25
              Width = 83
              Height = 14
              Caption = 'Data de emiss'#227'o:'
            end
            object Label39: TLabel
              Left = 471
              Top = 25
              Width = 90
              Height = 14
              Caption = #211'rg'#227'o/UF emissor:'
            end
            object Label40: TLabel
              Left = 17
              Top = 51
              Width = 60
              Height = 14
              Caption = 'T'#237'tulo Eleitor:'
            end
            object Label41: TLabel
              Left = 306
              Top = 51
              Width = 28
              Height = 14
              Caption = 'Zona:'
            end
            object Label42: TLabel
              Left = 527
              Top = 51
              Width = 34
              Height = 14
              Caption = 'Se'#231#227'o:'
            end
            object Label43: TLabel
              Left = 705
              Top = 51
              Width = 113
              Height = 14
              Caption = 'Inscr. '#211'rg'#227'o de Classe:'
            end
            object Label44: TLabel
              Left = 56
              Top = 75
              Width = 29
              Height = 14
              Caption = 'CTPS:'
            end
            object Label45: TLabel
              Left = 306
              Top = 75
              Width = 28
              Height = 14
              Caption = 'S'#233'rie:'
            end
            object Label46: TLabel
              Left = 468
              Top = 75
              Width = 93
              Height = 14
              Caption = 'Data de expedi'#231#227'o:'
            end
            object Label47: TLabel
              Left = 773
              Top = 75
              Width = 45
              Height = 14
              Caption = 'CTPS UF:'
            end
            object Label48: TLabel
              Left = 63
              Top = 100
              Width = 22
              Height = 14
              Caption = 'CPF:'
            end
            object Label49: TLabel
              Left = 228
              Top = 100
              Width = 106
              Height = 14
              Caption = 'Cart. Nac. Habilita'#231#227'o:'
            end
            object Label51: TLabel
              Left = 30
              Top = 125
              Width = 55
              Height = 14
              Caption = 'Doc. militar:'
            end
            object Label52: TLabel
              Left = 512
              Top = 100
              Width = 49
              Height = 14
              Caption = 'Categoria:'
            end
            object Label68: TLabel
              Left = 285
              Top = 125
              Width = 49
              Height = 14
              Caption = 'Categoria:'
            end
            object DBEdit10: TDBEdit
              Left = 87
              Top = 22
              Width = 133
              Height = 22
              CharCase = ecUpperCase
              DataField = 'RG'
              DataSource = DataCadastros.DsFornecedor
              TabOrder = 0
              OnChange = DBEdit10Change
            end
            object DBEdit12: TDBEdit
              Left = 563
              Top = 22
              Width = 121
              Height = 22
              CharCase = ecUpperCase
              DataField = 'ORGAO_UF'
              DataSource = DataCadastros.DsFornecedor
              TabOrder = 2
            end
            object DBEdit13: TDBEdit
              Left = 821
              Top = 47
              Width = 121
              Height = 22
              CharCase = ecUpperCase
              DataField = 'ORGAO_CLASSE'
              DataSource = DataCadastros.DsFornecedor
              TabOrder = 6
            end
            object DBEdit14: TDBEdit
              Left = 87
              Top = 47
              Width = 133
              Height = 22
              CharCase = ecUpperCase
              DataField = 'TITULO_ELEITORAL'
              DataSource = DataCadastros.DsFornecedor
              MaxLength = 14
              TabOrder = 3
            end
            object DBEdit15: TDBEdit
              Left = 336
              Top = 47
              Width = 100
              Height = 22
              CharCase = ecUpperCase
              DataField = 'ZONA'
              DataSource = DataCadastros.DsFornecedor
              TabOrder = 4
            end
            object DBEdit16: TDBEdit
              Left = 563
              Top = 47
              Width = 121
              Height = 22
              CharCase = ecUpperCase
              DataField = 'SECAO'
              DataSource = DataCadastros.DsFornecedor
              TabOrder = 5
            end
            object DBEdit17: TDBEdit
              Left = 87
              Top = 72
              Width = 133
              Height = 22
              CharCase = ecUpperCase
              DataField = 'CTPS'
              DataSource = DataCadastros.DsFornecedor
              TabOrder = 7
            end
            object DBEdit18: TDBEdit
              Left = 336
              Top = 72
              Width = 100
              Height = 22
              CharCase = ecUpperCase
              DataField = 'SERIE'
              DataSource = DataCadastros.DsFornecedor
              TabOrder = 8
            end
            object DBEdit20: TDBEdit
              Left = 821
              Top = 72
              Width = 24
              Height = 22
              CharCase = ecUpperCase
              DataField = 'CTPS_UF'
              DataSource = DataCadastros.DsFornecedor
              TabOrder = 10
            end
            object DBEdit21: TDBEdit
              Left = 87
              Top = 97
              Width = 133
              Height = 22
              CharCase = ecUpperCase
              DataField = 'CPF'
              DataSource = DataCadastros.DsFornecedor
              TabOrder = 11
              OnChange = DBEdit21Change
            end
            object DBEdit22: TDBEdit
              Left = 336
              Top = 97
              Width = 121
              Height = 22
              CharCase = ecUpperCase
              DataField = 'HABILITACAO'
              DataSource = DataCadastros.DsFornecedor
              MaxLength = 11
              TabOrder = 12
              OnChange = DBEdit22Change
            end
            object DBEdit23: TDBEdit
              Left = 563
              Top = 97
              Width = 24
              Height = 22
              CharCase = ecUpperCase
              DataField = 'HABILITACAO_CATEG'
              DataSource = DataCadastros.DsFornecedor
              TabOrder = 13
            end
            object DBEdit24: TDBEdit
              Left = 87
              Top = 122
              Width = 133
              Height = 22
              CharCase = ecUpperCase
              DataField = 'DOC_MILITAR'
              DataSource = DataCadastros.DsFornecedor
              TabOrder = 14
              OnChange = DBEdit24Change
            end
            object DBEdit25: TDBEdit
              Left = 336
              Top = 122
              Width = 121
              Height = 22
              CharCase = ecUpperCase
              DataField = 'DOC_MILITAR_CATEG'
              DataSource = DataCadastros.DsFornecedor
              TabOrder = 15
            end
            object DBDateEdit1: TDBDateEdit
              Left = 563
              Top = 72
              Width = 121
              Height = 22
              DataField = 'CTPS_EXPEDICAO'
              DataSource = DataCadastros.DsFornecedor
              NumGlyphs = 2
              TabOrder = 9
              YearDigits = dyFour
            end
            object DBDateEdit2: TDBDateEdit
              Left = 336
              Top = 22
              Width = 121
              Height = 22
              DataField = 'RG_EMISSAO'
              DataSource = DataCadastros.DsFornecedor
              NumGlyphs = 2
              TabOrder = 1
              YearDigits = dyFour
            end
          end
          object GroupBox8: TGroupBox
            Left = 2
            Top = 296
            Width = 954
            Height = 104
            Color = clWhite
            ParentBackground = False
            ParentColor = False
            TabOrder = 2
            object Label53: TLabel
              Left = 65
              Top = 24
              Width = 20
              Height = 14
              Caption = 'Cor:'
            end
            object Label54: TLabel
              Left = 306
              Top = 24
              Width = 28
              Height = 14
              Caption = 'Sexo:'
            end
            object Label55: TLabel
              Left = 471
              Top = 24
              Width = 90
              Height = 14
              Caption = 'Grau de instru'#231#227'o:'
            end
            object Label56: TLabel
              Left = 28
              Top = 50
              Width = 56
              Height = 14
              Caption = 'Defici'#234'ncia:'
            end
            object Label57: TLabel
              Left = 232
              Top = 49
              Width = 102
              Height = 14
              Caption = 'Telefone Residencial:'
            end
            object Label58: TLabel
              Left = 481
              Top = 50
              Width = 80
              Height = 14
              Caption = 'Telefone Celular:'
            end
            object Label59: TLabel
              Left = 53
              Top = 74
              Width = 32
              Height = 14
              Caption = 'Cargo:'
            end
            object Label60: TLabel
              Left = 295
              Top = 74
              Width = 39
              Height = 14
              Caption = 'Fun'#231#227'o:'
            end
            object Label61: TLabel
              Left = 527
              Top = 74
              Width = 34
              Height = 14
              Caption = 'C.B.O.:'
            end
            object DBEdit26: TDBEdit
              Left = 87
              Top = 21
              Width = 121
              Height = 22
              CharCase = ecUpperCase
              DataField = 'COR'
              DataSource = DataCadastros.DsFornecedor
              TabOrder = 0
            end
            object DBEdit28: TDBEdit
              Left = 563
              Top = 21
              Width = 121
              Height = 22
              CharCase = ecUpperCase
              DataField = 'GRAU_INSTRUCAO'
              DataSource = DataCadastros.DsFornecedor
              TabOrder = 2
            end
            object DBEdit29: TDBEdit
              Left = 87
              Top = 46
              Width = 121
              Height = 22
              CharCase = ecUpperCase
              DataField = 'DEFICIENCIA'
              DataSource = DataCadastros.DsFornecedor
              TabOrder = 3
            end
            object DBEdit30: TDBEdit
              Left = 340
              Top = 46
              Width = 121
              Height = 22
              CharCase = ecUpperCase
              DataField = 'FONE_RESIDENCIAL'
              DataSource = DataCadastros.DsFornecedor
              TabOrder = 4
            end
            object DBEdit31: TDBEdit
              Left = 563
              Top = 46
              Width = 121
              Height = 22
              CharCase = ecUpperCase
              DataField = 'FONE_CELULAR'
              DataSource = DataCadastros.DsFornecedor
              TabOrder = 5
            end
            object DBEdit32: TDBEdit
              Left = 87
              Top = 71
              Width = 121
              Height = 22
              CharCase = ecUpperCase
              DataField = 'CARGO'
              DataSource = DataCadastros.DsFornecedor
              TabOrder = 6
            end
            object DBEdit33: TDBEdit
              Left = 340
              Top = 71
              Width = 121
              Height = 22
              CharCase = ecUpperCase
              DataField = 'FUNCAO'
              DataSource = DataCadastros.DsFornecedor
              TabOrder = 7
            end
            object DBEdit34: TDBEdit
              Left = 563
              Top = 71
              Width = 121
              Height = 22
              CharCase = ecUpperCase
              DataField = 'CBO'
              DataSource = DataCadastros.DsFornecedor
              TabOrder = 8
            end
            object DBComboBox1: TDBComboBox
              Left = 340
              Top = 21
              Width = 121
              Height = 22
              DataField = 'SEXO'
              DataSource = DataCadastros.DsFornecedor
              Items.Strings = (
                'FEMININO'
                'MASCULINO')
              TabOrder = 1
            end
          end
        end
        object TabSheet5: TTabSheet
          Caption = 'Dados Profissionais'
          ImageIndex = 2
          object GroupBox9: TGroupBox
            Left = 1
            Top = 0
            Width = 953
            Height = 87
            TabOrder = 0
            object Label62: TLabel
              Left = 11
              Top = 15
              Width = 74
              Height = 14
              Caption = 'Data admiss'#227'o:'
            end
            object Label63: TLabel
              Left = 305
              Top = 15
              Width = 36
              Height = 14
              Caption = 'Sal'#225'rio:'
            end
            object Label64: TLabel
              Left = 460
              Top = 15
              Width = 110
              Height = 14
              Caption = 'Forma de recebimento:'
            end
            object Label76: TLabel
              Left = 15
              Top = 40
              Width = 70
              Height = 14
              Caption = 'Data da Sa'#237'da:'
            end
            object Label77: TLabel
              Left = 237
              Top = 40
              Width = 104
              Height = 14
              Caption = 'Tipo do desligamento:'
            end
            object DBEdit36: TDBEdit
              Left = 344
              Top = 12
              Width = 107
              Height = 22
              CharCase = ecUpperCase
              DataField = 'SALARIO'
              DataSource = DataCadastros.DsFornecedor
              TabOrder = 1
            end
            object DBEdit37: TDBEdit
              Left = 573
              Top = 12
              Width = 116
              Height = 22
              CharCase = ecUpperCase
              DataField = 'SALARIO_POR'
              DataSource = DataCadastros.DsFornecedor
              TabOrder = 2
            end
            object DBEdit49: TDBEdit
              Left = 344
              Top = 38
              Width = 345
              Height = 22
              CharCase = ecUpperCase
              DataField = 'RESCISAO_TIPO'
              DataSource = DataCadastros.DsFornecedor
              TabOrder = 4
            end
            object GroupBox18: TGroupBox
              Left = 747
              Top = 2
              Width = 174
              Height = 40
              Caption = 'Hora de Trabalho'
              TabOrder = 5
              object das: TLabel
                Left = 30
                Top = 16
                Width = 21
                Height = 14
                Caption = 'das:'
              end
              object Label65: TLabel
                Left = 107
                Top = 16
                Width = 15
                Height = 14
                Caption = #224's:'
              end
              object DBEdit38: TDBEdit
                Left = 52
                Top = 14
                Width = 48
                Height = 22
                CharCase = ecUpperCase
                DataField = 'HORA_ENTRADA'
                DataSource = DataCadastros.DsFornecedor
                TabOrder = 0
              end
              object DBEdit50: TDBEdit
                Left = 123
                Top = 14
                Width = 48
                Height = 22
                CharCase = ecUpperCase
                DataField = 'HORA_SAIDA'
                DataSource = DataCadastros.DsFornecedor
                TabOrder = 1
              end
            end
            object GroupBox19: TGroupBox
              Left = 747
              Top = 41
              Width = 174
              Height = 40
              Caption = 'Hora de Intervalo'
              TabOrder = 6
              object Label66: TLabel
                Left = 30
                Top = 16
                Width = 21
                Height = 14
                Caption = 'das:'
              end
              object Label78: TLabel
                Left = 107
                Top = 16
                Width = 15
                Height = 14
                Caption = #224's:'
              end
              object DBEdit39: TDBEdit
                Left = 52
                Top = 14
                Width = 48
                Height = 22
                CharCase = ecUpperCase
                DataField = 'SAIDA_INTERVALO'
                DataSource = DataCadastros.DsFornecedor
                TabOrder = 0
              end
              object DBEdit51: TDBEdit
                Left = 123
                Top = 14
                Width = 48
                Height = 22
                CharCase = ecUpperCase
                DataField = 'ENTRADA_INTERVALO'
                DataSource = DataCadastros.DsFornecedor
                TabOrder = 1
              end
            end
            object DBDateEdit3: TDBDateEdit
              Left = 89
              Top = 12
              Width = 121
              Height = 22
              DataField = 'ADMISSAO'
              DataSource = DataCadastros.DsFornecedor
              NumGlyphs = 2
              TabOrder = 0
              YearDigits = dyFour
            end
            object DBDateEdit4: TDBDateEdit
              Left = 89
              Top = 38
              Width = 121
              Height = 22
              DataField = 'RESCISAO_DATA'
              DataSource = DataCadastros.DsFornecedor
              NumGlyphs = 2
              TabOrder = 3
              YearDigits = dyFour
            end
          end
          object GroupBox10: TGroupBox
            Left = 1
            Top = 103
            Width = 953
            Height = 47
            Caption = 'FGTS'
            TabOrder = 1
            object Label69: TLabel
              Left = 725
              Top = 20
              Width = 97
              Height = 14
              Caption = 'Data de Retifica'#231#227'o:'
            end
            object Label50: TLabel
              Left = 213
              Top = 20
              Width = 128
              Height = 14
              Caption = 'Conta vinculada ao banco:'
            end
            object F: TLabel
              Left = 33
              Top = 20
              Width = 52
              Height = 14
              Caption = 'Op'#231#227'o em:'
            end
            object DBEdit40: TDBEdit
              Left = 344
              Top = 17
              Width = 366
              Height = 22
              CharCase = ecUpperCase
              DataField = 'FGTS_CONTA_BANCO'
              DataSource = DataCadastros.DsFornecedor
              TabOrder = 1
            end
            object DBDateEdit5: TDBDateEdit
              Left = 89
              Top = 17
              Width = 121
              Height = 22
              DataField = 'FGTS_DATA_OPCAO'
              DataSource = DataCadastros.DsFornecedor
              NumGlyphs = 2
              TabOrder = 0
              YearDigits = dyFour
            end
            object DBDateEdit6: TDBDateEdit
              Left = 825
              Top = 17
              Width = 121
              Height = 22
              DataField = 'FGTS_DATA_RETIFICACAO'
              DataSource = DataCadastros.DsFornecedor
              NumGlyphs = 2
              TabOrder = 2
              YearDigits = dyFour
            end
          end
          object GroupBox11: TGroupBox
            Left = 1
            Top = 156
            Width = 953
            Height = 77
            Caption = 'PIS'
            TabOrder = 2
            object Label70: TLabel
              Left = 9
              Top = 21
              Width = 76
              Height = 14
              Caption = 'Cadastrado em:'
            end
            object Label71: TLabel
              Left = 288
              Top = 21
              Width = 36
              Height = 14
              Caption = 'Sob n'#186':'
            end
            object Label72: TLabel
              Left = 476
              Top = 21
              Width = 89
              Height = 14
              Caption = 'Domic'#237'lio banc'#225'rio:'
            end
            object Label73: TLabel
              Left = 37
              Top = 48
              Width = 48
              Height = 14
              Caption = 'N'#186' banco:'
            end
            object Label74: TLabel
              Left = 246
              Top = 48
              Width = 78
              Height = 14
              Caption = 'Ag'#234'ncia c'#243'digo:'
            end
            object Label75: TLabel
              Left = 485
              Top = 48
              Width = 80
              Height = 14
              Caption = 'End. da ag'#234'ncia:'
            end
            object DBEdit43: TDBEdit
              Left = 327
              Top = 18
              Width = 121
              Height = 22
              CharCase = ecUpperCase
              DataField = 'PIS_NUMERO'
              DataSource = DataCadastros.DsFornecedor
              TabOrder = 1
              OnChange = DBEdit43Change
            end
            object DBEdit44: TDBEdit
              Left = 568
              Top = 18
              Width = 121
              Height = 22
              CharCase = ecUpperCase
              DataField = 'PIS_DOMINIO_BANCARIO'
              DataSource = DataCadastros.DsFornecedor
              TabOrder = 2
            end
            object DBEdit45: TDBEdit
              Left = 87
              Top = 45
              Width = 121
              Height = 22
              CharCase = ecUpperCase
              DataField = 'PIS_NUM_BANCO'
              DataSource = DataCadastros.DsFornecedor
              TabOrder = 3
              OnChange = DBEdit45Change
            end
            object DBEdit46: TDBEdit
              Left = 327
              Top = 45
              Width = 121
              Height = 22
              CharCase = ecUpperCase
              DataField = 'PIS_AGENCIA'
              DataSource = DataCadastros.DsFornecedor
              TabOrder = 4
            end
            object DBEdit47: TDBEdit
              Left = 568
              Top = 45
              Width = 378
              Height = 22
              CharCase = ecUpperCase
              DataField = 'PIS_END_AGENCIA'
              DataSource = DataCadastros.DsFornecedor
              TabOrder = 5
            end
            object DBDateEdit7: TDBDateEdit
              Left = 87
              Top = 18
              Width = 121
              Height = 22
              DataField = 'PIS_DATA'
              DataSource = DataCadastros.DsFornecedor
              NumGlyphs = 2
              TabOrder = 0
              YearDigits = dyFour
            end
          end
          object GroupBox12: TGroupBox
            Left = 1
            Top = 239
            Width = 953
            Height = 74
            Caption = 'Altera'#231#245'es de Sal'#225'rio'
            TabOrder = 3
            object DBMemo2: TDBMemo
              Left = 8
              Top = 17
              Width = 937
              Height = 49
              DataField = 'SALARIO_ALTERACOES'
              DataSource = DataCadastros.DsFornecedor
              TabOrder = 0
            end
          end
          object GroupBox13: TGroupBox
            Left = 1
            Top = 319
            Width = 459
            Height = 105
            Caption = 'F'#233'rias - Per'#237'odo Aquisitivo'
            TabOrder = 4
            object DBMemo3: TDBMemo
              Left = 8
              Top = 18
              Width = 440
              Height = 80
              DataField = 'FERIAS_PERIODO_AQUISITIVO'
              DataSource = DataCadastros.DsFornecedor
              TabOrder = 0
            end
          end
          object GroupBox14: TGroupBox
            Left = 495
            Top = 319
            Width = 459
            Height = 105
            Caption = 'F'#233'rias - Per'#237'odo de Gozo'
            TabOrder = 5
            object DBMemo4: TDBMemo
              Left = 8
              Top = 18
              Width = 443
              Height = 80
              DataField = 'FERIAS_PERIODO_GOZO'
              DataSource = DataCadastros.DsFornecedor
              TabOrder = 0
            end
          end
        end
        object TabSheet6: TTabSheet
          Caption = 'Outras Informa'#231#245'es'
          ImageIndex = 3
          object GroupBox15: TGroupBox
            Left = 1
            Top = -2
            Width = 468
            Height = 112
            Caption = 'Acidentes de Trabalho'
            TabOrder = 0
            object DBMemo5: TDBMemo
              Left = 6
              Top = 16
              Width = 456
              Height = 89
              DataField = 'ACIDENTE_TRABALHO'
              DataSource = DataCadastros.DsFornecedor
              TabOrder = 0
            end
          end
          object GroupBox16: TGroupBox
            Left = 485
            Top = -2
            Width = 468
            Height = 112
            Caption = 'Doen'#231'as Profissionais'
            TabOrder = 1
            object DBMemo6: TDBMemo
              Left = 6
              Top = 16
              Width = 456
              Height = 89
              DataField = 'DOENCA_PROFISSIONAL'
              DataSource = DataCadastros.DsFornecedor
              TabOrder = 0
            end
          end
          object GroupBox17: TGroupBox
            Left = 1
            Top = 109
            Width = 952
            Height = 112
            Caption = 'Contribui'#231#227'o Sindical'
            TabOrder = 2
            object DBMemo7: TDBMemo
              Left = 6
              Top = 16
              Width = 940
              Height = 89
              DataField = 'CONTRIBUICAO_SINDICATO'
              DataSource = DataCadastros.DsFornecedor
              TabOrder = 0
            end
          end
        end
      end
    end
  end
  object PanelAguarde: TPanel [13]
    Left = 117
    Top = 134
    Width = 293
    Height = 66
    AutoSize = True
    Caption = 'PanelAguarde'
    Color = clWhite
    TabOrder = 10
    Visible = False
    object JvGIFAnimator1: TJvGIFAnimator
      Left = 1
      Top = 11
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
    end
    object pinfo: TPanel
      Left = 8
      Top = 1
      Width = 281
      Height = 32
      Caption = 'Por favor, aguarde.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
    end
  end
  inherited coCalcula: TACBrCalculadora
    Left = 216
    Top = 0
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 192
  end
  object ACBrETQ1: TACBrETQ
    Modelo = etqPpla
    Porta = 'LPT1'
    Ativo = False
    Left = 226
    Top = 499
  end
  object SqlCdsProduto: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 'select PRD_REFER, PRD_DESCRI,EMP_CODIGO from prd0000'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'select PRD_REFER, PRD_DESCRI,EMP_CODIGO from prd0000'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 596
    Top = 65531
    object SqlCdsProdutoPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object SqlCdsProdutoPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 50
    end
  end
  object SqlCdsCtaAnalise: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 'select  CCT_CODIGO, CCT_DESCRI, EMP_CODIGO from CCT_0000'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'select  CCT_CODIGO, CCT_DESCRI, EMP_CODIGO from CCT_0000'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 508
    Top = 65531
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
  object JvPopupMenu1: TJvPopupMenu
    ImageMargin.Left = 0
    ImageMargin.Top = 0
    ImageMargin.Right = 0
    ImageMargin.Bottom = 0
    ImageSize.Height = 0
    ImageSize.Width = 0
    Left = 524
    Top = 501
    object miImportarExcel: TMenuItem
      Caption = 'Importar Excel'
      OnClick = miImportarExcelClick
    end
    object miLeaiute: TMenuItem
      Caption = 'Leaiute de Importa'#231#227'o'
      OnClick = miLeaiuteClick
    end
    object ExportarparaoC91: TMenuItem
      Caption = 'Exportar para o C9'
      OnClick = ExportarparaoC91Click
    end
  end
  object qFornecedores: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      ' SELECT'
      #9'FOR_CGC,'
      #9'FOR_RAZAO,'
      #9#39'F'#39' AS FOR_TIPO,'
      #9'FOR_RAZAO AS FOR_FANTASIA,'
      #9'REPLACE(REPLACE (FOR_INSC, '#39'-'#39', '#39#39'), '#39'.'#39', '#39#39') AS FOR_INSC,'
      #9'FOR_CONTATO,'
      
        #9#39'('#39'||SUBSTRING (FOR_FONE FROM 1 FOR 2)||'#39')'#39'||SUBSTRING (FOR_FON' +
        'E FROM 3 FOR 255) AS FOR_FONE,'
      
        #9#39'('#39'||SUBSTRING (FONE_CELULAR FROM 1 FOR 2)||'#39')'#39'||SUBSTRING (FON' +
        'E_CELULAR FROM 3 FOR 255)  FONE_CELULAR,'
      #9'FOR_EMAIL,'
      #9'FOR_EMAIL AS FOR_EMAIL_NFE,'
      #9'FOR_CEP,'
      #9'CASE'
      #9#9'WHEN FOR_CIDADE = '#39#39' THEN '#39'n'#227'o informado'#39
      #9#9'WHEN FOR_CIDADE IS NULL THEN '#39'n'#227'o informado'#39
      #9#9'ELSE FOR_CIDADE'
      #9'END AS FOR_CIDADE,'
      #9'CASE'
      #9#9'WHEN FOR_UF = '#39#39' THEN '#39'n'#227'o informado'#39
      #9#9'WHEN FOR_UF IS NULL THEN '#39'n'#227'o informado'#39
      #9#9'ELSE FOR_UF'
      #9'END AS FOR_UF,'#9
      #9'CASE'
      #9#9'WHEN FOR_ENDERE = '#39#39' THEN '#39'n'#227'o informado'#39
      #9#9'WHEN FOR_ENDERE IS NULL THEN '#39'n'#227'o informado'#39
      #9#9'WHEN position ('#39','#39' in FOR_ENDERE) = 0 THEN FOR_ENDERE '
      #9#9'ELSE '
      #9#9'CASE'
      
        #9#9#9'WHEN position ('#39','#39' in FOR_ENDERE) > 0 THEN SUBSTRING (FOR_END' +
        'ERE FROM 1 FOR POSITION('#39','#39' in FOR_ENDERE) -1)'
      #9#9'END'
      #9'END AS FOR_ENDERE,'
      #9'CASE'
      
        #9#9'WHEN POSITION('#39','#39' IN FOR_ENDERE) > 0 THEN SUBSTRING (FOR_ENDER' +
        'E FROM POSITION('#39','#39' IN FOR_ENDERE) + 1 FOR 255)'
      #9#9'ELSE '#39'S/N'#39
      #9'END AS FOR_NUMERO,'#9
      #9'CASE'
      #9#9'WHEN FOR_BAIRRO = '#39#39' THEN '#39'n'#227'o informado'#39
      #9#9'WHEN FOR_BAIRRO IS NULL THEN '#39'n'#227'o informado'#39
      #9#9'ELSE FOR_BAIRRO'
      #9'END AS FOR_BAIRRO,'
      #9#39#39' AS REP_RAZAO,'
      '    '#39#39' AS PCX_DESCRI,'
      '    '#39#39'  AS BAN_APELIDO,'
      '    '#39#39'  AS CLI_UND_CONSUMIDORA'
      'FROM FOR0000 c'
      'ORDER BY FOR_RAZAO')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 458
    Top = 348
    object qFornecedoresFOR_CGC: TStringField
      DisplayLabel = 'CNPJ/CPF'
      FieldName = 'FOR_CGC'
      Size = 14
    end
    object qFornecedoresFOR_RAZAO: TStringField
      DisplayLabel = 'RAZAO/NOME'
      FieldName = 'FOR_RAZAO'
      Size = 70
    end
    object qFornecedoresFOR_TIPO: TStringField
      DisplayLabel = 'TIPO'
      FieldName = 'FOR_TIPO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qFornecedoresFOR_FANTASIA: TStringField
      DisplayLabel = 'FANTASIA'
      FieldName = 'FOR_FANTASIA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qFornecedoresFOR_INSC: TStringField
      DisplayLabel = 'INSC. ESTAD.'
      FieldName = 'FOR_INSC'
      Size = 14
    end
    object qFornecedoresFOR_CONTATO: TStringField
      DisplayLabel = 'CONTATO'
      FieldName = 'FOR_CONTATO'
    end
    object qFornecedoresFOR_FONE: TStringField
      DisplayLabel = 'FONE'
      FieldName = 'FOR_FONE'
      Size = 24
    end
    object qFornecedoresFONE_CELULAR: TStringField
      DisplayLabel = 'CELULAR'
      FieldName = 'FONE_CELULAR'
      Size = 42
    end
    object qFornecedoresFOR_EMAIL: TStringField
      DisplayLabel = 'EMAIL'
      FieldName = 'FOR_EMAIL'
      Size = 150
    end
    object qFornecedoresFOR_EMAIL_NFE: TStringField
      DisplayLabel = 'EMAIL NFE'
      FieldName = 'FOR_EMAIL_NFE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qFornecedoresFOR_CEP: TStringField
      DisplayLabel = 'CEP'
      FieldName = 'FOR_CEP'
      Size = 8
    end
    object qFornecedoresFOR_CIDADE: TStringField
      DisplayLabel = 'CIDADE'
      FieldName = 'FOR_CIDADE'
      Size = 30
    end
    object qFornecedoresFOR_UF: TStringField
      DisplayLabel = 'UF'
      FieldName = 'FOR_UF'
      Size = 13
    end
    object qFornecedoresFOR_ENDERE: TStringField
      DisplayLabel = 'ENDERE'#199'O'
      FieldName = 'FOR_ENDERE'
      Size = 60
    end
    object qFornecedoresFOR_NUMERO: TStringField
      DisplayLabel = 'N'#218'MERO'
      FieldName = 'FOR_NUMERO'
      Size = 60
    end
    object qFornecedoresFOR_BAIRRO: TStringField
      DisplayLabel = 'BAIRRO'
      FieldName = 'FOR_BAIRRO'
      Size = 30
    end
    object qFornecedoresREP_RAZAO: TStringField
      DisplayLabel = 'VENDEDOR'
      FieldName = 'REP_RAZAO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qFornecedoresPCX_DESCRI: TStringField
      DisplayLabel = 'CENTRO DE CUSTO'
      FieldName = 'PCX_DESCRI'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qFornecedoresBAN_APELIDO: TStringField
      DisplayLabel = 'BANCO'
      FieldName = 'BAN_APELIDO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qFornecedoresCLI_UND_CONSUMIDORA: TStringField
      DisplayLabel = 'UNIDADE CONSUMIDORA'
      FieldName = 'CLI_UND_CONSUMIDORA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qFornecedoresEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
  object dsExportaExcel: TDataSource
    DataSet = cdsFornecedores
    Left = 456
    Top = 508
  end
  object dspFornecedores: TDataSetProvider
    DataSet = qFornecedores
    Left = 456
    Top = 404
  end
  object cdsFornecedores: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFornecedores'
    Left = 456
    Top = 462
    object cdsFornecedoresFOR_CGC: TStringField
      DisplayLabel = 'CNPJ/CPF'
      FieldName = 'FOR_CGC'
      Size = 14
    end
    object cdsFornecedoresFOR_RAZAO: TStringField
      DisplayLabel = 'RAZAO/NOME'
      FieldName = 'FOR_RAZAO'
      Size = 70
    end
    object cdsFornecedoresFOR_TIPO: TStringField
      DisplayLabel = 'TIPO'
      FieldName = 'FOR_TIPO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsFornecedoresFOR_FANTASIA: TStringField
      DisplayLabel = 'FANTASIA'
      FieldName = 'FOR_FANTASIA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsFornecedoresFOR_INSC: TStringField
      DisplayLabel = 'INSC. ESTAD.'
      FieldName = 'FOR_INSC'
      Size = 14
    end
    object cdsFornecedoresFOR_CONTATO: TStringField
      DisplayLabel = 'CONTATO'
      FieldName = 'FOR_CONTATO'
    end
    object cdsFornecedoresFOR_FONE: TStringField
      DisplayLabel = 'FONE'
      FieldName = 'FOR_FONE'
      Size = 24
    end
    object cdsFornecedoresFONE_CELULAR: TStringField
      DisplayLabel = 'CELULAR'
      FieldName = 'FONE_CELULAR'
      Size = 42
    end
    object cdsFornecedoresFOR_EMAIL: TStringField
      DisplayLabel = 'EMAIL'
      FieldName = 'FOR_EMAIL'
      Size = 150
    end
    object cdsFornecedoresFOR_EMAIL_NFE: TStringField
      DisplayLabel = 'EMAIL NFE'
      FieldName = 'FOR_EMAIL_NFE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsFornecedoresFOR_CEP: TStringField
      DisplayLabel = 'CEP'
      FieldName = 'FOR_CEP'
      Size = 8
    end
    object cdsFornecedoresFOR_CIDADE: TStringField
      DisplayLabel = 'CIDADE'
      FieldName = 'FOR_CIDADE'
      Size = 30
    end
    object cdsFornecedoresFOR_UF: TStringField
      DisplayLabel = 'UF'
      FieldName = 'FOR_UF'
      Size = 13
    end
    object cdsFornecedoresFOR_ENDERE: TStringField
      DisplayLabel = 'ENDERE'#199'O'
      FieldName = 'FOR_ENDERE'
      Size = 60
    end
    object cdsFornecedoresFOR_NUMERO: TStringField
      DisplayLabel = 'N'#218'MERO'
      FieldName = 'FOR_NUMERO'
      Size = 60
    end
    object cdsFornecedoresFOR_BAIRRO: TStringField
      DisplayLabel = 'BAIRRO'
      FieldName = 'FOR_BAIRRO'
      Size = 30
    end
    object cdsFornecedoresREP_RAZAO: TStringField
      DisplayLabel = 'VENDEDOR'
      FieldName = 'REP_RAZAO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsFornecedoresPCX_DESCRI: TStringField
      DisplayLabel = 'CENTRO DE CUSTO'
      FieldName = 'PCX_DESCRI'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsFornecedoresBAN_APELIDO: TStringField
      DisplayLabel = 'BANCO'
      FieldName = 'BAN_APELIDO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsFornecedoresCLI_UND_CONSUMIDORA: TStringField
      DisplayLabel = 'UNIDADE CONSUMIDORA'
      FieldName = 'CLI_UND_CONSUMIDORA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsFornecedoresEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
end
