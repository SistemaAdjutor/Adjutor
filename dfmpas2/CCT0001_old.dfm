inherited FormContAnalise: TFormContAnalise
  Left = 166
  Top = 110
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Plano de Contas Financeiras'
  ClientHeight = 602
  ClientWidth = 1642
  Font.Charset = ANSI_CHARSET
  Font.Name = 'Arial'
  OldCreateOrder = True
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  ExplicitWidth = 1648
  ExplicitHeight = 630
  PixelsPerInch = 96
  TextHeight = 14
  object DBNavigator1: TDBNavigator [0]
    Left = 4
    Top = 574
    Width = 116
    Height = 25
    DataSource = DataCadastros.DsCtAnalise
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    TabOrder = 1
    OnClick = DBNavigator1Click
  end
  object Panel1: TPanel [1]
    Left = 229
    Top = 570
    Width = 397
    Height = 33
    BevelOuter = bvNone
    TabOrder = 2
    object Bit_Sair: TBitBtn
      Left = 290
      Top = 4
      Width = 95
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
    object Bit_Cancelar: TBitBtn
      Left = 298
      Top = 4
      Width = 95
      Height = 25
      Cursor = crHandPoint
      Hint = '|Cancela registro'
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
      OnClick = Bit_CancelarClick
    end
    object Bit_Gravar: TBitBtn
      Left = 203
      Top = 4
      Width = 95
      Height = 25
      Cursor = crHandPoint
      Hint = '|Grava registro'
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
      OnClick = Bit_GravarClick
    end
    object Bit_Excluir: TBitBtn
      Left = 108
      Top = 4
      Width = 95
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
      TabOrder = 0
      TabStop = False
      OnClick = Bit_ExcluirClick
    end
    object Bit_novo: TBitBtn
      Left = 13
      Top = 4
      Width = 95
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
      TabOrder = 4
      TabStop = False
      OnClick = Bit_novoClick
    end
  end
  object GroupCadastro: TGroupBox [2]
    Left = 0
    Top = -2
    Width = 623
    Height = 101
    TabOrder = 0
    object Label7: TLabel
      Left = 16
      Top = 39
      Width = 76
      Height = 14
      Caption = 'Nome da Conta:'
    end
    object Label6: TLabel
      Left = 13
      Top = 66
      Width = 82
      Height = 14
      Caption = 'Provis'#227'o Mensal:'
    end
    object Label1: TLabel
      Left = 12
      Top = 17
      Width = 81
      Height = 14
      Caption = 'C'#243'digo Reduzido'
    end
    object Label5: TLabel
      Left = 140
      Top = 15
      Width = 40
      Height = 14
      Caption = 'N'#250'mero:'
    end
    object Label4: TLabel
      Left = 206
      Top = 66
      Width = 23
      Height = 14
      Caption = 'Tipo:'
    end
    object DbeCct_Descri: TDBEdit
      Left = 96
      Top = 36
      Width = 417
      Height = 22
      TabStop = False
      DataField = 'CCT_DESCRI'
      DataSource = DataCadastros.DsCtAnalise
      TabOrder = 2
    end
    object DbeProvisao: TDBEdit
      Left = 96
      Top = 63
      Width = 105
      Height = 22
      DataField = 'CCT_PROVISAO'
      DataSource = DataCadastros.DsCtAnalise
      TabOrder = 3
    end
    object DBRadNivel: TDBRadioGroup
      Left = 522
      Top = 51
      Width = 95
      Height = 45
      Caption = 'N'#237'vel'
      DataField = 'CCT_STATUS'
      DataSource = DataCadastros.DsCtAnalise
      Items.Strings = (
        '&T'#237'tulo'
        '&Lan'#231'amento')
      TabOrder = 6
      TabStop = True
      Values.Strings = (
        'T'
        'L')
    end
    object EdtCCT_codigo: TEdit
      Left = 96
      Top = 12
      Width = 40
      Height = 22
      MaxLength = 3
      TabOrder = 0
      OnChange = EdtCCT_codigoChange
      OnExit = EdtCct_codigoExit
      OnKeyPress = EdtCCT_codigoKeyPress
    end
    object DbeCCT_Nivel: TDBEdit
      Left = 183
      Top = 12
      Width = 330
      Height = 22
      TabStop = False
      Color = 14145495
      DataField = 'CCT_NIVEL'
      DataSource = DataCadastros.DsCtAnalise
      ReadOnly = True
      TabOrder = 1
    end
    object DbRadMovimento: TDBRadioGroup
      Left = 521
      Top = 7
      Width = 95
      Height = 45
      Caption = 'Movimento'
      DataField = 'CCT_CONTA'
      DataSource = DataCadastros.DsCtAnalise
      Items.Strings = (
        '&Sa'#237'da'
        '&Entrada')
      TabOrder = 5
      TabStop = True
      Values.Strings = (
        'S'
        'E')
    end
    object CbxTipoCta: TComboBox
      Left = 234
      Top = 64
      Width = 282
      Height = 22
      Style = csDropDownList
      CharCase = ecUpperCase
      MaxLength = 16
      TabOrder = 4
      OnClick = CbxTipoCtaClick
      Items.Strings = (
        ''
        'CUSTOS FIXOS'
        'CUSTOS VARIAVEIS'
        'OUTRAS ENTRADAS'
        'OUTRAS SAIDAS'
        'ENTRADA POR VENDAS'
        'INVESTIMENTO')
    end
  end
  object grpPlano: TGroupBox [3]
    Left = 0
    Top = 98
    Width = 623
    Height = 473
    Caption = 'Contas'
    TabOrder = 3
    object DBGridContas: TDBGrid
      Left = 2
      Top = 16
      Width = 619
      Height = 455
      Align = alClient
      Color = 16776176
      DataSource = DataCadastros.DsCtAnalise
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentShowHint = False
      PopupMenu = pmContas
      ReadOnly = True
      ShowHint = True
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'CCT_NIVEL'
          Title.Alignment = taCenter
          Title.Caption = 'N'#186' da Conta'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 128
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CCT_CODIGO'
          Title.Caption = 'Reduzido'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CCT_DESCRI'
          Title.Alignment = taCenter
          Title.Caption = 'Nome da Conta Financeira'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 288
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CCT_MOV_CC'
          Title.Alignment = taCenter
          Title.Caption = 'Movimento'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 71
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CCT_TIPO'
          Title.Alignment = taCenter
          Title.Caption = 'Tipo'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 44
          Visible = True
        end>
    end
  end
  object pnl1: TPanel [4]
    Left = 125
    Top = 571
    Width = 105
    Height = 35
    BevelOuter = bvNone
    TabOrder = 4
    object Bit_Relatorio: TBitBtn
      Left = 2
      Top = 3
      Width = 95
      Height = 25
      Cursor = crHandPoint
      Hint = 'Relat'#243'rio'
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
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      TabStop = False
      OnClick = Bit_RelatorioClick
    end
  end
  object grpRateios: TGroupBox [5]
    Left = 624
    Top = 0
    Width = 337
    Height = 601
    Caption = 'Rateios'
    TabOrder = 5
    object dbrgrpCCT_PERFIL_RATEIO: TDBRadioGroup
      Left = 2
      Top = 16
      Width = 333
      Height = 33
      Align = alTop
      Caption = 'Tipo de Rateio da Conta'
      Columns = 3
      DataField = 'CCT_PERFIL_RATEIO'
      DataSource = DataCadastros.DsCtAnalise
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Items.Strings = (
        'Percentual'
        'Manual'
        'Colaborador')
      ParentFont = False
      TabOrder = 0
      Values.Strings = (
        'P'
        'M'
        'C')
      OnChange = dbrgrpCCT_PERFIL_RATEIOChange
      OnClick = dbrgrpCCT_PERFIL_RATEIOClick
      OnExit = dbrgrpCCT_PERFIL_RATEIOExit
    end
    object grpPerfilRateio: TGroupBox
      Left = 2
      Top = 49
      Width = 333
      Height = 49
      Align = alTop
      Caption = 'Perfil de Rateio'
      TabOrder = 1
      object SpeedButton2: TSpeedButton
        Left = 299
        Top = 16
        Width = 22
        Height = 21
        Hint = 'Cadastro de Tipo'
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
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton2Click
      end
      object cbPerfil: TSgDbSearchCombo
        Left = 3
        Top = 16
        Width = 294
        Height = 22
        TabOrder = 0
        LookupSelect = 
          'PCXPF_REGISTRO,EMP_CODIGO,PERIODO, PCXPF_DATA_INICIAL, PCXPF_DAT' +
          'A_FINAL'
        LookupOrderBy = 'PERIODO'
        LookupTable = 'PCX0000_PERFIL_VIEW'
        LookupDispl = 'PERIODO'
        OnButtonClick = SpeedButton2Click
        OnSelect = cbPerfilSelect
        GridAutoSize = False
        LookupSource = qPerfil
        LookupKeyField = 'PCXPF_REGISTRO'
        ShowButton = False
        LookupTableShare = 'PLANODECONTAS'
        AutoF8WinTitulo = 'Perfis de Rateio '
        AutoF8ColumnsTitulo = '#, Empresa, Periodo, Dt.Inicio, Dt.Fim'
        GridLeft = 0
        GridWidth = 0
        GridHeight = 100
        GridShowWhenEnter = False
      end
    end
    object nbTipoPerfil: TNotebook
      Left = 2
      Top = 98
      Width = 333
      Height = 501
      Align = alClient
      PageIndex = 2
      TabOrder = 2
      object TPage
        Left = 0
        Top = 0
        Caption = 'Manual'
        ExplicitWidth = 0
        ExplicitHeight = 0
        object pnlManual: TPanel
          Left = 0
          Top = 0
          Width = 333
          Height = 501
          Align = alClient
          TabOrder = 0
          object Label2: TLabel
            Left = 1
            Top = 208
            Width = 331
            Height = 292
            Align = alBottom
            Alignment = taCenter
            AutoSize = False
            Caption = 'Rateio realizado de Forma Manual'
            Font.Charset = ANSI_CHARSET
            Font.Color = clMaroon
            Font.Height = -21
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
      end
      object TPage
        Left = 0
        Top = 0
        Caption = 'Percentual'
        ExplicitWidth = 0
        ExplicitHeight = 0
        object pnlPercentual: TPanel
          Left = 0
          Top = 0
          Width = 333
          Height = 501
          Align = alClient
          Caption = 'pnlPercentual'
          TabOrder = 0
          object btnCentro: TBitBtn
            Left = 115
            Top = 469
            Width = 209
            Height = 25
            Cursor = crHandPoint
            Caption = 'Vincula'#231#227'o da Conta a Centro de Custos'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            NumGlyphs = 2
            ParentFont = False
            ParentShowHint = False
            ShowHint = False
            TabOrder = 1
            TabStop = False
            OnClick = btnCentroClick
          end
          object grpRateio: TGroupBox
            Left = 1
            Top = 1
            Width = 331
            Height = 464
            Align = alTop
            Caption = 'Centro de Custos Vinculados'
            TabOrder = 0
            object dbgrdRateio: TDBGrid
              Left = 2
              Top = 16
              Width = 327
              Height = 446
              Align = alClient
              Color = 16776176
              DataSource = dsPlanoCentro
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit]
              PopupMenu = PopupMenu1
              TabOrder = 0
              TitleFont.Charset = ANSI_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Arial'
              TitleFont.Style = []
              OnDrawColumnCell = dbgrdRateioDrawColumnCell
              Columns = <
                item
                  Expanded = False
                  FieldName = 'PCX_NIVEL'
                  Title.Alignment = taCenter
                  Title.Caption = 'N'#237'vel'
                  Width = 72
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'PCX_DESCRI'
                  Title.Alignment = taCenter
                  Title.Caption = 'Centro de Custo'
                  Width = 155
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'PCXP_INDICE'
                  Title.Alignment = taCenter
                  Title.Caption = '% Rateio'
                  Width = 63
                  Visible = True
                end>
            end
          end
        end
      end
      object TPage
        Left = 0
        Top = 0
        Caption = 'Colaborador'
        object pnlColaborador: TPanel
          Left = 0
          Top = 0
          Width = 333
          Height = 501
          Align = alClient
          Caption = 'pnlColaborador'
          TabOrder = 0
          object GroupBox1: TGroupBox
            Left = 1
            Top = 1
            Width = 331
            Height = 464
            Align = alTop
            Caption = 'Colaboradores por Centro de Custo do Perfil'
            TabOrder = 0
            object DBGrid1: TDBGrid
              Left = 2
              Top = 16
              Width = 327
              Height = 446
              Align = alClient
              Color = 16776176
              DataSource = dsColaboradorCentroCusto
              PopupMenu = PopupMenu1
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
                  FieldName = 'PCX_NIVEL'
                  Title.Alignment = taCenter
                  Title.Caption = 'N'#237'vel'
                  Width = 72
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'PCX_DESCRI'
                  Title.Alignment = taCenter
                  Title.Caption = 'Centro de Custo'
                  Width = 155
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'PPC_QUANTIDADE'
                  Title.Alignment = taCenter
                  Title.Caption = 'Quantidade'
                  Width = 63
                  Visible = True
                end>
            end
          end
          object BitBtn1: TBitBtn
            Left = 84
            Top = 469
            Width = 241
            Height = 25
            Cursor = crHandPoint
            Caption = 'Vincula'#231#227'o do Colaborador ao Centro de Custos'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            NumGlyphs = 2
            ParentFont = False
            ParentShowHint = False
            ShowHint = False
            TabOrder = 1
            TabStop = False
            OnClick = BitBtn1Click
          end
        end
      end
    end
  end
  inherited coCalcula: TACBrCalculadora
    Left = 360
    Top = 264
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 408
    Top = 272
  end
  inherited DBConn: TSQLConnection
    Left = 304
    Top = 265
  end
  object SqlCdsContAnalise: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 'SELECT '#13#10'*'#13#10'FROM CCT_0000'#13#10'ORDER BY CCT_DESCRI'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'SELECT '#13#10'*'#13#10'FROM CCT_0000'#13#10'ORDER BY CCT_DESCRI'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 69
    Top = 240
    object SqlCdsContAnaliseCCT_CODIGO: TStringField
      FieldName = 'CCT_CODIGO'
      Size = 3
    end
    object SqlCdsContAnaliseCCT_DESCRI: TStringField
      FieldName = 'CCT_DESCRI'
      Size = 80
    end
    object SqlCdsContAnaliseCCT_NIVEL: TStringField
      FieldName = 'CCT_NIVEL'
      Size = 19
    end
    object SqlCdsContAnaliseCCT_TIPO: TStringField
      FieldName = 'CCT_TIPO'
      Size = 2
    end
    object SqlCdsContAnaliseCCT_CONTA: TStringField
      FieldName = 'CCT_CONTA'
      Size = 1
    end
    object SqlCdsContAnaliseCCT_PROVISAO: TFMTBCDField
      FieldName = 'CCT_PROVISAO'
      Precision = 15
    end
    object SqlCdsContAnaliseCEC_CODIGO: TStringField
      FieldName = 'CEC_CODIGO'
      Size = 3
    end
    object SqlCdsContAnaliseCCT_STATUS: TStringField
      FieldName = 'CCT_STATUS'
      Size = 1
    end
    object SqlCdsContAnaliseEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
  object DsContAnalise: TDataSource
    DataSet = SqlCdsContAnalise
    Left = 101
    Top = 304
  end
  object ppRPRelCentroCusto01: TppReport
    AutoStop = False
    DataPipeline = ppBDEPipeline1
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
      'C:\JobProgram\Developer\Adjutor\FontesRelatorios\RELCONTANALISE.' +
      'rtm'
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
    Left = 1269
    Top = 72
    Version = '16.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppBDEPipeline1'
    object pp00HeaderBand2: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 16404
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
        mmHeight = 3217
        mmLeft = 0
        mmTop = 529
        mmWidth = 23029
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
        mmTop = 3969
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
        mmWidth = 19844
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
        mmTop = 11906
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
        mmLeft = 169069
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
        mmLeft = 180711
        mmTop = 7673
        mmWidth = 14552
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Descri'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3387
        mmLeft = 32279
        mmTop = 12435
        mmWidth = 11148
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
        mmTop = 16139
        mmWidth = 196000
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Movto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3440
        mmLeft = 178065
        mmTop = 12435
        mmWidth = 8996
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Tipo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3440
        mmLeft = 189177
        mmTop = 12435
        mmWidth = 6879
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'N'#186' Conta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3387
        mmLeft = 529
        mmTop = 12435
        mmWidth = 12435
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Titulo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3440
        mmLeft = 169598
        mmTop = 12435
        mmWidth = 7938
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Codigo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3440
        mmLeft = 159015
        mmTop = 12435
        mmWidth = 8184
        BandType = 0
        LayerName = Foreground
      end
    end
    object pp00DetailBand2: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 3440
      mmPrintPosition = 0
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        CharWrap = True
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CCT_DESCRI'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3440
        mmLeft = 32015
        mmTop = 0
        mmWidth = 123561
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        HyperlinkEnabled = False
        AutoSize = True
        Border.Weight = 1.000000000000000000
        DataField = 'CCT_CONTA'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3246
        mmLeft = 178065
        mmTop = 0
        mmWidth = 1693
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CCT_TIPO'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3387
        mmLeft = 190765
        mmTop = 0
        mmWidth = 4498
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CCT_NIVEL'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3387
        mmLeft = 529
        mmTop = 0
        mmWidth = 30692
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CCT_STATUS'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3440
        mmLeft = 169598
        mmTop = 0
        mmWidth = 4763
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CCT_CODIGO'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3440
        mmLeft = 158750
        mmTop = 0
        mmWidth = 7408
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
        Caption = 'Total de Contas Analises Listado(s):'
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
        mmWidth = 41487
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc2: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3175
        mmLeft = 46567
        mmTop = 529
        mmWidth = 17198
        BandType = 7
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
  object ppBDEPipeline1: TppBDEPipeline
    DataSource = DsContAnalise
    UserName = 'BDEPipeline1'
    Left = 1235
    Top = 8
  end
  object CdsPlanoCentro: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 
      'SELECT T1.pcx_codigo,'#13#10'            T2.pcx_nivel,'#13#10'            T2' +
      '.pcx_descri, '#13#10'             T1.pcxp_indice,'#13#10'       t1.pcxp_regi' +
      'stro'#13#10' FROM pcx0000_plano T1 join pcx0000 T2 ON (T2.pcx_codigo =' +
      ' T1.pcx_codigo)'#13#10'WHERE T1.cct_0000 = '#39'001'#39#13#10'ORDER BY T2.pcx_nive' +
      'l'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'SELECT T1.pcx_codigo,'#13#10'            T2.pcx_nivel,'#13#10'            T2' +
      '.pcx_descri, '#13#10'             T1.pcxp_indice,'#13#10'       t1.pcxp_regi' +
      'stro'#13#10' FROM pcx0000_plano T1 join pcx0000 T2 ON (T2.pcx_codigo =' +
      ' T1.pcx_codigo)'#13#10'WHERE T1.cct_0000 = '#39'001'#39#13#10'ORDER BY T2.pcx_nive' +
      'l'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 1008
    Top = 73
    object CdsPlanoCentroPCX_CODIGO: TStringField
      FieldName = 'PCX_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsPlanoCentroPCX_NIVEL: TStringField
      FieldName = 'PCX_NIVEL'
      ProviderFlags = []
      Size = 15
    end
    object CdsPlanoCentroPCX_DESCRI: TStringField
      FieldName = 'PCX_DESCRI'
      ProviderFlags = []
      Size = 25
    end
    object CdsPlanoCentroPCXP_INDICE: TFMTBCDField
      FieldName = 'PCXP_INDICE'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '##0.00%'
      Precision = 20
      Size = 5
    end
    object CdsPlanoCentroPCXP_REGISTRO: TIntegerField
      FieldName = 'PCXP_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object dsPlanoCentro: TDataSource
    DataSet = CdsPlanoCentro
    Left = 1080
    Top = 105
  end
  object dsColaboradorCentroCusto: TDataSource
    DataSet = CdsColaboradorCentroCusto
    Left = 1136
    Top = 265
  end
  object CdsColaboradorCentroCusto: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 
      'SELECT'#13#10' t2.PCX_CODIGO,'#13#10' T2.PCX_NIVEL,'#13#10' T2.PCX_DESCRI,'#13#10' t1.PP' +
      'C_QUANTIDADE_TOTAL_PERFIL,'#13#10' T1.PPC_QUANTIDADE,'#13#10' t1.ppc_registr' +
      'o'#13#10'FROM'#13#10'PCX0000_PERFIL_COLABORADOR T1'#13#10'JOIN PCX0000 T2 ON (T2.P' +
      'CX_CODIGO = T1.PCX_CODIGO)'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'SELECT'#13#10' t2.PCX_CODIGO,'#13#10' T2.PCX_NIVEL,'#13#10' T2.PCX_DESCRI,'#13#10' t1.PP' +
      'C_QUANTIDADE_TOTAL_PERFIL,'#13#10' T1.PPC_QUANTIDADE,'#13#10' t1.ppc_registr' +
      'o'#13#10'FROM'#13#10'PCX0000_PERFIL_COLABORADOR T1'#13#10'JOIN PCX0000 T2 ON (T2.P' +
      'CX_CODIGO = T1.PCX_CODIGO)'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 1024
    Top = 233
    object CdsColaboradorCentroCustoPCX_NIVEL: TStringField
      FieldName = 'PCX_NIVEL'
      ProviderFlags = []
      Size = 15
    end
    object CdsColaboradorCentroCustoPCX_DESCRI: TStringField
      FieldName = 'PCX_DESCRI'
      ProviderFlags = []
      Size = 25
    end
    object CdsColaboradorCentroCustoPPC_QUANTIDADE: TFMTBCDField
      FieldName = 'PPC_QUANTIDADE'
      ProviderFlags = [pfInUpdate]
      Precision = 20
      Size = 5
    end
    object CdsColaboradorCentroCustoPCX_CODIGO: TStringField
      FieldName = 'PCX_CODIGO'
      ProviderFlags = []
      Size = 3
    end
    object CdsColaboradorCentroCustoPPC_QUANTIDADE_TOTAL_PERFIL: TFMTBCDField
      FieldName = 'PPC_QUANTIDADE_TOTAL_PERFIL'
      ProviderFlags = [pfInUpdate]
      Precision = 20
      Size = 5
    end
    object CdsColaboradorCentroCustoPPC_REGISTRO: TIntegerField
      FieldName = 'PPC_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object pmContas: TPopupMenu
    Left = 520
    Top = 202
    object CopiarConfiguraodeRateio1: TMenuItem
      Caption = 'Copiar Configura'#231#245'es de Rateio'
      OnClick = CopiarConfiguraodeRateio1Click
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 675
    Top = 187
    object RemoverEsteCCusto1: TMenuItem
      Caption = 'Remover Este C.Custo'
      OnClick = RemoverEsteCCusto1Click
    end
    object RemoverTodososCCusto1: TMenuItem
      Caption = 'Remover Todos os C.Custo C/Qtd Zero'
      OnClick = RemoverTodososCCusto1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object VincularNovoCCusto1: TMenuItem
      Caption = 'Vincular C.Custo'
      OnClick = VincularNovoCCusto1Click
    end
    object AdicionarTodososCCustos1: TMenuItem
      Caption = 'Vincular Todos os C.Custos'
      OnClick = AdicionarTodososCCustos1Click
    end
  end
  object qPerfil: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'select PCXPF_REGISTRO,EMP_CODIGO,PERIoDO from PCX0000_PERFIL_VIE' +
        'W where PCXPF_REGISTRO='#39'-1'#39)
    SQLConnection = DataCadastros.SQLConnection1
    Left = 755
    Top = 59
  end
end
