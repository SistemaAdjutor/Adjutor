inherited FormParametros: TFormParametros
  Left = 161
  Top = 110
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Parametros de Configura'#231#227'o do Sistema'
  ClientHeight = 912
  ClientWidth = 1920
  Font.Charset = ANSI_CHARSET
  Font.Name = 'Arial'
  Position = poMainFormCenter
  OnCloseQuery = FormCloseQuery
  ExplicitWidth = 1926
  ExplicitHeight = 941
  PixelsPerInch = 96
  TextHeight = 14
  object Label663: TLabel [0]
    Left = 219
    Top = 29
    Width = 3
    Height = 14
  end
  object GroupBox34: TGroupBox [1]
    Left = 0
    Top = 0
    Width = 1920
    Height = 49
    Align = alTop
    Caption = 'Empresa'
    TabOrder = 5
    object Edt_Empresa: TEdit
      Left = 4
      Top = 14
      Width = 29
      Height = 22
      CharCase = ecUpperCase
      MaxLength = 3
      TabOrder = 0
      OnExit = Edt_EmpresaExit
      OnKeyPress = Edt_EmpresaKeyPress
    end
    object Cbx_Empresa: TComboBox
      Left = 39
      Top = 14
      Width = 375
      Height = 22
      CharCase = ecUpperCase
      MaxLength = 50
      TabOrder = 1
      OnClick = Cbx_EmpresaClick
      OnExit = Cbx_EmpresaExit
    end
  end
  object Panel1: TPanel [2]
    Left = 558
    Top = 567
    Width = 413
    Height = 33
    BevelOuter = bvNone
    TabOrder = 1
    object Bit_Gravar: TBitBtn
      Left = 166
      Top = 4
      Width = 80
      Height = 25
      Cursor = crHandPoint
      Hint = '|Grava registro...'
      Caption = '&Gravar'
      Enabled = False
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
      TabOrder = 0
      TabStop = False
      OnClick = Bit_GravarClick
    end
    object Bit_Cancelar: TBitBtn
      Left = 246
      Top = 4
      Width = 80
      Height = 25
      Cursor = crHandPoint
      Hint = '|Cancela registro atual...'
      Caption = '&Cancelar'
      Enabled = False
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
      TabOrder = 1
      TabStop = False
      OnClick = Bit_CancelarClick
    end
    object Bit_Sair: TBitBtn
      Left = 326
      Top = 4
      Width = 80
      Height = 25
      Cursor = crHandPoint
      Caption = '&Sair'
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
      TabOrder = 2
      TabStop = False
      OnClick = Bit_SairClick
    end
    object Bit_novo: TBitBtn
      Left = 6
      Top = 4
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
      TabOrder = 3
      TabStop = False
      OnClick = Bit_novoClick
    end
    object Bit_Excluir: TBitBtn
      Left = 86
      Top = 4
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
      TabOrder = 4
      TabStop = False
      OnClick = Bit_ExcluirClick
    end
  end
  object PageControl1: TPageControl [3]
    Left = 1024
    Top = 90
    Width = 793
    Height = 553
    ActivePage = TbSGlobal
    TabOrder = 0
    OnChange = PageControl1Change
    object TbSGlobal: TTabSheet
      Caption = 'Global'
      object GroupBox24: TGroupBox
        Left = 0
        Top = 259
        Width = 785
        Height = 150
        Caption = 'Parametros do Pedido'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object Panel17: TPanel
          Left = 5
          Top = 106
          Width = 774
          Height = 2
          BevelOuter = bvLowered
          TabOrder = 0
        end
      end
      object GroupBox19: TGroupBox
        Left = 0
        Top = 131
        Width = 785
        Height = 129
        Caption = 'Habilitar Parametros'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object Panel11: TPanel
          Left = 264
          Top = 11
          Width = 2
          Height = 101
          BevelOuter = bvLowered
          TabOrder = 0
        end
        object Panel12: TPanel
          Left = 510
          Top = 11
          Width = 2
          Height = 101
          BevelOuter = bvLowered
          TabOrder = 1
        end
        object DBRadioGroup4: TDBRadioGroup
          Left = 342
          Top = 136
          Width = 217
          Height = 41
          Caption = 'Reserva Estoque'
          Columns = 2
          DataField = 'PMT_ATULIZA_ESTOQUE'
          DataSource = DataCadastros1.DsParametros
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Items.Strings = (
            'No &Pedido'
            'Na &Produ'#231#227'o')
          ParentFont = False
          TabOrder = 2
          Values.Strings = (
            'P'
            'F')
        end
      end
    end
    object TbConverte: TTabSheet
      Caption = 'Convers'#227'o'
      ImageIndex = 10
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object GroupBox13: TGroupBox
        Left = 1
        Top = 2
        Width = 696
        Height = 176
        Caption = 'Tabela do Plano de Contas'
        TabOrder = 0
        object Label485: TLabel
          Left = 4
          Top = 135
          Width = 25
          Height = 14
          Caption = 'Novo'
        end
        object Label486: TLabel
          Left = 59
          Top = 135
          Width = 145
          Height = 14
          Caption = 'Descri'#231#227'o do Plano de Contas'
        end
        object Label487: TLabel
          Left = 533
          Top = 135
          Width = 31
          Height = 14
          Caption = 'Antigo'
        end
        object DBGrid2: TDBGrid
          Left = 3
          Top = 15
          Width = 686
          Height = 111
          DataSource = DsCCT
          Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Arial'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'CCT_CODIGO'
              Title.Alignment = taCenter
              Title.Caption = 'Cod.Novo'
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CCT_DESCRI'
              Title.Alignment = taCenter
              Title.Caption = 'Descri'#231#227'o'
              Width = 465
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CCT_ANTIGO'
              Title.Alignment = taCenter
              Title.Caption = 'Cod.Antigo'
              Visible = True
            end>
        end
        object DBEdit12: TDBEdit
          Left = 3
          Top = 150
          Width = 29
          Height = 22
          DataField = 'CCT_CODIGO'
          DataSource = DsCCT
          TabOrder = 1
        end
        object DBEdit13: TDBEdit
          Left = 32
          Top = 150
          Width = 498
          Height = 22
          DataField = 'CCT_DESCRI'
          DataSource = DsCCT
          TabOrder = 2
        end
        object DBEdit14: TDBEdit
          Left = 531
          Top = 150
          Width = 29
          Height = 22
          DataField = 'CCT_ANTIGO'
          DataSource = DsCCT
          TabOrder = 3
        end
      end
      object BtnTransf: TButton
        Left = 1
        Top = 215
        Width = 137
        Height = 25
        Caption = 'Inserir o Codigo Novo'
        TabOrder = 1
        OnClick = BtnTransfClick
      end
      object BtnSair: TButton
        Left = 277
        Top = 215
        Width = 137
        Height = 25
        Caption = 'Sair da Transfer'#234'ncia'
        TabOrder = 2
        OnClick = BtnSairClick
      end
      object Button1: TButton
        Left = 139
        Top = 215
        Width = 137
        Height = 25
        Caption = 'Transferir Codigo Novo'
        TabOrder = 3
        OnClick = Button1Click
      end
      object Panel16: TPanel
        Left = 1
        Top = 180
        Width = 411
        Height = 32
        BevelOuter = bvLowered
        TabOrder = 4
        object ProgressBar1: TProgressBar
          Left = 6
          Top = 5
          Width = 397
          Height = 22
          TabOrder = 0
        end
      end
    end
  end
  object Panel13: TPanel [4]
    Left = 209
    Top = 567
    Width = 280
    Height = 33
    BevelOuter = bvNone
    TabOrder = 2
    object DBNavigator5: TDBNavigator
      Left = 5
      Top = 4
      Width = 268
      Height = 25
      DataSource = DataCadastros1.DsParametros
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 0
      OnClick = DBNavigator5Click
    end
  end
  object cxTreeView1: TTreeView [5]
    Left = 0
    Top = 49
    Width = 201
    Height = 863
    Align = alLeft
    BiDiMode = bdLeftToRight
    Indent = 19
    ParentBiDiMode = False
    TabOrder = 3
    OnChange = cxTreeView1Change
    Items.NodeData = {
      03090000002A0000000000000000000000FFFFFFFFFFFFFFFF00000000000000
      0000000000010647006C006F00620061006C002C0000000000000000000000FF
      FFFFFFFFFFFFFF00000000000000000000000001074500730074006F00710075
      006500300000000000000000000000FFFFFFFFFFFFFFFF000000000000000000
      0000000109450078007000650064006900E700E3006F00320000000000000000
      000000FFFFFFFFFFFFFFFF000000000000000006000000010A460069006E0061
      006E0063006500690072006F002A0000000000000000000000FFFFFFFFFFFFFF
      FF000000000000000001000000010642006F006C00650074006F004200000000
      00000000000000FFFFFFFFFFFFFFFF00000000000000000000000001124C0061
      0079006F007500740020002D0020004D0061007400720069006300690061006C
      002A0000000000000000000000FFFFFFFFFFFFFFFF0000000000000000000000
      0001064300680065007100750065002E0000000000000000000000FFFFFFFFFF
      FFFFFF000000000000000000000000010843006F006D00690073007300E3006F
      00300000000000000000000000FFFFFFFFFFFFFFFF0000000000000000000000
      0001094400750070006C00690063006100740061003400000000000000000000
      00FFFFFFFFFFFFFFFF000000000000000000000000010B460061007400750072
      0061006D0065006E0074006F00340000000000000000000000FFFFFFFFFFFFFF
      FF000000000000000002000000010B4E006F0074006100200046006900730063
      0061006C002E0000000000000000000000FFFFFFFFFFFFFFFF00000000000000
      00000000000108450074006900710075006500740061002A0000000000000000
      000000FFFFFFFFFFFFFFFF00000000000000000000000001064C00610079006F
      00750074002A0000000000000000000000FFFFFFFFFFFFFFFF00000000000000
      00010000000106460069007300630061006C002E0000000000000000000000FF
      FFFFFFFFFFFFFF0000000000000000000000000108530069006E007400650067
      00720061003C0000000000000000000000FFFFFFFFFFFFFFFF00000000000000
      0000000000010F4F007200640065006D00200064006500200043006F006D0070
      00720061002A0000000000000000000000FFFFFFFFFFFFFFFF00000000000000
      00000000000106500065006400690064006F002E0000000000000000000000FF
      FFFFFFFFFFFFFF0000000000000000000000000108500072006F0064007500E7
      00E3006F002C0000000000000000000000FFFFFFFFFFFFFFFF00000000000000
      00000000000107500072006F006400750074006F00}
  end
  object PNotaFiscal_Etiqueta: TPanel [6]
    Left = 201
    Top = 50
    Width = 769
    Height = 511
    Align = alCustom
    BevelOuter = bvLowered
    TabOrder = 4
    object Nootbook: TNotebook
      Left = 1
      Top = 1
      Width = 767
      Height = 509
      Align = alClient
      PageIndex = 8
      TabOrder = 0
      object TPage
        Left = 0
        Top = 0
        Caption = 'Or'#195#167'amento'
        ExplicitWidth = 0
        ExplicitHeight = 0
        object POrcaIndustrial: TPanel
          Left = 984
          Top = 56
          Width = 185
          Height = 504
          Caption = 'POrcaIndustrial'
          TabOrder = 0
        end
      end
      object TPage
        Left = 0
        Top = 0
        Caption = 'Global'
        ExplicitWidth = 0
        ExplicitHeight = 0
        object PGlobal: TPanel
          Left = 0
          Top = 0
          Width = 767
          Height = 509
          Align = alClient
          TabOrder = 0
          object Label11: TLabel
            Left = 8
            Top = 223
            Width = 123
            Height = 14
            Caption = 'Certificado Digital Padr'#227'o:'
          end
          object sbtnGetCert: TSpeedButton
            Left = 285
            Top = 242
            Width = 23
            Height = 24
            Hint = 'Selecione o certificado'
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000130B0000130B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
              333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
              0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
              07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
              07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
              0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
              33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
              B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
              3BB33773333773333773B333333B3333333B7333333733333337}
            NumGlyphs = 2
            ParentShowHint = False
            ShowHint = True
            OnClick = sbtnGetCertClick
          end
          object GroupBox9: TGroupBox
            Left = 1
            Top = 1
            Width = 765
            Height = 120
            Align = alTop
            Caption = 'Path default'
            TabOrder = 0
            object Label482: TLabel
              Left = 30
              Top = 21
              Width = 35
              Height = 14
              Caption = 'Fichas:'
            end
            object Label483: TLabel
              Left = 33
              Top = 69
              Width = 30
              Height = 14
              Caption = 'Fotos:'
            end
            object Label484: TLabel
              Left = 14
              Top = 43
              Width = 51
              Height = 14
              Caption = 'Relat'#243'rios:'
            end
            object Label481: TLabel
              Left = 34
              Top = 89
              Width = 27
              Height = 14
              Caption = 'Logo:'
            end
            object Label666: TLabel
              Left = 422
              Top = 21
              Width = 127
              Height = 14
              Caption = 'Limite de Cr'#233'dito Inicial R$:'
            end
            object DBePathFichas: TDBEdit
              Left = 64
              Top = 19
              Width = 300
              Height = 22
              CharCase = ecUpperCase
              DataField = 'PMT_PATHFICHA'
              DataSource = DataCadastros1.DsParametros
              TabOrder = 0
            end
            object DBePathFotos: TDBEdit
              Left = 63
              Top = 64
              Width = 300
              Height = 22
              CharCase = ecUpperCase
              DataField = 'PMT_PATHFOTO'
              DataSource = DataCadastros1.DsParametros
              TabOrder = 2
            end
            object DBePATHRELATORIO: TDBEdit
              Left = 64
              Top = 41
              Width = 300
              Height = 22
              CharCase = ecUpperCase
              DataField = 'PMT_PATHRELATORIO'
              DataSource = DataCadastros1.DsParametros
              TabOrder = 1
            end
            object DBePathLogoDupl: TDBEdit
              Left = 63
              Top = 86
              Width = 300
              Height = 22
              CharCase = ecUpperCase
              DataField = 'PMT_PATH_LOGODUPL'
              DataSource = DataCadastros1.DsParametros
              TabOrder = 3
            end
            object dbPmtLimiteCreditoInicial: TDBEdit
              Left = 553
              Top = 18
              Width = 97
              Height = 22
              DataField = 'PMT_LIMITE_CREDITO_INICIAL'
              DataSource = DataCadastros1.DsParametros
              TabOrder = 4
            end
          end
          object chkAtivaNFSE: TDBCheckBox
            Left = 6
            Top = 128
            Width = 115
            Height = 17
            Hint = 'Ativa nota fiscal de servi'#231'o'
            Caption = 'Ativa NFSE'
            DataField = 'PMT_ATIVA_NFSE'
            DataSource = DataCadastros1.DsParametros
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox22: TDBCheckBox
            Left = 5
            Top = 178
            Width = 221
            Height = 17
            Caption = 'Habilitar Servi'#231'os no Cadastro de Clientes'
            DataField = 'PMT_PRESTACAO_SERVICO'
            DataSource = DataCadastros1.DsParametros
            TabOrder = 3
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox15: TDBCheckBox
            Left = 5
            Top = 196
            Width = 267
            Height = 17
            Caption = 'Habilitar bot'#227'o equival'#234'ncia de Refer'#234'ncia'
            DataField = 'PMT_BTN_EQUIV'
            DataSource = DataCadastros1.DsParametros
            TabOrder = 4
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object dbedtPMT_CERTIFICADO_DIGITAL: TDBEdit
            Left = 5
            Top = 244
            Width = 274
            Height = 22
            CharCase = ecUpperCase
            DataField = 'PMT_CERTIFICADO_DIGITAL'
            DataSource = DataCadastros1.DsParametros
            TabOrder = 5
            OnChange = dbedtPMT_CERTIFICADO_DIGITALChange
          end
          object DBRadioGroup10: TDBRadioGroup
            Left = 5
            Top = 280
            Width = 300
            Height = 44
            Caption = 'Padr'#227'o de Pesquisa Empresa'
            Columns = 2
            DataField = 'PMT_PADRAO_EMP_CONSULTA'
            DataSource = DataCadastros1.DsParametros
            Items.Strings = (
              'Logada'
              'Todas')
            TabOrder = 6
            Values.Strings = (
              'L'
              'T')
          end
          object DBCheckBox47: TDBCheckBox
            Left = 15
            Top = 341
            Width = 211
            Height = 17
            Caption = 'Permitir Clientes com Cnpj Duplicados'
            DataField = 'PMT_CNPJ_CLIENTE_DUPLICADO'
            DataSource = DataCadastros1.DsParametros
            TabOrder = 7
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox26: TDBCheckBox
            Left = 5
            Top = 151
            Width = 115
            Height = 17
            Hint = 'Ativa nota fiscal do consumidor'
            Caption = 'Ativa NFCE'
            DataField = 'EMP_HAB_NFCE'
            DataSource = DataCadastros1.DsParametros
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object dbchkIncluirEntradaRapida: TDBCheckBox
            Left = 15
            Top = 364
            Width = 322
            Height = 17
            Hint = 
              'Incluir itens de Entrada de XML diretamente sem vincula'#231#227'o (nem ' +
              'abrir a tela de vinculo de itens)'
            Caption = 'Incluir itens de Entrada de XML diretamente sem vincula'#231#227'o'
            DataField = 'PMT_INCLUIRRAPIDO'
            DataSource = DataCadastros1.DsParametros
            ParentShowHint = False
            ShowHint = True
            TabOrder = 8
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox71: TDBCheckBox
            Left = 15
            Top = 387
            Width = 338
            Height = 17
            Hint = 
              'Incluir itens de Entrada de XML diretamente sem vincula'#231#227'o (nem ' +
              'abrir a tela de vinculo de itens)'
            Caption = 'Desconsiderar faturas no Dashbord, considerar somente notas'
            DataField = 'PMT_DESCOSIDERAR_FATURA'
            DataSource = DataCadastros1.DsParametros
            ParentShowHint = False
            ShowHint = True
            TabOrder = 9
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox73: TDBCheckBox
            Left = 15
            Top = 410
            Width = 186
            Height = 17
            Hint = 'Habilita inserir v'#225'rias Inscri'#231#245'es Estaduais em um CNPJ'
            Caption = 'Habilitar M'#250'ltiplas I.E. (Manaus)'
            DataField = 'PMT_MULTIPLAS_IE'
            DataSource = DataCadastros1.DsParametros
            ParentShowHint = False
            ShowHint = True
            TabOrder = 10
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox75: TDBCheckBox
            Left = 15
            Top = 432
            Width = 211
            Height = 17
            Hint = 'Habilita inserir v'#225'rias Inscri'#231#245'es Estaduais em um CNPJ'
            Caption = 'Relat'#243'rio de Rastreabilidade com Lote'
            DataField = 'PMT_LOTE_RASTREABILIDADE'
            DataSource = DataCadastros1.DsParametros
            ParentShowHint = False
            ShowHint = True
            TabOrder = 11
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox78: TDBCheckBox
            Left = 126
            Top = 128
            Width = 161
            Height = 17
            Hint = 'Utilizar natureza da opera'#231#227'o padr'#227'o do cadastro da empresa'
            Caption = 'Utiliza Natureza Padr'#227'o'
            DataField = 'PMT_NAT_OPER_PADRAO'
            DataSource = DataCadastros1.DsParametros
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 12
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
        end
      end
      object TPage
        Left = 0
        Top = 0
        Caption = 'Estoque'
        ExplicitWidth = 0
        ExplicitHeight = 0
        object PEstoque: TPanel
          Left = 0
          Top = 0
          Width = 767
          Height = 509
          Align = alClient
          TabOrder = 0
          object GroupBox22: TGroupBox
            Left = 1
            Top = 1
            Width = 765
            Height = 172
            Align = alTop
            Caption = 'Padr'#227'o de Almoxarifados'
            TabOrder = 0
            object Label628: TLabel
              Left = 8
              Top = 19
              Width = 97
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Entrada de Nota:'
            end
            object Label629: TLabel
              Left = 8
              Top = 44
              Width = 97
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Vendas:'
            end
            object Label630: TLabel
              Left = 8
              Top = 67
              Width = 97
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Faturamento:'
            end
            object Label632: TLabel
              Left = 8
              Top = 91
              Width = 97
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Produ'#231#227'o (Entrada):'
            end
            object Label639: TLabel
              Left = 8
              Top = 115
              Width = 97
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Produ'#231#227'o (Sa'#237'da):'
            end
            object Label669: TLabel
              Left = 8
              Top = 139
              Width = 97
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Envase (Sa'#237'da):'
            end
            object CbAlmoxarifadoEntrada: TcxLookupComboBox
              Left = 112
              Top = 16
              Properties.KeyFieldNames = 'AMX_CODIGO'
              Properties.ListColumns = <
                item
                  Caption = 'C'#243'digo'
                  FieldName = 'AMX_CODIGO'
                end
                item
                  Caption = 'Descri'#231#227'o'
                  FieldName = 'AMX_DESCRI'
                end>
              Properties.ListFieldIndex = 1
              Properties.ListSource = DsAlmoxarifadoGeral
              Properties.OnChange = CbAlmoxarifadoEntradaPropertiesChange
              Style.LookAndFeel.Kind = lfStandard
              StyleDisabled.LookAndFeel.Kind = lfStandard
              StyleFocused.LookAndFeel.Kind = lfStandard
              StyleHot.LookAndFeel.Kind = lfStandard
              TabOrder = 0
              Width = 369
            end
            object CbAlmoxarifadoVenda: TcxLookupComboBox
              Left = 112
              Top = 40
              Properties.KeyFieldNames = 'AMX_CODIGO'
              Properties.ListColumns = <
                item
                  Caption = 'C'#243'digo'
                  FieldName = 'AMX_CODIGO'
                end
                item
                  Caption = 'Descri'#231#227'o'
                  FieldName = 'AMX_DESCRI'
                end>
              Properties.ListFieldIndex = 1
              Properties.ListSource = DsAlmoxarifadoGeral
              Style.LookAndFeel.Kind = lfStandard
              StyleDisabled.LookAndFeel.Kind = lfStandard
              StyleFocused.LookAndFeel.Kind = lfStandard
              StyleHot.LookAndFeel.Kind = lfStandard
              TabOrder = 1
              Width = 369
            end
            object CbAlmoxarifadoFaturamento: TcxLookupComboBox
              Left = 112
              Top = 64
              Properties.KeyFieldNames = 'AMX_CODIGO'
              Properties.ListColumns = <
                item
                  Caption = 'C'#243'digo'
                  FieldName = 'AMX_CODIGO'
                end
                item
                  Caption = 'Descri'#231#227'o'
                  FieldName = 'AMX_DESCRI'
                end>
              Properties.ListFieldIndex = 1
              Properties.ListSource = DsAlmoxarifadoGeral
              Style.LookAndFeel.Kind = lfStandard
              StyleDisabled.LookAndFeel.Kind = lfStandard
              StyleFocused.LookAndFeel.Kind = lfStandard
              StyleHot.LookAndFeel.Kind = lfStandard
              TabOrder = 2
              Width = 369
            end
            object CbAlmoxarifadoProducaoEntrada: TcxLookupComboBox
              Left = 112
              Top = 88
              Properties.KeyFieldNames = 'AMX_CODIGO'
              Properties.ListColumns = <
                item
                  Caption = 'C'#243'digo'
                  FieldName = 'AMX_CODIGO'
                end
                item
                  Caption = 'Descri'#231#227'o'
                  FieldName = 'AMX_DESCRI'
                end>
              Properties.ListFieldIndex = 1
              Properties.ListSource = DsAlmoxarifadoGeral
              Style.LookAndFeel.Kind = lfStandard
              StyleDisabled.LookAndFeel.Kind = lfStandard
              StyleFocused.LookAndFeel.Kind = lfStandard
              StyleHot.LookAndFeel.Kind = lfStandard
              TabOrder = 3
              Width = 369
            end
            object CbAlmoxarifadoProducaoSaida: TcxLookupComboBox
              Left = 112
              Top = 112
              Properties.KeyFieldNames = 'AMX_CODIGO'
              Properties.ListColumns = <
                item
                  Caption = 'C'#243'digo'
                  FieldName = 'AMX_CODIGO'
                end
                item
                  Caption = 'Descri'#231#227'o'
                  FieldName = 'AMX_DESCRI'
                end>
              Properties.ListFieldIndex = 1
              Properties.ListSource = DsAlmoxarifadoGeral
              Style.LookAndFeel.Kind = lfStandard
              StyleDisabled.LookAndFeel.Kind = lfStandard
              StyleFocused.LookAndFeel.Kind = lfStandard
              StyleHot.LookAndFeel.Kind = lfStandard
              TabOrder = 4
              Width = 369
            end
            object CbAlmoxarifadoEnvaseSaida: TcxLookupComboBox
              Left = 112
              Top = 136
              Hint = ' Informar o almoxarifado que ir'#225' entrar o produto envasado'
              ParentShowHint = False
              Properties.KeyFieldNames = 'AMX_CODIGO'
              Properties.ListColumns = <
                item
                  Caption = 'C'#243'digo'
                  FieldName = 'AMX_CODIGO'
                end
                item
                  Caption = 'Descri'#231#227'o'
                  FieldName = 'AMX_DESCRI'
                end>
              Properties.ListFieldIndex = 1
              Properties.ListSource = DsAlmoxarifadoGeral
              ShowHint = True
              Style.LookAndFeel.Kind = lfStandard
              StyleDisabled.LookAndFeel.Kind = lfStandard
              StyleFocused.LookAndFeel.Kind = lfStandard
              StyleHot.LookAndFeel.Kind = lfStandard
              TabOrder = 5
              Width = 369
            end
          end
          object DBRadioGroup5: TDBRadioGroup
            Left = 3
            Top = 181
            Width = 312
            Height = 43
            Caption = 'Atualizar estoque pelo:'
            Columns = 3
            DataField = 'PMT_ATULIZA_ESTOQUE'
            DataSource = DataCadastros1.DsParametros
            Font.Charset = ANSI_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Items.Strings = (
              'Pedido'
              'Faturamento'
              'Expedi'#231#227'o')
            ParentFont = False
            TabOrder = 1
            Values.Strings = (
              'P'
              'F'
              'E')
          end
          object DBCheckBox10: TDBCheckBox
            Left = 6
            Top = 275
            Width = 107
            Height = 17
            Caption = 'Multi-Almoxarifado'
            DataField = 'PMT_ALMOX'
            DataSource = DataCadastros1.DsParametros
            TabOrder = 2
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox24: TDBCheckBox
            Left = 6
            Top = 292
            Width = 247
            Height = 17
            Caption = 'Utilizar Estoque com Tabela de Convers'#227'o'
            DataField = 'PMT_ESTOQUE_CONVERSAO'
            DataSource = DataCadastros1.DsParametros
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object GroupBox16: TGroupBox
            Left = 5
            Top = 315
            Width = 759
            Height = 41
            Caption = 'Mensagem da Etiqueta do Destinat'#225'rio'
            TabOrder = 4
            object DBEdit24: TDBEdit
              Left = 3
              Top = 14
              Width = 750
              Height = 21
              CharCase = ecUpperCase
              DataField = 'PMT_MSG_ETIQUETASISTEMA'
              DataSource = DataCadastros1.DsParametros
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
          end
          object GroupBox36: TGroupBox
            Left = 321
            Top = 181
            Width = 417
            Height = 96
            Caption = 'Tabelas de Pre'#231'os:'
            TabOrder = 5
            object DBCheckBox42: TDBCheckBox
              Left = 27
              Top = 28
              Width = 348
              Height = 17
              Caption = 
                'Usar Multiplas Tabelas de Pre'#231'os - Avan'#231'ado - Vincula com Client' +
                'es'
              DataField = 'PMT_MULTTAB'
              DataSource = DataCadastros1.DsParametros
              TabOrder = 0
              ValueChecked = 'S'
              ValueUnchecked = 'N'
              OnClick = DBCheckBox42Click
            end
            object btScript: TButton
              Left = 24
              Top = 56
              Width = 249
              Height = 25
              Hint = 'Precisa-se gerar o primeiro script para iniciar a tabela padr'#227'o'
              Caption = 'Gerar Script de Migra'#231#227'o'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              OnClick = btScriptClick
            end
          end
          object rgAtualizaLote: TDBRadioGroup
            Left = 3
            Top = 234
            Width = 312
            Height = 43
            Caption = 'Atualizar estoque do Lote:'
            Columns = 3
            DataField = 'PMT_ATUALIZA_LOTE'
            DataSource = DataCadastros1.DsParametros
            Font.Charset = ANSI_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Items.Strings = (
              'Pedido'
              'Faturamento')
            ParentFont = False
            TabOrder = 6
            Values.Strings = (
              'P'
              'F')
          end
        end
      end
      object TPage
        Left = 0
        Top = 0
        Caption = 'Financeiro'
        ExplicitWidth = 0
        ExplicitHeight = 0
        object PFinanceiro: TPanel
          Left = 0
          Top = 0
          Width = 767
          Height = 509
          Align = alClient
          TabOrder = 0
          object pcFinanceiro: TPageControl
            Left = 1
            Top = 1
            Width = 765
            Height = 507
            ActivePage = tsFinanceiro
            Align = alClient
            TabOrder = 0
            object tsFinanceiro: TTabSheet
              Caption = 'Financeiro'
              ExplicitLeft = 0
              ExplicitTop = 0
              ExplicitWidth = 0
              ExplicitHeight = 0
              object Label19: TLabel
                Left = 413
                Top = 36
                Width = 282
                Height = 14
                Caption = 'Imposto Renda Pessoa Jur'#237'dica (border'#244' de comiss'#227'o) % :'
              end
              object Label428: TLabel
                Left = 477
                Top = 60
                Width = 210
                Height = 14
                Caption = 'Empresa Padr'#227'o para emiss'#227'o dos Boletos:'
              end
              object GroupBox14: TGroupBox
                Left = 13
                Top = 12
                Width = 369
                Height = 101
                Caption = 'Lan'#231'ar Juros '#224' Pagar autom'#225'tico  em Descontos duplicatas/cheques'
                TabOrder = 0
                object Label611: TLabel
                  Left = 30
                  Top = 28
                  Width = 187
                  Height = 14
                  Caption = 'C'#243'digo Fornecedor para juros Cheque:'
                end
                object Label612: TLabel
                  Left = 24
                  Top = 51
                  Width = 194
                  Height = 14
                  Caption = 'C'#243'digo Fornecedor para juros Duplicata:'
                end
                object Label644: TLabel
                  Left = 9
                  Top = 82
                  Width = 263
                  Height = 14
                  Caption = '* Criar um fornecedor padr'#227'o p/ receber valor do juros'
                end
                object DBEdit17: TDBEdit
                  Left = 217
                  Top = 21
                  Width = 46
                  Height = 22
                  DataField = 'PMT_FOR_DESCTO_CHEQ_PAG'
                  DataSource = DataCadastros1.DsParametros
                  TabOrder = 0
                  OnExit = DBEdit17Exit
                end
                object DBEdit18: TDBEdit
                  Left = 217
                  Top = 46
                  Width = 46
                  Height = 22
                  DataField = 'PMT_FOR_DESCTO_DUPL_PAG'
                  DataSource = DataCadastros1.DsParametros
                  TabOrder = 1
                  OnExit = DBEdit18Exit
                end
              end
              object DBRadioGroup8: TDBRadioGroup
                Left = 388
                Top = 114
                Width = 355
                Height = 47
                Caption = 'Calcular Pre'#231'o de Venda pelo:'
                Columns = 3
                DataField = 'PMT_CALCULARPV'
                DataSource = DataCadastros1.DsParametros
                Items.Strings = (
                  'Custo L'#237'quido'
                  'Custo de Entrada'
                  'Custo m'#233'dio')
                TabOrder = 4
                Values.Strings = (
                  '0'
                  '1'
                  '2')
              end
              object DBRadioGroup7: TDBRadioGroup
                Left = 13
                Top = 167
                Width = 369
                Height = 44
                Caption = 'Calcular Pre'#231'o M'#233'dio pelo:'
                Columns = 3
                DataField = 'PMT_CALCULARPM'
                DataSource = DataCadastros1.DsParametros
                Items.Strings = (
                  'Custo L'#237'quido'
                  'Custo de Entrada'
                  'Custo Com Cr'#233'dito')
                TabOrder = 5
                Values.Strings = (
                  '0'
                  '1'
                  '2')
              end
              object DBRadioGroup1: TDBRadioGroup
                Left = 388
                Top = 167
                Width = 355
                Height = 44
                Caption = 'Classe padr'#227'o de empresa para custos'
                Columns = 3
                DataField = 'PMT_EMPRESACLASSE'
                DataSource = DataCadastros1.DsParametros
                Items.Strings = (
                  'LTDA'
                  'SIMPLES'
                  'Outra')
                TabOrder = 6
                Values.Strings = (
                  '0'
                  '1'
                  '2')
              end
              object grpRetirarImpostos: TGroupBox
                Left = 13
                Top = 114
                Width = 369
                Height = 47
                Caption = 'Retirar Impostos do custo de entrada'
                TabOrder = 3
                object dbchkPMT_ICMS_CUSTOENTRADA: TDBCheckBox
                  Left = 16
                  Top = 19
                  Width = 97
                  Height = 17
                  Caption = 'ICMS'
                  DataField = 'PMT_ICMS_CUSTOENTRADA'
                  DataSource = DataCadastros1.DsParametros
                  TabOrder = 0
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object dbchkPMT_PIS_CUSTOENTRADA: TDBCheckBox
                  Left = 168
                  Top = 19
                  Width = 97
                  Height = 17
                  Caption = 'PIS E COFINS'
                  DataField = 'PMT_PIS_CUSTOENTRADA'
                  DataSource = DataCadastros1.DsParametros
                  TabOrder = 1
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
              end
              object DBEdit6: TDBEdit
                Left = 691
                Top = 32
                Width = 33
                Height = 22
                DataField = 'PMT_IRRF'
                DataSource = DataCadastros1.DsParametros
                TabOrder = 1
              end
              object DBCheckBox27: TDBCheckBox
                Left = 13
                Top = 215
                Width = 380
                Height = 17
                Caption = 'Utiliza An'#225'lise de Cr'#233'dito'
                DataField = 'PMT_UTILIZA_ANALISE_CREDITO'
                DataSource = DataCadastros1.DsParametros
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 7
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox34: TDBCheckBox
                Left = 13
                Top = 231
                Width = 380
                Height = 17
                Caption = 'Ativar Centro de Custos Avan'#231'ados com Rateios'
                DataField = 'PMT_FIN_HABILITA_CENTRO_C_AVANC'
                DataSource = DataCadastros1.DsParametros
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 8
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox35: TDBCheckBox
                Left = 13
                Top = 265
                Width = 420
                Height = 17
                Caption = 
                  'Obrigat'#243'rio Sele'#231#227'o de Centro de Custo Para Pedidos e Faturament' +
                  'o'
                DataField = 'PMT_CENTRO_CUSTO_OBRIGATORIO'
                DataSource = DataCadastros1.DsParametros
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 10
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBEdit32: TDBEdit
                Left = 691
                Top = 58
                Width = 33
                Height = 22
                DataField = 'PMT_EMPRESA_PADRAO_BOLETO'
                DataSource = DataCadastros1.DsParametros
                TabOrder = 2
              end
              object DBCheckBox46: TDBCheckBox
                Left = 13
                Top = 248
                Width = 380
                Height = 17
                Caption = 'Ativar Campo de Co-Participa'#231#227'o'
                DataField = 'pmt_coparticipacao'
                DataSource = DataCadastros1.DsParametros
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 9
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox51: TDBCheckBox
                Left = 13
                Top = 281
                Width = 328
                Height = 17
                Caption = 'N'#227'o mudar Banco da parcela ao liquidar por outro banco'
                DataField = 'PMT_NAO_ATUALIZAR_BANCO'
                DataSource = DataCadastros1.DsParametros
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 11
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object chkControleFinanceiro: TDBCheckBox
                Left = 13
                Top = 297
                Width = 328
                Height = 17
                Caption = 'Habilitar controle de autoriza'#231#227'o para pagamentos'
                DataField = 'PMT_CONTROLE_CONTASPAGAR'
                DataSource = DataCadastros1.DsParametros
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 12
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox70: TDBCheckBox
                Left = 13
                Top = 314
                Width = 328
                Height = 17
                Caption = 'Obrigat'#243'rio Centro Custo para contas a pagar'
                DataField = 'PMT_CENTROCUSTO_REQUERIDO_PAGAR'
                DataSource = DataCadastros1.DsParametros
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 13
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBRadioGroup12: TDBRadioGroup
                Left = 13
                Top = 337
                Width = 572
                Height = 61
                Caption = 'Margem de venda '
                DataField = 'PMT_CALCULO_MARGEM'
                DataSource = DataCadastros1.DsParametros
                Items.Strings = (
                  
                    '1 - C'#225'lculo da margem de venda Bruta   (Pre'#231'o de venda X Custo d' +
                    'e entrada  X Composi'#231#227'o da margem)'
                  
                    '2 - C'#225'lculo da margem de venda Liquida (pre'#231'o de venda X  Custo ' +
                    'de entrada, prazo, icms e frete-cif)')
                TabOrder = 14
                Values.Strings = (
                  '1'
                  '2')
              end
              object rgMetodoCalculo: TDBRadioGroup
                Left = 13
                Top = 404
                Width = 204
                Height = 61
                Caption = 'M'#233'todo de C'#225'lculo do Preco de Venda'
                DataField = 'PMT_METODO_CALCULO_PRECO'
                DataSource = DataCadastros1.DsParametros
                Items.Strings = (
                  'Custo por Fora'
                  'Custo por Dentro')
                TabOrder = 15
                Values.Strings = (
                  '0'
                  '1')
              end
              object dbrgLancaCCVerba: TDBRadioGroup
                Left = 233
                Top = 404
                Width = 192
                Height = 61
                Caption = 'Lan'#231'amento Conta Corrente/Verba'
                DataField = 'PMT_LANCA_CONTA_CORRENTE_VERBA'
                DataSource = DataCadastros1.DsParametros
                Items.Strings = (
                  'N'#227'o Lan'#231'ar Financeiro'
                  'Lan'#231'ar Financeiro')
                TabOrder = 16
                Values.Strings = (
                  '0'
                  '1')
                OnChange = dbrgLancaCCVerbaChange
              end
              object cbFormaPagamento: TSgDbSearchCombo
                Left = 431
                Top = 439
                Width = 218
                Height = 22
                TabOrder = 17
                CharCase = ecUpperCase
                LookupSelect = 'FPG_DESCRICAO, FPG_REGISTRO'
                LookupOrderBy = 'FPG_DESCRICAO'
                LookupTable = 'FORMA_PAGAMENTO'
                LookupDispl = 'FPG_DESCRICAO'
                GridAutoSize = False
                LookupSource = qFormaPagamento
                LookupKeyField = 'FPG_REGISTRO'
                ShowButton = True
                AutoF8WinTitulo = 'Formas de Pagamento'
                AutoF8ColumnsTitulo = 'C'#243'digo, Descri'#231#227'o'
                GridLeft = 0
                GridWidth = 0
                GridHeight = 100
                GridTop = 0
                GridShowWhenEnter = False
                SelectWithDoubleClick = False
                LimparCampoAoSair = True
              end
              object DBCheckBox96: TDBCheckBox
                Left = 408
                Top = 217
                Width = 339
                Height = 17
                Caption = 'Utiliza Gerenciamento Avan'#231'ado de Antecipa'#231#227'o/Desconto'
                DataField = 'PMT_GER_AVANC_ANTECIP_DESC'
                DataSource = DataCadastros1.DsParametros
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 18
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
            end
            object tsTabelaPreco: TTabSheet
              Caption = 'Tabelas de Pre'#231'os'
              ImageIndex = 1
              ExplicitLeft = 0
              ExplicitTop = 0
              ExplicitWidth = 0
              ExplicitHeight = 0
              object GroupBox32: TGroupBox
                Left = 0
                Top = 0
                Width = 757
                Height = 314
                Align = alTop
                Caption = 'Nome das TABELAS DE PRE'#199'OS'
                TabOrder = 0
                object Label633: TLabel
                  Left = 36
                  Top = 26
                  Width = 31
                  Height = 13
                  Caption = 'Tab.1:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Label634: TLabel
                  Left = 36
                  Top = 76
                  Width = 31
                  Height = 13
                  Caption = 'Tab.2:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Label635: TLabel
                  Left = 36
                  Top = 124
                  Width = 31
                  Height = 13
                  Caption = 'Tab.3:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Label636: TLabel
                  Left = 36
                  Top = 171
                  Width = 31
                  Height = 13
                  Caption = 'Tab.4:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Label637: TLabel
                  Left = 36
                  Top = 219
                  Width = 31
                  Height = 13
                  Caption = 'Tab.5:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Label24: TLabel
                  Left = 34
                  Top = 269
                  Width = 31
                  Height = 13
                  Caption = 'Tab.6:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Label492: TLabel
                  Left = 5
                  Top = 50
                  Width = 62
                  Height = 14
                  BiDiMode = bdLeftToRight
                  Caption = 'Verba 1 (%):'
                  ParentBiDiMode = False
                end
                object Label493: TLabel
                  Left = 191
                  Top = 50
                  Width = 80
                  Height = 14
                  BiDiMode = bdLeftToRight
                  Caption = 'Comiss'#227'o 1 (%):'
                  ParentBiDiMode = False
                end
                object Label631: TLabel
                  Left = 5
                  Top = 98
                  Width = 62
                  Height = 14
                  BiDiMode = bdLeftToRight
                  Caption = 'Verba 2 (%):'
                  ParentBiDiMode = False
                end
                object Label638: TLabel
                  Left = 191
                  Top = 98
                  Width = 80
                  Height = 14
                  BiDiMode = bdLeftToRight
                  Caption = 'Comiss'#227'o 2 (%):'
                  ParentBiDiMode = False
                end
                object Label650: TLabel
                  Left = 6
                  Top = 146
                  Width = 62
                  Height = 14
                  BiDiMode = bdLeftToRight
                  Caption = 'Verba 3 (%):'
                  ParentBiDiMode = False
                end
                object Label651: TLabel
                  Left = 191
                  Top = 146
                  Width = 80
                  Height = 14
                  BiDiMode = bdLeftToRight
                  Caption = 'Comiss'#227'o 3 (%):'
                  ParentBiDiMode = False
                end
                object Label652: TLabel
                  Left = 6
                  Top = 195
                  Width = 62
                  Height = 14
                  BiDiMode = bdLeftToRight
                  Caption = 'Verba 4 (%):'
                  ParentBiDiMode = False
                end
                object Label653: TLabel
                  Left = 191
                  Top = 196
                  Width = 80
                  Height = 14
                  BiDiMode = bdLeftToRight
                  Caption = 'Comiss'#227'o 4 (%):'
                  ParentBiDiMode = False
                end
                object Label654: TLabel
                  Left = 6
                  Top = 243
                  Width = 62
                  Height = 14
                  BiDiMode = bdLeftToRight
                  Caption = 'Verba 5 (%):'
                  ParentBiDiMode = False
                end
                object Label655: TLabel
                  Left = 191
                  Top = 244
                  Width = 80
                  Height = 14
                  BiDiMode = bdLeftToRight
                  Caption = 'Comiss'#227'o 5 (%):'
                  ParentBiDiMode = False
                end
                object Label656: TLabel
                  Left = 7
                  Top = 291
                  Width = 62
                  Height = 14
                  BiDiMode = bdLeftToRight
                  Caption = 'Verba 6 (%):'
                  ParentBiDiMode = False
                end
                object Label657: TLabel
                  Left = 191
                  Top = 292
                  Width = 80
                  Height = 14
                  BiDiMode = bdLeftToRight
                  Caption = 'Comiss'#227'o 6 (%):'
                  ParentBiDiMode = False
                end
                object DBEdit2: TDBEdit
                  Left = 68
                  Top = 23
                  Width = 310
                  Height = 22
                  DataField = 'PMT_TABNOME1'
                  DataSource = DataCadastros1.DsParametros
                  TabOrder = 0
                end
                object DBEdit3: TDBEdit
                  Left = 68
                  Top = 71
                  Width = 310
                  Height = 22
                  DataField = 'PMT_TABNOME2'
                  DataSource = DataCadastros1.DsParametros
                  TabOrder = 3
                end
                object DBEdit4: TDBEdit
                  Left = 68
                  Top = 119
                  Width = 310
                  Height = 22
                  DataField = 'PMT_TABNOME3'
                  DataSource = DataCadastros1.DsParametros
                  TabOrder = 6
                end
                object DBEdit25: TDBEdit
                  Left = 68
                  Top = 167
                  Width = 310
                  Height = 22
                  DataField = 'PMT_TABNOME4'
                  DataSource = DataCadastros1.DsParametros
                  TabOrder = 9
                end
                object DBEdit26: TDBEdit
                  Left = 68
                  Top = 215
                  Width = 310
                  Height = 22
                  DataField = 'PMT_TABNOME5'
                  DataSource = DataCadastros1.DsParametros
                  TabOrder = 12
                end
                object DBEdit27: TDBEdit
                  Left = 68
                  Top = 263
                  Width = 310
                  Height = 22
                  DataField = 'PMT_TABNOME6'
                  DataSource = DataCadastros1.DsParametros
                  TabOrder = 15
                end
                object DBEdit35: TDBEdit
                  Left = 272
                  Top = 47
                  Width = 106
                  Height = 22
                  Hint = 'Base para outras tabelas'
                  DataField = 'PMT_PERC_COMISSAO1'
                  DataSource = DataCadastros1.DsParametros
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 2
                end
                object DBEdit36: TDBEdit
                  Left = 68
                  Top = 47
                  Width = 106
                  Height = 22
                  Hint = 'Base para outras tabelas'
                  DataField = 'PMT_PERC_VENDA1'
                  DataSource = DataCadastros1.DsParametros
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 1
                end
                object DBEdit37: TDBEdit
                  Left = 68
                  Top = 95
                  Width = 106
                  Height = 22
                  Hint = 'Base para outras tabelas'
                  DataField = 'PMT_PERC_VENDA2'
                  DataSource = DataCadastros1.DsParametros
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 4
                end
                object DBEdit38: TDBEdit
                  Left = 272
                  Top = 95
                  Width = 106
                  Height = 22
                  Hint = 'Base para outras tabelas'
                  DataField = 'PMT_PERC_COMISSAO2'
                  DataSource = DataCadastros1.DsParametros
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 5
                end
                object DBEdit39: TDBEdit
                  Left = 68
                  Top = 143
                  Width = 106
                  Height = 22
                  Hint = 'Base para outras tabelas'
                  DataField = 'PMT_PERC_VENDA3'
                  DataSource = DataCadastros1.DsParametros
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 7
                end
                object DBEdit40: TDBEdit
                  Left = 272
                  Top = 143
                  Width = 106
                  Height = 22
                  Hint = 'Base para outras tabelas'
                  DataField = 'PMT_PERC_COMISSAO3'
                  DataSource = DataCadastros1.DsParametros
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 8
                end
                object DBEdit41: TDBEdit
                  Left = 68
                  Top = 191
                  Width = 106
                  Height = 22
                  Hint = 'Base para outras tabelas'
                  DataField = 'PMT_PERC_VENDA4'
                  DataSource = DataCadastros1.DsParametros
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 10
                end
                object DBEdit42: TDBEdit
                  Left = 272
                  Top = 191
                  Width = 106
                  Height = 22
                  Hint = 'Base para outras tabelas'
                  DataField = 'PMT_PERC_COMISSAO4'
                  DataSource = DataCadastros1.DsParametros
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 11
                end
                object DBEdit43: TDBEdit
                  Left = 68
                  Top = 239
                  Width = 106
                  Height = 22
                  Hint = 'Base para outras tabelas'
                  DataField = 'PMT_PERC_VENDA5'
                  DataSource = DataCadastros1.DsParametros
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 13
                end
                object DBEdit44: TDBEdit
                  Left = 272
                  Top = 239
                  Width = 106
                  Height = 22
                  Hint = 'Base para outras tabelas'
                  DataField = 'PMT_PERC_COMISSAO5'
                  DataSource = DataCadastros1.DsParametros
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 14
                end
                object DBEdit45: TDBEdit
                  Left = 68
                  Top = 287
                  Width = 106
                  Height = 22
                  Hint = 'Base para outras tabelas'
                  DataField = 'PMT_PERC_VENDA6'
                  DataSource = DataCadastros1.DsParametros
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 16
                end
                object DBEdit46: TDBEdit
                  Left = 272
                  Top = 287
                  Width = 106
                  Height = 22
                  Hint = 'Base para outras tabelas'
                  DataField = 'PMT_PERC_COMISSAO6'
                  DataSource = DataCadastros1.DsParametros
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 17
                end
              end
              object GroupBox17: TGroupBox
                Left = 0
                Top = 314
                Width = 757
                Height = 43
                Align = alTop
                Caption = 'Cabe'#231'alho Tabela Pre'#231'o :'
                TabOrder = 1
                object DbeCab_TabPreco: TDBEdit
                  Left = 4
                  Top = 15
                  Width = 375
                  Height = 22
                  DataField = 'PMT_CAB_TABPRECO'
                  DataSource = DataCadastros1.DsParametros
                  TabOrder = 0
                end
              end
            end
          end
        end
      end
      object TPage
        Left = 0
        Top = 0
        Caption = 'Pedido'
        ExplicitWidth = 0
        ExplicitHeight = 0
        object PPedido: TPanel
          Left = 0
          Top = 0
          Width = 767
          Height = 507
          Align = alCustom
          TabOrder = 0
          object PageControl2: TPageControl
            Left = 1
            Top = 1
            Width = 765
            Height = 505
            ActivePage = TabSheet1
            Align = alClient
            TabOrder = 0
            object TabSheet1: TTabSheet
              Caption = 'Principal'
              OnShow = TabSheet1Show
              ExplicitLeft = 0
              ExplicitTop = 0
              ExplicitWidth = 0
              ExplicitHeight = 0
              object Label610: TLabel
                Left = 12
                Top = 42
                Width = 139
                Height = 14
                Caption = 'Qtde casas decimais pedido:'
              end
              object Label30: TLabel
                Left = 13
                Top = 18
                Width = 138
                Height = 14
                Caption = 'N'#186' de Itens aceito no Pedido:'
              end
              object Label658: TLabel
                Left = 310
                Top = 273
                Width = 187
                Height = 14
                Caption = 'Validade padr'#227'o p/ or'#231'amento em dias:'
              end
              object DbRadNumer_Ped: TDBRadioGroup
                Left = 0
                Top = 437
                Width = 757
                Height = 39
                Align = alBottom
                Caption = 'Numera'#231#227'o do Pedido'
                Columns = 2
                DataField = 'PMT_NUMER_PEDIDO'
                DataSource = DataCadastros1.DsParametros
                Font.Charset = ANSI_CHARSET
                Font.Color = clMaroon
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                Items.Strings = (
                  'Autom'#225'tica'
                  'Manual')
                ParentFont = False
                TabOrder = 0
                Values.Strings = (
                  'A'
                  'M')
              end
              object DBEdit16: TDBEdit
                Left = 153
                Top = 39
                Width = 30
                Height = 22
                DataField = 'PMT_QTDE_DEC_PED'
                DataSource = DataCadastros1.DsParametros
                TabOrder = 1
                OnExit = DBEdit16Exit
              end
              object DBEdit11: TDBEdit
                Left = 153
                Top = 15
                Width = 30
                Height = 22
                CharCase = ecUpperCase
                DataField = 'PMT_ITENS_PEDIDO'
                DataSource = DataCadastros1.DsParametros
                TabOrder = 2
              end
              object DBCheckBox16: TDBCheckBox
                Left = 308
                Top = 62
                Width = 167
                Height = 17
                Caption = 'Habilitar bot'#227'o Duplicar Pedido'
                DataField = 'PMT_BTN_DUPLICA'
                DataSource = DataCadastros1.DsParametros
                ParentShowHint = False
                ShowHint = True
                TabOrder = 3
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox4: TDBCheckBox
                Left = 308
                Top = 81
                Width = 219
                Height = 17
                Caption = 'Habilitar descri'#231#227'o de produtos resumida'
                DataField = 'PMT_DESCPRODRES'
                DataSource = DataCadastros1.DsParametros
                ParentShowHint = False
                ShowHint = True
                TabOrder = 4
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object cbHabilitaOrcamentoParaClienteSemCadastro: TDBCheckBox
                Left = 9
                Top = 124
                Width = 287
                Height = 17
                Caption = 'Habilita Or'#231'amento para Cliente Sem Cadastro'
                DataField = 'PMT_VENDA_CLI_SEM_CAD'
                DataSource = DataCadastros1.DsParametros
                ParentShowHint = False
                ShowHint = True
                TabOrder = 5
                ValueChecked = 'S'
                ValueUnchecked = 'N'
                OnClick = cbHabilitaOrcamentoParaClienteSemCadastroClick
              end
              object ckPMT_VENDA_GRADE: TDBCheckBox
                Left = 308
                Top = 99
                Width = 165
                Height = 17
                Hint = 'Habilita associa'#231#227'o de grade ao produto'
                Caption = 'Grades de produtos (simples)'
                DataField = 'PMT_VENDA_GRADE'
                DataSource = DataCadastros1.DsParametros
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                TabOrder = 6
                ValueChecked = 'S'
                ValueUnchecked = 'N'
                OnClick = ckPMT_VENDA_GRADEClick
              end
              object DBCheckBox30: TDBCheckBox
                Left = 308
                Top = 137
                Width = 423
                Height = 17
                Caption = 'Utilizar Sequ'#234'ncia '#250'nica de numera'#231#227'o independente de empresa'
                DataField = 'PMT_SEQUENCIA_UNICA_PEDIDO'
                DataSource = DataCadastros1.DsParametros
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                TabOrder = 7
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox33: TDBCheckBox
                Left = 308
                Top = 156
                Width = 311
                Height = 17
                Caption = 'Habilita Mensagem de Faturas em atraso na tela de vendas'
                DataField = 'PMT_VENDA_MSG_ATRASO_FIN'
                DataSource = DataCadastros1.DsParametros
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                TabOrder = 8
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object dbchkPMT_BLOQ_VENDA_PCM: TDBCheckBox
                Left = 9
                Top = 67
                Width = 282
                Height = 17
                Hint = 
                  'Bloquear Venda de Produtos que o Custo, Margem ou pre'#231'o de venda' +
                  ' estiver sem valor'
                Caption = 'Bloquear venda se custo, margem ou pre'#231'o sem valor'
                DataField = 'PMT_BLOQ_VENDA_PCM'
                DataSource = DataCadastros1.DsParametros
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                TabOrder = 9
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object ckPMT_OBRIGAR_GRADE_VENDA: TDBCheckBox
                Left = 477
                Top = 99
                Width = 178
                Height = 17
                Hint = 
                  'A grade deve ser obrigat'#243'ria no pedido quando trabalhar com grad' +
                  'e, assim deve habilitar a grade tamb'#233'm'
                Caption = 'Grade deve ser obrigat'#243'ria'
                DataField = 'PMT_OBRIGAR_GRADE_VENDA'
                DataSource = DataCadastros1.DsParametros
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                TabOrder = 10
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox39: TDBCheckBox
                Left = 308
                Top = 175
                Width = 311
                Height = 17
                Caption = 'Habilitar Tabela de Pre'#231'os - Simples at'#233' 6'
                DataField = 'PMT_HABILITA_TABELA_PRECOS'
                DataSource = DataCadastros1.DsParametros
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                TabOrder = 11
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBRadioGroup9: TDBRadioGroup
                Left = 317
                Top = 8
                Width = 409
                Height = 48
                Caption = 'Padr'#227'o de Pesquisa Consulta de Pedidos'
                Columns = 3
                DataField = 'PMT_CONS_VENDA_PEDDO_STAT'
                DataSource = DataCadastros1.DsParametros
                Items.Strings = (
                  'Todos'
                  'Faturados'
                  'Pendentes')
                TabOrder = 12
                Values.Strings = (
                  'T'
                  'F'
                  'P')
              end
              object ckPMT_DIGITACAO_GRID_VENDAS: TDBCheckBox
                Left = 308
                Top = 118
                Width = 97
                Height = 17
                Hint = 
                  'Habilita associa'#231#227'o multiplas grades para o produto (em formato ' +
                  'de grid)'
                Caption = 'Multiplas grades'
                DataField = 'PMT_DIGITACAO_GRID_VENDAS'
                DataSource = DataCadastros1.DsParametros
                ParentShowHint = False
                ShowHint = True
                TabOrder = 13
                ValueChecked = 'S'
                ValueUnchecked = 'N'
                OnClick = ckPMT_DIGITACAO_GRID_VENDASClick
              end
              object DBCheckBox32: TDBCheckBox
                Left = 442
                Top = 118
                Width = 257
                Height = 17
                Caption = 'Memorizar '#250'ltima consulta de Item adicionado'
                DataField = 'PMT_MEM_PESQPED'
                DataSource = DataCadastros1.DsParametros
                TabOrder = 14
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox60: TDBCheckBox
                Left = 632
                Top = 60
                Width = 92
                Height = 17
                Caption = 'Habilitar PPAC'
                DataField = 'PMT_ATIVAR_PPAC'
                DataSource = DataCadastros1.DsParametros
                ParentShowHint = False
                ShowHint = True
                TabOrder = 15
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox37: TDBCheckBox
                Left = 9
                Top = 84
                Width = 271
                Height = 17
                Caption = 'Habilitar Campo Diretivas (Simples)'
                DataField = 'PMT_OBRIGAR_DIRETIVA_VENDA'
                DataSource = DataCadastros1.DsParametros
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                TabOrder = 16
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox43: TDBCheckBox
                Left = 9
                Top = 104
                Width = 271
                Height = 17
                Caption = 'Habilitar ABA Diretivas '
                DataField = 'PMT_OBRIGAR_DIRETIVA_VENDA_ABA'
                DataSource = DataCadastros1.DsParametros
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                TabOrder = 17
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object gbkit: TGroupBox
                Left = 306
                Top = 192
                Width = 351
                Height = 65
                Caption = 'KIT'
                TabOrder = 18
                object ckPMT_VALOR_KIT: TDBCheckBox
                  Left = 9
                  Top = 14
                  Width = 311
                  Height = 17
                  Caption = 'Habilitar Altera'#231#227'o do Pre'#231'o de Kit'#39's .Tamb'#233'm habilita OP'
                  DataField = 'PMT_VALOR_KIT'
                  DataSource = DataCadastros1.DsParametros
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  ParentFont = False
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 0
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                  OnClick = ckPMT_VALOR_KITClick
                end
                object ckPMT_ITENS_KIT: TDBCheckBox
                  Left = 9
                  Top = 30
                  Width = 290
                  Height = 17
                  Caption = 'O Pre'#231'o do Kit '#233' formulado pelos itens que comp'#245'em'
                  DataField = 'PMT_ITENS_KIT'
                  DataSource = DataCadastros1.DsParametros
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  ParentFont = False
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 1
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object ckPMT_CONTROLA_KIT: TDBCheckBox
                  Left = 9
                  Top = 46
                  Width = 320
                  Height = 17
                  Hint = 'Controle do estoque do kit'
                  Caption = 'Controle Estoque (Movimenta estoque do kit e n'#227'o dos itens)'
                  DataField = 'PMT_CONTROLA_KIT'
                  DataSource = DataCadastros1.DsParametros
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  ParentFont = False
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 2
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
              end
              object DBEdit57: TDBEdit
                Left = 503
                Top = 269
                Width = 61
                Height = 22
                CharCase = ecUpperCase
                DataField = 'PMT_NUMDIAS_ORC'
                DataSource = DataCadastros1.DsParametros
                TabOrder = 19
              end
              object DBCheckBox58: TDBCheckBox
                Left = 308
                Top = 315
                Width = 381
                Height = 17
                Caption = 
                  'Atualizar prazo/forma no cadastro do cliente pelo '#250'ltimo prazo d' +
                  'e venda'
                DataField = 'PMT_ATUALIZAR_CLIENTE'
                DataSource = DataCadastros1.DsParametros
                TabOrder = 20
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox63: TDBCheckBox
                Left = 308
                Top = 298
                Width = 381
                Height = 17
                Caption = 'Vincular o vendedor cadastrado no usu'#225'rio'
                DataField = 'PMT_VINCULAR_VENDEDOR'
                DataSource = DataCadastros1.DsParametros
                TabOrder = 21
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox72: TDBCheckBox
                Left = 308
                Top = 334
                Width = 341
                Height = 17
                Caption = 'Utilizar Descri'#231#227'o "Data de Expedi'#231#227'o" na Impress'#227'o do Pedido'
                DataField = 'PMT_REL_DATA_EXPEDICAO'
                DataSource = DataCadastros1.DsParametros
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                TabOrder = 22
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox86: TDBCheckBox
                Left = 308
                Top = 351
                Width = 341
                Height = 17
                Caption = 'Permite alterar quantidade nos pedidos enviados para produ'#231#227'o'
                DataField = 'PMT_ALTERA_QUANT_ITEM_PED'
                DataSource = DataCadastros1.DsParametros
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                TabOrder = 23
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox87: TDBCheckBox
                Left = 308
                Top = 368
                Width = 126
                Height = 17
                Caption = 'Retorno por Cores'
                DataField = 'PMT_RETORNO_POR_CORES'
                DataSource = DataCadastros1.DsParametros
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                TabOrder = 24
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object cbInformacoesObrigatoriasParaClienteSemCadastro: TDBCheckBox
                Left = 9
                Top = 141
                Width = 287
                Height = 17
                Caption = 'Informa'#231#245'es Obrigat'#243'rias Para Cliente Sem Cadastro'
                DataField = 'PMT_VENDA_CLI_SEM_CAD_OBRIG'
                DataSource = DataCadastros1.DsParametros
                ParentShowHint = False
                ShowHint = True
                TabOrder = 25
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object cbMostrarValorDifalPedido: TDBCheckBox
                Left = 9
                Top = 159
                Width = 216
                Height = 17
                Caption = 'Mostrar o Valor do DIFAL no Pedido'
                DataField = 'PMT_VALOR_DIFAL_PEDIDO'
                DataSource = DataCadastros1.DsParametros
                ParentShowHint = False
                ShowHint = True
                TabOrder = 26
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox88: TDBCheckBox
                Left = 9
                Top = 177
                Width = 198
                Height = 17
                Caption = 'Mostrar o Valor do ICMS no Pedido'
                DataField = 'PMT_HABILITA_ICMS_PEDIDO'
                DataSource = DataCadastros1.DsParametros
                ParentShowHint = False
                ShowHint = True
                TabOrder = 27
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
            end
            object TabSheet2: TTabSheet
              Caption = 'Mensagens'
              ImageIndex = 1
              ExplicitLeft = 0
              ExplicitTop = 0
              ExplicitWidth = 0
              ExplicitHeight = 0
              object grp1: TGroupBox
                Left = 0
                Top = 0
                Width = 757
                Height = 217
                Align = alTop
                Caption = 'Mensagem Padr'#227'o do Or'#231'amento'
                TabOrder = 0
                object dbmmoObservacaoOrcamento: TDBMemo
                  Left = 2
                  Top = 16
                  Width = 753
                  Height = 199
                  Align = alClient
                  DataField = 'PMT_MENSAGEM_PADRAO_ORCAMENTO'
                  DataSource = DataCadastros1.DsParametros
                  TabOrder = 0
                end
              end
              object GroupBox18: TGroupBox
                Left = 0
                Top = 217
                Width = 757
                Height = 259
                Align = alClient
                Caption = 'Aviso de IMPORTANTE no rodap'#233' do Pedido'
                TabOrder = 1
                object DBMemoAvisoImportante: TDBMemo
                  Left = 2
                  Top = 16
                  Width = 753
                  Height = 241
                  Align = alClient
                  DataField = 'PMT_PED_IMPORTANTE'
                  DataSource = DataCadastros1.DsParametros
                  MaxLength = 300
                  TabOrder = 0
                end
              end
            end
            object TabSheet3: TTabSheet
              Caption = 'Item do Pedido'
              ImageIndex = 2
              ExplicitLeft = 0
              ExplicitTop = 0
              ExplicitWidth = 0
              ExplicitHeight = 0
              object Label8: TLabel
                Left = 10
                Top = 183
                Width = 175
                Height = 14
                Caption = 'Refer'#234'ncia Provis'#243'ria p/ Or'#231'amento:'
              end
              object chkPMT_PEDITEMDESC: TDBCheckBox
                Left = 12
                Top = 6
                Width = 234
                Height = 17
                Caption = 'Deixa alterar descri'#231#227'o de item no Pedido.'
                DataField = 'PMT_PEDITEMDESC'
                DataSource = DataCadastros1.DsParametros
                ParentShowHint = False
                ShowHint = True
                TabOrder = 0
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox6: TDBCheckBox
                Left = 12
                Top = 25
                Width = 251
                Height = 17
                Caption = 'Habilitar Descto Individual nos items do Pedido'
                DataField = 'PMT_DESCTO_ITEM'
                DataSource = DataCadastros1.DsParametros
                ParentShowHint = False
                ShowHint = True
                TabOrder = 1
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object chkPMT_VARIACOES: TDBCheckBox
                Left = 12
                Top = 44
                Width = 271
                Height = 17
                Caption = 'Disponibilizar Varia'#231#245'es(modelos) de um Produto'
                DataField = 'PMT_VARIACOES'
                DataSource = DataCadastros1.DsParametros
                ParentShowHint = False
                ShowHint = True
                TabOrder = 2
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox12: TDBCheckBox
                Left = 12
                Top = 63
                Width = 130
                Height = 17
                Caption = 'Ativar Tup'#39's no Pedido'
                DataField = 'PMT_TUPPEDIDO'
                DataSource = DataCadastros1.DsParametros
                ParentShowHint = False
                ShowHint = True
                TabOrder = 3
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox13: TDBCheckBox
                Left = 12
                Top = 82
                Width = 271
                Height = 17
                Caption = 'Habilitar Consulta de Entradas e Sa'#237'das do Item'
                DataField = 'PMT_KARDEX_PEDIDO'
                DataSource = DataCadastros1.DsParametros
                ParentShowHint = False
                ShowHint = True
                TabOrder = 4
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox21: TDBCheckBox
                Left = 12
                Top = 101
                Width = 211
                Height = 17
                Caption = 'Ativar Produtos sem valor no pedido'
                DataField = 'PMT_PRODUTO_AGREGADO'
                DataSource = DataCadastros1.DsParametros
                ParentShowHint = False
                ShowHint = True
                TabOrder = 5
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object dbchkPMT_COMP_ITEM_PEDIDO: TDBCheckBox
                Left = 12
                Top = 120
                Width = 311
                Height = 17
                Caption = 'Habilita Complemento da Descri'#231#227'o do Pedido'
                DataField = 'PMT_COMP_ITEM_PEDIDO'
                DataSource = DataCadastros1.DsParametros
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                TabOrder = 6
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object dbchkPMT_B2B: TDBCheckBox
                Left = 12
                Top = 139
                Width = 311
                Height = 17
                Caption = 'Habilitar B2B - Pedido e XML'
                DataField = 'PMT_B2B'
                DataSource = DataCadastros1.DsParametros
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                TabOrder = 7
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object dbedtPMT_REFERENCIA_PROVISORIA: TDBEdit
                Left = 190
                Top = 181
                Width = 104
                Height = 22
                CharCase = ecUpperCase
                DataField = 'PMT_REFERENCIA_PROVISORIA'
                DataSource = DataCadastros1.DsParametros
                TabOrder = 8
              end
              object chkPMT_NCM_UND_ITEM_PROV: TDBCheckBox
                Left = 12
                Top = 162
                Width = 271
                Height = 17
                Caption = 'Liberar digita'#231#227'o de NCM e UND em item provis'#243'rio'
                DataField = 'PMT_NCM_UND_ITEM_PROV'
                DataSource = DataCadastros1.DsParametros
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                TabOrder = 9
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object chkHabPrazoItens: TDBCheckBox
                Left = 11
                Top = 204
                Width = 195
                Height = 17
                Caption = 'Habilitar prazos (em dias) por item'
                DataField = 'PMT_PRAZO_ITEM'
                DataSource = DataCadastros1.DsParametros
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                TabOrder = 10
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox9: TDBCheckBox
                Left = 11
                Top = 225
                Width = 271
                Height = 17
                Caption = 'Tela de pedido tipo doa'#231#227'o'
                DataField = 'pmt_Pedido_Doacao'
                DataSource = DataCadastros1.DsParametros
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                TabOrder = 11
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox77: TDBCheckBox
                Left = 11
                Top = 260
                Width = 271
                Height = 17
                Caption = 'Importa Itens do Pedido via XML'
                DataField = 'PMT_IMPORTA_ITENS_XML'
                DataSource = DataCadastros1.DsParametros
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                TabOrder = 12
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object cbPmtPedidoIndPlastica: TDBCheckBox
                Left = 11
                Top = 243
                Width = 271
                Height = 17
                Caption = 'Tela de pedido tipo Ind'#250'stria Pl'#225'stica'
                DataField = 'PMT_PEDIDO_IND_PLASTICA'
                DataSource = DataCadastros1.DsParametros
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                TabOrder = 13
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object gbNomeGrade: TGroupBox
                Left = 12
                Top = 421
                Width = 348
                Height = 45
                Caption = 'Descri'#231#227'o dos campos para Grade de Produto'
                TabOrder = 14
                object dbPMT_GRADE_MEDIDA1: TDBEdit
                  Left = 6
                  Top = 16
                  Width = 107
                  Height = 22
                  AutoSize = False
                  DataField = 'PMT_GRADE_MEDIDA1'
                  DataSource = DataCadastros1.DsParametros
                  TabOrder = 0
                end
                object dbPMT_GRADE_MEDIDA2: TDBEdit
                  Left = 119
                  Top = 16
                  Width = 107
                  Height = 22
                  DataField = 'PMT_GRADE_MEDIDA2'
                  DataSource = DataCadastros1.DsParametros
                  TabOrder = 1
                end
                object dbPMT_GRADE_MEDIDA3: TDBEdit
                  Left = 232
                  Top = 16
                  Width = 107
                  Height = 22
                  DataField = 'PMT_GRADE_MEDIDA3'
                  DataSource = DataCadastros1.DsParametros
                  TabOrder = 2
                end
              end
            end
          end
        end
      end
      object TPage
        Left = 0
        Top = 0
        Caption = 'Producao'
        ExplicitWidth = 0
        ExplicitHeight = 0
        object PProducao: TPanel
          Left = 0
          Top = 0
          Width = 767
          Height = 509
          Align = alClient
          TabOrder = 0
          object PGProducao: TPageControl
            Left = 1
            Top = 1
            Width = 765
            Height = 507
            ActivePage = tsPCPNew
            Align = alClient
            TabOrder = 0
            object tsPCPOld: TTabSheet
              Caption = 'PCP Old'
              ExplicitLeft = 0
              ExplicitTop = 0
              ExplicitWidth = 0
              ExplicitHeight = 0
              object GroupBox7: TGroupBox
                Left = 0
                Top = 0
                Width = 757
                Height = 192
                Align = alTop
                Caption = 'Ordem de Produ'#231#227'o'
                TabOrder = 0
                object Label20: TLabel
                  Left = 13
                  Top = 45
                  Width = 201
                  Height = 14
                  Caption = 'Unidade da Formula'#231#227'o da Ficha T'#233'cnica:'
                end
                object Label21: TLabel
                  Left = 65
                  Top = 71
                  Width = 151
                  Height = 14
                  Caption = 'Modelo da Ordem de Produ'#231#227'o:'
                end
                object Label649: TLabel
                  Left = 281
                  Top = 44
                  Width = 362
                  Height = 14
                  Caption = 
                    '(n'#227'o usar mais a partir da verso 3.0.9.494 a base '#233' direto na fi' +
                    'cha t'#233'cnica)'
                end
                object DbeFormulacao: TDBEdit
                  Left = 218
                  Top = 41
                  Width = 49
                  Height = 22
                  DataField = 'PMT_UNFORMULA'
                  DataSource = DataCadastros1.DsParametros
                  TabOrder = 0
                end
                object DbCbOrdemMod: TDBComboBox
                  Left = 217
                  Top = 67
                  Width = 368
                  Height = 22
                  DataField = 'PMT_MDL_OP'
                  DataSource = DataCadastros1.DsParametros
                  Items.Strings = (
                    '1 - Ind'#250'stria qu'#237'mica                  - modelo 1'
                    '2 - Modelo gen'#233'rico PADR'#195'O     - modelo 2'
                    '3 - Ind'#250'stria qu'#237'mica                  - modelo 3'
                    '4 - Ind'#250'stria  Usinagem              - modelo 4'
                    '5 - Modelo de O.P. Espuma        - modelo 5'
                    '6 - Serralheiria                            - modelo 6'
                    '7 - Ind'#250'stria de Usinagem          - modelo 7'
                    '8 - Ind'#250'stria de Usinagem com etapas fixas - modelo 8'
                    '9 - Ind'#250'stria de Usinagem com etapas         - modelo 9 '
                    '10 - Ind'#250'stria qu'#237'mica com lote - modelo 10'
                    '11 - Ind'#250'stria com etapas e obs por opera'#231#245'es - modelo 11'
                    '12 - Ind'#250'stria com etapas e obs por opera'#231#245'es - modelo 12')
                  TabOrder = 1
                end
                object DBCheckBox7: TDBCheckBox
                  Left = 10
                  Top = 138
                  Width = 223
                  Height = 20
                  Caption = 'Utilizar Sistema de Produ'#231#227'o por C'#233'lulas'
                  DataField = 'PMT_CELULAPROD'
                  DataSource = DataCadastros1.DsParametros
                  TabOrder = 4
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object DBCheckBox8: TDBCheckBox
                  Left = 10
                  Top = 160
                  Width = 369
                  Height = 20
                  Caption = 'Acompanhamento de Processo (desativado)'
                  DataField = 'PMT_PROCESPROD'
                  DataSource = DataCadastros1.DsParametros
                  Enabled = False
                  TabOrder = 5
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object DBCheckBox3: TDBCheckBox
                  Left = 11
                  Top = 117
                  Width = 253
                  Height = 17
                  Caption = 'Gerar consumo de  OP'#39's direto para Produ'#231#227'o'
                  DataField = 'PMT_OPSPRODUZIR'
                  DataSource = DataCadastros1.DsParametros
                  TabOrder = 3
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object DBCheckBox17: TDBCheckBox
                  Left = 413
                  Top = 103
                  Width = 327
                  Height = 17
                  Caption = 'Empenhar saldo do estoque  no almoxarifado (desativado)'
                  DataField = 'PMT_BAIXA_EST_AXF'
                  DataSource = DataCadastros1.DsParametros
                  Enabled = False
                  TabOrder = 6
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object DBCheckBox18: TDBCheckBox
                  Left = 11
                  Top = 98
                  Width = 326
                  Height = 17
                  Caption = 'Gravar Sa'#237'das no kardex sem controlar Empenho do Estoque'
                  DataField = 'PMT_OPS_CONCLUIR'
                  DataSource = DataCadastros1.DsParametros
                  TabOrder = 2
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object chkProduzirAlem: TDBCheckBox
                  Left = 413
                  Top = 145
                  Width = 320
                  Height = 17
                  Caption = 'Apontamento aceita concluir QTDE maior que solicitada na OP'
                  DataField = 'PMT_PRODUZIR_MAIS_OP'
                  DataSource = DataCadastros1.DsParametros
                  TabOrder = 7
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object chkConcluirsemApoontamento: TDBCheckBox
                  Left = 413
                  Top = 168
                  Width = 249
                  Height = 17
                  Caption = 'Concluir OP sem fazer apontamentos'
                  DataField = 'PMT_OP_SEMAPONTA'
                  DataSource = DataCadastros1.DsParametros
                  TabOrder = 8
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object DBCheckBox5: TDBCheckBox
                  Left = 413
                  Top = 126
                  Width = 167
                  Height = 17
                  Caption = 'Usar o pre'#231'o de custo com IPI.'
                  DataField = 'PMT_PRECOCOMIPI'
                  DataSource = DataCadastros1.DsParametros
                  TabOrder = 9
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object DBCheckBox68: TDBCheckBox
                  Left = 13
                  Top = 22
                  Width = 183
                  Height = 17
                  Caption = 'Habilitar Produ'#231#227'o'
                  DataField = 'PMT_HABILITAR_PRODU_ANTIGO'
                  DataSource = DataCadastros1.DsParametros
                  TabOrder = 10
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
              end
              object GroupBox8: TGroupBox
                Left = 1
                Top = 193
                Width = 386
                Height = 73
                Caption = 'Cadastro do Tipo do Produto'
                TabOrder = 1
                object Label16: TLabel
                  Left = 24
                  Top = 23
                  Width = 137
                  Height = 14
                  Caption = 'C'#243'digo do Produto Acabado:'
                end
                object Label476: TLabel
                  Left = 7
                  Top = 47
                  Width = 155
                  Height = 14
                  Caption = 'C'#243'digo do Produto Intermedi'#225'rio:'
                end
                object DBEdtPA: TDBEdit
                  Left = 163
                  Top = 20
                  Width = 32
                  Height = 22
                  DataField = 'PMT_PA'
                  DataSource = DataCadastros1.DsParametros
                  TabOrder = 0
                  OnExit = DBEdtPAExit
                  OnKeyPress = DBEdtPAKeyPress
                end
                object DBEdtPI: TDBEdit
                  Left = 163
                  Top = 43
                  Width = 32
                  Height = 22
                  DataField = 'PMT_PI'
                  DataSource = DataCadastros1.DsParametros
                  TabOrder = 1
                  OnExit = DBEdtPIExit
                  OnKeyPress = DBEdtPAKeyPress
                end
              end
              object GroupBox35: TGroupBox
                Left = -8
                Top = 338
                Width = 765
                Height = 44
                Caption = 'Custos de Produ'#231#227'o'
                TabOrder = 2
                object Label466: TLabel
                  Left = 12
                  Top = 22
                  Width = 74
                  Height = 14
                  Caption = 'Base do Custo:'
                end
                object RxDBComboBox1: TRxDBComboBox
                  Left = 96
                  Top = 16
                  Width = 297
                  Height = 22
                  DataField = 'PMT_CUSTO_BASE_PRODUCAO'
                  DataSource = DataCadastros1.DsParametros
                  EnableValues = False
                  Items.Strings = (
                    'CL = CUSTO LIQUIDO'
                    'CE = CUSTO ENTRADA'
                    'CM = CUSTO MEDIO'
                    'SI = SEM IMPOSTOS')
                  TabOrder = 0
                  Values.Strings = (
                    'CL'
                    'CE'
                    'CM'
                    'SI')
                end
              end
              object GroupBox26: TGroupBox
                Left = -8
                Top = 291
                Width = 765
                Height = 49
                Caption = 'Endere'#231'o do WebService do Adjutor Produ'#231#227'o'
                TabOrder = 3
                object DBEdit7: TDBEdit
                  Left = 8
                  Top = 19
                  Width = 745
                  Height = 22
                  DataField = 'PMT_PROD_PCP_ENDERECO'
                  DataSource = DataCadastros1.DsParametros
                  TabOrder = 0
                end
              end
              object gbParametros: TGroupBox
                Left = 1
                Top = 381
                Width = 756
                Height = 97
                Caption = 'Par'#226'metro da engenharia de processos '
                TabOrder = 4
                object lbNome1: TLabel
                  Left = 16
                  Top = 18
                  Width = 36
                  Height = 14
                  Caption = 'Nome : '
                end
                object lbNome2: TLabel
                  Left = 16
                  Top = 45
                  Width = 42
                  Height = 14
                  Caption = 'Nome 2: '
                end
                object lbNome3: TLabel
                  Left = 16
                  Top = 71
                  Width = 45
                  Height = 14
                  Caption = 'Nome 3 : '
                end
                object lbNome4: TLabel
                  Left = 211
                  Top = 18
                  Width = 45
                  Height = 14
                  Caption = 'Nome 4 : '
                end
                object lbNome5: TLabel
                  Left = 211
                  Top = 45
                  Width = 45
                  Height = 14
                  Caption = 'Nome 5 : '
                end
                object lbNome6: TLabel
                  Left = 211
                  Top = 71
                  Width = 45
                  Height = 14
                  Caption = 'Nome 6 : '
                end
                object lbNome7: TLabel
                  Left = 411
                  Top = 18
                  Width = 45
                  Height = 14
                  Caption = 'Nome 7 : '
                end
                object lbNome8: TLabel
                  Left = 411
                  Top = 45
                  Width = 45
                  Height = 14
                  Caption = 'Nome 8 : '
                end
                object lbNome9: TLabel
                  Left = 411
                  Top = 71
                  Width = 45
                  Height = 14
                  Caption = 'Nome 9 : '
                end
                object DBEdit47: TDBEdit
                  Left = 58
                  Top = 14
                  Width = 122
                  Height = 22
                  DataField = 'ESP_NOME'
                  DataSource = DataCadastros1.DsParametros
                  TabOrder = 0
                end
                object DBMemo2: TDBMemo
                  Left = 256
                  Top = -128
                  Width = 185
                  Height = 89
                  TabOrder = 9
                end
                object DBEdit48: TDBEdit
                  Left = 58
                  Top = 41
                  Width = 122
                  Height = 22
                  DataField = 'ESP_PADROES'
                  DataSource = DataCadastros1.DsParametros
                  TabOrder = 1
                end
                object DBEdit50: TDBEdit
                  Left = 58
                  Top = 67
                  Width = 122
                  Height = 22
                  DataField = 'ESP_COL1'
                  DataSource = DataCadastros1.DsParametros
                  TabOrder = 2
                end
                object DBEdit51: TDBEdit
                  Left = 253
                  Top = 14
                  Width = 122
                  Height = 22
                  DataField = 'ESP_COL2'
                  DataSource = DataCadastros1.DsParametros
                  TabOrder = 3
                end
                object DBEdit52: TDBEdit
                  Left = 253
                  Top = 41
                  Width = 122
                  Height = 22
                  DataField = 'ESP_COL3'
                  DataSource = DataCadastros1.DsParametros
                  TabOrder = 4
                end
                object DBEdit53: TDBEdit
                  Left = 253
                  Top = 67
                  Width = 122
                  Height = 22
                  DataField = 'ESP_COL4'
                  DataSource = DataCadastros1.DsParametros
                  TabOrder = 5
                end
                object DBEdit54: TDBEdit
                  Left = 453
                  Top = 14
                  Width = 122
                  Height = 22
                  DataField = 'ESP_COL5'
                  DataSource = DataCadastros1.DsParametros
                  TabOrder = 6
                end
                object DBEdit55: TDBEdit
                  Left = 453
                  Top = 41
                  Width = 122
                  Height = 22
                  DataField = 'ESP_COL6'
                  DataSource = DataCadastros1.DsParametros
                  TabOrder = 7
                end
                object DBEdit56: TDBEdit
                  Left = 453
                  Top = 67
                  Width = 122
                  Height = 22
                  DataField = 'ESP_COL7'
                  DataSource = DataCadastros1.DsParametros
                  TabOrder = 8
                end
              end
              object DBCheckBox28: TDBCheckBox
                Left = 10
                Top = 272
                Width = 271
                Height = 17
                Caption = 'Utiliza An'#225'lise de Produ'#231#227'o'
                DataField = 'PMT_UTILIZA_ANALISE_PRODUCAO'
                DataSource = DataCadastros1.DsParametros
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 5
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object GroupBox28: TGroupBox
                Left = 389
                Top = 193
                Width = 368
                Height = 73
                Caption = 'Utilizar N'#186' de Lote na Produ'#231#227'o'
                TabOrder = 6
                object Rad_Lote_Automatico: TRadioButton
                  Left = 8
                  Top = 20
                  Width = 80
                  Height = 17
                  Caption = '&Autom'#225'tico'
                  TabOrder = 0
                  OnClick = Rad_Lote_AutomaticoClick
                end
                object Rad_Lote_Manual: TRadioButton
                  Left = 8
                  Top = 44
                  Width = 80
                  Height = 17
                  Caption = '&Manual'
                  TabOrder = 1
                  OnClick = Rad_Lote_AutomaticoClick
                end
              end
            end
            object tsPcpIndustrial: TTabSheet
              Caption = 'Or'#231'amento Industrial'
              ImageIndex = 1
              ExplicitLeft = 0
              ExplicitTop = 0
              ExplicitWidth = 0
              ExplicitHeight = 0
              object LCAMINHO: TLabel
                Left = 18
                Top = 80
                Width = 324
                Height = 14
                Caption = 
                  'Caminho do pdf e fotos dos relat'#243'rios do pedido de industrializa' +
                  #231#227'o'
              end
              object Label662: TLabel
                Left = 16
                Top = 124
                Width = 115
                Height = 14
                Caption = 'Valor M'#237'nimo do Servi'#231'o'
              end
              object Label670: TLabel
                Left = 22
                Top = 172
                Width = 164
                Height = 14
                Caption = 'Revis'#227'o do Rel. de Acordos Com.:'
              end
              object Label671: TLabel
                Left = 24
                Top = 208
                Width = 232
                Height = 14
                Caption = 'Mensagem do Relat'#243'rio do Or'#231'amento Industrial.'
              end
              object Label673: TLabel
                Left = 24
                Top = 236
                Width = 264
                Height = 14
                Caption = 'Enviar C'#243'pia do Pedido de Industrializa'#231#227'o para o eMail'
              end
              object chkGeraAcordo: TDBCheckBox
                Left = 16
                Top = 24
                Width = 274
                Height = 17
                Caption = 'Gera acordo comercial na aprova'#231#227'o do or'#231'amento'
                DataField = 'PMT_ORC_GERAACORDO'
                DataSource = DataCadastros1.DsParametros
                TabOrder = 0
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object chkGeraPedido: TDBCheckBox
                Left = 16
                Top = 48
                Width = 297
                Height = 17
                Caption = 'Gera pedido na aprova'#231#227'o do or'#231'amento'
                DataField = 'PMT_ORC_GERAPEDIDO'
                DataSource = DataCadastros1.DsParametros
                TabOrder = 1
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object edCaminho_pedidoindustrial: TDBEdit
                Left = 16
                Top = 96
                Width = 441
                Height = 22
                Hint = 'Caminho dos relat'#243'rios do pedido industrial - grava pdf e fotos'
                DataField = 'PMT_CAMINHO_PEDIN'
                DataSource = DataCadastros1.DsParametros
                ParentShowHint = False
                ShowHint = True
                TabOrder = 2
              end
              object edValor_Minimo_do_Servico: TDBEdit
                Left = 16
                Top = 139
                Width = 115
                Height = 22
                Hint = 'Valor m'#237'nimo cobrado pelo servi'#231'o prestado.'
                DataField = 'PMT_VALOR_MINIMO_DO_SERVICO'
                DataSource = DataCadastros1.DsParametros
                ParentShowHint = False
                ShowHint = True
                TabOrder = 3
              end
              object dbRevisaoRelatorio: TDBEdit
                Left = 186
                Top = 169
                Width = 89
                Height = 22
                DataField = 'PMT_REVISAO_RELATORIO'
                DataSource = DataCadastros1.DsParametros
                ParentShowHint = False
                ShowHint = True
                TabOrder = 4
              end
              object PMT_MSG_ORCAMENTO_INDUST: TDBEdit
                Left = 262
                Top = 205
                Width = 441
                Height = 22
                Hint = 'Frase padr'#227'o que fica no relat'#243'rio do Or'#231'amento Industrial'
                DataField = 'PMT_MSG_ORCAMENTO_INDUST'
                DataSource = DataCadastros1.DsParametros
                ParentShowHint = False
                ShowHint = True
                TabOrder = 5
              end
              object PMT_ENVIA_COPIA_PEDIDO_INDUST: TDBEdit
                Left = 24
                Top = 251
                Width = 441
                Height = 22
                Hint = 'Frase padr'#227'o que fica no relat'#243'rio do Or'#231'amento Industrial'
                DataField = 'PMT_ENVIA_COPIA_PEDIDO_INDUST'
                DataSource = DataCadastros1.DsParametros
                ParentShowHint = False
                ShowHint = True
                TabOrder = 6
              end
            end
            object tsPCPNew: TTabSheet
              Caption = 'PCP New'
              ImageIndex = 2
              ExplicitLeft = 0
              ExplicitTop = 0
              ExplicitWidth = 0
              ExplicitHeight = 0
              object Label660: TLabel
                Left = 459
                Top = 130
                Width = 169
                Height = 14
                Caption = 'Modelo de impress'#227'o de produ'#231#227'o:'
              end
              object Label661: TLabel
                Left = 459
                Top = 180
                Width = 205
                Height = 14
                Caption = 'Cliente padr'#227'o. Em produ'#231#227'o sem pedidos:'
              end
              object rdComposOrdem: TDBRadioGroup
                Left = 12
                Top = 33
                Width = 441
                Height = 43
                Hint = 'Como ser'#225' a composi'#231#227'o da ordem'
                Caption = 'Composi'#231#227'o da Ordem'
                Columns = 2
                DataField = 'PMT_COMPOSICAOORDEM'
                DataSource = DataCadastros1.DsParametros
                Items.Strings = (
                  'Mesmo pedido'
                  'Senquencial')
                ParentShowHint = False
                ShowHint = True
                TabOrder = 0
                Values.Strings = (
                  'P'
                  'S')
              end
              object rdEmpenho: TDBRadioGroup
                Left = 12
                Top = 76
                Width = 441
                Height = 75
                Hint = 'Como ser'#225' a composi'#231#227'o da ordem'
                Caption = 'Consumir empenho'
                Columns = 2
                DataField = 'PMT_COMSUMIRINSUMO'
                DataSource = DataCadastros1.DsParametros
                Items.Strings = (
                  'Manual'
                  'Ao Enviar a produ'#231#227'o'
                  'Ao Iniciar a produ'#231#227'o '
                  'Ao fazer o apontamento'
                  'Abrir Requisi'#231#227'o de Material')
                ParentShowHint = False
                ShowHint = True
                TabOrder = 1
                Values.Strings = (
                  'M'
                  'E'
                  'I'
                  'A'
                  'R')
              end
              object CalMateriaPrima: TDBRadioGroup
                Left = 12
                Top = 151
                Width = 441
                Height = 44
                Caption = 'Calcular custo mat'#233'ria-prima'
                Columns = 3
                DataField = 'PMT_CUSTO_MATERIAPRIMA'
                DataSource = DataCadastros1.DsParametros
                Items.Strings = (
                  'Custo L'#237'quido'
                  'Custo de Entrada'
                  'Custo m'#233'dio')
                TabOrder = 2
                Values.Strings = (
                  'L'
                  'E'
                  'M')
              end
              object rdCustoOperacao: TDBRadioGroup
                Left = 12
                Top = 195
                Width = 441
                Height = 65
                Caption = 'Custo opera'#231#227'o'
                DataField = 'PMT_CUSTOOPERACAO'
                DataSource = DataCadastros1.DsParametros
                Items.Strings = (
                  'Tempo padr'#227'o da Opera'#231#227'o X custo/hora opera'#231#227'o'
                  
                    'Tempo padr'#227'o da Opera'#231#227'o X  ( custo/hora opera'#231#227'o + custo/hora c' +
                    'olaborador)')
                TabOrder = 3
                Values.Strings = (
                  '1'
                  '2')
              end
              object rdCustoMaoObra: TDBRadioGroup
                Left = 12
                Top = 260
                Width = 441
                Height = 65
                Caption = 'Custo M'#227'o-de-obra'
                DataField = 'PMT_CUSTOCOLABORADOR'
                DataSource = DataCadastros1.DsParametros
                Items.Strings = (
                  'Tempo padr'#227'o da Opera'#231#227'o X custo/hora colaborador'
                  'Tempo do Apontamento Inicio e Fim  X   custo/hora colaborador')
                TabOrder = 4
                Values.Strings = (
                  '1'
                  '2')
              end
              object rdCustoEquipamento: TDBRadioGroup
                Left = 12
                Top = 325
                Width = 441
                Height = 65
                Caption = 'Custo de equipamento'
                DataField = 'PMT_CUSTOEQUIPAMENTO'
                DataSource = DataCadastros1.DsParametros
                Items.Strings = (
                  'Tempo padr'#227'o da Opera'#231#227'o X custo/hora do Equipamento '
                  
                    'Tempo do Apontamento Inicio e Fim  X   custo/hora do Equipamento' +
                    ' ')
                TabOrder = 5
                Values.Strings = (
                  '1'
                  '2')
              end
              object DBCheckBox61: TDBCheckBox
                Left = 12
                Top = 13
                Width = 98
                Height = 17
                Caption = 'Habilitar MRP I'
                DataField = 'PMT_HABILITAR_MRP'
                DataSource = DataCadastros1.DsParametros
                TabOrder = 6
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox62: TDBCheckBox
                Left = 116
                Top = 13
                Width = 361
                Height = 17
                Hint = 'Gerar subordens'
                Caption = 'Gerar Subordens  ( PI / PA dentro da Principal ) '
                DataField = 'PMT_GERARSUBORDENS'
                DataSource = DataCadastros1.DsParametros
                ParentShowHint = False
                ShowHint = True
                TabOrder = 7
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox64: TDBCheckBox
                Left = 459
                Top = 13
                Width = 320
                Height = 17
                Caption = 'Deixar concluir OP com quantidade maior que a solicitada'
                DataField = 'PMT_PRODUZIR_MAIS_OP'
                DataSource = DataCadastros1.DsParametros
                TabOrder = 8
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox65: TDBCheckBox
                Left = 459
                Top = 36
                Width = 206
                Height = 17
                Caption = 'Concluir OP sem fazer apontamentos'
                DataField = 'PMT_OP_SEMAPONTA'
                DataSource = DataCadastros1.DsParametros
                TabOrder = 9
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox66: TDBCheckBox
                Left = 459
                Top = 59
                Width = 206
                Height = 17
                Caption = 'Autoriza concluir Envase sem estoque'
                DataField = 'PMT_ENVASE_SBAIXA'
                DataSource = DataCadastros1.DsParametros
                TabOrder = 10
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox67: TDBCheckBox
                Left = 373
                Top = 13
                Width = 64
                Height = 17
                Caption = 'Envase'
                DataField = 'PMT_HABILITA_ENVASE'
                DataSource = DataCadastros1.DsParametros
                TabOrder = 11
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object cbModelo: TDBComboBox
                Left = 459
                Top = 150
                Width = 265
                Height = 22
                DataField = 'PMT_REL_ORDEMPRODUCAO'
                DataSource = DataCadastros1.DsParametros
                Items.Strings = (
                  'Modelo 1 - Chemvet'
                  'Modelo 2 - Ind'#250'stria qu'#237'mica com identifica'#231#227'o'
                  'Modelo 3 - Qu'#237'mica Rocha'
                  'Modelo 4 - Ind'#250'stria Qu'#237'mica com densidade'
                  'Modelo 5 - Inquibra'
                  'Modelo 6 - BSC'
                  'Modelo 7 - ArtGrill'
                  'Modelo 8 - Itagrill'
                  'Modelo 9 - Mandibor'
                  'Modelo 10 - Normadin'
                  'Modelo 11 - Ind'#250'stria Pl'#225'stica'
                  'Modelo 12 - L Forja'
                  'Modelo 13 - Arkson')
                TabOrder = 12
              end
              object EdClienteCodigo: TEdit
                Left = 459
                Top = 176
                Width = 45
                Height = 22
                CharCase = ecUpperCase
                Color = clWhite
                MaxLength = 5
                TabOrder = 13
                OnExit = EdClienteCodigoExit
                OnKeyDown = EdClienteCodigoKeyDown
              end
              object edCliente: TSgDbSearchCombo
                Left = 508
                Top = 200
                Width = 189
                Height = 22
                TabOrder = 14
                CharCase = ecUpperCase
                LookupSelect = 
                  't1.cli_valorfrete,t1.cli_valordespesas,t1.cli_codigo,t1.cli_tabp' +
                  'reco,t1.cli_razao,t1.cli_cgc,t1.cli_insc,t2.cid_cidade,t2.cid_es' +
                  'tado,t1.cli_modo_trib_st,cn1.cnae_carga_trib_media,t1.pcx_codigo' +
                  ',t1.cli_consfinal,t1.CLI_REGIME_TRIBUTARIO,t1.OPE_CODIGO,t1.pcl_' +
                  'codigo,t3.pcl_nome,t1.REP_CODIGO,t1.TRP_CODIGO,cli_fone, t1.VEND' +
                  '_INTERNO_CODIGO, FPG_REGISTRO, CLI_FRETE, CLI_CONSU_PROPRIO, cor' +
                  'i_codigo'
                LookupOrderBy = 't1.cli_razao'
                LookupTable = 
                  'cli0000 t1 left join cid0000 t2 on (t2.cid_codigo = t1.cid_codig' +
                  'o) LEFT JOIN cnae CN1 ON (CN1.cnae_registro = t1.cnae_registro) ' +
                  'left join pcl0000 t3 on (t3.pcl_codigo = t1.pcl_codigo)'
                LookupDispl = 'T1.CLI_RAZAO'
                OnButtonClick = edClienteButtonClick
                OnSelect = edClienteSelect
                GridAutoSize = False
                LookupSource = qcli
                DataField = 'PMT_CLIENTE_PRODUCAO'
                DataSource = DataCadastros1.DsParametros
                LookupKeyField = 't1.cli_codigo'
                ShowButton = True
                LookupTableShare = 'CLIENTES'
                GridLeft = 0
                GridWidth = 0
                GridHeight = 100
                GridTop = 0
                GridShowWhenEnter = False
                SelectWithDoubleClick = False
                LimparCampoAoSair = True
              end
              object GroupBox39: TGroupBox
                Left = 459
                Top = 231
                Width = 286
                Height = 73
                Caption = 'Utilizar N'#186' de Lote na Produ'#231#227'o'
                TabOrder = 15
                object Label664: TLabel
                  Left = 91
                  Top = 20
                  Width = 37
                  Height = 14
                  Caption = 'Prefixo:'
                end
                object Label665: TLabel
                  Left = 178
                  Top = 20
                  Width = 34
                  Height = 14
                  Caption = 'N'#186' O.P.'
                end
                object rbLoteAutomatico: TRadioButton
                  Left = 8
                  Top = 20
                  Width = 80
                  Height = 17
                  Caption = '&Autom'#225'tico'
                  TabOrder = 0
                  OnClick = rbLoteAutomaticoClick
                end
                object rbLoteManual: TRadioButton
                  Left = 8
                  Top = 44
                  Width = 80
                  Height = 17
                  Caption = '&Manual'
                  TabOrder = 1
                  OnClick = rbLoteManualClick
                end
                object dbLotePrefixo: TDBEdit
                  Left = 128
                  Top = 17
                  Width = 41
                  Height = 22
                  Hint = 'Prefixo do Lote a ser gerado no modo autom'#225'tico'
                  DataField = 'PMT_LOTE_PREFIXO'
                  DataSource = DataCadastros1.DsParametros
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 2
                end
                object dbLoteSemente: TDBEdit
                  Left = 215
                  Top = 17
                  Width = 50
                  Height = 22
                  Hint = 'N'#250'mero inicial para gera'#231#227'o autom'#225'tica de lotes'
                  DataField = 'PMT_LOTE_SEMENTE'
                  DataSource = DataCadastros1.DsParametros
                  Enabled = False
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 3
                end
              end
              object GroupBox40: TGroupBox
                Left = 456
                Top = 314
                Width = 289
                Height = 73
                Caption = 'Campos Fixos do Relat'#243'dio de OP'
                TabOrder = 16
                object Label667: TLabel
                  Left = 11
                  Top = 43
                  Width = 38
                  Height = 14
                  Caption = 'Linha 2:'
                end
                object Label668: TLabel
                  Left = 143
                  Top = 45
                  Width = 43
                  Height = 14
                  Caption = 'Emiss'#227'o:'
                end
                object dbOSCabecalho: TDBEdit
                  Left = 48
                  Top = 17
                  Width = 225
                  Height = 22
                  DataField = 'PMT_OS_CABECALHO'
                  DataSource = DataCadastros1.DsParametros
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 0
                end
                object dbOSRev: TDBEdit
                  Left = 48
                  Top = 40
                  Width = 89
                  Height = 22
                  DataField = 'PMT_OS_REV'
                  DataSource = DataCadastros1.DsParametros
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 1
                end
                object dbOSDataEmissao: TJvDateEdit
                  Left = 192
                  Top = 41
                  Width = 81
                  Height = 22
                  DateFormat = 'YYYY'
                  ShowNullDate = False
                  YearDigits = dyFour
                  TabOrder = 2
                  OnChange = dbOSDataEmissaoChange
                end
              end
              object DBCheckBox74: TDBCheckBox
                Left = 459
                Top = 82
                Width = 206
                Height = 17
                Caption = 'Autoriza Empenho Sem Estoque'
                DataField = 'PMT_AUTORIZA_EMPENHO'
                DataSource = DataCadastros1.DsParametros
                TabOrder = 17
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object GroupBox41: TGroupBox
                Left = 12
                Top = 390
                Width = 441
                Height = 49
                Caption = 'Pasta que guarda as fotos do produto: ( JPG ou PNG )'
                TabOrder = 19
                object edAbrePastaOP: TDBEdit
                  Left = 5
                  Top = 20
                  Width = 396
                  Height = 22
                  DataField = 'PMT_CAMINHO_IMAGEM_OP'
                  DataSource = DataCadastros1.DsParametros
                  TabOrder = 0
                end
                object btAbrePastaOP: TBitBtn
                  Left = 405
                  Top = 19
                  Width = 30
                  Height = 25
                  Glyph.Data = {
                    36040000424D3604000000000000360000002800000010000000100000000100
                    2000000000000004000000000000000000000000000000000000FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000FF00FF00FF00
                    FF00808080008080800080808000808080008080800080808000808080008080
                    8000808080008080800080808000808080000000000000000000FF00FF00FF00
                    FF0080808000FFFFFF0000FFFF00C0C0C00000FFFF00C0C0C00000FFFF00C0C0
                    C00000FFFF00C0C0C00000FFFF00808080000000000000000000FF00FF008080
                    8000FFFFFF0000FFFF00C0C0C00000FFFF00C0C0C00000FFFF00C0C0C00000FF
                    FF00C0C0C00000FFFF00C0C0C000000000008080800000000000FF00FF008080
                    8000FFFFFF00C0C0C00000FFFF00C0C0C00000FFFF00C0C0C00000FFFF00C0C0
                    C00000FFFF00C0C0C0008080800000000000808080000000000080808000FFFF
                    FF00C0C0C00000FFFF00C0C0C00000FFFF00C0C0C00000FFFF00C0C0C00000FF
                    FF00C0C0C00000FFFF000000000080808000808080000000000080808000FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF008080800000000000C0C0C0008080800000000000808080008080
                    8000808080008080800080808000808080008080800080808000808080008080
                    800080808000808080008080800000FFFF008080800000000000FF00FF008080
                    8000FFFFFF00C0C0C00000FFFF00C0C0C00000FFFF00C0C0C00000FFFF00C0C0
                    C00000FFFF00C0C0C00000FFFF00C0C0C0008080800000000000FF00FF008080
                    8000FFFFFF0000FFFF00C0C0C00000FFFF00C0C0C00000FFFF00C0C0C000FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080800000000000FF00FF008080
                    8000FFFFFF00C0C0C00000FFFF00C0C0C00000FFFF00C0C0C000FFFFFF008080
                    80008080800080808000808080008080800080808000FF00FF00FF00FF00FF00
                    FF0080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0080808000FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF008080800080808000808080008080800080808000FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
                  TabOrder = 1
                  OnClick = btAbrePastaOPClick
                end
              end
              object DBCheckBox95: TDBCheckBox
                Left = 459
                Top = 105
                Width = 206
                Height = 17
                Hint = 'Permite informar o almoxarifado antes de produzir'
                Caption = 'Baixa Estoque Avan'#231'ado.'
                DataField = 'PMT_BAIXA_ESTOQUE_AVANCADO'
                DataSource = DataCadastros1.DsParametros
                ParentShowHint = False
                ShowHint = True
                TabOrder = 18
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
            end
          end
        end
      end
      object TPage
        Left = 0
        Top = 0
        Caption = 'Produto'
        ExplicitWidth = 0
        ExplicitHeight = 0
        object PProduto: TPanel
          Left = 0
          Top = 0
          Width = 767
          Height = 509
          Align = alClient
          TabOrder = 0
          object Label488: TLabel
            Left = 31
            Top = 110
            Width = 157
            Height = 14
            Caption = 'Padr'#227'o de Pesquisa do Produto: '
          end
          object Label491: TLabel
            Left = 31
            Top = 152
            Width = 495
            Height = 42
            Caption = 
              'Cadastro de Produdtos: '#13#10'Padr'#227'o para Refer'#234'ncia do Produto: '#13#10'(E' +
              'x: 000000 - As refer'#234'ncias dos novos produtos ser'#227'o informadas c' +
              'om 6 casas e zeros a esquerda)'
          end
          object Label1: TLabel
            Left = 30
            Top = 258
            Width = 295
            Height = 14
            Caption = 'Varia'#231#227'o % das medidas para pesquisa de produto na venda'
          end
          object Label659: TLabel
            Left = 36
            Top = 320
            Width = 199
            Height = 14
            Caption = 'Diret'#243'rio que guarda as fotos do produto:'
          end
          object GroupBox20: TGroupBox
            Left = 1
            Top = 1
            Width = 765
            Height = 41
            Align = alTop
            Caption = 'C'#243'digo de Barra'
            TabOrder = 0
            object Label22: TLabel
              Left = 229
              Top = 18
              Width = 47
              Height = 14
              Caption = 'EAN Pa'#237's:'
            end
            object Label23: TLabel
              Left = 316
              Top = 18
              Width = 69
              Height = 14
              Caption = 'EAN Empresa:'
            end
            object Label15: TLabel
              Left = 10
              Top = 18
              Width = 176
              Height = 14
              Caption = 'Codigo da Empresa (Nosso codigo) :'
            end
            object DbeEanPais: TDBEdit
              Left = 281
              Top = 14
              Width = 30
              Height = 22
              CharCase = ecUpperCase
              DataField = 'PMT_EANPAIS'
              DataSource = DataCadastros1.DsParametros
              TabOrder = 1
            end
            object DbeEanEmpresa: TDBEdit
              Left = 387
              Top = 14
              Width = 54
              Height = 22
              CharCase = ecUpperCase
              DataField = 'PMT_EANEMPRESA'
              DataSource = DataCadastros1.DsParametros
              TabOrder = 2
            end
            object DBEdit1: TDBEdit
              Left = 183
              Top = 14
              Width = 30
              Height = 22
              DataField = 'PMT_NOSSOCODIGO'
              DataSource = DataCadastros1.DsParametros
              TabOrder = 0
            end
          end
          object DBCheckBox14: TDBCheckBox
            Left = 30
            Top = 45
            Width = 174
            Height = 17
            Caption = 'Habilitar bot'#227'o alterar refer'#234'ncia'
            DataField = 'PMT_BTN_ALT_REFER'
            DataSource = DataCadastros1.DsParametros
            TabOrder = 1
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox40: TDBCheckBox
            Left = 30
            Top = 67
            Width = 247
            Height = 17
            Caption = 'Utiliza C'#243'digo Original na Nota Fiscal (DANFE)'
            DataField = 'PMT_UTILIZA_CODIGO_ORIG_VD_NF'
            DataSource = DataCadastros1.DsParametros
            TabOrder = 2
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object JvDBComboBox1: TJvDBComboBox
            Left = 30
            Top = 124
            Width = 282
            Height = 22
            DataField = 'PMT_PADRAO_PESQUISA_PROD'
            DataSource = DataCadastros1.DsParametros
            Items.Strings = (
              'REFER'#202'NCIA'
              'DESCRI'#199#195'O'
              'C'#211'DIGO ORIGINAL'
              'FORNECEDOR')
            TabOrder = 3
            Values.Strings = (
              'R'
              'D'
              'O'
              'F')
            ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
            ListSettings.OutfilteredValueFont.Color = clRed
            ListSettings.OutfilteredValueFont.Height = -11
            ListSettings.OutfilteredValueFont.Name = 'MS Sans Serif'
            ListSettings.OutfilteredValueFont.Style = []
          end
          object DBEdit34: TDBEdit
            Left = 31
            Top = 196
            Width = 674
            Height = 22
            DataField = 'FMT_PAD_REFER'
            DataSource = DataCadastros1.DsParametros
            TabOrder = 4
          end
          object dbHabilitaMedida: TDBCheckBox
            Left = 33
            Top = 232
            Width = 279
            Height = 17
            Caption = 'Habilitar campos de medidas no cadastro do produto'
            DataField = 'PMT_HABILITA_MEDIDAPRD'
            DataSource = DataCadastros1.DsParametros
            TabOrder = 5
            ValueChecked = 'S'
            ValueUnchecked = 'N'
            OnClick = dbHabilitaMedidaClick
          end
          object DBEdit49: TDBEdit
            Left = 336
            Top = 255
            Width = 121
            Height = 22
            DataField = 'PMT_VARPERC_MEDIDA_PRODUTO'
            DataSource = DataCadastros1.DsParametros
            TabOrder = 6
          end
          object DBCheckBox1: TDBCheckBox
            Left = 30
            Top = 87
            Width = 250
            Height = 17
            Caption = 'Habilitar digita'#231#227'o de c'#243'digo original no Pedido'
            DataField = 'PMT_HABILITAR_CODORIGINAL'
            DataSource = DataCadastros1.DsParametros
            TabOrder = 7
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox48: TDBCheckBox
            Left = 33
            Top = 278
            Width = 656
            Height = 17
            Caption = 
              'N'#227'o permite atualiza'#231#227'o autom'#225'tica do pre'#231'o de venda ao alterar ' +
              'os custos'
            DataField = 'PMT_NAO_AUTO_PVENDA'
            DataSource = DataCadastros1.DsParametros
            TabOrder = 8
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object chkTratamentoTermico: TDBCheckBox
            Left = 34
            Top = 298
            Width = 656
            Height = 17
            Caption = 'Habilita campos tratamento t'#233'rmico'
            DataField = 'PMT_HAB_TERMICO'
            DataSource = DataCadastros1.DsParametros
            TabOrder = 9
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBEdit58: TDBEdit
            Left = 33
            Top = 338
            Width = 433
            Height = 22
            DataField = 'pmt_CaminhoFoto'
            DataSource = DataCadastros1.DsParametros
            TabOrder = 10
          end
          object ChkMultiplicador: TDBCheckBox
            Left = 33
            Top = 366
            Width = 656
            Height = 17
            Caption = 'Habilitar multiplicador P'
            DataField = 'PMT_MULTIPLICADOR_P'
            DataSource = DataCadastros1.DsParametros
            TabOrder = 11
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object gbMedidaProduto: TGroupBox
            Left = 30
            Top = 389
            Width = 489
            Height = 57
            Caption = 'Descri'#231#227'o dos campos de medidas no cadastro do produto'
            TabOrder = 12
            object DBEdit60: TDBEdit
              Left = 6
              Top = 19
              Width = 107
              Height = 22
              DataField = 'PMT_HABILITA_MEDIDAPRD_DESC1'
              DataSource = DataCadastros1.DsParametros
              TabOrder = 0
            end
            object DBEdit61: TDBEdit
              Left = 119
              Top = 19
              Width = 107
              Height = 22
              DataField = 'PMT_HABILITA_MEDIDAPRD_DESC2'
              DataSource = DataCadastros1.DsParametros
              TabOrder = 1
            end
            object DBEdit62: TDBEdit
              Left = 232
              Top = 19
              Width = 107
              Height = 22
              DataField = 'PMT_HABILITA_MEDIDAPRD_DESC3'
              DataSource = DataCadastros1.DsParametros
              TabOrder = 2
            end
            object DBEdit63: TDBEdit
              Left = 345
              Top = 19
              Width = 107
              Height = 22
              DataField = 'PMT_HABILITA_MEDIDAPRD_DESC4'
              DataSource = DataCadastros1.DsParametros
              TabOrder = 3
            end
          end
          object DBCheckBox85: TDBCheckBox
            Left = 375
            Top = 45
            Width = 226
            Height = 17
            Hint = 
              'Permite fazer lan'#231'amento na ficha t'#233'cnica em percentual de consu' +
              'mo por mat'#233'ria-prima'
            Caption = 'Lan'#231'amento em percentual de consumo'
            DataField = 'PMT_LANCA_PERC_MATERIA_PRIMA'
            DataSource = DataCadastros1.DsParametros
            ParentShowHint = False
            ShowHint = True
            TabOrder = 13
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox31: TDBCheckBox
            Left = 375
            Top = 67
            Width = 186
            Height = 17
            Caption = 'Utiliza C'#243'digo Original no Pedido'
            DataField = 'PMT_UTILIZA_CODIGO_ORIG_VD_PD'
            DataSource = DataCadastros1.DsParametros
            TabOrder = 14
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
        end
      end
      object TPage
        Left = 0
        Top = 0
        Caption = 'OrdemCompra'
        ExplicitWidth = 0
        ExplicitHeight = 0
        object POrdemCompra: TPanel
          Left = 0
          Top = 0
          Width = 767
          Height = 509
          Align = alClient
          TabOrder = 0
          object Label617: TLabel
            Left = 5
            Top = 13
            Width = 200
            Height = 14
            Caption = 'Qtde casas decimais Ordem de Compras:'
          end
          object DBEdit20: TDBEdit
            Left = 209
            Top = 8
            Width = 30
            Height = 22
            DataField = 'PMT_QTDE_DEC_OCP'
            DataSource = DataCadastros1.DsParametros
            TabOrder = 0
            OnExit = DBEdit16Exit
          end
          object GroupBox31: TGroupBox
            Left = 8
            Top = 48
            Width = 753
            Height = 105
            Caption = 'Observa'#231#227'o Padr'#227'o no Pedido de Compra'
            TabOrder = 1
            object DBMemo1: TDBMemo
              Left = 2
              Top = 16
              Width = 749
              Height = 87
              Align = alClient
              DataField = 'PMT_PEDIDO_COMPRA_MSG'
              DataSource = DataCadastros1.DsParametros
              TabOrder = 0
            end
          end
          object GroupBox37: TGroupBox
            Left = 10
            Top = 160
            Width = 749
            Height = 97
            Caption = ' Impress'#227'o do pedido de compra '
            TabOrder = 2
            object DBCheckBox54: TDBCheckBox
              Left = 16
              Top = 32
              Width = 353
              Height = 17
              Caption = 'Com o c'#243'digo do fornecedor'
              DataField = 'PMT_ORDEM_CODFORN'
              DataSource = DataCadastros1.DsParametros
              TabOrder = 0
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox55: TDBCheckBox
              Left = 16
              Top = 64
              Width = 473
              Height = 17
              Caption = 'Com a descri'#231#227'o do fornecedor'
              DataField = 'PMT_ORDEM_DESCFORN'
              DataSource = DataCadastros1.DsParametros
              TabOrder = 1
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
          end
          object DBEdit59: TDBEdit
            Left = 244
            Top = 269
            Width = 76
            Height = 22
            DataField = 'PMT_PRD_REFER_SCO_REFER'
            DataSource = DataCadastros1.DsParametros
            TabOrder = 3
          end
        end
      end
      object TPage
        Left = 0
        Top = 0
        Caption = 'Fiscal'
        object PFiscal: TPanel
          Left = 0
          Top = 0
          Width = 767
          Height = 509
          Align = alClient
          TabOrder = 0
          object Label490: TLabel
            Left = 26
            Top = 157
            Width = 81
            Height = 14
            Alignment = taRightJustify
            Caption = 'CST PIS/COFINS:'
          end
          object GroupBox33: TGroupBox
            Left = 26
            Top = 23
            Width = 384
            Height = 125
            Caption = 'Aliquotas PIS / COFINS - p/ Entrada de Notas manual'
            TabOrder = 0
            object Label640: TLabel
              Left = 45
              Top = 22
              Width = 166
              Height = 14
              Caption = 'Aliquota do PIS - Lucro Presumido:'
            end
            object Label641: TLabel
              Left = 71
              Top = 46
              Width = 137
              Height = 14
              Caption = 'Aliquota do PIS - Lucro Real:'
            end
            object Label642: TLabel
              Left = 23
              Top = 70
              Width = 188
              Height = 14
              Caption = 'Aliquota do COFINS - Lucro Presumido:'
            end
            object Label643: TLabel
              Left = 50
              Top = 95
              Width = 159
              Height = 14
              Caption = 'Aliquota do COFINS - Lucro Real:'
            end
            object Label645: TLabel
              Left = 246
              Top = 21
              Width = 10
              Height = 14
              Caption = '%'
            end
            object Label646: TLabel
              Left = 247
              Top = 46
              Width = 10
              Height = 14
              Caption = '%'
            end
            object Label647: TLabel
              Left = 247
              Top = 70
              Width = 10
              Height = 14
              Caption = '%'
            end
            object Label648: TLabel
              Left = 247
              Top = 96
              Width = 10
              Height = 14
              Caption = '%'
            end
            object DBEdit28: TDBEdit
              Left = 211
              Top = 17
              Width = 33
              Height = 22
              DataField = 'PMT_PIS_ALIQ_PRESUMIDO'
              DataSource = DataCadastros1.DsParametros
              TabOrder = 0
            end
            object DBEdit29: TDBEdit
              Left = 211
              Top = 42
              Width = 33
              Height = 22
              DataField = 'PMT_PIS_ALIQ_REAL'
              DataSource = DataCadastros1.DsParametros
              TabOrder = 1
            end
            object DBEdit30: TDBEdit
              Left = 211
              Top = 66
              Width = 33
              Height = 22
              DataField = 'PMT_COFINS_ALIQ_PRESUMIDO'
              DataSource = DataCadastros1.DsParametros
              TabOrder = 2
            end
            object DBEdit31: TDBEdit
              Left = 211
              Top = 91
              Width = 33
              Height = 22
              DataField = 'PMT_COFINS_ALIQ_REAL'
              DataSource = DataCadastros1.DsParametros
              TabOrder = 3
            end
          end
          object DBEdit33: TDBEdit
            Left = 113
            Top = 154
            Width = 33
            Height = 22
            DataField = 'PMT_CSTPISCOFINS'
            DataSource = DataCadastros1.DsParametros
            TabOrder = 1
          end
          object SgDbSearchCombo1: TSgDbSearchCombo
            Left = 152
            Top = 154
            Width = 242
            Height = 22
            TabOrder = 2
            LookupSelect = 'CST,DESCRICAO'
            LookupOrderBy = 'CST'
            LookupTable = 'CSTPISCOFINS'
            LookupDispl = 'DESCRICAO'
            GridAutoSize = False
            LookupSource = qCstPC
            DataField = 'PMT_CSTPISCOFINS'
            DataSource = DataCadastros1.DsParametros
            LookupKeyField = 'CST'
            ShowButton = True
            AutoF8WinTitulo = 'CST - PIS E COFINS'
            AutoF8ColumnsTitulo = 'CST, Descri'#231#227'o'
            GridLeft = 0
            GridWidth = 0
            GridHeight = 100
            GridTop = 0
            GridShowWhenEnter = False
            SelectWithDoubleClick = False
            LimparCampoAoSair = True
          end
        end
      end
      object TPage
        Left = 0
        Top = 0
        Caption = 'Sintegra'
        ExplicitWidth = 0
        ExplicitHeight = 0
        object PSintegra: TPanel
          Left = 0
          Top = 0
          Width = 767
          Height = 509
          Align = alClient
          TabOrder = 0
          object GroupBox2: TGroupBox
            Left = 441
            Top = 228
            Width = 158
            Height = 101
            Caption = 'Nota fiscal Sa'#237'da'
            TabOrder = 0
            object Label26: TLabel
              Left = 18
              Top = 25
              Width = 40
              Height = 14
              Caption = 'Modelo :'
            end
            object Label27: TLabel
              Left = 28
              Top = 47
              Width = 31
              Height = 14
              Caption = 'S'#233'rie :'
            end
            object Label28: TLabel
              Left = 11
              Top = 68
              Width = 49
              Height = 14
              Caption = 'Subs'#233'rie :'
            end
            object DBEdit8: TDBEdit
              Left = 61
              Top = 22
              Width = 30
              Height = 22
              CharCase = ecUpperCase
              DataField = 'SIN_MODE_NF'
              DataSource = DataCadastros1.DsParametros
              TabOrder = 0
            end
            object DBEdit9: TDBEdit
              Left = 61
              Top = 43
              Width = 30
              Height = 22
              CharCase = ecUpperCase
              DataField = 'SIN_SERIE_NF'
              DataSource = DataCadastros1.DsParametros
              TabOrder = 1
            end
            object DBEdit10: TDBEdit
              Left = 61
              Top = 64
              Width = 30
              Height = 22
              CharCase = ecUpperCase
              DataField = 'SIN_SUBSERIE'
              DataSource = DataCadastros1.DsParametros
              TabOrder = 2
            end
          end
          object GroupBox15: TGroupBox
            Left = 606
            Top = 226
            Width = 158
            Height = 101
            Caption = 'Nota fiscal Transporte'
            TabOrder = 1
            object Label618: TLabel
              Left = 18
              Top = 25
              Width = 40
              Height = 14
              Caption = 'Modelo :'
            end
            object Label619: TLabel
              Left = 28
              Top = 47
              Width = 31
              Height = 14
              Caption = 'S'#233'rie :'
            end
            object Label620: TLabel
              Left = 11
              Top = 68
              Width = 49
              Height = 14
              Caption = 'Subs'#233'rie :'
            end
            object DBEdit21: TDBEdit
              Left = 61
              Top = 22
              Width = 30
              Height = 22
              CharCase = ecUpperCase
              DataField = 'SIN_MODE_ENF'
              DataSource = DataCadastros1.DsParametros
              TabOrder = 0
            end
            object DBEdit22: TDBEdit
              Left = 61
              Top = 43
              Width = 30
              Height = 22
              CharCase = ecUpperCase
              DataField = 'SIN_SERIE_ENF'
              DataSource = DataCadastros1.DsParametros
              TabOrder = 1
            end
            object DBEdit23: TDBEdit
              Left = 61
              Top = 64
              Width = 30
              Height = 22
              CharCase = ecUpperCase
              DataField = 'SIN_SUBSERIE_ENF'
              DataSource = DataCadastros1.DsParametros
              TabOrder = 2
            end
          end
          object GroupBox4: TGroupBox
            Left = 441
            Top = 329
            Width = 323
            Height = 49
            Caption = 'Contato:'
            TabOrder = 2
            object DbeContato: TDBEdit
              Left = 5
              Top = 18
              Width = 308
              Height = 22
              CharCase = ecUpperCase
              DataField = 'SIN_CONTATO'
              DataSource = DataCadastros1.DsParametros
              TabOrder = 0
            end
          end
          object DBRadioGroup3: TDBRadioGroup
            Left = 2
            Top = 228
            Width = 435
            Height = 150
            Caption = 'Finalidade da Apresenta'#231#227'o do Arquivo'
            DataField = 'SIN_COD_FINALID'
            DataSource = DataCadastros1.DsParametros
            Items.Strings = (
              '1 - Normal'
              '2 - Retifica'#231#227'o total do arquivo'
              '3 - Retifica'#231#227'o aditiva de arquivo'
              '4 - Retifica'#231#227'o corretiva de arquivo'
              '5 - Desfazimento')
            TabOrder = 3
            Values.Strings = (
              '1'
              '2'
              '3'
              '4'
              '5')
          end
          object DBRadioGroup2: TDBRadioGroup
            Left = 1
            Top = 137
            Width = 765
            Height = 88
            Align = alTop
            Caption = 'C'#243'digo de Identifica'#231#227'o da Natureza das Opera'#231#245'es Informadas'
            DataField = 'SIN_COD_IDENTIF'
            DataSource = DataCadastros1.DsParametros
            Items.Strings = (
              
                '1 - Interestaduais somente opera'#231#245'es sujeitas a regime de Subs.T' +
                'ribut'#225'ria'
              
                '2 - Interestaduais - opera'#231#245'es com ou sem Substitui'#231#227'o Tribut'#225'ri' +
                'a'
              '3 - Totalidade das opera'#231#245'es do informante')
            TabOrder = 4
            Values.Strings = (
              '1'
              '2'
              '3')
          end
          object GroupBox25: TGroupBox
            Left = 1
            Top = 1
            Width = 765
            Height = 136
            Align = alTop
            Caption = 'Identifica'#231#227'o da Estrutura do Arquivo Magn'#233'tico'
            TabOrder = 5
            object Label479: TLabel
              Left = 42
              Top = 38
              Width = 283
              Height = 14
              Caption = 'com as altera'#231#245'es promovidas at'#233' o Conv'#234'nio ICMS 30/02.'
            end
            object Label480: TLabel
              Left = 43
              Top = 75
              Width = 270
              Height = 14
              Caption = 'com altera'#231#245'es promovidas pelo Conv'#234'nio ICMS 142/02.'
            end
            object Rad_1: TRadioButton
              Left = 8
              Top = 22
              Width = 505
              Height = 17
              Caption = 
                '1 - Estrutura conforme Conv'#234'nio ICMS 57/95, na vers'#227'o estabeleci' +
                'da pelo Conv'#234'nio ICMS 31/98 e '
              TabOrder = 0
              OnEnter = Rad_1Enter
            end
            object Rad_2: TRadioButton
              Left = 8
              Top = 59
              Width = 497
              Height = 17
              Caption = 
                '2 - Estrutura conforme Conv'#234'nio ICMS 57/95, na vers'#227'o estabeleci' +
                'da pelo Conv'#234'nio ICMS 69/02 e '
              TabOrder = 1
              OnEnter = Rad_2Enter
            end
            object Rad_3: TRadioButton
              Left = 8
              Top = 100
              Width = 518
              Height = 17
              Caption = 
                '3 - Estrutura conforme Conv'#234'nio ICMS 57/95, com as altera'#231#245'es pr' +
                'omovidas pelo Conv'#234'nio ICMS 76/03.'
              TabOrder = 2
              OnEnter = Rad_3Enter
            end
          end
        end
      end
      object TPage
        Left = 0
        Top = 0
        Caption = 'Expedicao'
        ExplicitWidth = 0
        ExplicitHeight = 0
        object PEXPEDICAO: TPanel
          Left = 0
          Top = 0
          Width = 767
          Height = 509
          Align = alClient
          TabOrder = 0
          object DBRadioGroup13: TDBRadioGroup
            Left = 5
            Top = 12
            Width = 300
            Height = 44
            Caption = 'Liberar Expedi'#231#227'o'
            Columns = 2
            DataField = 'PMT_LIBERAR_EXPEDICAO'
            DataSource = DataCadastros1.DsParametros
            Items.Strings = (
              'pelo pedido'
              'pelo Faturamento')
            TabOrder = 0
            Values.Strings = (
              'P'
              'F')
          end
          object DBCheckBox56: TDBCheckBox
            Left = 8
            Top = 64
            Width = 407
            Height = 18
            Caption = 'Expedi'#231#227'o multiempresas'
            DataField = 'PMT_EXPEDICAO_MULTIEMPRESA'
            DataSource = DataCadastros1.DsParametros
            TabOrder = 1
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
        end
      end
      object TPage
        Left = 0
        Top = 0
        Caption = 'Faturamento'
        ExplicitWidth = 0
        ExplicitHeight = 0
        object PFaturamento: TPanel
          Left = 0
          Top = 0
          Width = 767
          Height = 509
          Align = alClient
          TabOrder = 0
          object GroupBox1: TGroupBox
            Left = 1
            Top = 1
            Width = 765
            Height = 80
            Align = alTop
            Caption = 'Padr'#227'o de Cobran'#231'a no Faturamento'
            TabOrder = 0
            object Label17: TLabel
              Left = 148
              Top = 26
              Width = 205
              Height = 14
              Caption = 'C'#243'digo do Banco no Cadastro de Bancos :'
            end
            object Label477: TLabel
              Left = 7
              Top = 50
              Width = 50
              Height = 14
              Caption = 'Cobran'#231'a:'
            end
            object Label478: TLabel
              Left = 401
              Top = 50
              Width = 45
              Height = 14
              Caption = 'Tipo Doc:'
            end
            object DBEDIT_COD_CARTEIRA: TDBEdit
              Left = 355
              Top = 22
              Width = 37
              Height = 22
              CharCase = ecUpperCase
              DataField = 'PMT_COD_CARTEIRA'
              DataSource = DataCadastros1.DsParametros
              TabOrder = 0
              OnExit = DBEDIT_COD_CARTEIRAExit
              OnKeyPress = DBEDIT_COD_CARTEIRAKeyPress
            end
            object CbxCarteira: TComboBox
              Left = 57
              Top = 48
              Width = 336
              Height = 22
              Style = csDropDownList
              CharCase = ecUpperCase
              TabOrder = 1
              OnChange = CbxCarteiraChange
              Items.Strings = (
                ''
                'CARTEIRA'
                'COBRAN'#199'A SIMPLES'
                'COBRAN'#199'A CAUCIONADA'
                'COBRAN'#199'A DESCONTADA'
                'COBRAN'#199'A SEM REGISTRO'
                'COBRAN'#199'A RAPIDA')
            end
            object CbxTipoDoc: TComboBox
              Left = 449
              Top = 48
              Width = 304
              Height = 22
              Style = csDropDownList
              TabOrder = 2
              OnChange = CbxTipoDocChange
              Items.Strings = (
                ''
                'DUPLICATA'
                'BOLETO'
                'RECIBO'
                'CHEQUE'
                'DINHEIRO'
                'OUTROS'
                'CREDITO CONTA')
            end
          end
          object DBCheckBox2: TDBCheckBox
            Left = 10
            Top = 89
            Width = 347
            Height = 18
            Caption = 'Incluir valor total do IPI na primeira parcela do faturamento'
            DataField = 'PMT_DPL_IPI_NA1D'
            DataSource = DataCadastros1.DsParametros
            TabOrder = 1
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object dbchkPMT_FAT_MSG_PEDIDO_VEND: TDBCheckBox
            Left = 10
            Top = 125
            Width = 407
            Height = 18
            Caption = 
              'Incluir N'#250'mero do Pedido e Vendedor nas informa'#231#245'es Complementar' +
              'es '
            DataField = 'PMT_FAT_MSG_PEDIDO_VEND'
            DataSource = DataCadastros1.DsParametros
            TabOrder = 3
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox38: TDBCheckBox
            Left = 10
            Top = 106
            Width = 347
            Height = 18
            Caption = 'Incluir valor total do ST na primeira parcela do faturamento'
            DataField = 'PMT_DPL_ST_NA1D'
            DataSource = DataCadastros1.DsParametros
            TabOrder = 2
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox41: TDBCheckBox
            Left = 10
            Top = 143
            Width = 407
            Height = 18
            Caption = 'Mostra mensagem para confirmar n'#250'mero de parcelas'
            DataField = 'PMT_FAT_CONFIRMA_PARCELA'
            DataSource = DataCadastros1.DsParametros
            TabOrder = 4
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox45: TDBCheckBox
            Left = 10
            Top = 163
            Width = 711
            Height = 18
            Caption = 
              'Inserir na Nota Fiscal Mensagem Sobre os Valores Impostos Cnf.Le' +
              'i Estadual:17127/2012-PR (Clientes no Estado do Paran'#225' Somente)'
            DataField = 'pmt_exibirmesimpostosparana'
            DataSource = DataCadastros1.DsParametros
            TabOrder = 5
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox36: TDBCheckBox
            Left = 11
            Top = 182
            Width = 407
            Height = 18
            Caption = 'Faturar quantidade total mesmo com itens pendentes'
            DataField = 'PMT_FATURAR_PENDENCIAS'
            DataSource = DataCadastros1.DsParametros
            TabOrder = 6
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object rgLiberarFatura: TDBRadioGroup
            Left = 16
            Top = 208
            Width = 264
            Height = 57
            Caption = 'Liberar pedido para Faturamento'
            Columns = 2
            DataField = 'PMT_LIBERAR_FATURA'
            DataSource = DataCadastros1.DsParametros
            Items.Strings = (
              'Autom'#225'tico'
              'Manual ')
            TabOrder = 7
            Values.Strings = (
              'A'
              'M')
          end
          object DBCheckBox57: TDBCheckBox
            Left = 17
            Top = 271
            Width = 407
            Height = 18
            Caption = 'Faturamento multiempresa'
            DataField = 'PMT_FATURA_MULTIEMPRESA'
            DataSource = DataCadastros1.DsParametros
            TabOrder = 8
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox69: TDBCheckBox
            Left = 17
            Top = 295
            Width = 407
            Height = 18
            Caption = 'Desabilitar integra'#231#227'o de faturas'
            DataField = 'PMT_INTEGRAR_PRD_SERV'
            DataSource = DataCadastros1.DsParametros
            TabOrder = 9
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
        end
      end
      object TPage
        Left = 0
        Top = 0
        Caption = 'NotaFiscal'
        ExplicitWidth = 0
        ExplicitHeight = 0
        object PNotaFiscal: TPanel
          Left = 0
          Top = 0
          Width = 767
          Height = 509
          Align = alClient
          TabOrder = 0
          object pcNotaFiscal: TPageControl
            Left = 1
            Top = 1
            Width = 765
            Height = 507
            ActivePage = TabSheet4
            Align = alClient
            TabOrder = 0
            object tsEntrada: TTabSheet
              Caption = 'Entrada'
              ExplicitLeft = 0
              ExplicitTop = 0
              ExplicitWidth = 0
              ExplicitHeight = 0
              object Label616: TLabel
                Left = 12
                Top = 12
                Width = 212
                Height = 14
                Caption = 'Qtde casas decimais entrada da nota fiscal:'
              end
              object DBCheckBox23: TDBCheckBox
                Left = 12
                Top = 38
                Width = 245
                Height = 17
                Caption = 'Retirar Valor do ICMS do produto - Entrada NF'
                DataField = 'PMT_RETIRA_VLR_ICMS_NF_E'
                DataSource = DataCadastros1.DsParametros
                TabOrder = 0
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox20: TDBCheckBox
                Left = 12
                Top = 54
                Width = 208
                Height = 17
                Caption = 'Habilitar bot'#227'o alterar IPI Entradas NFs.'
                DataField = 'PMT_BTN_ALT_IPI_ENF'
                DataSource = DataCadastros1.DsParametros
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox79: TDBCheckBox
                Left = 12
                Top = 87
                Width = 369
                Height = 17
                Caption = 'Ativar Vincula'#231#227'o da CFOP para retorno (Entrada de Nota Fiscal)'
                DataField = 'PMT_NAT_OPER_RETORNO'
                DataSource = DataCadastros1.DsParametros
                TabOrder = 2
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox82: TDBCheckBox
                Left = 12
                Top = 71
                Width = 369
                Height = 17
                Caption = 'Ativar Campo Industrializa'#231#227'o (Entrada de Nota Fiscal)'
                DataField = 'PMT_ENF_CHK_INDUSTRIALIZACAO'
                DataSource = DataCadastros1.DsParametros
                TabOrder = 3
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox81: TDBCheckBox
                Left = 12
                Top = 104
                Width = 369
                Height = 17
                Hint = 
                  #39'Adicionar Centro de Custo no Item da Entrada de Notas Fiscais p' +
                  'or XML'
                Caption = 
                  'Adicionar Centro de Custo no Item da Entrada de Notas Fiscais po' +
                  'r XML'
                DataField = 'PMT_CENTRO_CUSTO_ENF'
                DataSource = DataCadastros1.DsParametros
                ParentShowHint = False
                ShowHint = True
                TabOrder = 4
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBEdit19: TDBEdit
                Left = 214
                Top = 8
                Width = 30
                Height = 22
                DataField = 'PMT_QTDE_DEC_ENF'
                DataSource = DataCadastros1.DsParametros
                TabOrder = 5
                OnExit = DBEdit16Exit
              end
            end
            object tsSaida: TTabSheet
              Caption = 'Sa'#237'da'
              ImageIndex = 1
              ExplicitLeft = 0
              ExplicitTop = 0
              ExplicitWidth = 0
              ExplicitHeight = 0
              object Label13: TLabel
                Left = 10
                Top = 14
                Width = 182
                Height = 14
                Caption = 'Qtde casas decimais p/ QTDE na N.F.:'
              end
              object Label25: TLabel
                Left = 529
                Top = 13
                Width = 106
                Height = 14
                Caption = 'Marca Padr'#227'o na N.F.:'
              end
              object Label12: TLabel
                Left = 8
                Top = 36
                Width = 101
                Height = 14
                Caption = 'Mensagem Padr'#227'o 1:'
              end
              object Label14: TLabel
                Left = 6
                Top = 61
                Width = 101
                Height = 14
                Caption = 'Mensagem Padr'#227'o 2:'
              end
              object Label627: TLabel
                Left = 6
                Top = 84
                Width = 101
                Height = 14
                Caption = 'Mensagem Padr'#227'o 3:'
              end
              object Label672: TLabel
                Left = 296
                Top = 12
                Width = 114
                Height = 14
                Caption = 'Esp'#233'cie Padr'#227'o na N.F.:'
              end
              object Label_669: TLabel
                Left = 10
                Top = 371
                Width = 101
                Height = 14
                Caption = 'Descri'#231#227'o 99 outros:'
              end
              object DbeQtde_Decimais: TDBEdit
                Left = 196
                Top = 9
                Width = 33
                Height = 22
                DataField = 'PMT_QTDE_DECIMAIS'
                DataSource = DataCadastros1.DsParametros
                TabOrder = 0
              end
              object DbeMarca: TDBEdit
                Left = 636
                Top = 9
                Width = 112
                Height = 22
                CharCase = ecUpperCase
                DataField = 'PMT_NF_MARCA'
                DataSource = DataCadastros1.DsParametros
                TabOrder = 1
              end
              object DBEdtPMT_MENSAGEM1: TDBEdit
                Left = 111
                Top = 32
                Width = 637
                Height = 22
                CharCase = ecUpperCase
                DataField = 'PMT_MENSAGEM1'
                DataSource = DataCadastros1.DsParametros
                TabOrder = 2
              end
              object DBEdtPMT_MENSAGEM2: TDBEdit
                Left = 111
                Top = 56
                Width = 637
                Height = 22
                CharCase = ecUpperCase
                DataField = 'PMT_MENSAGEM2'
                DataSource = DataCadastros1.DsParametros
                TabOrder = 3
              end
              object DBEdtPMT_MENSAGEM3: TDBEdit
                Left = 111
                Top = 81
                Width = 637
                Height = 22
                CharCase = ecUpperCase
                DataField = 'PMT_MENSAGEM3'
                DataSource = DataCadastros1.DsParametros
                TabOrder = 4
              end
              object DBCheckBox19: TDBCheckBox
                Left = 111
                Top = 122
                Width = 173
                Height = 17
                Caption = 'Imprimir Varia'#231#227'o na Nota Fiscal'
                DataField = 'PMT_VAR_NOTA'
                DataSource = DataCadastros1.DsParametros
                TabOrder = 5
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox11: TDBCheckBox
                Left = 111
                Top = 106
                Width = 162
                Height = 17
                Caption = 'Imprimir Complemento na N.F.'
                DataField = 'PMT_COMPLTO_NF'
                DataSource = DataCadastros1.DsParametros
                TabOrder = 6
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBEdit64: TDBEdit
                Left = 407
                Top = 8
                Width = 112
                Height = 22
                CharCase = ecUpperCase
                DataField = 'PMT_NF_ESPECIE'
                DataSource = DataCadastros1.DsParametros
                TabOrder = 7
              end
              object DBCheckBox50: TDBCheckBox
                Left = 111
                Top = 153
                Width = 369
                Height = 17
                Caption = 'Tributar Impostos Aproximados pelo imposto da empresa'
                DataField = 'PMT_TRIB_NF'
                DataSource = DataCadastros1.DsParametros
                TabOrder = 8
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox29: TDBCheckBox
                Left = 111
                Top = 138
                Width = 369
                Height = 17
                Caption = 
                  'Habilitar Complemento de Descri'#231#227'o do Item do Pedido para Nota F' +
                  'iscal'
                DataField = 'PMT_COMP_ITEM_PEDIDO_IT_NF'
                DataSource = DataCadastros1.DsParametros
                TabOrder = 9
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox80: TDBCheckBox
                Left = 111
                Top = 168
                Width = 369
                Height = 17
                Hint = 
                  'Ser'#225' utilizada a refer'#234'ncia e descri'#231#227'o do item de entrado pela ' +
                  'nota fiscal de entrada'
                Caption = 
                  'Ativar Refer'#234'ncia e Descri'#231#227'o Original para Remessa de Industria' +
                  'liza'#231#227'o'
                DataField = 'PMT_DESC_ORIGINAL_INDUST'
                DataSource = DataCadastros1.DsParametros
                ParentShowHint = False
                ShowHint = True
                TabOrder = 10
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox83: TDBCheckBox
                Left = 111
                Top = 185
                Width = 369
                Height = 17
                Hint = 
                  'Ser'#225' utilizada a refer'#234'ncia e descri'#231#227'o do item de entrado pela ' +
                  'nota fiscal de entrada'
                Caption = 'Vincula Nota Fiscal ao Item de Retorno'
                DataField = 'PMT_VINC_NF_ITEM_RETORNO'
                DataSource = DataCadastros1.DsParametros
                ParentShowHint = False
                ShowHint = True
                TabOrder = 11
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object dbrgrpValorAproximado: TDBRadioGroup
                Left = 469
                Top = 343
                Width = 238
                Height = 81
                Caption = 'Valor Aproximado dos Tributos - NFe'
                DataField = 'PMT_VALOR_APROX_TRIB'
                DataSource = DataCadastros1.DsParametros
                Items.Strings = (
                  'Todos'
                  'Apenas Consumidor Final')
                TabOrder = 12
                Values.Strings = (
                  'T'
                  'C')
              end
              object GroupBox38: TGroupBox
                Left = 111
                Top = 204
                Width = 619
                Height = 61
                Caption = 
                  'Controle de N'#250'mero de Notas: ( Use somente se deseja numera'#231#227'o '#250 +
                  'nica da NFe/NFe SCAN para todas as empresas )'
                TabOrder = 13
                object Label489: TLabel
                  Left = 32
                  Top = 36
                  Width = 342
                  Height = 14
                  Caption = '* A Sequ'#234'ncia v'#225'lida ser'#225' sempre a sequ'#234'ncia da Empresa 001'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object DBCheckBox44: TDBCheckBox
                  Left = 31
                  Top = 16
                  Width = 333
                  Height = 17
                  Caption = 'Quero usar sequ'#234'ncia '#250'nica de NFe para todas as empresas'
                  DataField = 'PMT_USAR_SEQUENCIA_NFE_UNICA'
                  DataSource = DataCadastros1.DsParametros
                  TabOrder = 0
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                  OnExit = DBCheckBox44Exit
                end
              end
              object DBCheckBox49: TDBCheckBox
                Left = 122
                Top = 297
                Width = 200
                Height = 17
                Caption = 'Incluir tag respons'#225'vel t'#233'cnico'
                DataField = 'PMT_RESPONSAVEL_TECNICO'
                DataSource = DataCadastros1.DsParametros
                TabOrder = 14
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBCheckBox59: TDBCheckBox
                Left = 122
                Top = 320
                Width = 450
                Height = 17
                Caption = 
                  'Retirar ICMS da base de calculo do PISe COFINS de acordo com a s' +
                  'enten'#231'a STF'
                DataField = 'PMT_RETIRAR_ICMS_BASECOFINSPIS'
                DataSource = DataCadastros1.DsParametros
                TabOrder = 15
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object PMT_DESCRICAO_99_OUTROS: TDBEdit
                Left = 122
                Top = 363
                Width = 303
                Height = 22
                CharCase = ecUpperCase
                DataField = 'PMT_DESCRICAO_99_OUTROS'
                DataSource = DataCadastros1.DsParametros
                TabOrder = 16
              end
              object DBCheckBox76: TDBCheckBox
                Left = 122
                Top = 340
                Width = 178
                Height = 17
                Caption = 'Habilitar C'#225'lculo do DIFAL'
                DataField = 'PMT_HABILITAR_DIFAL'
                DataSource = DataCadastros1.DsParametros
                TabOrder = 17
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBRadioGroup11: TDBRadioGroup
                Left = 5
                Top = 171
                Width = 44
                Height = 126
                Caption = 'Modelo DANFE:'
                DataField = 'PMT_FORM_DANFE'
                DataSource = DataCadastros1.DsParametros
                Items.Strings = (
                  'FAST-Retrato '
                  'FORTES-Retrato(novo)'
                  'FORTES-Paisagem(novo)')
                TabOrder = 18
                Values.Strings = (
                  '1'
                  '2'
                  '3')
                Visible = False
              end
              object DBCheckBox84: TDBCheckBox
                Left = 122
                Top = 274
                Width = 333
                Height = 17
                Caption = ' Permitir Faturamento sem Informar Peso Nota Fiscal'
                DataField = 'PMT_FATURA_SEM_PESO'
                DataSource = DataCadastros1.DsParametros
                TabOrder = 19
                ValueChecked = 'S'
                ValueUnchecked = 'N'
                OnExit = DBCheckBox44Exit
              end
            end
            object TabSheet4: TTabSheet
              Caption = 'C'#225'lculo dos Valores do Faturamento'
              ImageIndex = 2
              ExplicitLeft = 0
              ExplicitTop = 0
              ExplicitWidth = 0
              ExplicitHeight = 0
              object GroupBox42: TGroupBox
                Left = 3
                Top = 3
                Width = 534
                Height = 174
                Caption = 'Composi'#231#227'o do Valor Original da Fatura'
                TabOrder = 0
                object DBRadioGroup14: TDBRadioGroup
                  Left = 17
                  Top = 21
                  Width = 504
                  Height = 44
                  Columns = 3
                  DataField = 'PMT_FAT_NF_VALOR_ORIGINAL'
                  DataSource = DataCadastros1.DsParametros
                  Items.Strings = (
                    'Total dos Produtos'
                    'Valor L'#237'quido da Fatura'
                    'Valor Total da Nota')
                  TabOrder = 0
                  Values.Strings = (
                    'T'
                    'L'
                    'N')
                end
                object DBCheckBox89: TDBCheckBox
                  Left = 25
                  Top = 71
                  Width = 179
                  Height = 17
                  Caption = 'Inclui Frete, Seguro e Despesas'
                  DataField = 'PMT_FAT_NF_FRETE_SEGURO_DESP'
                  DataSource = DataCadastros1.DsParametros
                  TabOrder = 1
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object DBCheckBox90: TDBCheckBox
                  Left = 25
                  Top = 94
                  Width = 248
                  Height = 17
                  Caption = 'Inclui os Descontos (Pedido e Faturamento)'
                  DataField = 'PMT_FAT_NF_VALOR_LIQ_DESC'
                  DataSource = DataCadastros1.DsParametros
                  TabOrder = 2
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object DBCheckBox91: TDBCheckBox
                  Left = 25
                  Top = 117
                  Width = 168
                  Height = 17
                  Caption = 'Diminui o Valor Antecipado'
                  DataField = 'PMT_FAT_NF_VALOR_ANTECIPADO'
                  DataSource = DataCadastros1.DsParametros
                  TabOrder = 3
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object DBCheckBox92: TDBCheckBox
                  Left = 25
                  Top = 140
                  Width = 200
                  Height = 17
                  Caption = 'Diminui CFOP Sem Valor Comercial'
                  DataField = 'PMT_FAT_NF_SEM_VALOR_COMERCIAL'
                  DataSource = DataCadastros1.DsParametros
                  TabOrder = 4
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
              end
              object DBCheckBox93: TDBCheckBox
                Left = 28
                Top = 196
                Width = 349
                Height = 17
                Caption = 
                  'Diminui o Valor Antecipado do Valor Liquido da Fatura na Nota Fi' +
                  'scal'
                DataField = 'PMT_FAT_NF_VL_LIQ_VALOR_ANTECIP'
                DataSource = DataCadastros1.DsParametros
                TabOrder = 1
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
            end
          end
        end
      end
      object TPage
        Left = 0
        Top = 0
        Caption = 'NotaFiscalLayout'
        ExplicitWidth = 0
        ExplicitHeight = 0
        object PNotaFiscalLayout: TPanel
          Left = 0
          Top = 0
          Width = 767
          Height = 509
          Align = alClient
          TabOrder = 0
          object ScrollBox1: TScrollBox
            Left = 1
            Top = 1
            Width = 765
            Height = 507
            Align = alClient
            TabOrder = 0
            object Label463: TLabel
              Left = 14
              Top = 48
              Width = 36
              Height = 14
              Caption = 'C'#243'digo:'
            end
            object Label464: TLabel
              Left = 78
              Top = 48
              Width = 28
              Height = 14
              Caption = 'Data.:'
            end
            object Label465: TLabel
              Left = 202
              Top = 49
              Width = 154
              Height = 14
              Caption = 'M'#225'ximo de Linha da Nota Fiscal:'
            end
            object Group03: TGroupBox
              Left = 12
              Top = 72
              Width = 697
              Height = 1437
              Color = clBtnFace
              Enabled = False
              ParentColor = False
              TabOrder = 0
              object Label119: TLabel
                Left = 14
                Top = 106
                Width = 98
                Height = 13
                Caption = 'X da Nota de Sa'#237'da:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label120: TLabel
                Left = 119
                Top = 106
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label121: TLabel
                Left = 189
                Top = 105
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label122: TLabel
                Left = 382
                Top = 105
                Width = 106
                Height = 13
                Alignment = taRightJustify
                Caption = 'X da Nota de Entrada:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label123: TLabel
                Left = 489
                Top = 105
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label124: TLabel
                Left = 552
                Top = 105
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label125: TLabel
                Left = 14
                Top = 128
                Width = 81
                Height = 13
                Caption = 'N'#250'mero da Nota:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label126: TLabel
                Left = 119
                Top = 128
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label127: TLabel
                Left = 189
                Top = 128
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label128: TLabel
                Left = 377
                Top = 128
                Width = 111
                Height = 13
                Alignment = taRightJustify
                Caption = 'Natureza da Opera'#231#227'o:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label129: TLabel
                Left = 489
                Top = 128
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label130: TLabel
                Left = 552
                Top = 128
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label131: TLabel
                Left = 14
                Top = 151
                Width = 40
                Height = 13
                Caption = 'C.F.O.P:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label132: TLabel
                Left = 119
                Top = 151
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label133: TLabel
                Left = 189
                Top = 151
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label134: TLabel
                Left = 331
                Top = 151
                Width = 157
                Height = 13
                Alignment = taRightJustify
                Caption = 'Inscr. Estad. do Subst. Tribut'#225'rio:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label135: TLabel
                Left = 489
                Top = 151
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label136: TLabel
                Left = 552
                Top = 151
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label137: TLabel
                Left = 14
                Top = 174
                Width = 70
                Height = 13
                Caption = 'Nome / Raz'#227'o'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label138: TLabel
                Left = 119
                Top = 174
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label139: TLabel
                Left = 189
                Top = 174
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label140: TLabel
                Left = 395
                Top = 174
                Width = 93
                Height = 13
                Alignment = taRightJustify
                Caption = 'C.N.P.J. / C.N.P.F.:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label141: TLabel
                Left = 489
                Top = 174
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label142: TLabel
                Left = 552
                Top = 174
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label143: TLabel
                Left = 14
                Top = 197
                Width = 68
                Height = 13
                Caption = 'Data Emiss'#227'o:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label144: TLabel
                Left = 119
                Top = 197
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label145: TLabel
                Left = 189
                Top = 197
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label146: TLabel
                Left = 439
                Top = 197
                Width = 49
                Height = 13
                Alignment = taRightJustify
                Caption = 'Endere'#231'o:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label147: TLabel
                Left = 489
                Top = 197
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label148: TLabel
                Left = 552
                Top = 197
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label149: TLabel
                Left = 14
                Top = 220
                Width = 73
                Height = 13
                Caption = 'Bairro / Distrito:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label150: TLabel
                Left = 119
                Top = 220
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label151: TLabel
                Left = 189
                Top = 220
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label152: TLabel
                Left = 455
                Top = 220
                Width = 33
                Height = 13
                Alignment = taRightJustify
                Caption = 'C.E.P.:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label153: TLabel
                Left = 489
                Top = 220
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label154: TLabel
                Left = 552
                Top = 220
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label155: TLabel
                Left = 14
                Top = 243
                Width = 58
                Height = 13
                Caption = 'Data Sa'#237'da:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label156: TLabel
                Left = 119
                Top = 243
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label157: TLabel
                Left = 189
                Top = 243
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label158: TLabel
                Left = 394
                Top = 243
                Width = 94
                Height = 13
                Alignment = taRightJustify
                Caption = 'Cidade / Munic'#237'pio:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label159: TLabel
                Left = 489
                Top = 243
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label160: TLabel
                Left = 552
                Top = 243
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label161: TLabel
                Left = 14
                Top = 266
                Width = 49
                Height = 13
                Caption = 'Fone/Fax:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label162: TLabel
                Left = 119
                Top = 266
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label163: TLabel
                Left = 189
                Top = 266
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label164: TLabel
                Left = 423
                Top = 266
                Width = 65
                Height = 13
                Alignment = taRightJustify
                Caption = 'Estado - U.F.:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label165: TLabel
                Left = 489
                Top = 266
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label166: TLabel
                Left = 552
                Top = 266
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label167: TLabel
                Left = 14
                Top = 289
                Width = 72
                Height = 13
                Caption = 'Insc./Estadual:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label168: TLabel
                Left = 119
                Top = 289
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label169: TLabel
                Left = 189
                Top = 289
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label170: TLabel
                Left = 415
                Top = 288
                Width = 73
                Height = 13
                Alignment = taRightJustify
                Caption = 'Hora da Sa'#237'da:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label171: TLabel
                Left = 489
                Top = 288
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label172: TLabel
                Left = 552
                Top = 288
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label173: TLabel
                Left = 14
                Top = 317
                Width = 82
                Height = 13
                Caption = 'Fatura N'#250'mero 1:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label174: TLabel
                Left = 119
                Top = 317
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label175: TLabel
                Left = 189
                Top = 317
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Bevel6: TBevel
                Left = 6
                Top = 310
                Width = 680
                Height = 7
                Shape = bsTopLine
              end
              object Label176: TLabel
                Left = 406
                Top = 317
                Width = 82
                Height = 13
                Alignment = taRightJustify
                Caption = 'Fatura N'#250'mero 2:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label177: TLabel
                Left = 489
                Top = 317
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label178: TLabel
                Left = 552
                Top = 317
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label179: TLabel
                Left = 14
                Top = 340
                Width = 82
                Height = 13
                Caption = 'Fatura N'#250'mero 3:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label180: TLabel
                Left = 119
                Top = 340
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label181: TLabel
                Left = 189
                Top = 340
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label182: TLabel
                Left = 406
                Top = 340
                Width = 82
                Height = 13
                Alignment = taRightJustify
                Caption = 'Fatura N'#250'mero 4:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label183: TLabel
                Left = 489
                Top = 340
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label184: TLabel
                Left = 552
                Top = 340
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label185: TLabel
                Left = 14
                Top = 363
                Width = 82
                Height = 13
                Caption = 'Fatura N'#250'mero 5:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label186: TLabel
                Left = 119
                Top = 363
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label187: TLabel
                Left = 189
                Top = 363
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label188: TLabel
                Left = 406
                Top = 363
                Width = 82
                Height = 13
                Alignment = taRightJustify
                Caption = 'Fatura N'#250'mero 6:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label189: TLabel
                Left = 489
                Top = 363
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label190: TLabel
                Left = 552
                Top = 363
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label191: TLabel
                Left = 14
                Top = 386
                Width = 68
                Height = 13
                Caption = 'Vencimento 1:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label192: TLabel
                Left = 119
                Top = 386
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label193: TLabel
                Left = 189
                Top = 386
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label194: TLabel
                Left = 420
                Top = 386
                Width = 68
                Height = 13
                Alignment = taRightJustify
                Caption = 'Vencimento 2:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label195: TLabel
                Left = 489
                Top = 386
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label196: TLabel
                Left = 552
                Top = 386
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label197: TLabel
                Left = 14
                Top = 409
                Width = 68
                Height = 13
                Caption = 'Vencimento 3:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label198: TLabel
                Left = 119
                Top = 409
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label199: TLabel
                Left = 189
                Top = 409
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label200: TLabel
                Left = 420
                Top = 409
                Width = 68
                Height = 13
                Alignment = taRightJustify
                Caption = 'Vencimento 4:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label201: TLabel
                Left = 489
                Top = 409
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label202: TLabel
                Left = 552
                Top = 409
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label203: TLabel
                Left = 14
                Top = 432
                Width = 68
                Height = 13
                Caption = 'Vencimento 5:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label204: TLabel
                Left = 119
                Top = 432
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label205: TLabel
                Left = 189
                Top = 432
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label206: TLabel
                Left = 420
                Top = 432
                Width = 68
                Height = 13
                Alignment = taRightJustify
                Caption = 'Vencimento 6:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label207: TLabel
                Left = 489
                Top = 432
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label208: TLabel
                Left = 552
                Top = 432
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label209: TLabel
                Left = 14
                Top = 455
                Width = 69
                Height = 13
                Caption = 'Valor Fatura 1:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label210: TLabel
                Left = 119
                Top = 455
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label211: TLabel
                Left = 189
                Top = 455
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label212: TLabel
                Left = 419
                Top = 455
                Width = 69
                Height = 13
                Alignment = taRightJustify
                Caption = 'Valor Fatura 2:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label213: TLabel
                Left = 489
                Top = 455
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label214: TLabel
                Left = 552
                Top = 455
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label215: TLabel
                Left = 14
                Top = 478
                Width = 69
                Height = 13
                Caption = 'Valor Fatura 3:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label216: TLabel
                Left = 119
                Top = 478
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label217: TLabel
                Left = 189
                Top = 478
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label218: TLabel
                Left = 419
                Top = 478
                Width = 69
                Height = 13
                Alignment = taRightJustify
                Caption = 'Valor Fatura 4:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label219: TLabel
                Left = 489
                Top = 478
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label220: TLabel
                Left = 552
                Top = 478
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label221: TLabel
                Left = 14
                Top = 501
                Width = 69
                Height = 13
                Caption = 'Valor Fatura 5:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label222: TLabel
                Left = 119
                Top = 501
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label223: TLabel
                Left = 189
                Top = 501
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label224: TLabel
                Left = 419
                Top = 501
                Width = 69
                Height = 13
                Alignment = taRightJustify
                Caption = 'Valor Fatura 6:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label225: TLabel
                Left = 489
                Top = 501
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label226: TLabel
                Left = 552
                Top = 501
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Bevel7: TBevel
                Left = 6
                Top = 523
                Width = 680
                Height = 7
                Shape = bsTopLine
              end
              object Label227: TLabel
                Left = 14
                Top = 533
                Width = 65
                Height = 13
                Caption = 'Cod. Produto:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label228: TLabel
                Left = 119
                Top = 533
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label229: TLabel
                Left = 189
                Top = 533
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label230: TLabel
                Left = 14
                Top = 557
                Width = 61
                Height = 13
                Alignment = taRightJustify
                Caption = 'C.F.(C'#243'digo):'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label231: TLabel
                Left = 119
                Top = 556
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label232: TLabel
                Left = 189
                Top = 556
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label233: TLabel
                Left = 14
                Top = 580
                Width = 23
                Height = 13
                Caption = 'S.T.:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label234: TLabel
                Left = 119
                Top = 580
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label235: TLabel
                Left = 189
                Top = 580
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label236: TLabel
                Left = 445
                Top = 580
                Width = 43
                Height = 13
                Alignment = taRightJustify
                Caption = 'Unidade:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label237: TLabel
                Left = 489
                Top = 580
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label238: TLabel
                Left = 552
                Top = 580
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label239: TLabel
                Left = 14
                Top = 603
                Width = 58
                Height = 13
                Caption = 'Quantidade:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label240: TLabel
                Left = 119
                Top = 603
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label241: TLabel
                Left = 189
                Top = 603
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label242: TLabel
                Left = 422
                Top = 603
                Width = 66
                Height = 13
                Alignment = taRightJustify
                Caption = 'Valor Unit'#225'rio:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label243: TLabel
                Left = 489
                Top = 603
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label244: TLabel
                Left = 552
                Top = 603
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label245: TLabel
                Left = 14
                Top = 626
                Width = 54
                Height = 13
                Caption = 'Valor Total:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label246: TLabel
                Left = 119
                Top = 626
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label247: TLabel
                Left = 189
                Top = 626
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label248: TLabel
                Left = 416
                Top = 626
                Width = 72
                Height = 13
                Alignment = taRightJustify
                Caption = 'Al'#237'quota ICMS:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label249: TLabel
                Left = 489
                Top = 626
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label250: TLabel
                Left = 552
                Top = 626
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label251: TLabel
                Left = 14
                Top = 649
                Width = 59
                Height = 13
                Caption = 'Al'#237'quota IPI:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label252: TLabel
                Left = 119
                Top = 649
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label253: TLabel
                Left = 189
                Top = 649
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label254: TLabel
                Left = 445
                Top = 649
                Width = 43
                Height = 13
                Alignment = taRightJustify
                Caption = 'Valor IPI:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label255: TLabel
                Left = 489
                Top = 649
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label256: TLabel
                Left = 552
                Top = 649
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label257: TLabel
                Left = 9
                Top = 672
                Width = 108
                Height = 13
                Caption = 'Mensagem (Op.Fiscal):'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label258: TLabel
                Left = 119
                Top = 672
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label259: TLabel
                Left = 189
                Top = 672
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label260: TLabel
                Left = 8
                Top = 694
                Width = 112
                Height = 13
                Alignment = taRightJustify
                Caption = 'Mensagem (Parametro):'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label261: TLabel
                Left = 122
                Top = 694
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label262: TLabel
                Left = 190
                Top = 694
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Bevel8: TBevel
                Left = 6
                Top = 715
                Width = 680
                Height = 2
                Shape = bsTopLine
              end
              object Label263: TLabel
                Left = 15
                Top = 723
                Width = 56
                Height = 13
                Caption = 'Base ICMS:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label264: TLabel
                Left = 119
                Top = 723
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label265: TLabel
                Left = 189
                Top = 723
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label266: TLabel
                Left = 432
                Top = 722
                Width = 56
                Height = 13
                Alignment = taRightJustify
                Caption = 'Valor ICMS:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label267: TLabel
                Left = 489
                Top = 722
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label268: TLabel
                Left = 552
                Top = 722
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label269: TLabel
                Left = 14
                Top = 746
                Width = 88
                Height = 13
                Caption = 'Base Substitui'#231#227'o:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label270: TLabel
                Left = 119
                Top = 746
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label271: TLabel
                Left = 189
                Top = 746
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label272: TLabel
                Left = 400
                Top = 746
                Width = 88
                Height = 13
                Alignment = taRightJustify
                Caption = 'Valor Substitui'#231#227'o:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label273: TLabel
                Left = 489
                Top = 746
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label274: TLabel
                Left = 552
                Top = 746
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label275: TLabel
                Left = 14
                Top = 769
                Width = 99
                Height = 13
                Caption = 'Valor Total Produtos:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label276: TLabel
                Left = 119
                Top = 769
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label277: TLabel
                Left = 189
                Top = 769
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label278: TLabel
                Left = 419
                Top = 770
                Width = 69
                Height = 13
                Alignment = taRightJustify
                Caption = 'Valor do Frete:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label279: TLabel
                Left = 489
                Top = 770
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label280: TLabel
                Left = 552
                Top = 770
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label281: TLabel
                Left = 14
                Top = 792
                Width = 79
                Height = 13
                Caption = 'Valor do Seguro:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label282: TLabel
                Left = 120
                Top = 792
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label283: TLabel
                Left = 190
                Top = 792
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label284: TLabel
                Left = 350
                Top = 793
                Width = 138
                Height = 13
                Alignment = taRightJustify
                Caption = 'Outras Despesas Acess'#243'rias:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label285: TLabel
                Left = 489
                Top = 793
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label286: TLabel
                Left = 552
                Top = 793
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label287: TLabel
                Left = 14
                Top = 815
                Width = 73
                Height = 13
                Caption = 'Valor Total IPI.:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label288: TLabel
                Left = 120
                Top = 815
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label289: TLabel
                Left = 190
                Top = 815
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label290: TLabel
                Left = 393
                Top = 816
                Width = 95
                Height = 13
                Alignment = taRightJustify
                Caption = 'Valor Total da Nota:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label291: TLabel
                Left = 489
                Top = 816
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label292: TLabel
                Left = 552
                Top = 816
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Bevel9: TBevel
                Left = 6
                Top = 837
                Width = 680
                Height = 7
                Shape = bsTopLine
              end
              object Label293: TLabel
                Left = 14
                Top = 847
                Width = 75
                Height = 13
                Caption = 'Transportadora:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label294: TLabel
                Left = 120
                Top = 847
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label295: TLabel
                Left = 190
                Top = 847
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label296: TLabel
                Left = 372
                Top = 847
                Width = 115
                Height = 13
                Alignment = taRightJustify
                Caption = 'Frete por Conta (1 ou 2):'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label297: TLabel
                Left = 489
                Top = 847
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label298: TLabel
                Left = 552
                Top = 847
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label299: TLabel
                Left = 14
                Top = 871
                Width = 70
                Height = 13
                Caption = 'Placa Ve'#237'culo:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label300: TLabel
                Left = 120
                Top = 871
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label301: TLabel
                Left = 190
                Top = 871
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label302: TLabel
                Left = 431
                Top = 871
                Width = 56
                Height = 13
                Alignment = taRightJustify
                Caption = 'Placa - U.F:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label303: TLabel
                Left = 489
                Top = 871
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label304: TLabel
                Left = 552
                Top = 871
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label305: TLabel
                Left = 14
                Top = 895
                Width = 81
                Height = 13
                Caption = 'C.N.P.J/C.N.P.F:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label306: TLabel
                Left = 120
                Top = 895
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label307: TLabel
                Left = 190
                Top = 895
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label308: TLabel
                Left = 438
                Top = 895
                Width = 49
                Height = 13
                Alignment = taRightJustify
                Caption = 'Endere'#231'o:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label309: TLabel
                Left = 489
                Top = 895
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label310: TLabel
                Left = 552
                Top = 895
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label311: TLabel
                Left = 14
                Top = 919
                Width = 36
                Height = 13
                Caption = 'Cidade:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label312: TLabel
                Left = 120
                Top = 919
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label313: TLabel
                Left = 190
                Top = 919
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label314: TLabel
                Left = 425
                Top = 919
                Width = 62
                Height = 13
                Alignment = taRightJustify
                Caption = 'Estado - U.F:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label315: TLabel
                Left = 489
                Top = 919
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label316: TLabel
                Left = 552
                Top = 919
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label317: TLabel
                Left = 14
                Top = 943
                Width = 70
                Height = 13
                Caption = 'Insc. Estadual:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label318: TLabel
                Left = 120
                Top = 943
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label319: TLabel
                Left = 190
                Top = 943
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label320: TLabel
                Left = 429
                Top = 942
                Width = 58
                Height = 13
                Alignment = taRightJustify
                Caption = 'Quantidade:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label321: TLabel
                Left = 489
                Top = 942
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label322: TLabel
                Left = 552
                Top = 942
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label323: TLabel
                Left = 14
                Top = 966
                Width = 41
                Height = 13
                Caption = 'Esp'#233'cie:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label324: TLabel
                Left = 120
                Top = 966
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label325: TLabel
                Left = 190
                Top = 966
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label326: TLabel
                Left = 454
                Top = 965
                Width = 33
                Height = 13
                Alignment = taRightJustify
                Caption = 'Marca:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label327: TLabel
                Left = 489
                Top = 965
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label328: TLabel
                Left = 552
                Top = 965
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label329: TLabel
                Left = 14
                Top = 989
                Width = 40
                Height = 13
                Caption = 'N'#250'mero:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label330: TLabel
                Left = 120
                Top = 989
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label331: TLabel
                Left = 190
                Top = 989
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label332: TLabel
                Left = 432
                Top = 989
                Width = 55
                Height = 13
                Alignment = taRightJustify
                Caption = 'Peso Bruto:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label333: TLabel
                Left = 489
                Top = 988
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label334: TLabel
                Left = 552
                Top = 988
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label335: TLabel
                Left = 14
                Top = 1012
                Width = 64
                Height = 13
                Caption = 'Peso Liquido:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label336: TLabel
                Left = 120
                Top = 1012
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label337: TLabel
                Left = 190
                Top = 1012
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label338: TLabel
                Left = 368
                Top = 1041
                Width = 128
                Height = 13
                Caption = 'Redespacho(nome transp):'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label339: TLabel
                Left = 497
                Top = 1042
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label340: TLabel
                Left = 560
                Top = 1040
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label341: TLabel
                Left = 14
                Top = 1063
                Width = 105
                Height = 13
                Alignment = taRightJustify
                Caption = 'Transp.Redesp.(Rua):'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label342: TLabel
                Left = 174
                Top = 1039
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label343: TLabel
                Left = 240
                Top = 1039
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Bevel10: TBevel
                Left = 6
                Top = 1033
                Width = 680
                Height = 7
                Shape = bsTopLine
              end
              object Label344: TLabel
                Left = 8
                Top = 1200
                Width = 119
                Height = 13
                Caption = 'Adicional 1 (Obs Pedido):'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label345: TLabel
                Left = 143
                Top = 1200
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label346: TLabel
                Left = 209
                Top = 1200
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label347: TLabel
                Left = 338
                Top = 1199
                Width = 145
                Height = 13
                Alignment = taRightJustify
                Caption = 'Adicional 2 (Obs Faturamento):'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label348: TLabel
                Left = 487
                Top = 1200
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label349: TLabel
                Left = 553
                Top = 1200
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label350: TLabel
                Left = 8
                Top = 1224
                Width = 112
                Height = 13
                Caption = 'Adicional 3 (N'#186' Pedido):'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label351: TLabel
                Left = 143
                Top = 1224
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label352: TLabel
                Left = 209
                Top = 1224
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label353: TLabel
                Left = 346
                Top = 1224
                Width = 137
                Height = 13
                Alignment = taRightJustify
                Caption = 'Adicional 4 (C'#243'digo Repres.):'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label354: TLabel
                Left = 487
                Top = 1224
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label355: TLabel
                Left = 553
                Top = 1224
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label356: TLabel
                Left = 8
                Top = 1247
                Width = 132
                Height = 13
                Caption = 'Adicional 5 (Nome Repres.):'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label357: TLabel
                Left = 143
                Top = 1247
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label358: TLabel
                Left = 209
                Top = 1247
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label359: TLabel
                Left = 428
                Top = 1247
                Width = 55
                Height = 13
                Alignment = taRightJustify
                Caption = 'Adicional 6:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label360: TLabel
                Left = 487
                Top = 1247
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label361: TLabel
                Left = 553
                Top = 1247
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label362: TLabel
                Left = 8
                Top = 1270
                Width = 89
                Height = 13
                Caption = 'Adicional 7 (C.F.1):'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label363: TLabel
                Left = 143
                Top = 1270
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label364: TLabel
                Left = 209
                Top = 1270
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label366: TLabel
                Left = 487
                Top = 1317
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label367: TLabel
                Left = 553
                Top = 1270
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label369: TLabel
                Left = 143
                Top = 1294
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label370: TLabel
                Left = 209
                Top = 1294
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label372: TLabel
                Left = 487
                Top = 1269
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label373: TLabel
                Left = 553
                Top = 1294
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Bevel11: TBevel
                Left = 6
                Top = 1372
                Width = 680
                Height = 7
                Shape = bsTopLine
              end
              object Label380: TLabel
                Left = 8
                Top = 1380
                Width = 110
                Height = 13
                Caption = 'Nota Fiscal Fatura (N'#186'):'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label381: TLabel
                Left = 143
                Top = 1380
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label382: TLabel
                Left = 206
                Top = 1380
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label383: TLabel
                Left = 358
                Top = 1380
                Width = 125
                Height = 13
                Alignment = taRightJustify
                Caption = 'Identifica'#231#227'o e Assinatura:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label384: TLabel
                Left = 487
                Top = 1380
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label385: TLabel
                Left = 553
                Top = 1380
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label386: TLabel
                Left = 8
                Top = 1403
                Width = 92
                Height = 13
                Caption = 'Data Recebimento:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label387: TLabel
                Left = 143
                Top = 1403
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label388: TLabel
                Left = 206
                Top = 1403
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label32: TLabel
                Left = 397
                Top = 533
                Width = 91
                Height = 13
                Caption = 'Descri'#231#227'o Produto:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label33: TLabel
                Left = 489
                Top = 533
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label34: TLabel
                Left = 552
                Top = 533
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label35: TLabel
                Left = 92
                Top = 1040
                Width = 70
                Height = 13
                Alignment = taRightJustify
                Caption = '(Texto T'#237'tulo) :'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label36: TLabel
                Left = 176
                Top = 1064
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label37: TLabel
                Left = 242
                Top = 1064
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label38: TLabel
                Left = 383
                Top = 1063
                Width = 110
                Height = 13
                Alignment = taRightJustify
                Caption = 'Redesp.(Cid./UF/Cep):'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label39: TLabel
                Left = 497
                Top = 1064
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label40: TLabel
                Left = 558
                Top = 1063
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label41: TLabel
                Left = 378
                Top = 1087
                Width = 115
                Height = 13
                Caption = 'Endere'#231'o Entrega(Rua):'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label42: TLabel
                Left = 497
                Top = 1088
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label43: TLabel
                Left = 560
                Top = 1087
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label44: TLabel
                Left = 99
                Top = 1086
                Width = 67
                Height = 13
                Alignment = taRightJustify
                Caption = '(Texto T'#237'tulo):'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label45: TLabel
                Left = 176
                Top = 1086
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label46: TLabel
                Left = 240
                Top = 1086
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label47: TLabel
                Left = 425
                Top = 557
                Width = 63
                Height = 13
                Alignment = taRightJustify
                Caption = 'C.F.(Apelido):'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label48: TLabel
                Left = 489
                Top = 556
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label49: TLabel
                Left = 552
                Top = 556
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label50: TLabel
                Left = 14
                Top = 1113
                Width = 147
                Height = 13
                Alignment = taRightJustify
                Caption = 'End. Entrega(Cidade/UF/Cep):'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label51: TLabel
                Left = 176
                Top = 1112
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label52: TLabel
                Left = 242
                Top = 1112
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Bevel1: TBevel
                Left = 6
                Top = 1185
                Width = 680
                Height = 7
                Shape = bsTopLine
              end
              object Label53: TLabel
                Left = 6
                Top = 1177
                Width = 124
                Height = 16
                Caption = 'Dados Adicionais'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label54: TLabel
                Left = 394
                Top = 1270
                Width = 89
                Height = 13
                Caption = 'Adicional 8 (C.F.2):'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label55: TLabel
                Left = 8
                Top = 1294
                Width = 89
                Height = 13
                Caption = 'Adicional 9 (C.F.3):'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label56: TLabel
                Left = 388
                Top = 1294
                Width = 95
                Height = 13
                Caption = 'Adicional 10 (C.F.4):'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label57: TLabel
                Left = 8
                Top = 1317
                Width = 95
                Height = 13
                Caption = 'Adicional 11 (C.F.5):'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label58: TLabel
                Left = 143
                Top = 1317
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label59: TLabel
                Left = 209
                Top = 1317
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label60: TLabel
                Left = 388
                Top = 1317
                Width = 95
                Height = 13
                Caption = 'Adicional 12 (C.F.6):'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label61: TLabel
                Left = 487
                Top = 1292
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label62: TLabel
                Left = 553
                Top = 1317
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label397: TLabel
                Left = 370
                Top = 1136
                Width = 124
                Height = 13
                Caption = 'Endere'#231'o Cobran'#231'a(Rua):'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label398: TLabel
                Left = 497
                Top = 1137
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label399: TLabel
                Left = 560
                Top = 1136
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label400: TLabel
                Left = 105
                Top = 1134
                Width = 67
                Height = 13
                Alignment = taRightJustify
                Caption = '(Texto T'#237'tulo):'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label401: TLabel
                Left = 176
                Top = 1135
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label402: TLabel
                Left = 240
                Top = 1135
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label403: TLabel
                Left = 13
                Top = 1160
                Width = 156
                Height = 13
                Alignment = taRightJustify
                Caption = 'End. Cobran'#231'a(Cidade/UF/Cep):'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label404: TLabel
                Left = 177
                Top = 1160
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label405: TLabel
                Left = 243
                Top = 1160
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label457: TLabel
                Left = 14
                Top = 1039
                Width = 77
                Height = 13
                Caption = 'REDESPACHO:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clMaroon
                Font.Height = -9
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label458: TLabel
                Left = 14
                Top = 1087
                Width = 81
                Height = 13
                Caption = 'END.ENTREGA:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clMaroon
                Font.Height = -9
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label459: TLabel
                Left = 13
                Top = 1135
                Width = 88
                Height = 13
                Caption = 'END.COBRAN'#199'A:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clMaroon
                Font.Height = -9
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label596: TLabel
                Left = 332
                Top = 672
                Width = 156
                Height = 13
                Caption = 'Complemento descri'#231#227'o Produto:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label597: TLabel
                Left = 489
                Top = 672
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label598: TLabel
                Left = 551
                Top = 672
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label609: TLabel
                Left = 460
                Top = 20
                Width = 152
                Height = 14
                Caption = 'Qtde Maxima de itens por nota :'
              end
              object Label613: TLabel
                Left = 9
                Top = 1339
                Width = 124
                Height = 13
                Caption = 'Demonstrativo do C'#225'lculo:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label614: TLabel
                Left = 143
                Top = 1340
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label615: TLabel
                Left = 206
                Top = 1340
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object RadNota: TRadioGroup
                Left = 6
                Top = 70
                Width = 680
                Height = 30
                Columns = 2
                ItemIndex = 0
                Items.Strings = (
                  'Nota Fiscal S'#233'rie '#218'&nica'
                  'Nota Fiscal S'#233'rie &2')
                TabOrder = 307
              end
              object ChkSaida: TCheckBox
                Left = 259
                Top = 105
                Width = 58
                Height = 17
                Caption = 'Imprime'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 2
              end
              object ChkEntrada: TCheckBox
                Left = 620
                Top = 105
                Width = 60
                Height = 17
                Caption = 'Imprime'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                TabOrder = 5
              end
              object ChkNumNota: TCheckBox
                Left = 259
                Top = 127
                Width = 58
                Height = 17
                Caption = 'Imprime'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 8
              end
              object ChkNatOpe: TCheckBox
                Left = 620
                Top = 127
                Width = 60
                Height = 17
                Caption = 'Imprime'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                TabOrder = 11
              end
              object ChkCFOP: TCheckBox
                Left = 259
                Top = 150
                Width = 58
                Height = 17
                Caption = 'Imprime'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 14
              end
              object ChkInscrTributa: TCheckBox
                Left = 620
                Top = 150
                Width = 60
                Height = 17
                Caption = 'Imprime'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                TabOrder = 17
              end
              object ChkRazao: TCheckBox
                Left = 259
                Top = 173
                Width = 58
                Height = 17
                Caption = 'Imprime'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 20
              end
              object ChkCNPJ_CNPF: TCheckBox
                Left = 620
                Top = 173
                Width = 60
                Height = 17
                Caption = 'Imprime'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                TabOrder = 23
              end
              object ChkDataEmiss: TCheckBox
                Left = 259
                Top = 196
                Width = 58
                Height = 17
                Caption = 'Imprime'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 26
              end
              object ChkEndereco: TCheckBox
                Left = 620
                Top = 196
                Width = 60
                Height = 17
                Caption = 'Imprime'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                TabOrder = 29
              end
              object ChkBairro: TCheckBox
                Left = 259
                Top = 219
                Width = 58
                Height = 17
                Caption = 'Imprime'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 32
              end
              object ChkCEP: TCheckBox
                Left = 620
                Top = 219
                Width = 60
                Height = 17
                Caption = 'Imprime'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                TabOrder = 35
              end
              object ChkDataSaida: TCheckBox
                Left = 259
                Top = 242
                Width = 58
                Height = 17
                Caption = 'Imprime'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 38
              end
              object ChkCidade: TCheckBox
                Left = 620
                Top = 242
                Width = 60
                Height = 17
                Caption = 'Imprime'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                TabOrder = 41
              end
              object ChkFone: TCheckBox
                Left = 259
                Top = 265
                Width = 58
                Height = 17
                Caption = 'Imprime'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 44
              end
              object ChkEstado: TCheckBox
                Left = 620
                Top = 265
                Width = 60
                Height = 17
                Caption = 'Imprime'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                TabOrder = 47
              end
              object ChkInscEst: TCheckBox
                Left = 259
                Top = 288
                Width = 58
                Height = 17
                Caption = 'Imprime'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 50
              end
              object ChkHoraSaida: TCheckBox
                Left = 620
                Top = 287
                Width = 60
                Height = 17
                Caption = 'Imprime'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                TabOrder = 53
              end
              object ChkFatura1: TCheckBox
                Left = 259
                Top = 316
                Width = 58
                Height = 17
                Caption = 'Imprime'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 56
              end
              object ChkFatura2: TCheckBox
                Left = 620
                Top = 316
                Width = 60
                Height = 17
                Caption = 'Imprime'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                TabOrder = 59
              end
              object ChkFatura3: TCheckBox
                Left = 259
                Top = 339
                Width = 58
                Height = 17
                Caption = 'Imprime'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 62
              end
              object ChkFatura4: TCheckBox
                Left = 620
                Top = 339
                Width = 60
                Height = 17
                Caption = 'Imprime'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                TabOrder = 65
              end
              object ChkFatura5: TCheckBox
                Left = 259
                Top = 362
                Width = 58
                Height = 17
                Caption = 'Imprime'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 68
              end
              object ChkFatura6: TCheckBox
                Left = 620
                Top = 362
                Width = 60
                Height = 17
                Caption = 'Imprime'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                TabOrder = 71
              end
              object ChkVenc1: TCheckBox
                Left = 259
                Top = 385
                Width = 58
                Height = 17
                Caption = 'Imprime'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 74
              end
              object ChkVenc2: TCheckBox
                Left = 620
                Top = 385
                Width = 60
                Height = 17
                Caption = 'Imprime'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                TabOrder = 77
              end
              object ChkVenc3: TCheckBox
                Left = 259
                Top = 408
                Width = 58
                Height = 17
                Caption = 'Imprime'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 80
              end
              object ChkVenc4: TCheckBox
                Left = 620
                Top = 408
                Width = 60
                Height = 17
                Caption = 'Imprime'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                TabOrder = 83
              end
              object ChkVenc5: TCheckBox
                Left = 259
                Top = 431
                Width = 58
                Height = 17
                Caption = 'Imprime'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 86
              end
              object ChkVenc6: TCheckBox
                Left = 620
                Top = 431
                Width = 60
                Height = 17
                Caption = 'Imprime'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                TabOrder = 89
              end
              object ChkValor1: TCheckBox
                Left = 259
                Top = 454
                Width = 58
                Height = 17
                Caption = 'Imprime'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 92
              end
              object ChkValor2: TCheckBox
                Left = 620
                Top = 454
                Width = 60
                Height = 17
                Caption = 'Imprime'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                TabOrder = 95
              end
              object ChkValor3: TCheckBox
                Left = 259
                Top = 477
                Width = 58
                Height = 17
                Caption = 'Imprime'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 98
              end
              object ChkValor4: TCheckBox
                Left = 620
                Top = 477
                Width = 60
                Height = 17
                Caption = 'Imprime'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                TabOrder = 101
              end
              object ChkValor5: TCheckBox
                Left = 259
                Top = 500
                Width = 58
                Height = 17
                Caption = 'Imprime'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 104
              end
              object ChkValor6: TCheckBox
                Left = 620
                Top = 500
                Width = 60
                Height = 17
                Caption = 'Imprime'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                TabOrder = 107
              end
              object ChkProduto: TCheckBox
                Left = 259
                Top = 532
                Width = 58
                Height = 17
                Caption = 'Imprime'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 110
              end
              object ChkCF: TCheckBox
                Left = 259
                Top = 555
                Width = 60
                Height = 17
                Caption = 'Imprime'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                TabOrder = 116
              end
              object ChkST: TCheckBox
                Left = 259
                Top = 579
                Width = 58
                Height = 17
                Caption = 'Imprime'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 122
              end
              object ChkUnidade: TCheckBox
                Left = 620
                Top = 579
                Width = 60
                Height = 17
                Caption = 'Imprime'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                TabOrder = 125
              end
              object ChkQtde: TCheckBox
                Left = 259
                Top = 602
                Width = 58
                Height = 17
                Caption = 'Imprime'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 128
              end
              object ChkPrecoUnit: TCheckBox
                Left = 620
                Top = 602
                Width = 60
                Height = 17
                Caption = 'Imprime'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                TabOrder = 131
              end
              object ChkPrecoTotal: TCheckBox
                Left = 259
                Top = 625
                Width = 58
                Height = 17
                Caption = 'Imprime'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 134
              end
              object ChkAliqIcms: TCheckBox
                Left = 620
                Top = 625
                Width = 60
                Height = 17
                Caption = 'Imprime'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                TabOrder = 137
              end
              object ChkAliqIPI: TCheckBox
                Left = 259
                Top = 648
                Width = 58
                Height = 17
                Caption = 'Imprime'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 140
              end
              object ChkValorIPI: TCheckBox
                Left = 620
                Top = 648
                Width = 60
                Height = 17
                Caption = 'Imprime'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                TabOrder = 143
              end
              object ChkMens1: TCheckBox
                Left = 259
                Top = 671
                Width = 58
                Height = 17
                Caption = 'Imprime'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 146
              end
              object ChkMens2: TCheckBox
                Left = 258
                Top = 693
                Width = 60
                Height = 17
                Caption = 'Imprime'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                TabOrder = 152
              end
              object ChkBasICMS: TCheckBox
                Left = 259
                Top = 722
                Width = 58
                Height = 17
                Caption = 'Imprime'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 155
              end
              object ChkValICMS: TCheckBox
                Left = 620
                Top = 721
                Width = 60
                Height = 17
                Caption = 'Imprime'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                TabOrder = 158
              end
              object ChkSubst: TCheckBox
                Left = 259
                Top = 745
                Width = 58
                Height = 17
                Caption = 'Imprime'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 161
              end
              object ChkValSubst: TCheckBox
                Left = 620
                Top = 745
                Width = 60
                Height = 17
                Caption = 'Imprime'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                TabOrder = 164
              end
              object ChkTotProd: TCheckBox
                Left = 259
                Top = 768
                Width = 58
                Height = 17
                Caption = 'Imprime'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 167
              end
              object ChkFrete: TCheckBox
                Left = 620
                Top = 769
                Width = 60
                Height = 17
                Caption = 'Imprime'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                TabOrder = 170
              end
              object ChkValoSegu: TCheckBox
                Left = 260
                Top = 791
                Width = 58
                Height = 17
                Caption = 'Imprime'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 173
              end
              object ChkDespAcess: TCheckBox
                Left = 620
                Top = 792
                Width = 60
                Height = 17
                Caption = 'Imprime'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                TabOrder = 176
              end
              object ChkTotIPI: TCheckBox
                Left = 260
                Top = 814
                Width = 58
                Height = 17
                Caption = 'Imprime'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 179
              end
              object ChkTotNota: TCheckBox
                Left = 620
                Top = 815
                Width = 60
                Height = 17
                Caption = 'Imprime'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                TabOrder = 182
              end
              object ChkTransp: TCheckBox
                Left = 260
                Top = 846
                Width = 58
                Height = 17
                Caption = 'Imprime'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 185
              end
              object ChkFretePorCot: TCheckBox
                Left = 620
                Top = 846
                Width = 60
                Height = 17
                Caption = 'Imprime'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                TabOrder = 188
              end
              object ChkPlacaVeic: TCheckBox
                Left = 260
                Top = 870
                Width = 58
                Height = 17
                Caption = 'Imprime'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 191
              end
              object ChkPlacaUF: TCheckBox
                Left = 620
                Top = 870
                Width = 60
                Height = 17
                Caption = 'Imprime'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                TabOrder = 194
              end
              object ChkCNPJ_Trans: TCheckBox
                Left = 260
                Top = 894
                Width = 58
                Height = 17
                Caption = 'Imprime'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 197
              end
              object ChkEndeTrans: TCheckBox
                Left = 620
                Top = 894
                Width = 60
                Height = 17
                Caption = 'Imprime'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                TabOrder = 200
              end
              object ChkCidadeTrans: TCheckBox
                Left = 260
                Top = 918
                Width = 58
                Height = 17
                Caption = 'Imprime'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 203
              end
              object ChkEstadoTrans: TCheckBox
                Left = 620
                Top = 918
                Width = 60
                Height = 17
                Caption = 'Imprime'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                TabOrder = 206
              end
              object ChkInscEstTrans: TCheckBox
                Left = 260
                Top = 942
                Width = 58
                Height = 17
                Caption = 'Imprime'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 209
              end
              object ChkQtdeVol: TCheckBox
                Left = 620
                Top = 941
                Width = 60
                Height = 17
                Caption = 'Imprime'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                TabOrder = 212
              end
              object ChkEspecieVol: TCheckBox
                Left = 260
                Top = 965
                Width = 58
                Height = 17
                Caption = 'Imprime'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 215
              end
              object ChkMarca: TCheckBox
                Left = 620
                Top = 964
                Width = 60
                Height = 17
                Caption = 'Imprime'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                TabOrder = 218
              end
              object ChkNumero: TCheckBox
                Left = 260
                Top = 988
                Width = 58
                Height = 17
                Caption = 'Imprime'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 221
              end
              object ChkPesoBruto: TCheckBox
                Left = 620
                Top = 987
                Width = 60
                Height = 17
                Caption = 'Imprime'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                TabOrder = 224
              end
              object ChkPesoLiq: TCheckBox
                Left = 260
                Top = 1011
                Width = 58
                Height = 17
                Caption = 'Imprime'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 227
              end
              object ChkTranspRed: TCheckBox
                Left = 628
                Top = 1039
                Width = 58
                Height = 17
                Caption = 'Imprime'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 233
              end
              object ChkRedespTit: TCheckBox
                Left = 309
                Top = 1039
                Width = 60
                Height = 17
                Caption = 'Imprime'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                TabOrder = 230
              end
              object ChkDadoAd1: TCheckBox
                Left = 278
                Top = 1199
                Width = 58
                Height = 17
                Caption = 'Imprime'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 260
              end
              object ChkDadoAd2: TCheckBox
                Left = 622
                Top = 1199
                Width = 60
                Height = 17
                Caption = 'Imprime'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                TabOrder = 263
              end
              object ChkDadoAd3: TCheckBox
                Left = 278
                Top = 1223
                Width = 58
                Height = 17
                Caption = 'Imprime'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 266
              end
              object ChkDadoAd4: TCheckBox
                Left = 622
                Top = 1223
                Width = 60
                Height = 17
                Caption = 'Imprime'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                TabOrder = 269
              end
              object ChkDadoAd5: TCheckBox
                Left = 278
                Top = 1246
                Width = 58
                Height = 17
                Caption = 'Imprime'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 272
              end
              object ChkDadoAd6: TCheckBox
                Left = 622
                Top = 1246
                Width = 60
                Height = 17
                Caption = 'Imprime'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                TabOrder = 275
              end
              object ChkDadoAd7: TCheckBox
                Left = 278
                Top = 1269
                Width = 58
                Height = 17
                Caption = 'Imprime'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 278
              end
              object ChkDadoAd8: TCheckBox
                Left = 622
                Top = 1269
                Width = 60
                Height = 17
                Caption = 'Imprime'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                TabOrder = 281
              end
              object ChkDadoAd9: TCheckBox
                Left = 278
                Top = 1293
                Width = 58
                Height = 17
                Caption = 'Imprime'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 284
              end
              object ChkDadoAd10: TCheckBox
                Left = 622
                Top = 1293
                Width = 60
                Height = 17
                Caption = 'Imprime'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                TabOrder = 287
              end
              object ChkNotaFatura: TCheckBox
                Left = 278
                Top = 1379
                Width = 58
                Height = 17
                Caption = 'Imprime'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 299
              end
              object ChkAssinatura: TCheckBox
                Left = 622
                Top = 1379
                Width = 60
                Height = 17
                Caption = 'Imprime'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                TabOrder = 302
              end
              object ChkDataRec: TCheckBox
                Left = 278
                Top = 1402
                Width = 58
                Height = 17
                Caption = 'Imprime'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 305
              end
              object CEdSaidaLn: TEdit
                Left = 153
                Top = 102
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 0
              end
              object CEdNumNotaLn: TEdit
                Left = 153
                Top = 125
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 6
              end
              object CEdCFOPLn: TEdit
                Left = 153
                Top = 149
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 12
              end
              object CEdRazaoLn: TEdit
                Left = 153
                Top = 172
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 18
              end
              object CEdDataEmissLn: TEdit
                Left = 153
                Top = 195
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 24
              end
              object CEdBairroLn: TEdit
                Left = 153
                Top = 218
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 30
              end
              object CEdDataSaidaLn: TEdit
                Left = 153
                Top = 241
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 36
              end
              object CEdFoneLn: TEdit
                Left = 153
                Top = 264
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 42
              end
              object CEdInsc_EstaLn: TEdit
                Left = 153
                Top = 287
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 48
              end
              object CEdSaidaCol: TEdit
                Left = 228
                Top = 102
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 1
              end
              object CEdNumNotaCol: TEdit
                Left = 228
                Top = 125
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 7
              end
              object CEdCFOPCol: TEdit
                Left = 228
                Top = 149
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 13
              end
              object CEdRazaoCol: TEdit
                Left = 228
                Top = 172
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 19
              end
              object CEdDataEmissCol: TEdit
                Left = 228
                Top = 195
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 25
              end
              object CEdBairroCol: TEdit
                Left = 228
                Top = 218
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 31
              end
              object CEdDataSaidaCol: TEdit
                Left = 228
                Top = 241
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 37
              end
              object CEdFoneCol: TEdit
                Left = 228
                Top = 264
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 43
              end
              object CEdInsc_EstaCol: TEdit
                Left = 228
                Top = 287
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 49
              end
              object CEdEntradaLn: TEdit
                Left = 520
                Top = 102
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 3
              end
              object CEdNatOpeLn: TEdit
                Left = 520
                Top = 125
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 9
              end
              object CEdInscSubstLn: TEdit
                Left = 520
                Top = 149
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 15
              end
              object CEdCNPJ_CNPFLn: TEdit
                Left = 520
                Top = 172
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 21
              end
              object CEdEnderecoLn: TEdit
                Left = 520
                Top = 195
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 27
              end
              object CEdCEPLn: TEdit
                Left = 520
                Top = 218
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 33
              end
              object CEdCidadeLn: TEdit
                Left = 520
                Top = 241
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 39
              end
              object CEdEstadoLn: TEdit
                Left = 520
                Top = 264
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 45
              end
              object CEdHoraSaidaLn: TEdit
                Left = 520
                Top = 287
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 51
              end
              object CEdEntradaCol: TEdit
                Left = 590
                Top = 102
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 4
              end
              object CEdNatOpeCol: TEdit
                Left = 590
                Top = 125
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 10
              end
              object CEdInscSubstCol: TEdit
                Left = 590
                Top = 149
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 16
              end
              object CEdCNPJ_CNPFCol: TEdit
                Left = 590
                Top = 172
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 22
              end
              object CEdEnderecoCol: TEdit
                Left = 590
                Top = 195
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 28
              end
              object CEdCEPCol: TEdit
                Left = 590
                Top = 218
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 34
              end
              object CEdCidadeCol: TEdit
                Left = 590
                Top = 241
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 40
              end
              object CEdEstadoCol: TEdit
                Left = 590
                Top = 264
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 46
              end
              object CEdHoraSaidaCol: TEdit
                Left = 590
                Top = 287
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 52
              end
              object CEdFatura1Ln: TEdit
                Left = 153
                Top = 314
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 54
              end
              object CEdFatura3Ln: TEdit
                Left = 153
                Top = 337
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 60
              end
              object CEdFatura5Ln: TEdit
                Left = 153
                Top = 360
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 66
              end
              object CEdVenc1Ln: TEdit
                Left = 153
                Top = 383
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 72
              end
              object CEdVenc3Ln: TEdit
                Left = 153
                Top = 406
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 78
              end
              object CEdVenc5Ln: TEdit
                Left = 153
                Top = 430
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 84
              end
              object CEdValor1Ln: TEdit
                Left = 153
                Top = 453
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 90
              end
              object CEdValor3Ln: TEdit
                Left = 153
                Top = 476
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 96
              end
              object CEdValor5Ln: TEdit
                Left = 153
                Top = 500
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 102
              end
              object CEdFatura1Col: TEdit
                Left = 228
                Top = 314
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 55
              end
              object CEdFatura3Col: TEdit
                Left = 228
                Top = 337
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 61
              end
              object CEdFatura5Col: TEdit
                Left = 228
                Top = 361
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 67
              end
              object CEdVenc1Col: TEdit
                Left = 228
                Top = 384
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 73
              end
              object CEdVenc3Col: TEdit
                Left = 228
                Top = 407
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 79
              end
              object CEdVenc5Col: TEdit
                Left = 228
                Top = 430
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 85
              end
              object CEdValor1Col: TEdit
                Left = 228
                Top = 453
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 91
              end
              object CEdValor3Col: TEdit
                Left = 228
                Top = 476
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 97
              end
              object CEdValor5Col: TEdit
                Left = 228
                Top = 500
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 103
              end
              object CEdFatura2Ln: TEdit
                Left = 520
                Top = 314
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 57
              end
              object CEdFatura4Ln: TEdit
                Left = 520
                Top = 337
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 63
              end
              object CEdFatura6Ln: TEdit
                Left = 520
                Top = 360
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 69
              end
              object CEdVenc2Ln: TEdit
                Left = 520
                Top = 383
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 75
              end
              object CEdVenc4Ln: TEdit
                Left = 520
                Top = 406
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 81
              end
              object CEdVenc6Ln: TEdit
                Left = 520
                Top = 430
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 87
              end
              object CEdValor2Ln: TEdit
                Left = 520
                Top = 453
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 93
              end
              object CEdValor4Ln: TEdit
                Left = 520
                Top = 476
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 99
              end
              object CEdValor6Ln: TEdit
                Left = 520
                Top = 500
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 105
              end
              object CEdFatura2Col: TEdit
                Left = 590
                Top = 314
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 58
              end
              object CEdFatura4Col: TEdit
                Left = 590
                Top = 337
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 64
              end
              object CEdFatura6Col: TEdit
                Left = 590
                Top = 360
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 70
              end
              object CEdVenc2Col: TEdit
                Left = 590
                Top = 383
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 76
              end
              object CEdVenc4Col: TEdit
                Left = 590
                Top = 406
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 82
              end
              object CEdVenc6Col: TEdit
                Left = 590
                Top = 430
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 88
              end
              object CEdValor2Col: TEdit
                Left = 590
                Top = 453
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 94
              end
              object CEdValor4Col: TEdit
                Left = 590
                Top = 476
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 100
              end
              object CEdValor6Col: TEdit
                Left = 590
                Top = 500
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 106
              end
              object CEdProdutoLn: TEdit
                Left = 153
                Top = 530
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 108
              end
              object CEdSTLn: TEdit
                Left = 153
                Top = 577
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 120
              end
              object CEdQuantidadeLn: TEdit
                Left = 153
                Top = 600
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 126
              end
              object CEdPrecoTotalLn: TEdit
                Left = 153
                Top = 623
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 132
              end
              object CEdAliqIPILn: TEdit
                Left = 153
                Top = 646
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 138
              end
              object CEdMens1Ln: TEdit
                Left = 153
                Top = 669
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 144
              end
              object CEdProdutoCol: TEdit
                Left = 228
                Top = 530
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 109
              end
              object CEdSTCol: TEdit
                Left = 228
                Top = 577
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 121
              end
              object CEdQuantidadeCol: TEdit
                Left = 228
                Top = 600
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 127
              end
              object CEdPrecoTotalCol: TEdit
                Left = 228
                Top = 623
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 133
              end
              object CEdAliqIPICol: TEdit
                Left = 228
                Top = 646
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 139
              end
              object CEdMens1Col: TEdit
                Left = 228
                Top = 669
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 145
              end
              object CEdCFLn: TEdit
                Left = 153
                Top = 553
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 114
              end
              object CEdUnidadeLn: TEdit
                Left = 520
                Top = 577
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 123
              end
              object CEdPrecoUnitLn: TEdit
                Left = 520
                Top = 600
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 129
              end
              object CEdAliqICMSLn: TEdit
                Left = 520
                Top = 624
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 135
              end
              object CEdValorIPILn: TEdit
                Left = 520
                Top = 647
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 141
              end
              object CEdMens2Ln: TEdit
                Left = 153
                Top = 692
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 150
              end
              object CEdCFCol: TEdit
                Left = 228
                Top = 553
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 115
              end
              object CEdUnidadeCol: TEdit
                Left = 590
                Top = 577
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 124
              end
              object CEdPrecoUnitCol: TEdit
                Left = 590
                Top = 600
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 130
              end
              object CEdAliqICMSCol: TEdit
                Left = 590
                Top = 623
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 136
              end
              object CEdValorIPICol: TEdit
                Left = 590
                Top = 647
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 142
              end
              object CEdMens2Col: TEdit
                Left = 228
                Top = 691
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 151
              end
              object CEdBasICMSLn: TEdit
                Left = 153
                Top = 719
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 153
              end
              object CEdBasSubstLn: TEdit
                Left = 153
                Top = 743
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 159
              end
              object CEdValorTotProdLn: TEdit
                Left = 153
                Top = 766
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 165
              end
              object CEdBasICMSCol: TEdit
                Left = 228
                Top = 719
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 154
              end
              object CEdBasSubstCol: TEdit
                Left = 228
                Top = 743
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 160
              end
              object CEdValorTotProdCol: TEdit
                Left = 228
                Top = 766
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 166
              end
              object CEdValorSeguLn: TEdit
                Left = 153
                Top = 789
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 171
              end
              object CEdTotIPILn: TEdit
                Left = 153
                Top = 813
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 177
              end
              object CEdValorSeguCol: TEdit
                Left = 228
                Top = 789
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 172
              end
              object CEdTotIPICol: TEdit
                Left = 228
                Top = 813
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 178
              end
              object CEdValorICMSLn: TEdit
                Left = 520
                Top = 719
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 156
              end
              object CEdValorSubstLn: TEdit
                Left = 520
                Top = 743
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 162
              end
              object CEdValorFretLn: TEdit
                Left = 520
                Top = 767
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 168
              end
              object CEdDespAceLn: TEdit
                Left = 520
                Top = 790
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 174
              end
              object CEdValorTotalLn: TEdit
                Left = 520
                Top = 813
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 180
              end
              object CEdValorICMSCol: TEdit
                Left = 590
                Top = 719
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 157
              end
              object CEdValorSubstCol: TEdit
                Left = 590
                Top = 743
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 163
              end
              object CEdValorFretCol: TEdit
                Left = 590
                Top = 767
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 169
              end
              object CEdDespAceCol: TEdit
                Left = 590
                Top = 790
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 175
              end
              object CEdValorTotalCol: TEdit
                Left = 590
                Top = 813
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 181
              end
              object CEdTranspLn: TEdit
                Left = 153
                Top = 844
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 183
              end
              object CEdPlacaVeicLn: TEdit
                Left = 153
                Top = 868
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 189
              end
              object CEdCNPJ_TransLn: TEdit
                Left = 153
                Top = 892
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 195
              end
              object CEdCidadeTransLn: TEdit
                Left = 153
                Top = 916
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 201
              end
              object CEdInscEstTransLn: TEdit
                Left = 153
                Top = 940
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 207
              end
              object CEdEspecieLn: TEdit
                Left = 153
                Top = 963
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 213
              end
              object CEdNumeroLn: TEdit
                Left = 153
                Top = 986
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 219
              end
              object CEdPesoLiqLn: TEdit
                Left = 153
                Top = 1009
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 225
              end
              object CEdTranspCol: TEdit
                Left = 228
                Top = 844
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 184
              end
              object CEdPlacaVeicCol: TEdit
                Left = 228
                Top = 868
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 190
              end
              object CEdCNPJ_TransCol: TEdit
                Left = 228
                Top = 892
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 196
              end
              object CEdCidadeTransCol: TEdit
                Left = 228
                Top = 916
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 202
              end
              object CEdInscEstTransCol: TEdit
                Left = 228
                Top = 940
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 208
              end
              object CEdEspecieCol: TEdit
                Left = 228
                Top = 963
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 214
              end
              object CEdNumeroCol: TEdit
                Left = 228
                Top = 986
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 220
              end
              object CEdPesoLiqCol: TEdit
                Left = 228
                Top = 1009
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 226
              end
              object CEdFretPorCotLn: TEdit
                Left = 520
                Top = 844
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 186
              end
              object CEdPlacaUFLn: TEdit
                Left = 520
                Top = 868
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 192
              end
              object CEdEndTransLn: TEdit
                Left = 520
                Top = 892
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 198
              end
              object CEdEstadoTransLn: TEdit
                Left = 520
                Top = 916
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 204
              end
              object CEdQtdeVolLn: TEdit
                Left = 520
                Top = 939
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 210
              end
              object CEdMarcaLn: TEdit
                Left = 520
                Top = 962
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 216
              end
              object CEdPesoBrutoLn: TEdit
                Left = 520
                Top = 986
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 222
              end
              object CEdFretPorCotCol: TEdit
                Left = 590
                Top = 844
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 187
              end
              object CEdPlacaUFCol: TEdit
                Left = 590
                Top = 868
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 193
              end
              object CEdEndTransCol: TEdit
                Left = 590
                Top = 892
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 199
              end
              object CEdEstadoTransCol: TEdit
                Left = 590
                Top = 916
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 205
              end
              object CEdQtdeVolCol: TEdit
                Left = 590
                Top = 939
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 211
              end
              object CEdMarcaCol: TEdit
                Left = 590
                Top = 962
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 217
              end
              object CEdPesoBrutoCol: TEdit
                Left = 590
                Top = 986
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 223
              end
              object CEdTranspRedLn: TEdit
                Left = 528
                Top = 1037
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 231
              end
              object CEdTranspRedCol: TEdit
                Left = 598
                Top = 1037
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 232
              end
              object CEdRedespTituloLn: TEdit
                Left = 209
                Top = 1037
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 228
              end
              object CEdDadoAd2Ln: TEdit
                Left = 522
                Top = 1197
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 261
              end
              object CEdDadoAd4Ln: TEdit
                Left = 522
                Top = 1220
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 267
              end
              object CEdDadoAd6Ln: TEdit
                Left = 522
                Top = 1244
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 273
              end
              object CEdDadoAd8Ln: TEdit
                Left = 522
                Top = 1268
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 279
              end
              object CEdDadoAd10Ln: TEdit
                Left = 522
                Top = 1291
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 285
              end
              object CEdRedespTituloCol: TEdit
                Left = 279
                Top = 1037
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 229
              end
              object CEdDadoAd2Col: TEdit
                Left = 592
                Top = 1197
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 262
              end
              object CEdDadoAd4Col: TEdit
                Left = 592
                Top = 1220
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 268
              end
              object CEdDadoAd6Col: TEdit
                Left = 592
                Top = 1244
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 274
              end
              object CEdDadoAd8Col: TEdit
                Left = 592
                Top = 1268
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 280
              end
              object CEdDadoAd10Col: TEdit
                Left = 592
                Top = 1291
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 286
              end
              object CEdDadoAd1Ln: TEdit
                Left = 176
                Top = 1197
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 258
              end
              object CEdDadoAd3Ln: TEdit
                Left = 176
                Top = 1221
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 264
              end
              object CEdDadoAd5Ln: TEdit
                Left = 176
                Top = 1244
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 270
              end
              object CEdDadoAd7Ln: TEdit
                Left = 176
                Top = 1268
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 276
              end
              object CEdDadoAd9Ln: TEdit
                Left = 176
                Top = 1291
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 282
              end
              object CEdDadoAd1Col: TEdit
                Left = 247
                Top = 1197
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 259
              end
              object CEdDadoAd3Col: TEdit
                Left = 247
                Top = 1221
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 265
              end
              object CEdDadoAd5Col: TEdit
                Left = 247
                Top = 1244
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 271
              end
              object CEdDadoAd7Col: TEdit
                Left = 247
                Top = 1268
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 277
              end
              object CEdDadoAd9Col: TEdit
                Left = 247
                Top = 1291
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 283
              end
              object CEdNotaFaturaLn: TEdit
                Left = 176
                Top = 1377
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 297
              end
              object CEdDataRecLn: TEdit
                Left = 176
                Top = 1400
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 303
              end
              object CEdNotaFaturaCol: TEdit
                Left = 247
                Top = 1377
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 298
              end
              object CEdDataRecCol: TEdit
                Left = 247
                Top = 1400
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 304
              end
              object CEdAssinturaLn: TEdit
                Left = 522
                Top = 1377
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 300
              end
              object CEdAssinturaCol: TEdit
                Left = 592
                Top = 1377
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 301
              end
              object CEdProdutoDescLn: TEdit
                Left = 520
                Top = 530
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 111
              end
              object CEdProdutoDescCol: TEdit
                Left = 590
                Top = 530
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 112
              end
              object ChkProdutoDesc: TCheckBox
                Left = 620
                Top = 532
                Width = 58
                Height = 17
                Caption = 'Imprime'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 113
              end
              object ChkRedespRua: TCheckBox
                Left = 309
                Top = 1063
                Width = 58
                Height = 17
                Caption = 'Imprime'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 236
              end
              object CEdRedespRuaLn: TEdit
                Left = 209
                Top = 1061
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 234
              end
              object CEdRedespRuaCol: TEdit
                Left = 279
                Top = 1061
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 235
              end
              object CEdRedespCidLn: TEdit
                Left = 528
                Top = 1061
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 237
              end
              object CEdRedespCidCol: TEdit
                Left = 598
                Top = 1061
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 238
              end
              object ChkRedespCid: TCheckBox
                Left = 628
                Top = 1063
                Width = 60
                Height = 17
                Caption = 'Imprime'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                TabOrder = 239
              end
              object CEdEntregaRuaLn: TEdit
                Left = 528
                Top = 1084
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 243
              end
              object CEdEntregaRuaCol: TEdit
                Left = 598
                Top = 1084
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 244
              end
              object ChkEntregaRua: TCheckBox
                Left = 628
                Top = 1086
                Width = 58
                Height = 17
                Caption = 'Imprime'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 245
              end
              object CEdEntregaTituloLn: TEdit
                Left = 209
                Top = 1084
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 240
              end
              object CEdEntregaTituloCol: TEdit
                Left = 279
                Top = 1084
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 241
              end
              object ChkEntregaTitulo: TCheckBox
                Left = 309
                Top = 1086
                Width = 60
                Height = 17
                Caption = 'Imprime'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                TabOrder = 242
              end
              object CEdCFapelidoLn: TEdit
                Left = 520
                Top = 553
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 117
              end
              object CEdCFapelidoCol: TEdit
                Left = 590
                Top = 553
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 118
              end
              object ChkCFapelido: TCheckBox
                Left = 620
                Top = 555
                Width = 60
                Height = 17
                Caption = 'Imprime'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                TabOrder = 119
              end
              object CEdEntregaCidaLn: TEdit
                Left = 209
                Top = 1109
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 246
              end
              object CEdEntregaCidaCol: TEdit
                Left = 279
                Top = 1109
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 247
              end
              object ChkEntregaCida: TCheckBox
                Left = 310
                Top = 1111
                Width = 58
                Height = 17
                Caption = 'Imprime'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 248
              end
              object CEdDadoAd11Ln: TEdit
                Left = 176
                Top = 1314
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 288
              end
              object CEdDadoAd11Col: TEdit
                Left = 247
                Top = 1314
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 289
              end
              object ChkDadoAd11: TCheckBox
                Left = 278
                Top = 1316
                Width = 58
                Height = 17
                Caption = 'Imprime'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 290
              end
              object CEdDadoAd12Ln: TEdit
                Left = 522
                Top = 1314
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 291
              end
              object CEdDadoAd12Col: TEdit
                Left = 592
                Top = 1314
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 292
              end
              object ChkDadoAd12: TCheckBox
                Left = 622
                Top = 1316
                Width = 60
                Height = 17
                Caption = 'Imprime'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                TabOrder = 293
              end
              object CEdCobrancaRuaLn: TEdit
                Left = 528
                Top = 1133
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 252
              end
              object CEdCobrancaRuaCol: TEdit
                Left = 598
                Top = 1133
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 253
              end
              object ChkCobrancaRua: TCheckBox
                Left = 628
                Top = 1135
                Width = 58
                Height = 17
                Caption = 'Imprime'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 254
              end
              object CEdCobrancaTituloLn: TEdit
                Left = 209
                Top = 1133
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 249
              end
              object CEdCobrancaTituloCol: TEdit
                Left = 279
                Top = 1133
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 250
              end
              object ChkCobrancaTitulo: TCheckBox
                Left = 309
                Top = 1135
                Width = 60
                Height = 17
                Caption = 'Imprime'
                Color = clBtnFace
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                TabOrder = 251
              end
              object CEdCobrancaCidaLn: TEdit
                Left = 209
                Top = 1157
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 255
              end
              object CEdCobrancaCidaCol: TEdit
                Left = 280
                Top = 1157
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 256
              end
              object ChkCobrancaCida: TCheckBox
                Left = 310
                Top = 1159
                Width = 58
                Height = 17
                Caption = 'Imprime'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 257
              end
              object RadFonte: TRadioGroup
                Left = 6
                Top = 47
                Width = 680
                Height = 30
                Columns = 2
                ItemIndex = 1
                Items.Strings = (
                  'Lay-Out Condensado - Fonte Comp 17 Cpp'
                  'Lay-Out Normal - Fonte Normal 10 Cpp')
                TabOrder = 306
              end
              object CEdCompDescLn: TEdit
                Left = 520
                Top = 670
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 147
              end
              object CEdCompDescCol: TEdit
                Left = 590
                Top = 670
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 148
              end
              object ChkCompDesc: TCheckBox
                Left = 620
                Top = 671
                Width = 58
                Height = 17
                Caption = 'Imprime'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 149
              end
              object DbChkItem: TDBCheckBox
                Left = 8
                Top = 20
                Width = 265
                Height = 17
                Hint = 
                  'Se o n'#250'mero de itens do pedido exceder o maximo permitido na not' +
                  'a'
                Caption = 'Permitir pedido com mais itens que a nota'
                DataField = 'CNF_NFCONTINUA'
                DataSource = DmCfg.DsNF
                ParentShowHint = False
                ShowHint = True
                TabOrder = 308
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBEdit15: TDBEdit
                Left = 617
                Top = 18
                Width = 65
                Height = 22
                DataField = 'CNF_QTDE_ITENS'
                DataSource = DmCfg.DsNF
                TabOrder = 309
              end
              object CEdDadosCalcLn: TEdit
                Left = 176
                Top = 1337
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 294
              end
              object CEdDadosCalcCol: TEdit
                Left = 247
                Top = 1337
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 295
              end
              object ChkDadoCalc: TCheckBox
                Left = 278
                Top = 1339
                Width = 58
                Height = 17
                Caption = 'Imprime'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 296
              end
            end
            object Panel2: TPanel
              Left = 5
              Top = 4
              Width = 240
              Height = 33
              BevelInner = bvLowered
              BevelOuter = bvLowered
              Caption = 'Panel3'
              Color = 10841658
              TabOrder = 1
              object DBNavigator3: TDBNavigator
                Left = 4
                Top = 4
                Width = 232
                Height = 25
                DataSource = DmCfg.DsNF
                VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
                TabOrder = 0
                OnClick = DBNavigator3Click
              end
            end
            object Panel4: TPanel
              Left = 250
              Top = 4
              Width = 462
              Height = 33
              BevelInner = bvLowered
              BevelOuter = bvLowered
              Caption = 'Panel1'
              Color = 10841658
              TabOrder = 2
              object Bit_CancelarNFs: TBitBtn
                Left = 368
                Top = 4
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
                OnClick = Bit_CancelarNFsClick
              end
              object Bit_SairNFs: TBitBtn
                Left = 368
                Top = 4
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
                TabOrder = 3
                TabStop = False
                OnClick = Bit_SairNFsClick
              end
              object Bit_ExcluirNFs: TBitBtn
                Left = 188
                Top = 4
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
                TabOrder = 0
                TabStop = False
                OnClick = Bit_ExcluirNFsClick
              end
              object Bit_GravarNFs: TBitBtn
                Left = 279
                Top = 4
                Width = 88
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
                TabOrder = 1
                TabStop = False
                OnClick = Bit_GravarNFsClick
              end
              object Bit_NovoNFs: TBitBtn
                Left = 6
                Top = 4
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
                TabOrder = 4
                TabStop = False
                OnClick = Bit_NovoNFsClick
              end
              object Bit_AlterarNFs: TBitBtn
                Left = 97
                Top = 4
                Width = 90
                Height = 25
                Cursor = crHandPoint
                Caption = '&Alterar'
                TabOrder = 5
                TabStop = False
                OnClick = Bit_AlterarNFsClick
              end
            end
            object DbCodigoNota: TEdit
              Left = 53
              Top = 46
              Width = 21
              Height = 21
              AutoSize = False
              MaxLength = 2
              TabOrder = 3
            end
            object ChkNfs: TCheckBox
              Left = 587
              Top = 49
              Width = 126
              Height = 17
              Caption = 'Nota Fiscal Ativa'
              TabOrder = 5
              OnClick = ChkNfsClick
            end
            object CLinhaNota: TEdit
              Left = 365
              Top = 45
              Width = 27
              Height = 21
              AutoSize = False
              MaxLength = 3
              TabOrder = 6
            end
            object DBDataNFs: TJvDBDateEdit
              Left = 109
              Top = 46
              Width = 87
              Height = 22
              DataField = 'CNF_DTCADA'
              DataSource = DmCfg.DsNF
              Glyph.Data = {
                4E000000424D4E000000000000003E000000280000000F000000040000000100
                010000000000100000000000000000000000020000000200000000000000FFFF
                FF00FFFE00009CE600009CE60000FFFE0000}
              ImageKind = ikCustom
              PopupColor = clBtnFace
              ShowNullDate = False
              YearDigits = dyFour
              TabOrder = 4
            end
          end
        end
      end
      object TPage
        Left = 0
        Top = 0
        Caption = 'NotaFiscalEtiqueta'
        ExplicitWidth = 0
        ExplicitHeight = 0
        object PNotaFiscalEtiqueta: TPanel
          Left = 0
          Top = 0
          Width = 767
          Height = 509
          Align = alClient
          TabOrder = 0
          object Group02: TGroupBox
            Left = 1
            Top = 49
            Width = 765
            Height = 459
            Align = alBottom
            Caption = 'Configura'#231#245'es das Etiquetas'
            Enabled = False
            TabOrder = 0
            object Label406: TLabel
              Left = 6
              Top = 138
              Width = 35
              Height = 13
              Caption = 'Cliente:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMaroon
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label407: TLabel
              Left = 121
              Top = 138
              Width = 29
              Height = 13
              Caption = 'Linha:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label408: TLabel
              Left = 191
              Top = 138
              Width = 36
              Height = 13
              Caption = 'Coluna:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label409: TLabel
              Left = 421
              Top = 138
              Width = 49
              Height = 13
              Alignment = taRightJustify
              Caption = 'Endere'#231'o:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMaroon
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label410: TLabel
              Left = 474
              Top = 138
              Width = 29
              Height = 13
              Caption = 'Linha:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label411: TLabel
              Left = 540
              Top = 138
              Width = 36
              Height = 13
              Caption = 'Coluna:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label412: TLabel
              Left = 6
              Top = 161
              Width = 36
              Height = 13
              Caption = 'Cidade:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMaroon
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label413: TLabel
              Left = 121
              Top = 161
              Width = 29
              Height = 13
              Caption = 'Linha:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label414: TLabel
              Left = 191
              Top = 161
              Width = 36
              Height = 13
              Caption = 'Coluna:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label415: TLabel
              Left = 453
              Top = 161
              Width = 17
              Height = 13
              Alignment = taRightJustify
              Caption = 'UF:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMaroon
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label416: TLabel
              Left = 474
              Top = 161
              Width = 29
              Height = 13
              Caption = 'Linha:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label417: TLabel
              Left = 540
              Top = 161
              Width = 36
              Height = 13
              Caption = 'Coluna:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label418: TLabel
              Left = 6
              Top = 184
              Width = 24
              Height = 13
              Caption = 'CEP:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMaroon
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label419: TLabel
              Left = 121
              Top = 184
              Width = 29
              Height = 13
              Caption = 'Linha:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label420: TLabel
              Left = 191
              Top = 184
              Width = 36
              Height = 13
              Caption = 'Coluna:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label424: TLabel
              Left = 6
              Top = 215
              Width = 59
              Height = 13
              Caption = 'Nota Fiscal: '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMaroon
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label425: TLabel
              Left = 121
              Top = 215
              Width = 29
              Height = 13
              Caption = 'Linha:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label426: TLabel
              Left = 191
              Top = 215
              Width = 36
              Height = 13
              Caption = 'Coluna:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label427: TLabel
              Left = 426
              Top = 215
              Width = 44
              Height = 13
              Alignment = taRightJustify
              Caption = '(Volume):'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label430: TLabel
              Left = 6
              Top = 238
              Width = 27
              Height = 13
              Caption = 'Peso:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMaroon
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label431: TLabel
              Left = 121
              Top = 238
              Width = 29
              Height = 13
              Caption = 'Linha:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label432: TLabel
              Left = 191
              Top = 238
              Width = 36
              Height = 13
              Caption = 'Coluna:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label433: TLabel
              Left = 378
              Top = 238
              Width = 33
              Height = 13
              Alignment = taRightJustify
              Caption = 'C'#243'digo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMaroon
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label434: TLabel
              Left = 474
              Top = 238
              Width = 29
              Height = 13
              Caption = 'Linha:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label435: TLabel
              Left = 540
              Top = 238
              Width = 36
              Height = 13
              Caption = 'Coluna:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label436: TLabel
              Left = 6
              Top = 261
              Width = 40
              Height = 13
              Caption = 'Produto:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMaroon
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label437: TLabel
              Left = 121
              Top = 261
              Width = 29
              Height = 13
              Caption = 'Linha:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label438: TLabel
              Left = 191
              Top = 261
              Width = 36
              Height = 13
              Caption = 'Coluna:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label439: TLabel
              Left = 369
              Top = 215
              Width = 55
              Height = 13
              Alignment = taRightJustify
              Caption = 'Quantidade'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMaroon
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label440: TLabel
              Left = 474
              Top = 215
              Width = 29
              Height = 13
              Caption = 'Linha:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label441: TLabel
              Left = 540
              Top = 214
              Width = 36
              Height = 13
              Caption = 'Coluna:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label442: TLabel
              Left = 6
              Top = 290
              Width = 75
              Height = 13
              Caption = 'Transportadora:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMaroon
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label443: TLabel
              Left = 121
              Top = 291
              Width = 29
              Height = 13
              Caption = 'Linha:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label444: TLabel
              Left = 191
              Top = 291
              Width = 36
              Height = 13
              Caption = 'Coluna:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label445: TLabel
              Left = 421
              Top = 290
              Width = 49
              Height = 13
              Alignment = taRightJustify
              Caption = 'Endere'#231'o:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMaroon
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label446: TLabel
              Left = 474
              Top = 291
              Width = 29
              Height = 13
              Caption = 'Linha:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label447: TLabel
              Left = 540
              Top = 291
              Width = 36
              Height = 13
              Caption = 'Coluna:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label448: TLabel
              Left = 6
              Top = 314
              Width = 52
              Height = 13
              Caption = 'Cidade/UF'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMaroon
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label449: TLabel
              Left = 121
              Top = 314
              Width = 29
              Height = 13
              Caption = 'Linha:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label450: TLabel
              Left = 191
              Top = 314
              Width = 36
              Height = 13
              Caption = 'Coluna:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label451: TLabel
              Left = 446
              Top = 314
              Width = 24
              Height = 13
              Alignment = taRightJustify
              Caption = 'CEP:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMaroon
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label452: TLabel
              Left = 474
              Top = 314
              Width = 29
              Height = 13
              Caption = 'Linha:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label453: TLabel
              Left = 540
              Top = 314
              Width = 36
              Height = 13
              Caption = 'Coluna:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Bevel2: TBevel
              Left = 6
              Top = 207
              Width = 711
              Height = 7
              Shape = bsTopLine
            end
            object Bevel3: TBevel
              Left = 6
              Top = 282
              Width = 711
              Height = 7
              Shape = bsTopLine
            end
            object Label421: TLabel
              Left = 394
              Top = 111
              Width = 221
              Height = 13
              Caption = 'N'#250'mero M'#225'ximo de linhas da etiqueta :'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label422: TLabel
              Left = 10
              Top = 110
              Width = 73
              Height = 13
              Caption = 'Inicio Coluna 1:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label423: TLabel
              Left = 122
              Top = 110
              Width = 73
              Height = 13
              Caption = 'Inicio Coluna 2:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label454: TLabel
              Left = 234
              Top = 110
              Width = 73
              Height = 13
              Caption = 'Inicio Coluna 3:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Bevel4: TBevel
              Left = 6
              Top = 130
              Width = 711
              Height = 7
              Shape = bsTopLine
            end
            object Label456: TLabel
              Left = 416
              Top = 238
              Width = 55
              Height = 13
              Alignment = taRightJustify
              Caption = 'do Produto:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Bevel5: TBevel
              Left = 6
              Top = 336
              Width = 711
              Height = 8
              Shape = bsTopLine
            end
            object Label429: TLabel
              Left = 6
              Top = 29
              Width = 36
              Height = 13
              Caption = 'C'#243'digo:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label460: TLabel
              Left = 70
              Top = 29
              Width = 29
              Height = 13
              Caption = 'Data.:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label455: TLabel
              Left = 193
              Top = 29
              Width = 108
              Height = 13
              Caption = 'Descri'#231#227'o da Etiqueta:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object ChkCET_Cliente: TCheckBox
              Left = 261
              Top = 138
              Width = 58
              Height = 17
              Caption = 'Imprime'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 10
            end
            object ChkCET_Endereco: TCheckBox
              Left = 610
              Top = 138
              Width = 60
              Height = 17
              Caption = 'Imprime'
              Color = clBtnFace
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 13
            end
            object ChkCET_Cidade: TCheckBox
              Left = 261
              Top = 161
              Width = 58
              Height = 17
              Caption = 'Imprime'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 16
            end
            object ChkCET_UF: TCheckBox
              Left = 610
              Top = 161
              Width = 60
              Height = 17
              Caption = 'Imprime'
              Color = clBtnFace
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 19
            end
            object ChkCET_Cep: TCheckBox
              Left = 261
              Top = 184
              Width = 58
              Height = 17
              Caption = 'Imprime'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 22
            end
            object ChkCET_Nota: TCheckBox
              Left = 261
              Top = 215
              Width = 58
              Height = 17
              Caption = 'Imprime'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 25
            end
            object ChkCET_Peso: TCheckBox
              Left = 261
              Top = 238
              Width = 58
              Height = 17
              Caption = 'Imprime'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 31
            end
            object ChkCET_CodProd: TCheckBox
              Left = 610
              Top = 238
              Width = 60
              Height = 17
              Caption = 'Imprime'
              Color = clBtnFace
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 34
            end
            object ChkCET_Produto: TCheckBox
              Left = 261
              Top = 261
              Width = 58
              Height = 17
              Caption = 'Imprime'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 37
            end
            object ChkCET_Quantidade: TCheckBox
              Left = 610
              Top = 215
              Width = 60
              Height = 17
              Caption = 'Imprime'
              Color = clBtnFace
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 28
            end
            object ChkCET_Transp: TCheckBox
              Left = 261
              Top = 291
              Width = 58
              Height = 18
              Caption = 'Imprime'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 40
            end
            object ChkCET_EndTran: TCheckBox
              Left = 610
              Top = 291
              Width = 60
              Height = 18
              Caption = 'Imprime'
              Color = clBtnFace
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 43
            end
            object ChkCET_CidTran: TCheckBox
              Left = 261
              Top = 314
              Width = 58
              Height = 18
              Caption = 'Imprime'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 46
            end
            object ChkCET_CepTran: TCheckBox
              Left = 610
              Top = 314
              Width = 60
              Height = 18
              Caption = 'Imprime'
              Color = clBtnFace
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 49
            end
            object CET_ClienteLn: TEdit
              Left = 155
              Top = 135
              Width = 27
              Height = 21
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              MaxLength = 3
              ParentFont = False
              TabOrder = 8
            end
            object CET_CidadeLn: TEdit
              Left = 155
              Top = 158
              Width = 27
              Height = 21
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              MaxLength = 3
              ParentFont = False
              TabOrder = 14
            end
            object CET_CepLn: TEdit
              Left = 155
              Top = 181
              Width = 27
              Height = 21
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              MaxLength = 3
              ParentFont = False
              TabOrder = 20
            end
            object CET_NotaLn: TEdit
              Left = 155
              Top = 212
              Width = 27
              Height = 21
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              MaxLength = 3
              ParentFont = False
              TabOrder = 23
            end
            object CET_PesoLn: TEdit
              Left = 155
              Top = 235
              Width = 27
              Height = 21
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              MaxLength = 3
              ParentFont = False
              TabOrder = 29
            end
            object CET_ProdutoLn: TEdit
              Left = 155
              Top = 258
              Width = 27
              Height = 21
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              MaxLength = 3
              ParentFont = False
              TabOrder = 35
            end
            object CET_TranspLn: TEdit
              Left = 155
              Top = 288
              Width = 27
              Height = 22
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              MaxLength = 3
              ParentFont = False
              TabOrder = 38
            end
            object CET_CidTranLn: TEdit
              Left = 155
              Top = 312
              Width = 27
              Height = 22
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              MaxLength = 3
              ParentFont = False
              TabOrder = 44
            end
            object CET_ClienteCol: TEdit
              Left = 230
              Top = 135
              Width = 27
              Height = 21
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              MaxLength = 3
              ParentFont = False
              TabOrder = 9
            end
            object CET_CidadeCol: TEdit
              Left = 230
              Top = 158
              Width = 27
              Height = 21
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              MaxLength = 3
              ParentFont = False
              TabOrder = 15
            end
            object CET_CepCol: TEdit
              Left = 230
              Top = 182
              Width = 27
              Height = 21
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              MaxLength = 3
              ParentFont = False
              TabOrder = 21
            end
            object CET_NotaCol: TEdit
              Left = 230
              Top = 212
              Width = 27
              Height = 21
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              MaxLength = 3
              ParentFont = False
              TabOrder = 24
            end
            object CET_PesoCol: TEdit
              Left = 230
              Top = 235
              Width = 27
              Height = 21
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              MaxLength = 3
              ParentFont = False
              TabOrder = 30
            end
            object CET_ProdutoCol: TEdit
              Left = 230
              Top = 258
              Width = 27
              Height = 21
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              MaxLength = 3
              ParentFont = False
              TabOrder = 36
            end
            object CET_TranspCol: TEdit
              Left = 230
              Top = 288
              Width = 27
              Height = 22
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              MaxLength = 3
              ParentFont = False
              TabOrder = 39
            end
            object CET_CidTranCol: TEdit
              Left = 230
              Top = 312
              Width = 27
              Height = 22
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              MaxLength = 3
              ParentFont = False
              TabOrder = 45
            end
            object CET_EnderecoLn: TEdit
              Left = 508
              Top = 135
              Width = 27
              Height = 21
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              MaxLength = 3
              ParentFont = False
              TabOrder = 11
            end
            object CET_UFLn: TEdit
              Left = 508
              Top = 158
              Width = 27
              Height = 21
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              MaxLength = 3
              ParentFont = False
              TabOrder = 17
            end
            object CET_CodProdLn: TEdit
              Left = 508
              Top = 235
              Width = 27
              Height = 21
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              MaxLength = 3
              ParentFont = False
              TabOrder = 32
            end
            object CET_QuantidadeLn: TEdit
              Left = 508
              Top = 212
              Width = 27
              Height = 21
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              MaxLength = 3
              ParentFont = False
              TabOrder = 26
            end
            object CET_EndTranLn: TEdit
              Left = 508
              Top = 288
              Width = 27
              Height = 22
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              MaxLength = 3
              ParentFont = False
              TabOrder = 41
            end
            object CET_CepTranLn: TEdit
              Left = 508
              Top = 311
              Width = 27
              Height = 22
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              MaxLength = 3
              ParentFont = False
              TabOrder = 47
            end
            object CET_EnderecoCol: TEdit
              Left = 578
              Top = 135
              Width = 27
              Height = 21
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              MaxLength = 3
              ParentFont = False
              TabOrder = 12
            end
            object CET_UFCol: TEdit
              Left = 578
              Top = 158
              Width = 27
              Height = 21
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              MaxLength = 3
              ParentFont = False
              TabOrder = 18
            end
            object CET_CodProdCol: TEdit
              Left = 578
              Top = 235
              Width = 27
              Height = 21
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              MaxLength = 3
              ParentFont = False
              TabOrder = 33
            end
            object CET_QuantidadeCol: TEdit
              Left = 578
              Top = 212
              Width = 27
              Height = 21
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              MaxLength = 3
              ParentFont = False
              TabOrder = 27
            end
            object CET_EndTranCol: TEdit
              Left = 578
              Top = 288
              Width = 27
              Height = 22
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              MaxLength = 3
              ParentFont = False
              TabOrder = 42
            end
            object CET_CepTranCol: TEdit
              Left = 578
              Top = 312
              Width = 27
              Height = 22
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              MaxLength = 3
              ParentFont = False
              TabOrder = 48
            end
            object CNumerLinhas: TEdit
              Left = 617
              Top = 106
              Width = 24
              Height = 21
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              MaxLength = 3
              ParentFont = False
              TabOrder = 7
            end
            object CIniCol1: TEdit
              Left = 86
              Top = 106
              Width = 24
              Height = 21
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              MaxLength = 3
              ParentFont = False
              TabOrder = 4
            end
            object CIniCol2: TEdit
              Left = 198
              Top = 106
              Width = 24
              Height = 21
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              MaxLength = 3
              ParentFont = False
              TabOrder = 5
            end
            object CIniCol3: TEdit
              Left = 310
              Top = 106
              Width = 24
              Height = 21
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              MaxLength = 3
              ParentFont = False
              TabOrder = 6
            end
            object DBChkEtiq: TDBCheckBox
              Left = 585
              Top = 29
              Width = 87
              Height = 17
              Caption = '&Etiqueta Ativa'
              DataField = 'CET_ATIVO'
              DataSource = DmCfg.DsEtiq
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object ChkCet_Rotulo: TDBCheckBox
              Left = 9
              Top = 340
              Width = 181
              Height = 18
              Caption = 'Imprimir R'#243'tulos dos Dados'
              DataField = 'CET_ROTULO'
              DataSource = DmCfg.DsEtiq
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMaroon
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 50
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object Db_DescriEtiq: TDBEdit
              Left = 304
              Top = 27
              Width = 274
              Height = 21
              CharCase = ecUpperCase
              DataField = 'CET_DESCRIETIQ'
              DataSource = DmCfg.DsEtiq
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
            end
            object DbCodigo: TEdit
              Left = 44
              Top = 27
              Width = 21
              Height = 22
              MaxLength = 2
              TabOrder = 0
            end
            object Group01: TGroupBox
              Left = 6
              Top = 53
              Width = 299
              Height = 41
              Caption = 'Tipo de Etiqueta'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 51
              object RadCol1: TRadioButton
                Left = 12
                Top = 19
                Width = 69
                Height = 17
                Caption = '&1 Coluna'
                Checked = True
                TabOrder = 0
                TabStop = True
              end
              object RadCol2: TRadioButton
                Left = 103
                Top = 19
                Width = 67
                Height = 17
                Caption = '&2 Colunas'
                TabOrder = 1
              end
              object RadCol3: TRadioButton
                Left = 195
                Top = 19
                Width = 70
                Height = 17
                Caption = '&3 Colunas'
                TabOrder = 2
              end
            end
            object GroupBox3: TGroupBox
              Left = 306
              Top = 53
              Width = 415
              Height = 41
              Caption = 'Tipo de Impressora'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 52
              object RadImpM: TRadioButton
                Left = 7
                Top = 19
                Width = 113
                Height = 17
                Caption = 'Impressora &Matricial'
                TabOrder = 0
              end
              object RadImpL: TRadioButton
                Left = 138
                Top = 19
                Width = 183
                Height = 17
                Caption = 'Impressora Jato de Tinta / &Laser'
                Checked = True
                TabOrder = 1
                TabStop = True
              end
            end
            object DbDataEtiq: TJvDBDateEdit
              Left = 101
              Top = 27
              Width = 87
              Height = 21
              DataField = 'CET_DTCADA'
              DataSource = DmCfg.DsEtiq
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Glyph.Data = {
                4E000000424D4E000000000000003E000000280000000F000000040000000100
                010000000000100000000000000000000000020000000200000000000000FFFF
                FF00FFFE00009CE600009CE60000FFFE0000}
              ImageKind = ikCustom
              ParentFont = False
              PopupColor = clBtnFace
              ShowNullDate = False
              YearDigits = dyFour
              TabOrder = 1
            end
          end
          object PNotaFiscal_Etiqueta_GRUD: TPanel
            Left = 307
            Top = 4
            Width = 425
            Height = 33
            BevelInner = bvLowered
            BevelOuter = bvLowered
            Caption = 'Panel1'
            Color = 10841658
            TabOrder = 1
            object Bit_CancelarEtiq: TBitBtn
              Left = 337
              Top = 4
              Width = 82
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
              OnClick = Bit_CancelarEtiqClick
            end
            object Bit_SairEtiq: TBitBtn
              Left = 337
              Top = 4
              Width = 82
              Height = 25
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
            object Bit_GravarEtiq: TBitBtn
              Left = 254
              Top = 4
              Width = 82
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
              TabStop = False
              OnClick = Bit_GravarEtiqClick
            end
            object Bit_ExcluirEtiq: TBitBtn
              Left = 171
              Top = 4
              Width = 82
              Height = 25
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
              TabOrder = 0
              TabStop = False
              OnClick = Bit_ExcluirEtiqClick
            end
            object Bit_NovoEtiq: TBitBtn
              Left = 5
              Top = 4
              Width = 82
              Height = 25
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
              TabOrder = 4
              TabStop = False
              OnClick = Bit_NovoEtiqClick
            end
            object Bit_AlterarEtiq: TBitBtn
              Left = 88
              Top = 4
              Width = 82
              Height = 25
              Cursor = crHandPoint
              Caption = '&Alterar'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 5
              TabStop = False
              OnClick = Bit_AlterarEtiqClick
            end
          end
          object PNotaFiscal_Etiqueta_nav: TPanel
            Left = 7
            Top = 4
            Width = 206
            Height = 33
            BevelInner = bvLowered
            BevelOuter = bvLowered
            Caption = 'Panel3'
            Color = 10841658
            TabOrder = 2
            object DBNavigator1: TDBNavigator
              Left = 5
              Top = 4
              Width = 196
              Height = 25
              DataSource = DmCfg.DsEtiq
              VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
              TabOrder = 0
              OnClick = DBNavigator1Click
            end
          end
          object Panel3: TPanel
            Left = 215
            Top = 4
            Width = 91
            Height = 33
            BevelInner = bvLowered
            BevelOuter = bvLowered
            Caption = 'Panel3'
            Color = 10841658
            TabOrder = 3
            object Bit_Lista: TBitBtn
              Left = 4
              Top = 4
              Width = 82
              Height = 25
              Cursor = crHandPoint
              Caption = '&Consulta'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
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
            end
          end
        end
      end
      object TPage
        Left = 0
        Top = 0
        Caption = 'Duplicata'
        ExplicitWidth = 0
        ExplicitHeight = 0
        object PDuplicata: TPanel
          Left = 0
          Top = 0
          Width = 767
          Height = 509
          Align = alClient
          TabOrder = 0
          object Group00: TGroupBox
            Left = 1
            Top = 49
            Width = 765
            Height = 459
            Align = alBottom
            Caption = 'Campos da Duplicata'
            Enabled = False
            TabOrder = 0
            object Label63: TLabel
              Left = 6
              Top = 65
              Width = 98
              Height = 14
              Caption = 'Natureza Opera'#231#227'o:'
            end
            object Label64: TLabel
              Left = 121
              Top = 65
              Width = 29
              Height = 14
              Caption = 'Linha:'
            end
            object Label65: TLabel
              Left = 191
              Top = 65
              Width = 36
              Height = 14
              Caption = 'Coluna:'
            end
            object Label66: TLabel
              Left = 404
              Top = 65
              Width = 83
              Height = 14
              Alignment = taRightJustify
              Caption = 'Data de Emiss'#227'o:'
            end
            object Label67: TLabel
              Left = 491
              Top = 65
              Width = 29
              Height = 14
              Caption = 'Linha:'
            end
            object Label68: TLabel
              Left = 557
              Top = 65
              Width = 36
              Height = 14
              Caption = 'Coluna:'
            end
            object Label69: TLabel
              Left = 6
              Top = 88
              Width = 49
              Height = 14
              Caption = 'Fatura N'#186':'
            end
            object Label70: TLabel
              Left = 121
              Top = 88
              Width = 29
              Height = 14
              Caption = 'Linha:'
            end
            object Label71: TLabel
              Left = 191
              Top = 88
              Width = 36
              Height = 14
              Caption = 'Coluna:'
            end
            object Label72: TLabel
              Left = 459
              Top = 88
              Width = 28
              Height = 14
              Alignment = taRightJustify
              Caption = 'Valor:'
            end
            object Label73: TLabel
              Left = 491
              Top = 88
              Width = 29
              Height = 14
              Caption = 'Linha:'
            end
            object Label74: TLabel
              Left = 557
              Top = 88
              Width = 36
              Height = 14
              Caption = 'Coluna:'
            end
            object Label75: TLabel
              Left = 6
              Top = 111
              Width = 102
              Height = 14
              Caption = 'Duplicata(N'#186' Ordem):'
            end
            object Label76: TLabel
              Left = 121
              Top = 111
              Width = 29
              Height = 14
              Caption = 'Linha:'
            end
            object Label77: TLabel
              Left = 191
              Top = 111
              Width = 36
              Height = 14
              Caption = 'Coluna:'
            end
            object Label78: TLabel
              Left = 428
              Top = 111
              Width = 59
              Height = 14
              Alignment = taRightJustify
              Caption = 'Vencimento:'
            end
            object Label79: TLabel
              Left = 491
              Top = 111
              Width = 29
              Height = 14
              Caption = 'Linha:'
            end
            object Label80: TLabel
              Left = 557
              Top = 111
              Width = 36
              Height = 14
              Caption = 'Coluna:'
            end
            object Label81: TLabel
              Left = 6
              Top = 134
              Width = 67
              Height = 14
              Caption = 'Desconto de :'
            end
            object Label82: TLabel
              Left = 121
              Top = 134
              Width = 29
              Height = 14
              Caption = 'Linha:'
            end
            object Label83: TLabel
              Left = 191
              Top = 134
              Width = 36
              Height = 14
              Caption = 'Coluna:'
            end
            object Label84: TLabel
              Left = 420
              Top = 134
              Width = 67
              Height = 14
              Alignment = taRightJustify
              Caption = 'Desconto at'#233':'
            end
            object Label85: TLabel
              Left = 491
              Top = 134
              Width = 29
              Height = 14
              Caption = 'Linha:'
            end
            object Label86: TLabel
              Left = 557
              Top = 134
              Width = 36
              Height = 14
              Caption = 'Coluna:'
            end
            object Label87: TLabel
              Left = 6
              Top = 157
              Width = 74
              Height = 14
              Caption = 'Desconto s/R$:'
            end
            object Label88: TLabel
              Left = 121
              Top = 157
              Width = 29
              Height = 14
              Caption = 'Linha:'
            end
            object Label89: TLabel
              Left = 191
              Top = 157
              Width = 36
              Height = 14
              Caption = 'Coluna:'
            end
            object Label90: TLabel
              Left = 384
              Top = 157
              Width = 103
              Height = 14
              Alignment = taRightJustify
              Caption = 'Condi'#231#245'es Especiais:'
            end
            object Label91: TLabel
              Left = 491
              Top = 157
              Width = 29
              Height = 14
              Caption = 'Linha:'
            end
            object Label92: TLabel
              Left = 557
              Top = 157
              Width = 36
              Height = 14
              Caption = 'Coluna:'
            end
            object Label93: TLabel
              Left = 6
              Top = 180
              Width = 85
              Height = 14
              Caption = 'Nome do Sacado:'
            end
            object Label94: TLabel
              Left = 121
              Top = 180
              Width = 29
              Height = 14
              Caption = 'Linha:'
            end
            object Label95: TLabel
              Left = 191
              Top = 180
              Width = 36
              Height = 14
              Caption = 'Coluna:'
            end
            object Label96: TLabel
              Left = 438
              Top = 180
              Width = 49
              Height = 14
              Alignment = taRightJustify
              Caption = 'Endere'#231'o:'
            end
            object Label97: TLabel
              Left = 491
              Top = 180
              Width = 29
              Height = 14
              Caption = 'Linha:'
            end
            object Label98: TLabel
              Left = 557
              Top = 180
              Width = 36
              Height = 14
              Caption = 'Coluna:'
            end
            object Label99: TLabel
              Left = 6
              Top = 203
              Width = 32
              Height = 14
              Caption = 'Bairro:'
            end
            object Label100: TLabel
              Left = 121
              Top = 203
              Width = 29
              Height = 14
              Caption = 'Linha:'
            end
            object Label101: TLabel
              Left = 191
              Top = 203
              Width = 36
              Height = 14
              Caption = 'Coluna:'
            end
            object Label102: TLabel
              Left = 404
              Top = 203
              Width = 83
              Height = 14
              Alignment = taRightJustify
              Caption = 'Munic'#237'pio/Cidade:'
            end
            object Label103: TLabel
              Left = 491
              Top = 203
              Width = 29
              Height = 14
              Caption = 'Linha:'
            end
            object Label104: TLabel
              Left = 557
              Top = 203
              Width = 36
              Height = 14
              Caption = 'Coluna:'
            end
            object Label105: TLabel
              Left = 6
              Top = 226
              Width = 52
              Height = 14
              Caption = 'Estado/UF:'
            end
            object Label106: TLabel
              Left = 121
              Top = 226
              Width = 29
              Height = 14
              Caption = 'Linha:'
            end
            object Label107: TLabel
              Left = 191
              Top = 226
              Width = 36
              Height = 14
              Caption = 'Coluna:'
            end
            object Label108: TLabel
              Left = 465
              Top = 226
              Width = 22
              Height = 14
              Alignment = taRightJustify
              Caption = 'CEP:'
            end
            object Label109: TLabel
              Left = 491
              Top = 226
              Width = 29
              Height = 14
              Caption = 'Linha:'
            end
            object Label110: TLabel
              Left = 557
              Top = 226
              Width = 36
              Height = 14
              Caption = 'Coluna:'
            end
            object Label111: TLabel
              Left = 383
              Top = 249
              Width = 102
              Height = 14
              Caption = 'Pra'#231'a de Pagamento:'
            end
            object Label112: TLabel
              Left = 491
              Top = 249
              Width = 29
              Height = 14
              Caption = 'Linha:'
            end
            object Label113: TLabel
              Left = 556
              Top = 249
              Width = 36
              Height = 14
              Caption = 'Coluna:'
            end
            object Label114: TLabel
              Left = 339
              Top = 274
              Width = 148
              Height = 14
              Alignment = taRightJustify
              Caption = 'CEP End.Cobran'#231'a e/ou Pra'#231'a:'
            end
            object Label115: TLabel
              Left = 491
              Top = 274
              Width = 29
              Height = 14
              Caption = 'Linha:'
            end
            object Label116: TLabel
              Left = 557
              Top = 274
              Width = 36
              Height = 14
              Caption = 'Coluna:'
            end
            object Label117: TLabel
              Left = 6
              Top = 273
              Width = 114
              Height = 14
              Caption = 'Endere'#231'o de Cobran'#231'a:'
            end
            object Label118: TLabel
              Left = 121
              Top = 272
              Width = 29
              Height = 14
              Caption = 'Linha:'
            end
            object Label365: TLabel
              Left = 191
              Top = 273
              Width = 36
              Height = 14
              Caption = 'Coluna:'
            end
            object Label368: TLabel
              Left = 14
              Top = 296
              Width = 68
              Height = 14
              Alignment = taRightJustify
              Caption = 'C.N.P.J./C.P.F.:'
            end
            object Label371: TLabel
              Left = 121
              Top = 296
              Width = 29
              Height = 14
              Caption = 'Linha:'
            end
            object Label374: TLabel
              Left = 192
              Top = 296
              Width = 36
              Height = 14
              Caption = 'Coluna:'
            end
            object Label375: TLabel
              Left = 399
              Top = 297
              Width = 85
              Height = 14
              Caption = 'Insc.Estadual/RG:'
            end
            object Label376: TLabel
              Left = 491
              Top = 297
              Width = 29
              Height = 14
              Caption = 'Linha:'
            end
            object Label377: TLabel
              Left = 556
              Top = 297
              Width = 36
              Height = 14
              Caption = 'Coluna:'
            end
            object Label378: TLabel
              Left = 398
              Top = 320
              Width = 89
              Height = 14
              Alignment = taRightJustify
              Caption = 'Valor por Extenso:'
            end
            object Label379: TLabel
              Left = 491
              Top = 320
              Width = 29
              Height = 14
              Caption = 'Linha:'
            end
            object Label389: TLabel
              Left = 557
              Top = 320
              Width = 36
              Height = 14
              Caption = 'Coluna:'
            end
            object Label390: TLabel
              Left = 6
              Top = 319
              Width = 73
              Height = 14
              Caption = 'Data do Aceite:'
            end
            object Label391: TLabel
              Left = 121
              Top = 319
              Width = 29
              Height = 14
              Caption = 'Linha:'
            end
            object Label392: TLabel
              Left = 191
              Top = 319
              Width = 36
              Height = 14
              Caption = 'Coluna:'
            end
            object Label393: TLabel
              Left = 6
              Top = 249
              Width = 27
              Height = 14
              Caption = 'Fone:'
            end
            object Label394: TLabel
              Left = 121
              Top = 249
              Width = 29
              Height = 14
              Caption = 'Linha:'
            end
            object Label395: TLabel
              Left = 191
              Top = 249
              Width = 36
              Height = 14
              Caption = 'Coluna:'
            end
            object Label396: TLabel
              Left = 298
              Top = 29
              Width = 187
              Height = 14
              Caption = 'N'#250'mero m'#225'ximo de linhas da Duplicata:'
            end
            object Label461: TLabel
              Left = 8
              Top = 29
              Width = 36
              Height = 14
              Caption = 'C'#243'digo:'
            end
            object Label462: TLabel
              Left = 71
              Top = 30
              Width = 28
              Height = 14
              Caption = 'Data.:'
            end
            object Label31: TLabel
              Left = 575
              Top = 30
              Width = 30
              Height = 14
              Caption = 'Fonte:'
            end
            object Label621: TLabel
              Left = 6
              Top = 342
              Width = 63
              Height = 14
              Caption = 'Observa'#231#227'o:'
            end
            object Label622: TLabel
              Left = 121
              Top = 342
              Width = 29
              Height = 14
              Caption = 'Linha:'
            end
            object Label623: TLabel
              Left = 191
              Top = 342
              Width = 36
              Height = 14
              Caption = 'Coluna:'
            end
            object ChkNatOperacaoDp: TCheckBox
              Left = 261
              Top = 65
              Width = 58
              Height = 17
              Caption = 'Imprime'
              TabOrder = 7
            end
            object ChkEmissaoDp: TCheckBox
              Left = 627
              Top = 65
              Width = 60
              Height = 17
              Caption = 'Imprime'
              Color = clBtnFace
              ParentColor = False
              TabOrder = 10
            end
            object ChkFaturaNuDp: TCheckBox
              Left = 261
              Top = 87
              Width = 58
              Height = 17
              Caption = 'Imprime'
              TabOrder = 13
            end
            object ChkValorDp: TCheckBox
              Left = 627
              Top = 87
              Width = 60
              Height = 17
              Caption = 'Imprime'
              Color = clBtnFace
              ParentColor = False
              TabOrder = 16
            end
            object ChkNuOrdemDp: TCheckBox
              Left = 261
              Top = 110
              Width = 58
              Height = 17
              Caption = 'Imprime'
              TabOrder = 19
            end
            object ChkVencimentoDp: TCheckBox
              Left = 627
              Top = 110
              Width = 60
              Height = 17
              Caption = 'Imprime'
              Color = clBtnFace
              ParentColor = False
              TabOrder = 22
            end
            object ChkDescontoDp: TCheckBox
              Left = 261
              Top = 133
              Width = 58
              Height = 17
              Caption = 'Imprime'
              TabOrder = 25
            end
            object ChkDesctoAteDp: TCheckBox
              Left = 627
              Top = 133
              Width = 60
              Height = 17
              Caption = 'Imprime'
              Color = clBtnFace
              ParentColor = False
              TabOrder = 28
            end
            object ChkDesctoRsDp: TCheckBox
              Left = 261
              Top = 156
              Width = 58
              Height = 17
              Caption = 'Imprime'
              TabOrder = 31
            end
            object ChkCondEspDp: TCheckBox
              Left = 627
              Top = 156
              Width = 60
              Height = 17
              Caption = 'Imprime'
              Color = clBtnFace
              ParentColor = False
              TabOrder = 34
            end
            object ChkSacadoDp: TCheckBox
              Left = 261
              Top = 179
              Width = 58
              Height = 17
              Caption = 'Imprime'
              TabOrder = 37
            end
            object ChkEnderecoDp: TCheckBox
              Left = 627
              Top = 179
              Width = 60
              Height = 17
              Caption = 'Imprime'
              Color = clBtnFace
              ParentColor = False
              TabOrder = 40
            end
            object ChkBairroDp: TCheckBox
              Left = 261
              Top = 202
              Width = 58
              Height = 17
              Caption = 'Imprime'
              TabOrder = 43
            end
            object ChkMunicipioDp: TCheckBox
              Left = 627
              Top = 202
              Width = 60
              Height = 17
              Caption = 'Imprime'
              Color = clBtnFace
              ParentColor = False
              TabOrder = 46
            end
            object ChkEstadoDp: TCheckBox
              Left = 261
              Top = 225
              Width = 58
              Height = 17
              Caption = 'Imprime'
              TabOrder = 49
            end
            object ChkCepDp: TCheckBox
              Left = 627
              Top = 225
              Width = 60
              Height = 17
              Caption = 'Imprime'
              Color = clBtnFace
              ParentColor = False
              TabOrder = 52
            end
            object ChkPracaDp: TCheckBox
              Left = 626
              Top = 248
              Width = 58
              Height = 17
              Caption = 'Imprime'
              TabOrder = 58
            end
            object ChkCepPracaDp: TCheckBox
              Left = 627
              Top = 273
              Width = 60
              Height = 17
              Caption = 'Imprime'
              Color = clBtnFace
              ParentColor = False
              TabOrder = 64
            end
            object CNatOperacaoLn: TEdit
              Left = 155
              Top = 62
              Width = 30
              Height = 21
              AutoSize = False
              MaxLength = 3
              TabOrder = 5
            end
            object CFaturaNuLn: TEdit
              Left = 155
              Top = 85
              Width = 30
              Height = 21
              AutoSize = False
              MaxLength = 3
              TabOrder = 11
            end
            object CNuOrdemLn: TEdit
              Left = 155
              Top = 108
              Width = 30
              Height = 21
              AutoSize = False
              MaxLength = 3
              TabOrder = 17
            end
            object CDescontoLn: TEdit
              Left = 155
              Top = 131
              Width = 30
              Height = 21
              AutoSize = False
              MaxLength = 3
              TabOrder = 23
            end
            object CDesctoRsLn: TEdit
              Left = 155
              Top = 154
              Width = 30
              Height = 21
              AutoSize = False
              MaxLength = 3
              TabOrder = 29
            end
            object CSacadoLn: TEdit
              Left = 155
              Top = 177
              Width = 30
              Height = 21
              AutoSize = False
              MaxLength = 3
              TabOrder = 35
            end
            object CBairroLn: TEdit
              Left = 155
              Top = 200
              Width = 30
              Height = 21
              AutoSize = False
              MaxLength = 3
              TabOrder = 41
            end
            object CEstadoLn: TEdit
              Left = 155
              Top = 224
              Width = 30
              Height = 21
              AutoSize = False
              MaxLength = 3
              TabOrder = 47
            end
            object CPracaLn: TEdit
              Left = 525
              Top = 247
              Width = 30
              Height = 21
              AutoSize = False
              MaxLength = 3
              TabOrder = 56
            end
            object CNatOperacaoCol: TEdit
              Left = 230
              Top = 62
              Width = 30
              Height = 21
              AutoSize = False
              MaxLength = 3
              TabOrder = 6
            end
            object CFaturaNuCol: TEdit
              Left = 230
              Top = 85
              Width = 30
              Height = 21
              AutoSize = False
              MaxLength = 3
              TabOrder = 12
            end
            object CNuOrdemCol: TEdit
              Left = 230
              Top = 109
              Width = 30
              Height = 21
              AutoSize = False
              MaxLength = 3
              TabOrder = 18
            end
            object CDescontoCol: TEdit
              Left = 230
              Top = 132
              Width = 30
              Height = 21
              AutoSize = False
              MaxLength = 3
              TabOrder = 24
            end
            object CDesctoRsCol: TEdit
              Left = 230
              Top = 155
              Width = 30
              Height = 21
              AutoSize = False
              MaxLength = 3
              TabOrder = 30
            end
            object CSacadoCol: TEdit
              Left = 230
              Top = 178
              Width = 30
              Height = 21
              AutoSize = False
              MaxLength = 3
              TabOrder = 36
            end
            object CBairroCol: TEdit
              Left = 230
              Top = 201
              Width = 30
              Height = 21
              AutoSize = False
              MaxLength = 3
              TabOrder = 42
            end
            object CEstadoCol: TEdit
              Left = 230
              Top = 223
              Width = 30
              Height = 21
              AutoSize = False
              MaxLength = 3
              TabOrder = 48
            end
            object CPracaCol: TEdit
              Left = 595
              Top = 247
              Width = 30
              Height = 21
              AutoSize = False
              MaxLength = 3
              TabOrder = 57
            end
            object CEmissaoLn: TEdit
              Left = 525
              Top = 62
              Width = 30
              Height = 21
              AutoSize = False
              MaxLength = 3
              TabOrder = 8
            end
            object CValorLn: TEdit
              Left = 525
              Top = 85
              Width = 30
              Height = 21
              AutoSize = False
              MaxLength = 3
              TabOrder = 14
            end
            object CVencimentoLn: TEdit
              Left = 525
              Top = 108
              Width = 30
              Height = 21
              AutoSize = False
              MaxLength = 3
              TabOrder = 20
            end
            object CDesctoAteLn: TEdit
              Left = 525
              Top = 131
              Width = 30
              Height = 21
              AutoSize = False
              MaxLength = 3
              TabOrder = 26
            end
            object CCondEspLn: TEdit
              Left = 525
              Top = 154
              Width = 30
              Height = 21
              AutoSize = False
              MaxLength = 3
              TabOrder = 32
            end
            object CEnderecoLn: TEdit
              Left = 525
              Top = 177
              Width = 30
              Height = 21
              AutoSize = False
              MaxLength = 3
              TabOrder = 38
            end
            object CMunicipioLn: TEdit
              Left = 525
              Top = 200
              Width = 30
              Height = 21
              AutoSize = False
              MaxLength = 3
              TabOrder = 44
            end
            object CCepLn: TEdit
              Left = 525
              Top = 223
              Width = 30
              Height = 21
              AutoSize = False
              MaxLength = 3
              TabOrder = 50
            end
            object CCepPracaLn: TEdit
              Left = 525
              Top = 271
              Width = 30
              Height = 21
              AutoSize = False
              MaxLength = 3
              TabOrder = 62
            end
            object CEmissaoCol: TEdit
              Left = 595
              Top = 62
              Width = 30
              Height = 21
              AutoSize = False
              MaxLength = 3
              TabOrder = 9
            end
            object CValorCol: TEdit
              Left = 595
              Top = 85
              Width = 30
              Height = 21
              AutoSize = False
              MaxLength = 3
              TabOrder = 15
            end
            object CVencimentoCol: TEdit
              Left = 595
              Top = 109
              Width = 30
              Height = 21
              AutoSize = False
              MaxLength = 3
              TabOrder = 21
            end
            object CDesctoAteCol: TEdit
              Left = 595
              Top = 132
              Width = 30
              Height = 21
              AutoSize = False
              MaxLength = 3
              TabOrder = 27
            end
            object CCondEspCol: TEdit
              Left = 595
              Top = 155
              Width = 30
              Height = 21
              AutoSize = False
              MaxLength = 3
              TabOrder = 33
            end
            object CEnderecoCol: TEdit
              Left = 595
              Top = 178
              Width = 30
              Height = 21
              AutoSize = False
              MaxLength = 3
              TabOrder = 39
            end
            object CMunicipioCol: TEdit
              Left = 595
              Top = 201
              Width = 30
              Height = 21
              AutoSize = False
              MaxLength = 3
              TabOrder = 45
            end
            object CCepCol: TEdit
              Left = 595
              Top = 224
              Width = 30
              Height = 21
              AutoSize = False
              MaxLength = 3
              TabOrder = 51
            end
            object CCepPracaCol: TEdit
              Left = 595
              Top = 273
              Width = 30
              Height = 21
              AutoSize = False
              MaxLength = 3
              TabOrder = 63
            end
            object ChkEndCobrancaDp: TCheckBox
              Left = 261
              Top = 272
              Width = 58
              Height = 17
              Caption = 'Imprime'
              TabOrder = 61
            end
            object ChkCNPJ_CNPFDp: TCheckBox
              Left = 262
              Top = 295
              Width = 60
              Height = 17
              Caption = 'Imprime'
              Color = clBtnFace
              ParentColor = False
              TabOrder = 67
            end
            object ChkInscricaoDp: TCheckBox
              Left = 626
              Top = 296
              Width = 58
              Height = 17
              Caption = 'Imprime'
              TabOrder = 70
            end
            object ChkValorExtensoDp: TCheckBox
              Left = 627
              Top = 319
              Width = 60
              Height = 17
              Caption = 'Imprime'
              Color = clBtnFace
              ParentColor = False
              TabOrder = 76
            end
            object CEndCobrancaLn: TEdit
              Left = 155
              Top = 270
              Width = 30
              Height = 21
              AutoSize = False
              MaxLength = 3
              TabOrder = 59
            end
            object CInscricaoLn: TEdit
              Left = 525
              Top = 294
              Width = 30
              Height = 21
              AutoSize = False
              MaxLength = 3
              TabOrder = 68
            end
            object CEndCobrancaCol: TEdit
              Left = 230
              Top = 271
              Width = 30
              Height = 21
              AutoSize = False
              MaxLength = 3
              TabOrder = 60
            end
            object CInscricaoCol: TEdit
              Left = 595
              Top = 295
              Width = 30
              Height = 21
              AutoSize = False
              MaxLength = 3
              TabOrder = 69
            end
            object CCNPJ_CNPFLn: TEdit
              Left = 155
              Top = 293
              Width = 30
              Height = 21
              AutoSize = False
              MaxLength = 3
              TabOrder = 65
            end
            object CValorExtensoLn: TEdit
              Left = 525
              Top = 317
              Width = 30
              Height = 21
              AutoSize = False
              MaxLength = 3
              TabOrder = 74
            end
            object CCNPJ_CNPFCol: TEdit
              Left = 230
              Top = 294
              Width = 30
              Height = 21
              AutoSize = False
              MaxLength = 3
              TabOrder = 66
            end
            object CValorExtensoCol: TEdit
              Left = 595
              Top = 318
              Width = 30
              Height = 21
              AutoSize = False
              MaxLength = 3
              TabOrder = 75
            end
            object ChkAceiteDp: TCheckBox
              Left = 261
              Top = 318
              Width = 58
              Height = 17
              Caption = 'Imprime'
              TabOrder = 73
            end
            object CAceiteLn: TEdit
              Left = 155
              Top = 316
              Width = 30
              Height = 21
              AutoSize = False
              MaxLength = 3
              TabOrder = 71
            end
            object CAceiteCol: TEdit
              Left = 230
              Top = 317
              Width = 30
              Height = 21
              AutoSize = False
              MaxLength = 3
              TabOrder = 72
            end
            object ChkFoneDp: TCheckBox
              Left = 261
              Top = 248
              Width = 58
              Height = 17
              Caption = 'Imprime'
              TabOrder = 55
            end
            object CFoneLn: TEdit
              Left = 155
              Top = 247
              Width = 30
              Height = 21
              AutoSize = False
              MaxLength = 3
              TabOrder = 53
            end
            object CFoneCol: TEdit
              Left = 230
              Top = 247
              Width = 30
              Height = 21
              AutoSize = False
              MaxLength = 3
              TabOrder = 54
            end
            object CLinhaDuplicata: TEdit
              Left = 525
              Top = 26
              Width = 25
              Height = 21
              AutoSize = False
              MaxLength = 3
              TabOrder = 3
            end
            object DbCodigoDupl: TEdit
              Left = 46
              Top = 27
              Width = 25
              Height = 21
              AutoSize = False
              MaxLength = 2
              TabOrder = 0
            end
            object ChkDupl: TCheckBox
              Left = 194
              Top = 29
              Width = 97
              Height = 17
              Caption = '&Duplicata Ativa'
              TabOrder = 2
              OnClick = ChkDuplClick
            end
            object CboxFonte: TComboBox
              Left = 612
              Top = 26
              Width = 64
              Height = 22
              Style = csDropDownList
              ItemIndex = 0
              TabOrder = 4
              Text = '10 Cpp'
              Items.Strings = (
                '10 Cpp'
                '17 Cpp')
            end
            object CObsLn: TEdit
              Left = 155
              Top = 339
              Width = 30
              Height = 21
              AutoSize = False
              MaxLength = 3
              TabOrder = 77
            end
            object CObsCol: TEdit
              Left = 230
              Top = 340
              Width = 30
              Height = 21
              AutoSize = False
              MaxLength = 3
              TabOrder = 78
            end
            object ChkObs: TCheckBox
              Left = 261
              Top = 341
              Width = 58
              Height = 17
              Caption = 'Imprime'
              TabOrder = 79
            end
            object DBDataDupli: TJvDBDateEdit
              Left = 103
              Top = 27
              Width = 87
              Height = 22
              DataField = 'CDU_DTCADA'
              DataSource = DmCfg.DsDupl
              Glyph.Data = {
                4E000000424D4E000000000000003E000000280000000F000000040000000100
                010000000000100000000000000000000000020000000200000000000000FFFF
                FF00FFFE00009CE600009CE60000FFFE0000}
              ImageKind = ikCustom
              PopupColor = clBtnFace
              ShowNullDate = False
              YearDigits = dyFour
              TabOrder = 1
            end
          end
          object Panel6: TPanel
            Left = 271
            Top = 4
            Width = 462
            Height = 33
            BevelInner = bvLowered
            BevelOuter = bvLowered
            Caption = 'Panel1'
            Color = 10841658
            TabOrder = 1
            object Bit_SairDupl: TBitBtn
              Left = 368
              Top = 4
              Width = 90
              Height = 25
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
            object Bit_CancelarDupl: TBitBtn
              Left = 368
              Top = 4
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
              TabOrder = 2
              TabStop = False
              OnClick = Bit_CancelarDuplClick
            end
            object Bit_ExcluirDupl: TBitBtn
              Left = 188
              Top = 4
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
              TabOrder = 0
              TabStop = False
              OnClick = Bit_ExcluirDuplClick
            end
            object Bit_GravarDupl: TBitBtn
              Left = 279
              Top = 4
              Width = 88
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
              TabOrder = 1
              TabStop = False
              OnClick = Bit_GravarDuplClick
            end
            object Bit_NovoDupl: TBitBtn
              Left = 6
              Top = 4
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
              TabOrder = 4
              TabStop = False
              OnClick = Bit_NovoDuplClick
            end
            object Bit_AlterarDupl: TBitBtn
              Left = 97
              Top = 4
              Width = 90
              Height = 25
              Cursor = crHandPoint
              Caption = '&Alterar'
              TabOrder = 5
              TabStop = False
              OnClick = Bit_AlterarDuplClick
            end
          end
          object Panel5: TPanel
            Left = 26
            Top = 4
            Width = 242
            Height = 33
            BevelInner = bvLowered
            BevelOuter = bvLowered
            Caption = 'Panel3'
            Color = 10841658
            TabOrder = 2
            object DBNavigator2: TDBNavigator
              Left = 5
              Top = 4
              Width = 232
              Height = 25
              DataSource = DmCfg.DsDupl
              VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
              TabOrder = 0
              OnClick = DBNavigator2Click
            end
          end
        end
      end
      object TPage
        Left = 0
        Top = 0
        Caption = 'Cheque'
        ExplicitWidth = 0
        ExplicitHeight = 0
        object PCheque: TPanel
          Left = 0
          Top = 0
          Width = 767
          Height = 509
          Align = alClient
          TabOrder = 0
          object GroupBox27: TGroupBox
            Left = 0
            Top = 40
            Width = 761
            Height = 381
            Caption = 'Configura'#231#227'o para impress'#227'o de cheques'
            TabOrder = 0
            object Label593: TLabel
              Left = 28
              Top = 25
              Width = 79
              Height = 14
              Caption = 'Informe a Conta:'
            end
            object CbBancoCh: TComboBox
              Left = 160
              Top = 22
              Width = 265
              Height = 22
              CharCase = ecUpperCase
              TabOrder = 1
              OnClick = CbBancoChClick
              OnExit = CbBancoChExit
            end
            object CCodBanco: TEdit
              Left = 108
              Top = 22
              Width = 50
              Height = 21
              AutoSize = False
              MaxLength = 4
              TabOrder = 0
              OnExit = CCodBancoExit
            end
            object GrpDados: TGroupBox
              Left = 2
              Top = 43
              Width = 751
              Height = 331
              TabOrder = 2
              object Label594: TLabel
                Left = 163
                Top = 70
                Width = 82
                Height = 14
                Alignment = taRightJustify
                Caption = 'Valor do cheque:'
              end
              object Label602: TLabel
                Left = 458
                Top = 50
                Width = 36
                Height = 14
                Caption = 'Imprimir'
              end
              object Label605: TLabel
                Left = 372
                Top = 50
                Width = 43
                Height = 14
                Caption = 'Tamanho'
              end
              object Label599: TLabel
                Left = 314
                Top = 50
                Width = 33
                Height = 14
                Caption = 'Coluna'
              end
              object Label595: TLabel
                Left = 256
                Top = 50
                Width = 26
                Height = 14
                Caption = 'Linha'
              end
              object Label600: TLabel
                Left = 118
                Top = 94
                Width = 127
                Height = 14
                Alignment = taRightJustify
                Caption = 'Valor por extenso Linha 1:'
              end
              object Label624: TLabel
                Left = 118
                Top = 118
                Width = 127
                Height = 14
                Alignment = taRightJustify
                Caption = 'Valor por extenso Linha 2:'
              end
              object Label603: TLabel
                Left = 188
                Top = 142
                Width = 57
                Height = 14
                Alignment = taRightJustify
                Caption = 'Favorecido:'
              end
              object Label604: TLabel
                Left = 209
                Top = 166
                Width = 36
                Height = 14
                Alignment = taRightJustify
                Caption = 'Cidade:'
              end
              object Label625: TLabel
                Left = 184
                Top = 190
                Width = 61
                Height = 14
                Alignment = taRightJustify
                Caption = 'Dia emiss'#227'o:'
              end
              object Label606: TLabel
                Left = 179
                Top = 214
                Width = 66
                Height = 14
                Alignment = taRightJustify
                Caption = 'M'#234's emiss'#227'o:'
              end
              object Label607: TLabel
                Left = 179
                Top = 238
                Width = 66
                Height = 14
                Alignment = taRightJustify
                Caption = 'Ano emiss'#227'o:'
              end
              object Label626: TLabel
                Left = 196
                Top = 262
                Width = 49
                Height = 14
                Alignment = taRightJustify
                Caption = 'Bom Para:'
              end
              object Label608: TLabel
                Left = 183
                Top = 285
                Width = 62
                Height = 14
                Alignment = taRightJustify
                Caption = 'Salto p'#225'gina:'
              end
              object Label601: TLabel
                Left = 182
                Top = 309
                Width = 63
                Height = 14
                Alignment = taRightJustify
                Caption = 'Entre Linhas:'
              end
              object CLinhaValor: TEdit
                Left = 247
                Top = 66
                Width = 50
                Height = 21
                AutoSize = False
                MaxLength = 3
                TabOrder = 1
              end
              object CColunaValor: TEdit
                Left = 308
                Top = 66
                Width = 50
                Height = 21
                AutoSize = False
                MaxLength = 3
                TabOrder = 2
              end
              object ChkImprimiValor: TCheckBox
                Left = 456
                Top = 70
                Width = 57
                Height = 17
                Caption = 'Imprime'
                TabOrder = 3
              end
              object ClinhaValorExtLin1: TEdit
                Left = 247
                Top = 90
                Width = 50
                Height = 21
                AutoSize = False
                MaxLength = 3
                TabOrder = 4
              end
              object cColunaValorExtCol1: TEdit
                Left = 308
                Top = 89
                Width = 50
                Height = 21
                AutoSize = False
                MaxLength = 3
                TabOrder = 5
              end
              object cTamValorExt: TEdit
                Left = 371
                Top = 89
                Width = 50
                Height = 21
                AutoSize = False
                MaxLength = 3
                TabOrder = 6
              end
              object ChkImpExtenso: TCheckBox
                Left = 456
                Top = 94
                Width = 57
                Height = 17
                Caption = 'Imprime'
                TabOrder = 7
              end
              object ClinhaValorExtLin2: TEdit
                Left = 247
                Top = 114
                Width = 50
                Height = 21
                AutoSize = False
                MaxLength = 3
                TabOrder = 8
              end
              object cColunaValorExtCol2: TEdit
                Left = 308
                Top = 114
                Width = 50
                Height = 21
                AutoSize = False
                MaxLength = 3
                TabOrder = 9
              end
              object CLinhaFav: TEdit
                Left = 247
                Top = 138
                Width = 50
                Height = 21
                AutoSize = False
                MaxLength = 3
                TabOrder = 10
              end
              object cColunaFav: TEdit
                Left = 308
                Top = 138
                Width = 50
                Height = 21
                AutoSize = False
                MaxLength = 3
                TabOrder = 11
              end
              object ChkImpFav: TCheckBox
                Left = 456
                Top = 142
                Width = 57
                Height = 17
                Caption = 'Imprime'
                TabOrder = 12
              end
              object CLinhaCid: TEdit
                Left = 247
                Top = 162
                Width = 50
                Height = 21
                AutoSize = False
                MaxLength = 3
                TabOrder = 13
              end
              object CColunaCid: TEdit
                Left = 308
                Top = 162
                Width = 50
                Height = 21
                AutoSize = False
                MaxLength = 3
                TabOrder = 14
              end
              object chkImpCid: TCheckBox
                Left = 456
                Top = 166
                Width = 56
                Height = 17
                Caption = 'Imprime'
                TabOrder = 15
              end
              object CLinhaDia: TEdit
                Left = 247
                Top = 186
                Width = 50
                Height = 21
                AutoSize = False
                MaxLength = 3
                TabOrder = 16
              end
              object CColunaDia: TEdit
                Left = 308
                Top = 186
                Width = 50
                Height = 21
                AutoSize = False
                MaxLength = 3
                TabOrder = 17
              end
              object ChkImpDia: TCheckBox
                Left = 456
                Top = 190
                Width = 57
                Height = 17
                Caption = 'Imprime'
                TabOrder = 18
              end
              object CLinhaMes: TEdit
                Left = 247
                Top = 210
                Width = 50
                Height = 21
                AutoSize = False
                MaxLength = 3
                TabOrder = 19
              end
              object CColunaMes: TEdit
                Left = 308
                Top = 210
                Width = 50
                Height = 21
                AutoSize = False
                MaxLength = 3
                TabOrder = 20
              end
              object ChkImpMes: TCheckBox
                Left = 456
                Top = 214
                Width = 58
                Height = 17
                Caption = 'Imprime'
                TabOrder = 21
              end
              object ClinhaAno: TEdit
                Left = 247
                Top = 234
                Width = 50
                Height = 21
                AutoSize = False
                MaxLength = 3
                TabOrder = 22
              end
              object cColunaAno: TEdit
                Left = 308
                Top = 234
                Width = 50
                Height = 21
                AutoSize = False
                MaxLength = 3
                TabOrder = 23
              end
              object CbAno: TComboBox
                Left = 371
                Top = 234
                Width = 50
                Height = 22
                Style = csDropDownList
                ItemIndex = 0
                TabOrder = 24
                Text = '4'
                Items.Strings = (
                  '4'
                  '2')
              end
              object ChkImpAno: TCheckBox
                Left = 456
                Top = 238
                Width = 56
                Height = 17
                Caption = 'Imprime'
                TabOrder = 25
              end
              object CLinhaBom: TEdit
                Left = 247
                Top = 258
                Width = 50
                Height = 21
                AutoSize = False
                MaxLength = 3
                TabOrder = 26
              end
              object CColunabom: TEdit
                Left = 308
                Top = 258
                Width = 50
                Height = 21
                AutoSize = False
                MaxLength = 3
                TabOrder = 27
              end
              object ChkImpBom: TCheckBox
                Left = 456
                Top = 262
                Width = 56
                Height = 17
                Caption = 'Imprime'
                TabOrder = 28
              end
              object CSaltoPg: TEdit
                Left = 247
                Top = 281
                Width = 50
                Height = 21
                AutoSize = False
                MaxLength = 3
                TabOrder = 29
              end
              object SpinEntreLin: TSpinEdit
                Left = 247
                Top = 305
                Width = 38
                Height = 23
                Cursor = crHandPoint
                MaxLength = 1
                MaxValue = 9
                MinValue = 1
                TabOrder = 30
                Value = 1
              end
              object RadGCheque: TRadioGroup
                Left = 2
                Top = 16
                Width = 747
                Height = 32
                Align = alTop
                Columns = 2
                ItemIndex = 1
                Items.Strings = (
                  'Lay-Out Condensado - Fonte Comp 17 Cpp'
                  'Lay-Out Normal - Fonte Normal 10 Cpp')
                TabOrder = 0
              end
            end
          end
          object Panel7: TPanel
            Left = 272
            Top = 4
            Width = 457
            Height = 33
            BevelInner = bvLowered
            BevelOuter = bvLowered
            Caption = 'Panel1'
            Color = 10841658
            TabOrder = 1
            object BitBtnCancelarCheq: TBitBtn
              Left = 362
              Top = 4
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
              TabOrder = 3
              TabStop = False
              OnClick = BitBtnCancelarCheqClick
            end
            object BitBtnSairCheq: TBitBtn
              Left = 362
              Top = 4
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
              ParentShowHint = False
              ShowHint = True
              TabOrder = 4
              TabStop = False
              OnClick = BitBtnSairCheqClick
            end
            object BitBtnExcluirCheq: TBitBtn
              Left = 184
              Top = 4
              Width = 90
              Height = 25
              Cursor = crHandPoint
              Hint = '|Exclui Dados Atual...'
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
              OnClick = BitBtnExcluirCheqClick
            end
            object BitBtnGravarCheq: TBitBtn
              Left = 274
              Top = 4
              Width = 88
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
              TabOrder = 2
              TabStop = False
              OnClick = BitBtnGravarCheqClick
            end
            object BitNovoCheq: TBitBtn
              Left = 4
              Top = 4
              Width = 90
              Height = 25
              Cursor = crHandPoint
              Hint = 'Incluir Novos Dados...'
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
              TabOrder = 0
              TabStop = False
              OnClick = BitNovoCheqClick
            end
            object BitBtnAlterarCheq: TBitBtn
              Left = 94
              Top = 4
              Width = 90
              Height = 25
              Cursor = crHandPoint
              Hint = 'Alterar os Dados...'
              Caption = '&Alterar'
              Glyph.Data = {
                DE010000424DDE01000000000000760000002800000024000000120000000100
                0400000000006801000000000000000000001000000000000000000000000000
                80000080000000808000800000008000800080800000C0C0C000808080000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333444444
                33333333333F8888883F33330000324334222222443333388F3833333388F333
                000032244222222222433338F8833FFFFF338F3300003222222AAAAA22243338
                F333F88888F338F30000322222A33333A2224338F33F8333338F338F00003222
                223333333A224338F33833333338F38F00003222222333333A444338FFFF8F33
                3338888300003AAAAAAA33333333333888888833333333330000333333333333
                333333333333333333FFFFFF000033333333333344444433FFFF333333888888
                00003A444333333A22222438888F333338F3333800003A2243333333A2222438
                F38F333333833338000033A224333334422224338338FFFFF8833338000033A2
                22444442222224338F3388888333FF380000333A2222222222AA243338FF3333
                33FF88F800003333AA222222AA33A3333388FFFFFF8833830000333333AAAAAA
                3333333333338888883333330000333333333333333333333333333333333333
                0000}
              NumGlyphs = 2
              ParentShowHint = False
              ShowHint = True
              TabOrder = 5
              TabStop = False
              OnClick = BitBtnAlterarCheqClick
            end
          end
          object Panel8: TPanel
            Left = 5
            Top = 4
            Width = 240
            Height = 33
            BevelInner = bvLowered
            BevelOuter = bvLowered
            Caption = 'Panel3'
            Color = 10841658
            TabOrder = 2
            object DBNavigator6: TDBNavigator
              Left = 4
              Top = 4
              Width = 232
              Height = 25
              DataSource = DmCfg.DsSysCheque
              VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
              TabOrder = 0
              OnClick = DBNavigator3Click
            end
          end
        end
      end
      object TPage
        Left = 0
        Top = 0
        Caption = 'Comissao'
        ExplicitWidth = 0
        ExplicitHeight = 0
        object PComissao: TPanel
          Left = 0
          Top = 0
          Width = 767
          Height = 509
          Align = alClient
          TabOrder = 0
          object GroupBox23: TGroupBox
            Left = 4
            Top = 127
            Width = 758
            Height = 123
            Caption = 'Comiss'#227'o paga por:'
            TabOrder = 0
            object DBCkBoxComis_Prod: TDBCheckBox
              Left = 18
              Top = 21
              Width = 455
              Height = 20
              Caption = 'Utilizar Sistema de Comiss'#227'o por Produto (Produto/Tipo/Grupo)'
              DataField = 'PMT_COMIS_PROD'
              DataSource = DataCadastros1.DsParametros
              TabOrder = 0
              ValueChecked = 'S'
              ValueUnchecked = 'N'
              OnClick = DBCkBoxComis_ProdClick
            end
            object DBCheckBox25: TDBCheckBox
              Left = 18
              Top = 39
              Width = 319
              Height = 20
              Caption = 'Utilizar Sistema de Comiss'#227'o por Produto (Tabela Escalonada)'
              DataField = 'PMT_COMIS_ESCALA'
              DataSource = DataCadastros1.DsParametros
              TabOrder = 1
              ValueChecked = 'S'
              ValueUnchecked = 'N'
              OnClick = DBCheckBox25Click
            end
            object DBCheckBox53: TDBCheckBox
              Left = 18
              Top = 58
              Width = 319
              Height = 20
              Caption = 'Utilizar Sistema de Comiss'#227'o por Produto (Tabela Simples)'
              DataField = 'PMT_COMIS_SIMPLES'
              DataSource = DataCadastros1.DsParametros
              TabOrder = 2
              ValueChecked = 'S'
              ValueUnchecked = 'N'
              OnClick = DBCheckBox53Click
            end
            object DBCheckBox94: TDBCheckBox
              Left = 18
              Top = 99
              Width = 500
              Height = 20
              Caption = 
                'Pagar comiss'#227'o somente sobre o valor da diferen'#231'a entre o Pre'#231'o ' +
                'de Venda e o Pre'#231'o de Custo'
              DataField = 'PMT_COMIS_SOBRE_DIF_VENDA_CUSTO'
              DataSource = DataCadastros1.DsParametros
              TabOrder = 3
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
          end
          object DbRadPagto_Com_Tipo: TDBRadioGroup
            Left = 381
            Top = 256
            Width = 381
            Height = 94
            Caption = 'Pagar Comiss'#227'o sobre'
            DataField = 'PMT_PAGTO_COM_TP'
            DataSource = DataCadastros1.DsParametros
            Items.Strings = (
              'Total da Nota'
              'Valor das Parcelas')
            TabOrder = 1
            Values.Strings = (
              'T'
              'P')
          end
          object DbRadBordero_Com: TDBRadioGroup
            Left = 3
            Top = 256
            Width = 372
            Height = 94
            Caption = 'Pagar a Comiss'#227'o pela Data de '
            DataField = 'PMT_BORDERO_COM'
            DataSource = DataCadastros1.DsParametros
            Items.Strings = (
              'Emiss'#227'o'
              'Vencimento'
              'Pagamento')
            TabOrder = 2
            Values.Strings = (
              'E'
              'V'
              'P')
          end
          object GroupBox30: TGroupBox
            Left = 337
            Top = 2
            Width = 425
            Height = 125
            Caption = 'Fechamento M'#234's de Comiss'#227'o'
            TabOrder = 3
            object Label9: TLabel
              Left = 54
              Top = 47
              Width = 182
              Height = 14
              Caption = 'Dia inicial e final da primeira quinzena:'
            end
            object Label10: TLabel
              Left = 51
              Top = 72
              Width = 186
              Height = 14
              Caption = 'Dia inicial e final da segunda quinzena:'
            end
            object DBCkBoxComis_Quinz: TDBCheckBox
              Left = 13
              Top = 22
              Width = 249
              Height = 15
              Caption = 'Utilizar fechamento de comiss'#227'o por quinzena'
              DataField = 'PMT_COMIS_QUINZ'
              DataSource = DataCadastros1.DsParametros
              TabOrder = 0
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object Dbe1Qz_Dias: TDBEdit
              Left = 238
              Top = 44
              Width = 50
              Height = 22
              DataField = 'PMT_1QZ_DIAS'
              DataSource = DataCadastros1.DsParametros
              TabOrder = 1
            end
            object Dbe2Qz_dias: TDBEdit
              Left = 239
              Top = 69
              Width = 50
              Height = 22
              DataField = 'PMT_2QZ_DIAS'
              DataSource = DataCadastros1.DsParametros
              TabOrder = 2
            end
          end
          object GroupBox29: TGroupBox
            Left = 4
            Top = 2
            Width = 329
            Height = 125
            Caption = 'Comiss'#227'o Padr'#227'o no Pedido'
            TabOrder = 4
            object Label2: TLabel
              Left = 56
              Top = 52
              Width = 121
              Height = 14
              Caption = 'Comiss'#227'o representante:'
            end
            object Label7: TLabel
              Left = 218
              Top = 52
              Width = 10
              Height = 14
              Caption = '%'
            end
            object Label3: TLabel
              Left = 73
              Top = 77
              Width = 105
              Height = 14
              Caption = 'Comiss'#227'o supervisor:'
            end
            object Label5: TLabel
              Left = 217
              Top = 100
              Width = 10
              Height = 14
              Caption = '%'
            end
            object Label4: TLabel
              Left = 86
              Top = 99
              Width = 90
              Height = 14
              Caption = 'Comiss'#227'o gerente:'
            end
            object Label6: TLabel
              Left = 216
              Top = 77
              Width = 10
              Height = 14
              Caption = '%'
            end
            object DbCkBoxComis_Grp: TDBCheckBox
              Left = 11
              Top = 19
              Width = 214
              Height = 20
              Caption = 'Utilizar Sistema de Comiss'#227'o por Grupo'
              DataField = 'PMT_COMIS_GRP'
              DataSource = DataCadastros1.DsParametros
              TabOrder = 0
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DbeComis_Rep: TDBEdit
              Left = 178
              Top = 48
              Width = 35
              Height = 22
              DataField = 'PMT_COMIS_REP'
              DataSource = DataCadastros1.DsParametros
              TabOrder = 1
            end
            object DbeComis_Sup: TDBEdit
              Left = 178
              Top = 73
              Width = 35
              Height = 22
              DataField = 'PMT_COMIS_SUP'
              DataSource = DataCadastros1.DsParametros
              TabOrder = 2
            end
            object DbeComis_Ger: TDBEdit
              Left = 178
              Top = 97
              Width = 35
              Height = 22
              DataField = 'PMT_COMIS_GER'
              DataSource = DataCadastros1.DsParametros
              TabOrder = 3
            end
          end
          object DBCheckBox52: TDBCheckBox
            Left = 22
            Top = 206
            Width = 319
            Height = 20
            Caption = 'Pagar comiss'#227'o / verba por multiplas tabelas e prazo'
            DataField = 'PMT_PAGAR_COMISSAO_VERBA'
            DataSource = DataCadastros1.DsParametros
            TabOrder = 5
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
        end
      end
      object TPage
        Left = 0
        Top = 0
        Caption = 'Boleto'
        ExplicitWidth = 0
        ExplicitHeight = 0
        object PBoleto: TPanel
          Left = 0
          Top = 0
          Width = 767
          Height = 509
          Align = alClient
          TabOrder = 0
          object Label18: TLabel
            Left = 2
            Top = 51
            Width = 191
            Height = 14
            Caption = 'Local de Pagamento do Boleto Bancario'
          end
          object DBRadioGroup6: TDBRadioGroup
            Left = 1
            Top = 1
            Width = 765
            Height = 48
            Align = alTop
            Caption = 'Modelo do Boleto com C'#243'digo de Barras'
            Columns = 2
            DataField = 'PMT_MOD_BOLETO_BARRA'
            DataSource = DataCadastros1.DsParametros
            Items.Strings = (
              'Modelo 1 - Meia Folha'
              'Modelo 2 - Folha Inteira')
            TabOrder = 0
            Values.Strings = (
              '1'
              '2')
          end
          object GroupBox21: TGroupBox
            Left = 2
            Top = 91
            Width = 359
            Height = 87
            Caption = 'Observa'#231#227'o fixa no Boleto Banc'#225'rio'
            TabOrder = 1
            object DBEObs1: TDBEdit
              Left = 3
              Top = 16
              Width = 349
              Height = 21
              BorderStyle = bsNone
              DataField = 'PMT_OBS_BLOQ1'
              DataSource = DataCadastros1.DsParametros
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
            object DBEObs2: TDBEdit
              Left = 3
              Top = 37
              Width = 349
              Height = 21
              BorderStyle = bsNone
              DataField = 'PMT_OBS_BLOQ2'
              DataSource = DataCadastros1.DsParametros
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
            end
            object DBEObs3: TDBEdit
              Left = 3
              Top = 58
              Width = 349
              Height = 21
              BorderStyle = bsNone
              DataField = 'PMT_OBS_BLOQ3'
              DataSource = DataCadastros1.DsParametros
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
            end
          end
          object DBEdit5: TDBEdit
            Left = 2
            Top = 67
            Width = 356
            Height = 22
            DataField = 'PMT_LOC_PAGTO'
            DataSource = DataCadastros1.DsParametros
            TabOrder = 2
          end
        end
      end
      object TPage
        Left = 0
        Top = 0
        Caption = 'BoletoLayoutMatricial'
        ExplicitWidth = 0
        ExplicitHeight = 0
        object PBoletoLayout: TPanel
          Left = 0
          Top = 0
          Width = 767
          Height = 509
          Align = alClient
          TabOrder = 0
          object ScrollBox2: TScrollBox
            Left = 1
            Top = 51
            Width = 765
            Height = 457
            VertScrollBar.Position = 128
            Align = alBottom
            TabOrder = 0
            object GroupBoleto: TGroupBox
              Left = 0
              Top = -128
              Width = 761
              Height = 581
              Caption = 'Configura'#231#245'es do Bloqueto'
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
              object Label503: TLabel
                Left = 17
                Top = 61
                Width = 101
                Height = 13
                Caption = 'Local de Pagamento:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clMaroon
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label504: TLabel
                Left = 18
                Top = 83
                Width = 100
                Height = 13
                Caption = 'Data de Vencimento:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clMaroon
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label505: TLabel
                Left = 42
                Top = 105
                Width = 76
                Height = 13
                Caption = 'Data documeto:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clMaroon
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label506: TLabel
                Left = 5
                Top = 127
                Width = 113
                Height = 13
                Caption = 'N'#250'mero do Documento:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clMaroon
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label507: TLabel
                Left = 85
                Top = 171
                Width = 33
                Height = 13
                Caption = 'Aceite:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clMaroon
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label508: TLabel
                Left = 16
                Top = 193
                Width = 102
                Height = 13
                Caption = 'Data Processamento:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clMaroon
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label509: TLabel
                Left = 47
                Top = 215
                Width = 71
                Height = 13
                Caption = 'Uso do Banco:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clMaroon
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label510: TLabel
                Left = 79
                Top = 237
                Width = 39
                Height = 13
                Caption = 'Carteira:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clMaroon
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label511: TLabel
                Left = 77
                Top = 259
                Width = 41
                Height = 13
                Caption = 'Esp'#233'cie:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clMaroon
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label512: TLabel
                Left = 60
                Top = 281
                Width = 58
                Height = 13
                Caption = 'Quantidade:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clMaroon
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label513: TLabel
                Left = 91
                Top = 303
                Width = 27
                Height = 13
                Caption = 'Valor:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clMaroon
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label514: TLabel
                Left = 386
                Top = 61
                Width = 74
                Height = 13
                Caption = 'Mora Di'#225'ria R$:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clMaroon
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label515: TLabel
                Left = 124
                Top = 61
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label516: TLabel
                Left = 186
                Top = 61
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label517: TLabel
                Left = 124
                Top = 83
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label518: TLabel
                Left = 186
                Top = 83
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label519: TLabel
                Left = 124
                Top = 105
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label520: TLabel
                Left = 186
                Top = 105
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label521: TLabel
                Left = 124
                Top = 127
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label522: TLabel
                Left = 186
                Top = 127
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label523: TLabel
                Left = 124
                Top = 171
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label524: TLabel
                Left = 186
                Top = 171
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label525: TLabel
                Left = 124
                Top = 193
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label526: TLabel
                Left = 186
                Top = 193
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label527: TLabel
                Left = 124
                Top = 215
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label528: TLabel
                Left = 124
                Top = 237
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label529: TLabel
                Left = 124
                Top = 259
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label530: TLabel
                Left = 124
                Top = 281
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label531: TLabel
                Left = 124
                Top = 303
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label532: TLabel
                Left = 468
                Top = 61
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label533: TLabel
                Left = 186
                Top = 215
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label534: TLabel
                Left = 186
                Top = 237
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label535: TLabel
                Left = 186
                Top = 259
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label536: TLabel
                Left = 186
                Top = 281
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label537: TLabel
                Left = 186
                Top = 303
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label538: TLabel
                Left = 530
                Top = 61
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label542: TLabel
                Left = 404
                Top = 83
                Width = 56
                Height = 13
                Caption = 'Instru'#231#227'o 1:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clMaroon
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label543: TLabel
                Left = 404
                Top = 105
                Width = 56
                Height = 13
                Caption = 'Instru'#231#227'o 2:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clMaroon
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label544: TLabel
                Left = 468
                Top = 83
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label545: TLabel
                Left = 468
                Top = 105
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label546: TLabel
                Left = 530
                Top = 83
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label547: TLabel
                Left = 530
                Top = 105
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label548: TLabel
                Left = 405
                Top = 127
                Width = 56
                Height = 13
                Caption = 'Instru'#231#227'o 3:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clMaroon
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label549: TLabel
                Left = 468
                Top = 127
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label550: TLabel
                Left = 530
                Top = 127
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label551: TLabel
                Left = 186
                Top = 347
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label552: TLabel
                Left = 125
                Top = 346
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label553: TLabel
                Left = 5
                Top = 346
                Width = 113
                Height = 13
                Caption = 'Desconto / Abatimento:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clMaroon
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label554: TLabel
                Left = 375
                Top = 171
                Width = 86
                Height = 13
                Caption = 'Outras Dedu'#231#245'es:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clMaroon
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label555: TLabel
                Left = 468
                Top = 171
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label556: TLabel
                Left = 530
                Top = 171
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label557: TLabel
                Left = 530
                Top = 193
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label558: TLabel
                Left = 468
                Top = 193
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label559: TLabel
                Left = 397
                Top = 193
                Width = 64
                Height = 13
                Caption = 'Mora / Multa:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clMaroon
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label560: TLabel
                Left = 371
                Top = 215
                Width = 90
                Height = 13
                Caption = 'Outros acr'#233'scimos:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clMaroon
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label561: TLabel
                Left = 468
                Top = 215
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label562: TLabel
                Left = 530
                Top = 215
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label563: TLabel
                Left = 530
                Top = 237
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label564: TLabel
                Left = 468
                Top = 237
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label565: TLabel
                Left = 391
                Top = 237
                Width = 70
                Height = 13
                Caption = 'Valor Cobrado:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clMaroon
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label566: TLabel
                Left = 395
                Top = 259
                Width = 66
                Height = 13
                Caption = 'Raz'#227'o Social:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clMaroon
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label567: TLabel
                Left = 468
                Top = 259
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label568: TLabel
                Left = 530
                Top = 259
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label569: TLabel
                Left = 530
                Top = 281
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label570: TLabel
                Left = 468
                Top = 281
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label571: TLabel
                Left = 416
                Top = 281
                Width = 45
                Height = 13
                Caption = 'Cnpj/Cpf:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clMaroon
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label572: TLabel
                Left = 412
                Top = 303
                Width = 49
                Height = 13
                Caption = 'Endere'#231'o:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clMaroon
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label573: TLabel
                Left = 468
                Top = 303
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label574: TLabel
                Left = 530
                Top = 311
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label575: TLabel
                Left = 530
                Top = 325
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label576: TLabel
                Left = 468
                Top = 325
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label577: TLabel
                Left = 425
                Top = 325
                Width = 36
                Height = 13
                Caption = 'Cidade:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clMaroon
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label578: TLabel
                Left = 425
                Top = 347
                Width = 36
                Height = 13
                Caption = 'Estado:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clMaroon
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label579: TLabel
                Left = 468
                Top = 347
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label580: TLabel
                Left = 530
                Top = 347
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label581: TLabel
                Left = 530
                Top = 377
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label582: TLabel
                Left = 468
                Top = 370
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label583: TLabel
                Left = 439
                Top = 370
                Width = 22
                Height = 13
                Caption = 'Cep:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clMaroon
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label29: TLabel
                Left = 186
                Top = 324
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label467: TLabel
                Left = 18
                Top = 324
                Width = 100
                Height = 13
                Caption = 'Valor do Documento:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clMaroon
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label468: TLabel
                Left = 124
                Top = 324
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label469: TLabel
                Left = 53
                Top = 149
                Width = 64
                Height = 13
                Caption = 'Esp. Docum.:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clMaroon
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label470: TLabel
                Left = 124
                Top = 149
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label471: TLabel
                Left = 186
                Top = 149
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label494: TLabel
                Left = 48
                Top = 369
                Width = 69
                Height = 13
                Caption = 'Des. Esp Doc:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clMaroon
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label495: TLabel
                Left = 125
                Top = 369
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label496: TLabel
                Left = 186
                Top = 370
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label497: TLabel
                Left = 405
                Top = 392
                Width = 58
                Height = 13
                Caption = 'Des. Aceite:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clMaroon
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label498: TLabel
                Left = 469
                Top = 392
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label499: TLabel
                Left = 530
                Top = 391
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label500: TLabel
                Left = 53
                Top = 391
                Width = 64
                Height = 13
                Caption = 'Des. Carteira:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clMaroon
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label501: TLabel
                Left = 125
                Top = 391
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label502: TLabel
                Left = 186
                Top = 392
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label584: TLabel
                Left = 401
                Top = 414
                Width = 63
                Height = 13
                Caption = 'Des Especie:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clMaroon
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label585: TLabel
                Left = 469
                Top = 414
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label586: TLabel
                Left = 530
                Top = 413
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label587: TLabel
                Left = 72
                Top = 413
                Width = 44
                Height = 13
                Caption = 'Valor R$:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clMaroon
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label588: TLabel
                Left = 125
                Top = 413
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label589: TLabel
                Left = 186
                Top = 414
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label590: TLabel
                Left = 405
                Top = 149
                Width = 56
                Height = 13
                Caption = 'Instru'#231#227'o 4:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clMaroon
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label591: TLabel
                Left = 468
                Top = 149
                Width = 29
                Height = 13
                Caption = 'Linha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label592: TLabel
                Left = 530
                Top = 149
                Width = 36
                Height = 13
                Caption = 'Coluna:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object GroupBox6: TGroupBox
                Left = 4
                Top = 534
                Width = 333
                Height = 41
                Caption = 'Local de Pagamento'
                TabOrder = 106
                object DbBol_Local: TEdit
                  Left = 5
                  Top = 15
                  Width = 324
                  Height = 21
                  CharCase = ecUpperCase
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  MaxLength = 45
                  ParentFont = False
                  TabOrder = 0
                end
              end
              object GroupBox10: TGroupBox
                Left = 4
                Top = 13
                Width = 185
                Height = 41
                TabOrder = 0
                object Label539: TLabel
                  Left = 4
                  Top = 15
                  Width = 55
                  Height = 13
                  Caption = 'Bloqueto:'
                end
                object DbCodBloq: TEdit
                  Left = 60
                  Top = 12
                  Width = 27
                  Height = 21
                  AutoSize = False
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  MaxLength = 3
                  ParentFont = False
                  TabOrder = 0
                end
                object ChkBloq: TCheckBox
                  Left = 90
                  Top = 15
                  Width = 91
                  Height = 17
                  Caption = 'Bloqueto Ativo'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 1
                end
              end
              object Bol_LocalLn: TEdit
                Left = 155
                Top = 57
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 3
              end
              object Bol_LocalCol: TEdit
                Left = 224
                Top = 57
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 4
              end
              object ChkBol_Local: TCheckBox
                Left = 253
                Top = 61
                Width = 58
                Height = 17
                Caption = 'Imprime'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 5
              end
              object Bol_VenctoLn: TEdit
                Left = 155
                Top = 79
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 6
              end
              object Bol_VenctoCol: TEdit
                Left = 224
                Top = 79
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 7
              end
              object ChkBol_Vencto: TCheckBox
                Left = 253
                Top = 83
                Width = 58
                Height = 17
                Caption = 'Imprime'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 8
              end
              object Bol_DtemisLn: TEdit
                Left = 155
                Top = 101
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 9
              end
              object Bol_DtemisCol: TEdit
                Left = 224
                Top = 101
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 10
              end
              object ChkBol_Dtemis: TCheckBox
                Left = 253
                Top = 105
                Width = 58
                Height = 17
                Caption = 'Imprime'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 11
              end
              object Bol_CodFatLn: TEdit
                Left = 155
                Top = 123
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 12
              end
              object Bol_CodFatCol: TEdit
                Left = 224
                Top = 123
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 13
              end
              object ChkBol_CodFat: TCheckBox
                Left = 253
                Top = 127
                Width = 58
                Height = 17
                Caption = 'Imprime'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 14
              end
              object ChkBol_Aceite: TCheckBox
                Left = 253
                Top = 171
                Width = 58
                Height = 17
                Caption = 'Imprime'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 20
              end
              object Bol_AceiteLn: TEdit
                Left = 155
                Top = 167
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 18
              end
              object Bol_AceiteCol: TEdit
                Left = 224
                Top = 167
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 19
              end
              object Bol_DtProceLn: TEdit
                Left = 155
                Top = 189
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 21
              end
              object Bol_DtProceCol: TEdit
                Left = 224
                Top = 189
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 22
              end
              object ChkBol_DtProce: TCheckBox
                Left = 253
                Top = 193
                Width = 58
                Height = 17
                Caption = 'Imprime'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 23
              end
              object Bol_UsoBcoLn: TEdit
                Left = 155
                Top = 211
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 24
              end
              object Bol_CarteiraLn: TEdit
                Left = 155
                Top = 233
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 27
              end
              object Bol_EspecieLn: TEdit
                Left = 155
                Top = 255
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 30
              end
              object Bol_QtdeLn: TEdit
                Left = 155
                Top = 277
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 33
              end
              object Bol_VlParcLn: TEdit
                Left = 155
                Top = 299
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 36
              end
              object Bol_JurosLn: TEdit
                Left = 499
                Top = 57
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 54
              end
              object Bol_UsoBcoCol: TEdit
                Left = 224
                Top = 211
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 25
              end
              object Bol_CarteiraCol: TEdit
                Left = 224
                Top = 233
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 28
              end
              object Bol_EspecieCol: TEdit
                Left = 224
                Top = 255
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 31
              end
              object Bol_QtdeCol: TEdit
                Left = 224
                Top = 277
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 34
              end
              object Bol_VlParcCol: TEdit
                Left = 224
                Top = 299
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 37
              end
              object Bol_JurosCol: TEdit
                Left = 568
                Top = 57
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 55
              end
              object ChkBol_UsoBco: TCheckBox
                Left = 253
                Top = 215
                Width = 58
                Height = 17
                Caption = 'Imprime'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 26
              end
              object ChkBol_Carteira: TCheckBox
                Left = 253
                Top = 237
                Width = 58
                Height = 17
                Caption = 'Imprime'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 29
              end
              object ChkBol_Especie: TCheckBox
                Left = 253
                Top = 259
                Width = 58
                Height = 17
                Caption = 'Imprime'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 32
              end
              object ChkBol_Qtde: TCheckBox
                Left = 253
                Top = 281
                Width = 58
                Height = 17
                Caption = 'Imprime'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 35
              end
              object ChkBol_VlParc: TCheckBox
                Left = 253
                Top = 303
                Width = 58
                Height = 17
                Caption = 'Imprime'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 38
              end
              object ChkBol_Juros: TCheckBox
                Left = 597
                Top = 61
                Width = 58
                Height = 17
                Caption = 'Imprime'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 56
              end
              object GroupBox11: TGroupBox
                Left = 190
                Top = 13
                Width = 291
                Height = 41
                TabOrder = 1
                object Label540: TLabel
                  Left = 4
                  Top = 15
                  Width = 34
                  Height = 13
                  Caption = 'Banco:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object CbxBanco: TComboBox
                  Left = 74
                  Top = 12
                  Width = 214
                  Height = 21
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 1
                  OnClick = CbxBancoClick
                end
                object DbCodBco: TEdit
                  Left = 40
                  Top = 12
                  Width = 33
                  Height = 21
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  MaxLength = 4
                  ParentFont = False
                  TabOrder = 0
                  OnExit = DbCodBcoExit
                  OnKeyPress = DbCodBcoKeyPress
                end
              end
              object GroupBox12: TGroupBox
                Left = 482
                Top = 13
                Width = 211
                Height = 41
                TabOrder = 2
                object Label541: TLabel
                  Left = 3
                  Top = 15
                  Width = 179
                  Height = 13
                  Caption = 'N'#250'mero de linhas do Bloqueto: '
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlue
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object DbNLinhas: TEdit
                  Left = 179
                  Top = 12
                  Width = 27
                  Height = 21
                  AutoSize = False
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  MaxLength = 3
                  ParentFont = False
                  TabOrder = 0
                end
              end
              object Bol_Obs1Ln: TEdit
                Left = 499
                Top = 79
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 57
              end
              object Bol_Obs1Col: TEdit
                Left = 568
                Top = 79
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 58
              end
              object Bol_Obs2Ln: TEdit
                Left = 499
                Top = 101
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 60
              end
              object Bol_Obs2Col: TEdit
                Left = 568
                Top = 101
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 61
              end
              object ChkBol_Obs1: TCheckBox
                Left = 597
                Top = 83
                Width = 58
                Height = 17
                Caption = 'Imprime'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 59
              end
              object ChkBol_Obs2: TCheckBox
                Left = 597
                Top = 105
                Width = 58
                Height = 17
                Caption = 'Imprime'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 62
              end
              object Bol_Obs3Ln: TEdit
                Left = 499
                Top = 123
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 63
              end
              object Bol_Obs3Col: TEdit
                Left = 568
                Top = 123
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 64
              end
              object ChkBol_Obs3: TCheckBox
                Left = 597
                Top = 127
                Width = 58
                Height = 17
                Caption = 'Imprime'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 65
              end
              object ChkBol_Desc: TCheckBox
                Left = 253
                Top = 347
                Width = 58
                Height = 17
                Caption = 'Imprime'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 44
              end
              object Bol_DescCol: TEdit
                Left = 224
                Top = 343
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 43
              end
              object Bol_DescLn: TEdit
                Left = 155
                Top = 343
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 42
              end
              object Bol_OutLn: TEdit
                Left = 499
                Top = 167
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 69
              end
              object Bol_OutCol: TEdit
                Left = 568
                Top = 167
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 70
              end
              object ChkBol_out: TCheckBox
                Left = 597
                Top = 171
                Width = 58
                Height = 17
                Caption = 'Imprime'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 71
              end
              object ChkBol_Mora: TCheckBox
                Left = 597
                Top = 193
                Width = 58
                Height = 17
                Caption = 'Imprime'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 74
              end
              object Bol_MoraCol: TEdit
                Left = 568
                Top = 189
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 73
              end
              object Bol_MoraLn: TEdit
                Left = 499
                Top = 189
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 72
              end
              object Bol_OutAcLn: TEdit
                Left = 499
                Top = 211
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 75
              end
              object Bol_OutAcCol: TEdit
                Left = 568
                Top = 211
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 76
              end
              object ChkBol_OutAc: TCheckBox
                Left = 597
                Top = 215
                Width = 58
                Height = 17
                Caption = 'Imprime'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 77
              end
              object ChkBol_VlCo: TCheckBox
                Left = 597
                Top = 237
                Width = 58
                Height = 17
                Caption = 'Imprime'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 80
              end
              object Bol_VlCoCol: TEdit
                Left = 568
                Top = 233
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 79
              end
              object Bol_VlCoLn: TEdit
                Left = 499
                Top = 233
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 78
              end
              object Bol_RazaoLn: TEdit
                Left = 499
                Top = 255
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 81
              end
              object Bol_RazaoCol: TEdit
                Left = 568
                Top = 255
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 82
              end
              object ChkBol_Razao: TCheckBox
                Left = 597
                Top = 259
                Width = 58
                Height = 17
                Caption = 'Imprime'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 83
              end
              object ChkBol_Cnpj: TCheckBox
                Left = 597
                Top = 281
                Width = 58
                Height = 17
                Caption = 'Imprime'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 86
              end
              object Bol_CnpjCol: TEdit
                Left = 568
                Top = 277
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 85
              end
              object Bol_CnpjLn: TEdit
                Left = 499
                Top = 277
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 84
              end
              object Bol_EndLn: TEdit
                Left = 499
                Top = 299
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 87
              end
              object Bol_EndCol: TEdit
                Left = 568
                Top = 299
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 88
              end
              object ChkBol_End: TCheckBox
                Left = 597
                Top = 303
                Width = 58
                Height = 17
                Caption = 'Imprime'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 89
              end
              object ChkBol_Cid: TCheckBox
                Left = 597
                Top = 325
                Width = 58
                Height = 17
                Caption = 'Imprime'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 92
              end
              object Bol_CidCol: TEdit
                Left = 568
                Top = 321
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 91
              end
              object Bol_CidLn: TEdit
                Left = 499
                Top = 321
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 90
              end
              object Bol_EstLn: TEdit
                Left = 499
                Top = 343
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 93
              end
              object Bol_EstCol: TEdit
                Left = 568
                Top = 343
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 94
              end
              object ChkBol_Est: TCheckBox
                Left = 597
                Top = 347
                Width = 58
                Height = 17
                Caption = 'Imprime'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 95
              end
              object ChkBol_Cep: TCheckBox
                Left = 597
                Top = 369
                Width = 58
                Height = 17
                Caption = 'Imprime'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 98
              end
              object Bol_CepCol: TEdit
                Left = 568
                Top = 365
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 97
              end
              object Bol_CepLn: TEdit
                Left = 499
                Top = 365
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 96
              end
              object Bol_VlDocLn: TEdit
                Left = 155
                Top = 321
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 39
              end
              object Bol_VlDocCol: TEdit
                Left = 224
                Top = 321
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 40
              end
              object ChkBol_VlDoc: TCheckBox
                Left = 253
                Top = 324
                Width = 58
                Height = 17
                Caption = 'Imprime'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 41
              end
              object Bol_EspDocLn: TEdit
                Left = 155
                Top = 145
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 15
              end
              object Bol_EspDocCol: TEdit
                Left = 224
                Top = 145
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 16
              end
              object ChkBol_EspDoc: TCheckBox
                Left = 253
                Top = 149
                Width = 58
                Height = 17
                Caption = 'Imprime'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 17
              end
              object GroupBox5: TGroupBox
                Left = 4
                Top = 470
                Width = 704
                Height = 65
                Caption = 'Instru'#231#245'es'
                TabOrder = 105
                object Label472: TLabel
                  Left = 8
                  Top = 19
                  Width = 34
                  Height = 13
                  Caption = 'Obs. 1:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Label473: TLabel
                  Left = 8
                  Top = 41
                  Width = 34
                  Height = 13
                  Caption = 'Obs. 2:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Label474: TLabel
                  Left = 355
                  Top = 19
                  Width = 34
                  Height = 13
                  Caption = 'Obs. 3:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Label475: TLabel
                  Left = 355
                  Top = 41
                  Width = 34
                  Height = 13
                  Caption = 'Obs. 4:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object DbBol_Obs1: TEdit
                  Left = 44
                  Top = 16
                  Width = 277
                  Height = 21
                  CharCase = ecUpperCase
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  MaxLength = 45
                  ParentFont = False
                  TabOrder = 0
                end
                object DbBol_Obs2: TEdit
                  Left = 44
                  Top = 38
                  Width = 277
                  Height = 21
                  CharCase = ecUpperCase
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  MaxLength = 45
                  ParentFont = False
                  TabOrder = 1
                end
                object DbBol_Obs3: TEdit
                  Left = 391
                  Top = 16
                  Width = 277
                  Height = 21
                  CharCase = ecUpperCase
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  MaxLength = 45
                  ParentFont = False
                  TabOrder = 2
                end
                object DbBol_Obs4: TEdit
                  Left = 391
                  Top = 38
                  Width = 277
                  Height = 21
                  CharCase = ecUpperCase
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  MaxLength = 45
                  ParentFont = False
                  TabOrder = 3
                end
              end
              object Bol_desaceiteln: TEdit
                Left = 499
                Top = 387
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 99
              end
              object Bol_desaceitecol: TEdit
                Left = 568
                Top = 387
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 100
              end
              object Chkbol_desaceite: TCheckBox
                Left = 597
                Top = 391
                Width = 58
                Height = 17
                Caption = 'Imprime'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 101
              end
              object Bol_descarteiraln: TEdit
                Left = 155
                Top = 387
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 48
              end
              object Bol_descarteiracol: TEdit
                Left = 224
                Top = 387
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 49
              end
              object chkBol_descarteira: TCheckBox
                Left = 253
                Top = 391
                Width = 58
                Height = 17
                Caption = 'Imprime'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 50
              end
              object Bol_DespecieLn: TEdit
                Left = 499
                Top = 409
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 102
              end
              object Bol_Despeciecol: TEdit
                Left = 568
                Top = 409
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 103
              end
              object chkBol_Despecie: TCheckBox
                Left = 597
                Top = 413
                Width = 58
                Height = 17
                Caption = 'Imprime'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 104
              end
              object Bol_ValorLn: TEdit
                Left = 155
                Top = 409
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 51
              end
              object Bol_ValorCol: TEdit
                Left = 224
                Top = 409
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 52
              end
              object chkBol_Valor: TCheckBox
                Left = 253
                Top = 413
                Width = 58
                Height = 17
                Caption = 'Imprime'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 53
              end
              object Bol_Obs4ln: TEdit
                Left = 499
                Top = 145
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 66
              end
              object Bol_Obs4Col: TEdit
                Left = 568
                Top = 145
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 67
              end
              object ChkBol_Obs4: TCheckBox
                Left = 597
                Top = 149
                Width = 58
                Height = 17
                Caption = 'Imprime'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 68
              end
              object Bol_DesEspDocLn: TEdit
                Left = 155
                Top = 365
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 45
              end
              object Bol_DesEspDocCol: TEdit
                Left = 224
                Top = 365
                Width = 27
                Height = 21
                AutoSize = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 3
                ParentFont = False
                TabOrder = 46
              end
              object chk_DesEspDoc: TCheckBox
                Left = 253
                Top = 370
                Width = 58
                Height = 17
                Caption = 'Imprime'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 47
              end
            end
          end
          object Panel9: TPanel
            Left = 255
            Top = 4
            Width = 462
            Height = 33
            BevelInner = bvLowered
            BevelOuter = bvLowered
            Caption = 'Panel1'
            Color = 10841658
            TabOrder = 1
            object Bit_SairBloq: TBitBtn
              Left = 368
              Top = 4
              Width = 90
              Height = 25
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
            object Bit_CancelarBloq: TBitBtn
              Left = 368
              Top = 4
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
              TabOrder = 2
              TabStop = False
              OnClick = Bit_CancelarBloqClick
            end
            object Bit_ExcluirBloq: TBitBtn
              Left = 188
              Top = 4
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
              TabOrder = 0
              TabStop = False
              OnClick = Bit_ExcluirBloqClick
            end
            object Bit_GravarBloq: TBitBtn
              Left = 279
              Top = 4
              Width = 88
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
              TabOrder = 1
              TabStop = False
              OnClick = Bit_GravarBloqClick
            end
            object Bit_NovoBloq: TBitBtn
              Left = 6
              Top = 4
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
              TabOrder = 4
              TabStop = False
              OnClick = Bit_NovoBloqClick
            end
            object Bit_AlterarBloq: TBitBtn
              Left = 97
              Top = 4
              Width = 90
              Height = 25
              Cursor = crHandPoint
              Caption = '&Alterar'
              TabOrder = 5
              TabStop = False
              OnClick = Bit_AlterarBloqClick
            end
          end
          object PNotaFiscal_Layout: TPanel
            Left = 10
            Top = 4
            Width = 242
            Height = 33
            BevelInner = bvLowered
            BevelOuter = bvLowered
            Caption = 'PNotaFiscal_Layout'
            Color = 10841658
            TabOrder = 2
            object DBNavigator4: TDBNavigator
              Left = 5
              Top = 4
              Width = 232
              Height = 25
              DataSource = DmCfg.DsBloq
              VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
              TabOrder = 0
              OnClick = DBNavigator4Click
            end
          end
        end
      end
    end
  end
  inherited coCalcula: TACBrCalculadora
    Left = 1160
    Top = 40
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 1048
    Top = 16
  end
  object SqlCdsBco: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 'select BAN_CODIGO, BAN_RAZAO, EMP_CODIGO from BAN0000'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'select BAN_CODIGO, BAN_RAZAO, EMP_CODIGO from BAN0000'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 1277
    Top = 469
    object SqlCdsBcoBAN_CODIGO: TStringField
      FieldName = 'BAN_CODIGO'
      Required = True
      Size = 4
    end
    object SqlCdsBcoBAN_RAZAO: TStringField
      FieldName = 'BAN_RAZAO'
      Size = 45
    end
    object SqlCdsBcoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
  object SqlCdsCCT: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 
      'select '#13#10'CCT_CODIGO, '#13#10'CCT_DESCRI, '#13#10'CCT_ANTIGO,'#13#10'CCT_NOVO'#13#10'from' +
      ' CCT_0000'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'select '#13#10'CCT_CODIGO, '#13#10'CCT_DESCRI, '#13#10'CCT_ANTIGO,'#13#10'CCT_NOVO'#13#10'from' +
      ' CCT_0000'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 1373
    Top = 333
    object SqlCdsCCTCCT_CODIGO: TStringField
      DisplayWidth = 14
      FieldName = 'CCT_CODIGO'
      Required = True
      Size = 3
    end
    object SqlCdsCCTCCT_DESCRI: TStringField
      DisplayWidth = 92
      FieldName = 'CCT_DESCRI'
      Size = 82
    end
    object SqlCdsCCTCCT_ANTIGO: TStringField
      DisplayWidth = 14
      FieldName = 'CCT_ANTIGO'
      Size = 3
    end
    object SqlCdsCCTCCT_NOVO: TStringField
      FieldName = 'CCT_NOVO'
      Size = 3
    end
  end
  object DsCCT: TDataSource
    DataSet = SqlCdsCCT
    Left = 1429
    Top = 333
  end
  object SqlCdsPag: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 
      'select'#13#10'P1.PAG_REGISTRO,'#13#10'P1.CCT_CODIGO,'#13#10'P1.CCT_NOVO'#13#10'from PAG0' +
      '000 P1'#13#10'WHERE P1.pag_dtemis BETWEEN '#39'01.01.2005'#39' AND '#39'31.12.2005' +
      #39' AND P1.EMP_CODIGO = '#39'001'#39';'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'select'#13#10'P1.PAG_REGISTRO,'#13#10'P1.CCT_CODIGO,'#13#10'P1.CCT_NOVO'#13#10'from PAG0' +
      '000 P1'#13#10'WHERE P1.pag_dtemis BETWEEN '#39'01.01.2005'#39' AND '#39'31.12.2005' +
      #39' AND P1.EMP_CODIGO = '#39'001'#39';'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 1375
    Top = 533
    object SqlCdsPagPAG_REGISTRO: TIntegerField
      FieldName = 'PAG_REGISTRO'
      Required = True
    end
    object SqlCdsPagCCT_CODIGO: TStringField
      FieldName = 'CCT_CODIGO'
      Size = 3
    end
    object SqlCdsPagCCT_NOVO: TStringField
      FieldName = 'CCT_NOVO'
      Size = 3
    end
  end
  object DsPag: TDataSource
    DataSet = SqlCdsPag
    Left = 1431
    Top = 533
  end
  object SqlCdsPc: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 
      'select'#13#10'P2.PAG_REGISTRO,'#13#10'P2.CCT_CODIGO,'#13#10'P2.CCT_NOVO'#13#10'from PAG_' +
      'PC01 P2'#13#10'WHERE P2.ppc_dtemis BETWEEN '#39'01.01.2005'#39' AND '#39'31.12.200' +
      '5'#39' AND P2.EMP_CODIGO = '#39'001'#39';'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'select'#13#10'P2.PAG_REGISTRO,'#13#10'P2.CCT_CODIGO,'#13#10'P2.CCT_NOVO'#13#10'from PAG_' +
      'PC01 P2'#13#10'WHERE P2.ppc_dtemis BETWEEN '#39'01.01.2005'#39' AND '#39'31.12.200' +
      '5'#39' AND P2.EMP_CODIGO = '#39'001'#39';'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 1375
    Top = 469
    object SqlCdsPcPAG_REGISTRO: TIntegerField
      FieldName = 'PAG_REGISTRO'
      Required = True
    end
    object SqlCdsPcCCT_CODIGO: TStringField
      FieldName = 'CCT_CODIGO'
      Size = 3
    end
    object SqlCdsPcCCT_NOVO: TStringField
      FieldName = 'CCT_NOVO'
      Size = 3
    end
  end
  object DsPc: TDataSource
    DataSet = SqlCdsPc
    Left = 1423
    Top = 469
  end
  object SqlCdsFor: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 
      'select '#13#10'F1.FOR_CODIGO,'#13#10'F1.CCT_CODIGO, '#13#10'F1.CCT_NOVO '#13#10'from FOR' +
      '0000 F1'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'select '#13#10'F1.FOR_CODIGO,'#13#10'F1.CCT_CODIGO, '#13#10'F1.CCT_NOVO '#13#10'from FOR' +
      '0000 F1'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 1374
    Top = 405
    object SqlCdsForFOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      Required = True
      Size = 4
    end
    object SqlCdsForCCT_CODIGO: TStringField
      FieldName = 'CCT_CODIGO'
      Size = 3
    end
    object SqlCdsForCCT_NOVO: TStringField
      FieldName = 'CCT_NOVO'
      Size = 3
    end
  end
  object DsFor: TDataSource
    DataSet = SqlCdsFor
    Left = 1430
    Top = 405
  end
  object SqlCdsEmpresa: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 'Select'#13#10'E1.EMP_CODIGO,'#13#10'E1.EMP_RAZAO'#13#10'from EMP0000 E1'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'Select'#13#10'E1.EMP_CODIGO,'#13#10'E1.EMP_RAZAO'#13#10'from EMP0000 E1'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 1040
    Top = 470
    object SqlCdsEmpresaEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlCdsEmpresaEMP_RAZAO: TStringField
      FieldName = 'EMP_RAZAO'
      Size = 45
    end
  end
  object SqlCdsBanco: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 
      'select BAN_CODIGO,BAN_APELIDO from BAN0000'#13#10'where BAN_APELIDO is' +
      ' not null '#13#10'group by '#13#10'BAN_CODIGO,'#13#10'BAN_APELIDO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'select BAN_CODIGO,BAN_APELIDO from BAN0000'#13#10'where BAN_APELIDO is' +
      ' not null '#13#10'group by '#13#10'BAN_CODIGO,'#13#10'BAN_APELIDO'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 1128
    Top = 470
    object SqlCdsBancoBAN_CODIGO: TStringField
      FieldName = 'BAN_CODIGO'
      Required = True
      Size = 4
    end
    object SqlCdsBancoBAN_APELIDO: TStringField
      FieldName = 'BAN_APELIDO'
      Size = 25
    end
  end
  object SqlCdsAtribFor: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 
      'Select'#13#10'P1.EMP_CODIGO,'#13#10'P1.PAG_DTEMIS,'#13#10'P1.FOR_CODIGO,'#13#10'P1.CCT_C' +
      'ODIGO,'#13#10'P1.CCT_NOVO'#13#10'from pag0000 P1'#13#10'WHERE P1.PAG_DTEMIS BETWEE' +
      'N '#39'01.01.2004'#39' AND '#39'31.12.2005'#39' AND P1.EMP_CODIGO = '#39'001'#39#13#10'order' +
      ' by'#13#10'P1.FOR_CODIGO,'#13#10'P1.PAG_DTEMIS'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'Select'#13#10'P1.EMP_CODIGO,'#13#10'P1.PAG_DTEMIS,'#13#10'P1.FOR_CODIGO,'#13#10'P1.CCT_C' +
      'ODIGO,'#13#10'P1.CCT_NOVO'#13#10'from pag0000 P1'#13#10'WHERE P1.PAG_DTEMIS BETWEE' +
      'N '#39'01.01.2004'#39' AND '#39'31.12.2005'#39' AND P1.EMP_CODIGO = '#39'001'#39#13#10'order' +
      ' by'#13#10'P1.FOR_CODIGO,'#13#10'P1.PAG_DTEMIS'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 1197
    Top = 469
    object SqlCdsAtribForEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlCdsAtribForPAG_DTEMIS: TSQLTimeStampField
      FieldName = 'PAG_DTEMIS'
    end
    object SqlCdsAtribForFOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      Size = 4
    end
    object SqlCdsAtribForCCT_CODIGO: TStringField
      FieldName = 'CCT_CODIGO'
      Size = 3
    end
    object SqlCdsAtribForCCT_NOVO: TStringField
      FieldName = 'CCT_NOVO'
      Size = 3
    end
  end
  object SqlCdsAlmoxarifadoGeral: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 'select * from ALMOX0000'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'select * from ALMOX0000'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 1023
    Top = 88
    object SqlCdsAlmoxarifadoGeralAMX_CODIGO: TStringField
      FieldName = 'AMX_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 4
    end
    object SqlCdsAlmoxarifadoGeralAMX_DESCRI: TStringField
      FieldName = 'AMX_DESCRI'
      Required = True
      Size = 60
    end
    object SqlCdsAlmoxarifadoGeralAMX_TIPO: TStringField
      FieldName = 'AMX_TIPO'
      Size = 60
    end
    object SqlCdsAlmoxarifadoGeralEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Required = True
      Size = 3
    end
    object SqlCdsAlmoxarifadoGeralAMX_FISICO: TStringField
      FieldName = 'AMX_FISICO'
      Size = 1
    end
    object SqlCdsAlmoxarifadoGeralAMX_TERCEIROS: TStringField
      FieldName = 'AMX_TERCEIROS'
      Size = 1
    end
    object SqlCdsAlmoxarifadoGeralAMX_FORATERCEIROS: TStringField
      FieldName = 'AMX_FORATERCEIROS'
      Size = 1
    end
    object SqlCdsAlmoxarifadoGeralAMX_CIRCULANTE: TStringField
      FieldName = 'AMX_CIRCULANTE'
      Size = 1
    end
    object SqlCdsAlmoxarifadoGeralAMX_VIRTUAL: TStringField
      FieldName = 'AMX_VIRTUAL'
      Size = 1
    end
  end
  object DsAlmoxarifadoGeral: TDataSource
    DataSet = SqlCdsAlmoxarifadoGeral
    Left = 1192
    Top = 320
  end
  object qCstPC: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DataCadastros.SQLConnection1
    Left = 1018
    Top = 27
  end
  object acbrnf1: TACBrNFe
    Configuracoes.Geral.SSLLib = libCapicomDelphiSoap
    Configuracoes.Geral.SSLCryptLib = cryCapicom
    Configuracoes.Geral.SSLHttpLib = httpIndy
    Configuracoes.Geral.SSLXmlSignLib = xsMsXmlCapicom
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Geral.ValidarDigest = False
    Configuracoes.Geral.VersaoQRCode = veqr000
    Configuracoes.Arquivos.OrdenacaoPath = <>
    Configuracoes.WebServices.UF = 'SP'
    Configuracoes.WebServices.AguardarConsultaRet = 0
    Configuracoes.WebServices.QuebradeLinha = '|'
    Configuracoes.RespTec.IdCSRT = 0
    Left = 1152
    Top = 184
  end
  object qcli: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DataCadastros.SQLConnection1
    Left = 976
    Top = 128
  end
  object AbrePastaOP: TJvBrowseForFolderDialog
    Left = 987
    Top = 459
  end
  object qFormaPagamento: TSQLQuery
    Params = <>
    Left = 928
    Top = 648
  end
end
