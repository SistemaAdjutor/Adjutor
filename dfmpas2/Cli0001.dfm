inherited FormCliente: TFormCliente
  Left = 144
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Cliente'
  ClientHeight = 610
  ClientWidth = 1752
  Font.Charset = ANSI_CHARSET
  Font.Name = 'Arial'
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = True
  Position = poDesigned
  Visible = True
  OnCloseQuery = FormCloseQuery
  ExplicitWidth = 1758
  ExplicitHeight = 635
  PixelsPerInch = 96
  TextHeight = 14
  object GroupBox2: TGroupBox [0]
    Left = 0
    Top = 0
    Width = 1752
    Height = 42
    Align = alTop
    TabOrder = 2
    object DBText1: TDBText
      Left = 2
      Top = 16
      Width = 94
      Height = 24
      Align = alLeft
      Anchors = []
      DataField = 'CLI_CODIGO'
      DataSource = DataCadastros.DsCliente
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ExplicitLeft = 5
      ExplicitTop = 12
    end
    object DBText2: TDBText
      Left = 96
      Top = 16
      Width = 726
      Height = 24
      Align = alLeft
      Anchors = []
      DataField = 'CLI_RAZAO'
      DataSource = DataCadastros.DsCliente
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ExplicitLeft = 99
      ExplicitTop = 12
    end
  end
  object PageCliente: TPageControl [1]
    Left = 0
    Top = 42
    Width = 1752
    Height = 538
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    OnChange = PageClienteChange
    object TabSheet1: TTabSheet
      Caption = '&Cadastro'
      object Label1: TLabel
        Left = 40
        Top = 13
        Width = 36
        Height = 14
        Caption = 'C'#243'digo:'
      end
      object Label2: TLabel
        Left = 4
        Top = 97
        Width = 70
        Height = 14
        Caption = 'Raz'#227'o / Nome:'
      end
      object Label3: TLabel
        Left = 508
        Top = 121
        Width = 36
        Height = 14
        Caption = 'Regi'#227'o:'
      end
      object Label10: TLabel
        Left = 49
        Top = 147
        Width = 27
        Height = 14
        Caption = 'Fone:'
      end
      object Label15: TLabel
        Left = 26
        Top = 45
        Width = 50
        Height = 14
        Caption = 'CNPJ/CPF:'
      end
      object Label19: TLabel
        Left = 498
        Top = 70
        Width = 47
        Height = 14
        Caption = 'Cadastro:'
      end
      object Label4: TLabel
        Left = 27
        Top = 121
        Width = 48
        Height = 14
        Caption = 'Atividade:'
        Color = clBtnFace
        ParentColor = False
      end
      object Label12: TLabel
        Left = 186
        Top = 147
        Width = 48
        Height = 14
        Caption = 'Fone/Fax:'
      end
      object Label14: TLabel
        Left = 478
        Top = 43
        Width = 67
        Height = 14
        Caption = 'Insc.Estadual:'
      end
      object Label36: TLabel
        Left = 327
        Top = 116
        Width = 36
        Height = 14
        Caption = 'Celular:'
      end
      object Label37: TLabel
        Left = 500
        Top = 95
        Width = 44
        Height = 14
        Caption = 'Fantasia:'
      end
      object Label70: TLabel
        Left = 5
        Top = 70
        Width = 70
        Height = 14
        Caption = 'Insc.Municipal:'
      end
      object Label18: TLabel
        Left = 484
        Top = 145
        Width = 59
        Height = 14
        Caption = 'Vendedor 1:'
      end
      object Label76: TLabel
        Left = 703
        Top = 41
        Width = 134
        Height = 14
        Hint = 
          'Defina SIM quando cliente pessoa F'#237'sica ou cliente n'#227'o contribui' +
          'nte do ICMS'#13#10'Defina N'#195'O quando '#233' uma empresa que compra para USO' +
          ' e CONSUMO ou '#233' para INDUSTRIALIZA'#199#195'O ou ent'#227'o uma REVENDA'
        Caption = #201' consumidor final definitivo'
        ParentShowHint = False
        ShowHint = True
      end
      object Label8: TLabel
        Left = 345
        Top = 147
        Width = 36
        Height = 14
        Caption = 'Celular:'
      end
      object Label108: TLabel
        Left = 484
        Top = 174
        Width = 59
        Height = 14
        Caption = 'Vendedor 2:'
      end
      object Label53: TLabel
        Left = 38
        Top = 173
        Width = 37
        Height = 14
        Caption = 'Origem:'
      end
      object lbCLI_DTNASCIMENTO: TLabel
        Left = 275
        Top = 71
        Width = 99
        Height = 14
        Alignment = taRightJustify
        Caption = 'Data de Nascimento:'
      end
      object rgConsumoProprio: TDBRadioGroup
        Left = 686
        Top = 61
        Width = 395
        Height = 31
        Hint = 
          'Uso e consumo ou Industrializa'#231#227'o: Compra para uso e consumo ou ' +
          'utiliza no processo de industrializa'#231#227'o de haver Difal em alguns' +
          ' casos.'#13#10'Revenda: Compra para Revenda dos produtos. Pode haver s' +
          'ubst. tribut'#225'ria em alguns casos.'
        Margins.Left = 1
        Margins.Top = 0
        Margins.Right = 1
        Margins.Bottom = 0
        Columns = 2
        DataField = 'CLI_CONSU_PROPRIO'
        DataSource = DataCadastros.DsCliente
        Items.Strings = (
          'Uso e consumo ou industrializa'#231#227'o'
          'Revenda')
        ParentShowHint = False
        ShowHint = True
        TabOrder = 28
        Values.Strings = (
          'S'
          'N')
        StyleElements = []
      end
      object GroupBox18: TGroupBox
        Left = 0
        Top = 434
        Width = 1744
        Height = 75
        Align = alBottom
        Caption = 'Observa'#231#227'o'
        TabOrder = 26
        object DBMemo2: TDBMemo
          Left = 2
          Top = 16
          Width = 1740
          Height = 57
          Align = alClient
          DataField = 'CLI_OBS'
          DataSource = DataCadastros.DsCliente
          ParentShowHint = False
          ScrollBars = ssVertical
          ShowHint = False
          TabOrder = 0
          OnEnter = DBMemo2Enter
          OnExit = DBMemo2Exit
        end
      end
      object PageControl1: TPageControl
        Left = 0
        Top = 304
        Width = 1744
        Height = 130
        ActivePage = tsFaturamento
        Align = alBottom
        MultiLine = True
        TabOrder = 25
        object TabSheet5: TTabSheet
          Caption = 'Contato'
          object grpContato: TGroupBox
            Left = 0
            Top = 0
            Width = 1736
            Height = 101
            Align = alClient
            TabOrder = 0
            object Label16: TLabel
              Left = 45
              Top = 22
              Width = 40
              Height = 14
              Caption = 'Contato:'
            end
            object Label17: TLabel
              Left = 484
              Top = 21
              Width = 39
              Height = 14
              Caption = 'Fun'#231#227'o:'
            end
            object Label30: TLabel
              Left = 502
              Top = 45
              Width = 21
              Height = 14
              Caption = 'Site:'
            end
            object Label69: TLabel
              Left = 18
              Top = 46
              Width = 67
              Height = 14
              Caption = 'Email Contato:'
            end
            object Label9: TLabel
              Left = 10
              Top = 70
              Width = 74
              Height = 14
              Caption = 'Email para NFe:'
            end
            object Label33: TLabel
              Left = 488
              Top = 72
              Width = 41
              Height = 14
              Caption = 'Latitude:'
            end
            object Label52: TLabel
              Left = 704
              Top = 72
              Width = 50
              Height = 14
              Caption = 'Longitude:'
            end
            object DbeCli_contato: TDBEdit
              Left = 88
              Top = 18
              Width = 382
              Height = 22
              CharCase = ecUpperCase
              DataField = 'CLI_CONTATO'
              DataSource = DataCadastros.DsCliente
              TabOrder = 0
            end
            object DbeCli_funcont: TDBEdit
              Left = 529
              Top = 17
              Width = 399
              Height = 22
              CharCase = ecUpperCase
              DataField = 'CLI_FUNCONT'
              DataSource = DataCadastros.DsCliente
              TabOrder = 1
            end
            object DbeCLI_HOME: TDBEdit
              Left = 530
              Top = 41
              Width = 398
              Height = 22
              CharCase = ecLowerCase
              DataField = 'CLI_HOME'
              DataSource = DataCadastros.DsCliente
              TabOrder = 2
            end
            object DBEmail: TDBEdit
              Left = 87
              Top = 41
              Width = 382
              Height = 22
              CharCase = ecLowerCase
              DataField = 'CLI_EMAIL_ALTERNATIVO'
              DataSource = DataCadastros.DsCliente
              TabOrder = 3
            end
            object DbeCli_email: TDBEdit
              Left = 86
              Top = 66
              Width = 383
              Height = 22
              CharCase = ecLowerCase
              DataField = 'CLI_EMAIL'
              DataSource = DataCadastros.DsCliente
              TabOrder = 4
            end
            object DBEdit3: TDBEdit
              Left = 535
              Top = 69
              Width = 163
              Height = 22
              CharCase = ecUpperCase
              DataField = 'CLI_LATITUDE'
              DataSource = DataCadastros.DsCliente
              TabOrder = 5
            end
            object DBEdit7: TDBEdit
              Left = 760
              Top = 69
              Width = 168
              Height = 22
              CharCase = ecUpperCase
              DataField = 'CLI_LONGITUDE'
              DataSource = DataCadastros.DsCliente
              TabOrder = 6
            end
          end
        end
        object TabSheet6: TTabSheet
          Caption = 'Financeiro'
          ImageIndex = 1
          object GRP_Bloquear: TGroupBox
            Left = 0
            Top = 49
            Width = 1736
            Height = 53
            Align = alTop
            Caption = 'Bloquear Cliente'
            TabOrder = 0
            object Label34: TLabel
              Left = 336
              Top = 26
              Width = 25
              Height = 14
              Caption = 'Data:'
            end
            object Label35: TLabel
              Left = 465
              Top = 27
              Width = 101
              Height = 14
              Caption = 'Motivo da Inativa'#231#227'o:'
            end
            object DbDateRestricao: TDBDateEdit
              Left = 365
              Top = 22
              Width = 98
              Height = 22
              DataField = 'CLI_DTINATIVO'
              DataSource = DataCadastros.DsCliente
              NumGlyphs = 2
              TabOrder = 0
              YearDigits = dyFour
              OnExit = DbDateRestricaoExit
            end
            object DBEdtMovito: TDBEdit
              Left = 1240
              Top = 26
              Width = 474
              Height = 22
              CharCase = ecUpperCase
              DataField = 'CLI_MOTIVO'
              DataSource = DataCadastros.DsCliente
              TabOrder = 1
            end
            object DBRADBloqueia: TDBRadioGroup
              Left = 7
              Top = 12
              Width = 323
              Height = 34
              Columns = 3
              DataField = 'CLI_INATIVO'
              DataSource = DataCadastros.DsCliente
              Items.Strings = (
                '&Ativo'
                '&Inativo'
                'Em recupera'#231#227'o')
              TabOrder = 2
              Values.Strings = (
                'A'
                'I'
                'R')
              OnClick = DBRADBloqueiaClick
            end
            object DBMemo4: TDBMemo
              Left = 572
              Top = 10
              Width = 355
              Height = 40
              DataField = 'CLI_MOTIVO'
              DataSource = DataCadastros.DsCliente
              TabOrder = 3
              OnEnter = DBMemo4Enter
              OnExit = DBMemo4Exit
            end
          end
          object Grp_Credito: TGroupBox
            Left = 0
            Top = 0
            Width = 1736
            Height = 49
            Align = alTop
            Caption = 'Cr'#233'ditos (R$)'
            TabOrder = 1
            object Label38: TLabel
              Left = 2
              Top = 21
              Width = 81
              Height = 14
              Caption = 'Limite de cr'#233'dito:'
            end
            object Label39: TLabel
              Left = 395
              Top = 21
              Width = 52
              Height = 14
              Caption = 'Dispon'#237'vel:'
            end
            object Label40: TLabel
              Left = 196
              Top = 21
              Width = 43
              Height = 14
              Caption = 'Utilizado:'
            end
            object Label41: TLabel
              Left = 552
              Top = 21
              Width = 97
              Height = 14
              Caption = 'Valor '#250'ltima compra:'
            end
            object Label20: TLabel
              Left = 752
              Top = 21
              Width = 81
              Height = 14
              Caption = 'Data ult. compra:'
            end
            object DbeLimiteCred: TDBEdit
              Left = 85
              Top = 18
              Width = 95
              Height = 22
              Color = clWhite
              DataField = 'CLI_LIMITECRED'
              DataSource = DataCadastros.DsCliente
              MaxLength = 13
              TabOrder = 0
              OnChange = DbeLimiteCredChange
              OnExit = DbeLimiteCredExit
            end
            object DbeValorUltimaCompra: TDBEdit
              Left = 653
              Top = 18
              Width = 95
              Height = 22
              DataField = 'CLI_VL_ULTCOMP'
              DataSource = DataCadastros.DsCliente
              MaxLength = 13
              ReadOnly = True
              TabOrder = 1
            end
            object DBeUltCompra: TDBDateEdit
              Left = 838
              Top = 18
              Width = 94
              Height = 22
              DataField = 'CLI_DTULTCOM'
              DataSource = DataCadastros.DsCliente
              NumGlyphs = 2
              TabOrder = 2
              YearDigits = dyFour
              OnExit = DBeUltCompraExit
            end
            object edtLimiteUtilizado: TCurrencyEdit
              Left = 248
              Top = 18
              Width = 95
              Height = 21
              AutoSize = False
              Color = 14145495
              DisplayFormat = '###,##0.00;###,##0.00'
              ReadOnly = True
              TabOrder = 3
            end
            object edtLimiteDisponivel: TCurrencyEdit
              Left = 448
              Top = 18
              Width = 95
              Height = 21
              AutoSize = False
              Color = 14145495
              DisplayFormat = '###,##0.00'
              ReadOnly = True
              TabOrder = 4
            end
          end
        end
        object tsVenda: TTabSheet
          Caption = 'Venda'
          ImageIndex = 2
          object GroupBox19: TGroupBox
            Left = 0
            Top = 0
            Width = 1736
            Height = 101
            Align = alClient
            TabOrder = 0
            object Label84: TLabel
              Left = 10
              Top = 7
              Width = 137
              Height = 14
              Caption = 'Tabela de Pre'#231'os Vinculada:'
            end
            object Label77: TLabel
              Left = 645
              Top = 8
              Width = 86
              Height = 14
              Caption = 'Desconto Padr'#227'o:'
            end
            object Label78: TLabel
              Left = 778
              Top = 9
              Width = 8
              Height = 13
              Caption = '+'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label79: TLabel
              Left = 840
              Top = 9
              Width = 8
              Height = 13
              Caption = '='
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label80: TLabel
              Left = 916
              Top = 8
              Width = 10
              Height = 14
              Caption = '%'
            end
            object Label74: TLabel
              Left = 65
              Top = 31
              Width = 80
              Height = 14
              Caption = 'Prazo na Venda:'
            end
            object Label13: TLabel
              Left = 66
              Top = 55
              Width = 78
              Height = 14
              Caption = 'Transportadora:'
              Color = clBtnFace
              ParentColor = False
            end
            object Label106: TLabel
              Left = 564
              Top = 56
              Width = 71
              Height = 14
              Caption = 'Valor do Frete:'
            end
            object Label107: TLabel
              Left = 651
              Top = 32
              Width = 80
              Height = 14
              Caption = 'Valor Despesas:'
            end
            object Label109: TLabel
              Left = 66
              Top = 80
              Width = 78
              Height = 14
              Alignment = taRightJustify
              Caption = 'Forma de Pagto:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object Label44: TLabel
              Left = 701
              Top = 56
              Width = 28
              Height = 14
              Caption = 'Frete:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object CbTabelaPreco: TComboBox
              Left = 147
              Top = 4
              Width = 359
              Height = 22
              CharCase = ecUpperCase
              MaxLength = 20
              TabOrder = 0
              OnChange = CbTabelaPrecoChange
              OnClick = CbxCobrancaClick
              OnEnter = CbxCobrancaEnter
            end
            object DbeDesc1: TDBEdit
              Left = 733
              Top = 4
              Width = 37
              Height = 22
              CharCase = ecUpperCase
              DataField = 'CLI_DESC1'
              DataSource = DataCadastros.DsCliente
              TabOrder = 1
            end
            object DBEdit6: TDBEdit
              Left = 794
              Top = 4
              Width = 37
              Height = 22
              CharCase = ecUpperCase
              DataField = 'CLI_DESC2'
              DataSource = DataCadastros.DsCliente
              TabOrder = 2
            end
            object DescTotal: TCurrencyEdit
              Left = 856
              Top = 5
              Width = 55
              Height = 21
              TabStop = False
              AutoSize = False
              Color = 14145495
              DisplayFormat = '###,###,##0.00'
              ReadOnly = True
              TabOrder = 3
              ZeroEmpty = False
            end
            object DbePrazoCodigo: TDBEdit
              Left = 147
              Top = 28
              Width = 37
              Height = 22
              CharCase = ecUpperCase
              DataField = 'PCL_CODIGO'
              DataSource = DataCadastros.DsCliente
              TabOrder = 4
              OnExit = DbePrazoCodigoExit
              OnKeyPress = DbePrazoCodigoKeyPress
            end
            object CbxPrazo: TComboBox
              Left = 185
              Top = 28
              Width = 320
              Height = 22
              CharCase = ecUpperCase
              ItemIndex = 0
              MaxLength = 20
              TabOrder = 5
              OnClick = CbxPrazoClick
              OnEnter = CbxPrazoEnter
              Items.Strings = (
                '')
            end
            object DBETRP_CODIGO: TDBEdit
              Left = 147
              Top = 52
              Width = 37
              Height = 22
              CharCase = ecUpperCase
              DataField = 'TRP_CODIGO'
              DataSource = DataCadastros.DsCliente
              TabOrder = 6
              OnClick = DBETRP_CODIGOClick
              OnEnter = DBETRP_CODIGOClick
              OnExit = DBETRP_CODIGOExit
              OnKeyPress = EdtCli_codigoKeyPress
            end
            object CbxTransp: TComboBox
              Left = 185
              Top = 52
              Width = 320
              Height = 22
              CharCase = ecUpperCase
              ItemIndex = 0
              MaxLength = 45
              TabOrder = 7
              OnClick = CbxTranspClick
              OnEnter = CbxTranspEnter
              OnExit = CbxTranspExit
              Items.Strings = (
                '')
            end
            object edTabela: TsgDBLookupCombo
              Left = 508
              Top = 22
              Width = 121
              Height = 22
              TabOrder = 8
              OnChange = edTabelaChange
              CharCase = ecUpperCase
              LookupSelect = 'PRE_ID, PRE_DESCRICAO'
              LookupOrderBy = 'PRE_DESCRICAO'
              LookupTable = 'PRECOS0000'
              LookupDispl = 'PRE_DESCRICAO'
              GridAutoSize = False
              LookupSource = qTabelas
              DataField = 'PRE_ID'
              DataSource = DataCadastros.DsCliente
              LookupKeyField = 'PRE_ID'
              ShowButton = True
              LookupTableShare = 'TABELAS'
              GridLeft = 0
              GridWidth = 0
              GridHeight = 100
              GridShowWhenEnter = False
              SelectWithDoubleClick = False
              OnMenuPesquisaClick = edTabelaMenuPesquisaClick
            end
            object DBEdit21: TDBEdit
              Left = 641
              Top = 52
              Width = 55
              Height = 22
              DataField = 'CLI_VALORFRETE'
              DataSource = DataCadastros.DsCliente
              TabOrder = 9
            end
            object DBEdit22: TDBEdit
              Left = 733
              Top = 28
              Width = 55
              Height = 22
              DataField = 'CLI_VALORDESPESAS'
              DataSource = DataCadastros.DsCliente
              TabOrder = 10
            end
            object edFPagto: TSgDbSearchCombo
              Left = 147
              Top = 76
              Width = 273
              Height = 22
              TabOrder = 11
              CharCase = ecUpperCase
              LookupSelect = 'FPG_DESCRICAO, FPG_REGISTRO'
              LookupOrderBy = 'FPG_DESCRICAO'
              LookupTable = 'FORMA_PAGAMENTO'
              LookupDispl = 'FPG_DESCRICAO'
              GridAutoSize = False
              LookupSource = qFPagto
              DataField = 'FPG_REGISTRO'
              DataSource = DataCadastros.DsCliente
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
            object CbTipoFrete: TComboBox
              Left = 733
              Top = 52
              Width = 174
              Height = 22
              Hint = 
                '0-Emitente (CIF)'#13#10'1-Destinat'#225'rio (FOB)'#13#10'2-Terceiros'#13#10'3-Pr'#243'prio p' +
                'or conta do remetente'#13#10'4-Pr'#243'prio por conta do destinat'#225'rio'#13#10'9-Se' +
                'm frete'
              Style = csOwnerDrawFixed
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 12
              OnChange = CbTipoFreteChange
              Items.Strings = (
                '0-Remetente (CIF)'
                '1-Destinat'#225'rio (FOB)'
                '2-Terceiros'
                '3-Pr'#243'prio por conta do remetente'
                '4-Pr'#243'prio por conta do destinat'#225'rio'
                '9-Sem frete')
            end
            object chkSemComissao: TDBCheckBox
              Left = 565
              Top = 77
              Width = 380
              Height = 17
              Caption = 'N'#227'o permite pagto de comiss'#227'o ao vendedor'
              DataField = 'CLI_SEMCOMISSAO'
              DataSource = DataCadastros.DsCliente
              TabOrder = 13
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
          end
        end
        object tsFiscal: TTabSheet
          Caption = 'Fiscal'
          ImageIndex = 3
          object grp1: TGroupBox
            Left = 0
            Top = 0
            Width = 1736
            Height = 101
            Align = alClient
            TabOrder = 0
            object Label45: TLabel
              Left = 60
              Top = 20
              Width = 67
              Height = 14
              Caption = 'CFOP Padr'#227'o:'
            end
            object Label82: TLabel
              Left = 89
              Top = 46
              Width = 38
              Height = 14
              Caption = 'Regime:'
            end
            object Label46: TLabel
              Left = 696
              Top = 22
              Width = 83
              Height = 14
              Caption = 'Codigo Suframa :'
            end
            object Label92: TLabel
              Left = 96
              Top = 68
              Width = 31
              Height = 14
              Caption = 'CNAE:'
            end
            object btnCnae: TSpeedButton
              Left = 536
              Top = 66
              Width = 22
              Height = 21
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
              OnClick = btnCnaeClick
            end
            object cbRegime: TJvDBComboBox
              Left = 134
              Top = 41
              Width = 187
              Height = 22
              DataField = 'CLI_REGIME_TRIBUTARIO'
              DataSource = DataCadastros.DsCliente
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Items.Strings = (
                'SIMPLES NACIONAL'
                'LUCRO PRESUMIDO'
                'LUCRO REAL')
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              Values.Strings = (
                'S'
                'P'
                'R')
              ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
              ListSettings.OutfilteredValueFont.Color = clRed
              ListSettings.OutfilteredValueFont.Height = -11
              ListSettings.OutfilteredValueFont.Name = 'MS Sans Serif'
              ListSettings.OutfilteredValueFont.Style = []
            end
            object dbedtCLI_SUFRAMA: TDBEdit
              Left = 781
              Top = 18
              Width = 142
              Height = 22
              CharCase = ecUpperCase
              DataField = 'CLI_SUFRAMA'
              DataSource = DataCadastros.DsCliente
              TabOrder = 0
            end
            object cxCNAE: TcxLookupComboBox
              Left = 133
              Top = 66
              Properties.KeyFieldNames = 'CNAE_REGISTRO'
              Properties.ListColumns = <
                item
                  Caption = 'Operacao'
                  Width = 200
                  FieldName = 'CNAE'
                end>
              Properties.ListSource = dsCNAE
              Style.LookAndFeel.Kind = lfStandard
              StyleDisabled.LookAndFeel.Kind = lfStandard
              StyleFocused.LookAndFeel.Kind = lfStandard
              StyleHot.LookAndFeel.Kind = lfStandard
              TabOrder = 2
              OnClick = cxCNAEClick
              OnExit = cxCNAEExit
              Width = 406
            end
            object DBCheckBox4: TDBCheckBox
              Left = 568
              Top = 69
              Width = 329
              Height = 17
              Caption = 'Utilizar Modo de Tributa'#231#227'o do ST por CNAE ( UF = MS )'
              DataField = 'CLI_MODO_TRIB_ST'
              DataSource = DataCadastros.DsCliente
              TabOrder = 3
              ValueChecked = 'CNAE'
              ValueUnchecked = 'NORM'
            end
            object CbOper: TComboBoxRw
              Left = 133
              Top = 15
              Width = 362
              Height = 22
              Hint = 'CFOP'
              TabOrder = 4
              CharCase = ecUpperCase
              LookupSelect = 'ope_codigo, cfop, OPE_NATUREZA'
              LookupOrderBy = 'ope_descri'
              LookupTable = 'OPE0000_VIEW_PESQUISA'
              LookupDispl = 'CFOP'
              GridAutoSize = False
              LookupSource = CbOper.InternalSource
              DataField = 'OPE_CODIGO'
              DataSource = DataCadastros.DsCliente
              LookupKeyField = 'ope_codigo'
              FiltroTabela = 'OPE_ATIVA='#39'S'#39
              ShowButton = True
              LookupTableShare = 'OPERACAOFISCAL'
              AutoF8WinTitulo = 'Opera'#231#245'es Fiscais - CFOP '
              AutoF8ColumnsTitulo = 'C'#243'digo, Descri'#231#227'o'
              GridLeft = 0
              GridWidth = 0
              GridHeight = 100
              GridShowWhenEnter = False
              SelectWithDoubleClick = False
              Tabela = 'OPE0000_VIEW_PESQUISA'
              CamposCarregar = 'ope_codigo, cfop, OPE_NATUREZA'
              CamposRetornar = 'ope_codigo'
              Condicao = 'OPE_ATIVA='#39'S'#39
              CamposOrdernar = 'ope_descri'
              Compartilhar = 'OPERACAOFISCAL'
              Localizado = False
              CodigoEmpresa = 0
              ResetaCampos = True
              MultiEmpresa = True
              Localizar = True
              CarregarCombo = True
              itemindex = 0
              style = csDropDown
            end
          end
        end
        object tsFaturamento: TTabSheet
          Caption = 'Faturamento'
          ImageIndex = 4
          object GroupBox16: TGroupBox
            Left = 0
            Top = 0
            Width = 1736
            Height = 101
            Align = alClient
            TabOrder = 0
            object Label73: TLabel
              Left = 11
              Top = 22
              Width = 99
              Height = 14
              Caption = 'Banco de Cobran'#231'a:'
            end
            object Label83: TLabel
              Left = 421
              Top = 22
              Width = 81
              Height = 14
              Alignment = taRightJustify
              Caption = 'Centro de Custo:'
            end
            object Label75: TLabel
              Left = 29
              Top = 57
              Width = 80
              Height = 14
              Caption = 'Protestar Boleto:'
            end
            object Label51: TLabel
              Left = 430
              Top = 72
              Width = 107
              Height = 14
              Alignment = taRightJustify
              Caption = 'Unidade consumidora:'
            end
            object Label55: TLabel
              Left = 453
              Top = 47
              Width = 84
              Height = 14
              Alignment = taRightJustify
              Caption = 'Conta Financeira:'
            end
            object DBEBanco_codigo: TDBEdit
              Left = 112
              Top = 19
              Width = 36
              Height = 22
              CharCase = ecUpperCase
              DataField = 'BAN_CODIGO'
              DataSource = DataCadastros.DsCliente
              TabOrder = 0
              OnExit = DBEBanco_codigoExit
              OnKeyPress = DBEBanco_codigoKeyPress
            end
            object CbxCobranca: TComboBox
              Left = 151
              Top = 19
              Width = 250
              Height = 22
              CharCase = ecUpperCase
              ItemIndex = 0
              MaxLength = 20
              TabOrder = 1
              OnClick = CbxCobrancaClick
              OnEnter = CbxCobrancaEnter
              Items.Strings = (
                '')
            end
            object DBECentroCusto: TDBEdit
              Left = 504
              Top = 19
              Width = 36
              Height = 22
              CharCase = ecUpperCase
              DataField = 'PCX_CODIGO'
              DataSource = DataCadastros.DsCliente
              TabOrder = 3
              OnExit = DBECentroCustoExit
              OnKeyPress = DBEBanco_codigoKeyPress
            end
            object CbxCentroCusto: TComboBox
              Left = 543
              Top = 19
              Width = 378
              Height = 22
              ItemIndex = 0
              MaxLength = 20
              TabOrder = 4
              OnClick = CbxCentroCustoClick
              OnEnter = CbxCentroCustoEnter
              Items.Strings = (
                '')
            end
            object GroupBox9: TGroupBox
              Left = 112
              Top = 45
              Width = 288
              Height = 35
              TabOrder = 2
              object Label42: TLabel
                Left = 144
                Top = 11
                Width = 49
                Height = 14
                Caption = 'Qtde dias:'
              end
              object Panel3: TPanel
                Left = 6
                Top = 14
                Width = 102
                Height = 19
                BevelOuter = bvNone
                TabOrder = 0
                object RadProSim: TRadioButton
                  Left = 2
                  Top = -1
                  Width = 41
                  Height = 17
                  Caption = 'Sim'
                  TabOrder = 0
                  OnEnter = RadProSimEnter
                end
                object RadProNao: TRadioButton
                  Left = 65
                  Top = -1
                  Width = 42
                  Height = 17
                  Caption = 'N'#227'o'
                  Checked = True
                  TabOrder = 1
                  TabStop = True
                  OnEnter = RadProSimEnter
                end
              end
              object CurrDias: TCurrencyEdit
                Left = 194
                Top = 6
                Width = 25
                Height = 21
                AutoSize = False
                DisplayFormat = '0;-0'
                TabOrder = 1
                OnClick = CurrDiasClick
                OnEnter = CurrDiasClick
                OnKeyPress = CurrDiasKeyPress
              end
            end
            object edconsumidora: TDBEdit
              Left = 543
              Top = 69
              Width = 203
              Height = 22
              DataField = 'CLI_UND_CONSUMIDORA'
              DataSource = DataCadastros.DsCliente
              TabOrder = 6
            end
            object cbContaFinanceira: TSgDbSearchCombo
              Left = 543
              Top = 44
              Width = 352
              Height = 22
              TabOrder = 5
              CharCase = ecUpperCase
              LookupSelect = 'CCT_CODIGO, CCT_NIVEL, CCT_DESCRI'
              LookupOrderBy = 'CCT_DESCRI'
              LookupTable = 'CCT_0000'
              LookupDispl = 'CCT_DESCRI'
              GridAutoSize = False
              LookupSource = qContafinanceira
              DataField = 'CCT_CODIGO'
              DataSource = DataCadastros.DsCliente
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
        end
      end
      object PageControl2: TPageControl
        Left = 3
        Top = 192
        Width = 1687
        Height = 116
        ActivePage = TabSheet8
        MultiLine = True
        TabOrder = 24
        object tsPrincipal: TTabSheet
          Caption = 'Endere'#231'o Principal'
          OnShow = tsPrincipalShow
          object GroupBox3: TGroupBox
            Left = 0
            Top = 0
            Width = 1679
            Height = 87
            Align = alClient
            TabOrder = 0
            object Label5: TLabel
              Left = 179
              Top = 14
              Width = 49
              Height = 14
              Caption = 'Endere'#231'o:'
            end
            object Label6: TLabel
              Left = 32
              Top = 39
              Width = 36
              Height = 14
              Caption = 'Cidade:'
            end
            object Label43: TLabel
              Left = 374
              Top = 38
              Width = 16
              Height = 14
              Caption = 'UF:'
            end
            object SpeedButton5: TSpeedButton
              Left = 428
              Top = 37
              Width = 22
              Height = 21
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
              OnClick = SpeedButton5Click
            end
            object Label31: TLabel
              Left = 594
              Top = 14
              Width = 32
              Height = 14
              Caption = 'Bairro:'
            end
            object Label7: TLabel
              Left = 43
              Top = 16
              Width = 22
              Height = 14
              Caption = 'CEP:'
            end
            object Label81: TLabel
              Left = 475
              Top = 39
              Width = 23
              Height = 14
              Alignment = taRightJustify
              Caption = 'Pais:'
            end
            object Label11: TLabel
              Left = 709
              Top = 37
              Width = 62
              Height = 14
              Caption = 'Caixa Postal:'
            end
            object DbeCli_endere: TDBEdit
              Left = 231
              Top = 9
              Width = 354
              Height = 22
              CharCase = ecUpperCase
              DataField = 'CLI_ENDERE'
              DataSource = DataCadastros.DsCliente
              TabOrder = 1
            end
            object DbeCli_cidade: TDBEdit
              Left = 71
              Top = 35
              Width = 294
              Height = 22
              TabStop = False
              CharCase = ecUpperCase
              Color = 14145495
              DataField = 'CLI_CIDADE'
              DataSource = DataCadastros.DsCliente
              ReadOnly = True
              TabOrder = 2
            end
            object DBECLIUF: TDBEdit
              Left = 393
              Top = 35
              Width = 29
              Height = 22
              TabStop = False
              CharCase = ecUpperCase
              Color = 14145495
              DataField = 'CLI_UF'
              DataSource = DataCadastros.DsCliente
              ReadOnly = True
              TabOrder = 3
            end
            object DbeCLI_BAIRRO: TDBEdit
              Left = 632
              Top = 9
              Width = 300
              Height = 22
              CharCase = ecUpperCase
              DataField = 'CLI_BAIRRO'
              DataSource = DataCadastros.DsCliente
              TabOrder = 4
            end
            object DbeCliCep: TDBEdit
              Left = 71
              Top = 11
              Width = 69
              Height = 22
              CharCase = ecUpperCase
              DataField = 'CLI_CEP'
              DataSource = DataCadastros.DsCliente
              TabOrder = 0
              OnExit = DbeCliCepExit
            end
            object CbPais: TcxLookupComboBox
              Left = 500
              Top = 35
              Properties.KeyFieldNames = 'PAI_CODIGO'
              Properties.ListColumns = <
                item
                  Caption = 'Pa'#237's'
                  MinWidth = 10
                  Width = 60
                  FieldName = 'PAI_PAIS'
                end
                item
                  Caption = 'C'#243'digo'
                  FieldName = 'PAI_CODIGO'
                end>
              Properties.ListSource = DSPais
              Style.LookAndFeel.Kind = lfStandard
              StyleDisabled.LookAndFeel.Kind = lfStandard
              StyleFocused.LookAndFeel.Kind = lfStandard
              StyleHot.LookAndFeel.Kind = lfStandard
              TabOrder = 5
              OnClick = CbPaisClick
              Width = 201
            end
            object DbeCli_cxpost: TDBEdit
              Left = 777
              Top = 35
              Width = 67
              Height = 22
              CharCase = ecUpperCase
              DataField = 'CLI_CXPOST'
              DataSource = DataCadastros.DsCliente
              TabOrder = 6
            end
          end
        end
        object tsEntrega: TTabSheet
          Caption = 'Entrega'
          ImageIndex = 1
          TabVisible = False
          object GroupBox1: TGroupBox
            Left = 0
            Top = 0
            Width = 1679
            Height = 87
            Align = alClient
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object Label22: TLabel
              Left = 163
              Top = 19
              Width = 49
              Height = 14
              Caption = 'Endere'#231'o:'
              Color = clBtnFace
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentColor = False
              ParentFont = False
            end
            object Label23: TLabel
              Left = 34
              Top = 45
              Width = 36
              Height = 14
              Caption = 'Cidade:'
              Color = clBtnFace
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentColor = False
              ParentFont = False
            end
            object Label25: TLabel
              Left = 554
              Top = 44
              Width = 16
              Height = 14
              Caption = 'UF:'
              Color = clBtnFace
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentColor = False
              ParentFont = False
            end
            object Label24: TLabel
              Left = 45
              Top = 19
              Width = 22
              Height = 14
              Caption = 'CEP:'
              Color = clBtnFace
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentColor = False
              ParentFont = False
            end
            object Label32: TLabel
              Left = 806
              Top = 45
              Width = 27
              Height = 14
              Caption = 'Fone:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object Label71: TLabel
              Left = 602
              Top = 19
              Width = 35
              Height = 14
              Caption = 'Bairro :'
              Color = clBtnFace
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentColor = False
              ParentFont = False
            end
            object DbeCli_Endentr: TDBEdit
              Left = 215
              Top = 15
              Width = 382
              Height = 22
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'CLI_ENDENTR'
              DataSource = DataCadastros.DsCliente
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              OnEnter = DbeCli_EndentrEnter
              OnExit = DbeCli_EndentrExit
            end
            object DbeCli_cidentr: TDBEdit
              Left = 71
              Top = 41
              Width = 474
              Height = 22
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'CLI_CIDENTR'
              DataSource = DataCadastros.DsCliente
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
            end
            object DbeCli_ufentr: TDBEdit
              Left = 572
              Top = 41
              Width = 25
              Height = 22
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'CLI_UFENTR'
              DataSource = DataCadastros.DsCliente
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
            end
            object DbeCli_cepentr: TDBEdit
              Left = 70
              Top = 15
              Width = 60
              Height = 22
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'CLI_CEPENTR'
              DataSource = DataCadastros.DsCliente
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnExit = DbeCli_cepentrExit
            end
            object DBEdit1: TDBEdit
              Left = 835
              Top = 41
              Width = 95
              Height = 22
              CharCase = ecUpperCase
              DataField = 'CLI_FONENTR'
              DataSource = DataCadastros.DsCliente
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 5
            end
            object DBEdit4: TDBEdit
              Left = 638
              Top = 15
              Width = 291
              Height = 22
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'CLI_BAIENTR'
              DataSource = DataCadastros.DsCliente
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
            end
          end
        end
        object tsCobrana: TTabSheet
          Caption = 'Cobran'#231'a'
          ImageIndex = 2
          TabVisible = False
          object GroupBox15: TGroupBox
            Left = 0
            Top = 0
            Width = 1679
            Height = 87
            Align = alClient
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object Label26: TLabel
              Left = 163
              Top = 19
              Width = 49
              Height = 14
              Caption = 'Endere'#231'o:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object Label28: TLabel
              Left = 46
              Top = 18
              Width = 22
              Height = 14
              Caption = 'CEP:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object Label27: TLabel
              Left = 33
              Top = 43
              Width = 36
              Height = 14
              Caption = 'Cidade:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object Label29: TLabel
              Left = 554
              Top = 42
              Width = 16
              Height = 14
              Caption = 'UF:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object Label72: TLabel
              Left = 603
              Top = 19
              Width = 35
              Height = 14
              Caption = 'Bairro :'
              Color = clBtnFace
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentColor = False
              ParentFont = False
            end
            object DbeCli_endfat: TDBEdit
              Left = 215
              Top = 14
              Width = 382
              Height = 22
              CharCase = ecUpperCase
              DataField = 'CLI_ENDFAT'
              DataSource = DataCadastros.DsCliente
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              OnEnter = DbeCli_endfatEnter
              OnExit = DbeCli_endfatExit
            end
            object DbeCli_cepfat: TDBEdit
              Left = 71
              Top = 14
              Width = 60
              Height = 22
              CharCase = ecUpperCase
              DataField = 'CLI_CEPFAT'
              DataSource = DataCadastros.DsCliente
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnExit = DbeCli_cepfatExit
            end
            object DbeCli_cidfat: TDBEdit
              Left = 71
              Top = 39
              Width = 474
              Height = 22
              CharCase = ecUpperCase
              DataField = 'CLI_CIDFAT'
              DataSource = DataCadastros.DsCliente
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
            end
            object DbeCli_uffat: TDBEdit
              Left = 572
              Top = 39
              Width = 25
              Height = 22
              CharCase = ecUpperCase
              DataField = 'CLI_UFFAT'
              DataSource = DataCadastros.DsCliente
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
            end
            object DBEdit5: TDBEdit
              Left = 639
              Top = 14
              Width = 291
              Height = 22
              CharCase = ecUpperCase
              Color = clWhite
              DataField = 'CLI_BAIFAT'
              DataSource = DataCadastros.DsCliente
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
            end
          end
        end
        object TabSheet8: TTabSheet
          Caption = 'Endere'#231'os'
          ImageIndex = 3
          OnShow = TabSheet8Show
          object DBGrid5: TDBGrid
            Left = 0
            Top = 131
            Width = 1679
            Height = 160
            Align = alTop
            DataSource = dsClienteEnder
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgCancelOnExit]
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Arial'
            TitleFont.Style = []
            OnDrawColumnCell = DBGrid5DrawColumnCell
            Columns = <
              item
                Expanded = False
                FieldName = 'CEP'
                Title.Alignment = taCenter
                Width = 69
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DESCRICAO'
                Title.Alignment = taCenter
                Title.Caption = 'Endere'#231'o'
                Width = 287
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'BAIRRO'
                Title.Alignment = taCenter
                Title.Caption = 'Bairro'
                Width = 134
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CIDADE'
                Title.Alignment = taCenter
                Title.Caption = 'Cidade'
                Width = 131
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ESTADO'
                Title.Alignment = taCenter
                Title.Caption = 'Estado'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PAI_PAIS'
                Title.Alignment = taCenter
                Title.Caption = 'Pa'#237's'
                Width = 111
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CXPOSTAL'
                Title.Caption = 'Caixa Postal'
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'DESCTIPO'
                Title.Caption = 'Tipo Endere'#231'o'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NOME'
                Title.Caption = 'Nome'
                Visible = True
              end>
          end
          object TGroupBox
            Left = 0
            Top = 0
            Width = 1679
            Height = 131
            Align = alTop
            TabOrder = 1
            object Label99: TLabel
              Left = 22
              Top = 24
              Width = 22
              Height = 14
              Caption = 'CEP:'
              Enabled = False
            end
            object Label95: TLabel
              Left = 133
              Top = 24
              Width = 49
              Height = 14
              Caption = 'Endere'#231'o:'
              Enabled = False
            end
            object Label102: TLabel
              Left = 521
              Top = 24
              Width = 40
              Height = 14
              Caption = 'N'#250'mero:'
              Enabled = False
            end
            object Label103: TLabel
              Left = 659
              Top = 24
              Width = 67
              Height = 14
              Caption = 'Complemento:'
              Enabled = False
            end
            object Label101: TLabel
              Left = 807
              Top = 50
              Width = 62
              Height = 14
              Caption = 'Caixa Postal:'
              Enabled = False
            end
            object Label100: TLabel
              Left = 627
              Top = 50
              Width = 23
              Height = 14
              Alignment = taRightJustify
              Caption = 'Pais:'
              Enabled = False
            end
            object Label98: TLabel
              Left = 396
              Top = 49
              Width = 32
              Height = 14
              Caption = 'Bairro:'
              Enabled = False
            end
            object SpeedButton1: TSpeedButton
              Left = 368
              Top = 46
              Width = 22
              Height = 21
              Enabled = False
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
              OnClick = SpeedButton1Click
            end
            object Label97: TLabel
              Left = 311
              Top = 48
              Width = 16
              Height = 14
              Caption = 'UF:'
              Enabled = False
            end
            object Label96: TLabel
              Left = 8
              Top = 50
              Width = 36
              Height = 14
              Caption = 'Cidade:'
              Enabled = False
            end
            object Label104: TLabel
              Left = 18
              Top = 77
              Width = 23
              Height = 14
              Caption = 'Tipo:'
              Enabled = False
            end
            object Label105: TLabel
              Left = 367
              Top = 77
              Width = 30
              Height = 14
              Caption = 'Nome:'
              Enabled = False
            end
            object LCNPJ: TLabel
              Left = 568
              Top = 77
              Width = 28
              Height = 14
              Caption = 'CNPJ:'
            end
            object LIE: TLabel
              Left = 768
              Top = 77
              Width = 11
              Height = 14
              Caption = 'IE:'
            end
            object edCliCepOutros: TDBEdit
              Left = 47
              Top = 20
              Width = 69
              Height = 22
              CharCase = ecUpperCase
              DataField = 'CEP'
              DataSource = dsClienteEnder
              Enabled = False
              TabOrder = 0
              OnExit = edCliCepOutrosExit
            end
            object edEndeOutros: TDBEdit
              Left = 191
              Top = 20
              Width = 321
              Height = 22
              CharCase = ecUpperCase
              DataField = 'DESCRICAO'
              DataSource = dsClienteEnder
              Enabled = False
              TabOrder = 1
            end
            object edNumero: TDBEdit
              Left = 567
              Top = 20
              Width = 69
              Height = 22
              CharCase = ecUpperCase
              DataField = 'NUMERO'
              DataSource = dsClienteEnder
              Enabled = False
              TabOrder = 2
            end
            object edComplementoOutros: TDBEdit
              Left = 732
              Top = 20
              Width = 167
              Height = 22
              CharCase = ecUpperCase
              DataField = 'COMPLEMENTO'
              DataSource = dsClienteEnder
              Enabled = False
              TabOrder = 3
            end
            object DBEdit17: TDBEdit
              Left = 870
              Top = 46
              Width = 67
              Height = 22
              CharCase = ecUpperCase
              DataField = 'CXPOSTAL'
              DataSource = dsClienteEnder
              Enabled = False
              TabOrder = 7
            end
            object cxDBLookupComboBox1: TcxDBLookupComboBox
              Left = 656
              Top = 45
              DataBinding.DataField = 'COD_PAIS'
              DataBinding.DataSource = dsClienteEnder
              Enabled = False
              Properties.KeyFieldNames = 'PAI_CODIGO'
              Properties.ListColumns = <
                item
                  Caption = 'Pa'#237's'
                  FieldName = 'PAI_PAIS'
                end
                item
                  Caption = 'C'#243'digo'
                  FieldName = 'PAI_CODIGO'
                end>
              Properties.ListSource = DSPais
              TabOrder = 13
              Width = 128
            end
            object edBairroOutros: TDBEdit
              Left = 434
              Top = 45
              Width = 155
              Height = 22
              CharCase = ecUpperCase
              DataField = 'BAIRRO'
              DataSource = dsClienteEnder
              Enabled = False
              TabOrder = 6
            end
            object edUfOutros: TDBEdit
              Left = 333
              Top = 46
              Width = 29
              Height = 22
              TabStop = False
              CharCase = ecUpperCase
              Color = 14145495
              DataField = 'ESTADO'
              DataSource = dsClienteEnder
              Enabled = False
              ReadOnly = True
              TabOrder = 5
            end
            object edCidadeOutros: TDBEdit
              Left = 47
              Top = 47
              Width = 258
              Height = 22
              CharCase = ecUpperCase
              Color = 14145495
              DataField = 'CIDADE'
              DataSource = dsClienteEnder
              Enabled = False
              ReadOnly = True
              TabOrder = 4
            end
            object cxDBComboBox1: TRxDBComboBox
              Left = 47
              Top = 73
              Width = 186
              Height = 22
              DataField = 'TIPO'
              DataSource = dsClienteEnder
              Enabled = False
              Items.Strings = (
                'Cobran'#231'a'
                'Entrega'
                'Retirada')
              TabOrder = 8
              Values.Strings = (
                '0'
                '1'
                '2')
            end
            object cxDBCheckBox1: TcxDBCheckBox
              Left = 239
              Top = 73
              Caption = 'Endere'#231'o Padr'#227'o'
              DataBinding.DataField = 'PADRAO'
              DataBinding.DataSource = dsClienteEnder
              Enabled = False
              Properties.ValueChecked = '1'
              Properties.ValueUnchecked = '0'
              TabOrder = 9
              Width = 114
            end
            object DBNavigator4: TDBNavigator
              Left = 3
              Top = 97
              Width = 228
              Height = 25
              DataSource = dsClienteEnder
              VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh]
              Hints.Strings = (
                'First record'
                'Prior record'
                'Next record'
                'Last record'
                'Inserir'
                'Excluir'
                'Editar'
                'Salvar'
                'Cancelar'
                'Atualizar'
                'Apply updates'
                'Cancel updates')
              ParentShowHint = False
              ShowHint = True
              TabOrder = 14
            end
            object DBEdit20: TDBEdit
              Left = 403
              Top = 73
              Width = 160
              Height = 22
              CharCase = ecUpperCase
              DataField = 'NOME'
              DataSource = dsClienteEnder
              Enabled = False
              TabOrder = 10
            end
            object edCNPJ: TDBEdit
              Left = 602
              Top = 73
              Width = 155
              Height = 22
              CharCase = ecUpperCase
              DataField = 'CNPJ'
              DataSource = dsClienteEnder
              Enabled = False
              TabOrder = 11
            end
            object edIE: TDBEdit
              Left = 790
              Top = 73
              Width = 155
              Height = 22
              CharCase = ecUpperCase
              DataField = 'INSC_ESTADUAL'
              DataSource = dsClienteEnder
              Enabled = False
              TabOrder = 12
            end
          end
        end
      end
      object EdtCli_codigo: TEdit
        Left = 78
        Top = 11
        Width = 42
        Height = 22
        TabStop = False
        MaxLength = 5
        TabOrder = 0
        OnEnter = EdtCli_codigoEnter
        OnExit = EdtCli_codigoExit
        OnKeyPress = EdtCli_codigoKeyPress
      end
      object DbeCli_razao: TDBEdit
        Left = 78
        Top = 92
        Width = 400
        Height = 22
        CharCase = ecUpperCase
        DataField = 'CLI_RAZAO'
        DataSource = DataCadastros.DsCliente
        TabOrder = 10
      end
      object DbeCli_fone: TDBEdit
        Left = 78
        Top = 143
        Width = 95
        Height = 22
        CharCase = ecUpperCase
        DataField = 'CLI_FONE'
        DataSource = DataCadastros.DsCliente
        TabOrder = 16
      end
      object DbeCli_fax: TDBEdit
        Left = 236
        Top = 143
        Width = 95
        Height = 22
        CharCase = ecUpperCase
        DataField = 'CLI_FAX'
        DataSource = DataCadastros.DsCliente
        TabOrder = 17
      end
      object DbeCil_insc: TDBEdit
        Left = 546
        Top = 39
        Width = 142
        Height = 22
        CharCase = ecUpperCase
        DataField = 'CLI_INSC'
        DataSource = DataCadastros.DsCliente
        TabOrder = 6
        OnExit = DbeCil_inscExit
      end
      object DbeCli_dtinicio: TDBDateEdit
        Left = 546
        Top = 66
        Width = 100
        Height = 22
        DataField = 'CLI_DTINICIO'
        DataSource = DataCadastros.DsCliente
        NumGlyphs = 2
        TabOrder = 9
        YearDigits = dyFour
        OnExit = DbeCli_dtinicioExit
      end
      object DbeCli_celular: TDBEdit
        Left = 383
        Top = 143
        Width = 95
        Height = 22
        CharCase = ecUpperCase
        DataField = 'CLI_CELULAR'
        DataSource = DataCadastros.DsCliente
        TabOrder = 18
      end
      object DbeCli_Fantasia: TDBEdit
        Left = 546
        Top = 92
        Width = 405
        Height = 22
        CharCase = ecUpperCase
        DataField = 'CLI_FANTASIA'
        DataSource = DataCadastros.DsCliente
        TabOrder = 11
        OnEnter = DbeCli_FantasiaEnter
      end
      object CbxAtiv: TComboBox
        Left = 110
        Top = 117
        Width = 368
        Height = 22
        CharCase = ecUpperCase
        ItemIndex = 0
        MaxLength = 20
        TabOrder = 13
        OnClick = CbxAtivClick
        OnEnter = CbxAtivEnter
        Items.Strings = (
          '')
      end
      object CbxRegiao: TComboBox
        Left = 578
        Top = 117
        Width = 373
        Height = 22
        CharCase = ecUpperCase
        ItemIndex = 0
        MaxLength = 30
        TabOrder = 15
        OnClick = CbxRegiaoClick
        OnEnter = CbxRegiaoEnter
        Items.Strings = (
          '')
      end
      object GroupBox7: TGroupBox
        Left = 686
        Top = 0
        Width = 259
        Height = 35
        Caption = 'Porte'
        TabOrder = 4
        object RadPequena: TRadioButton
          Left = 4
          Top = 14
          Width = 65
          Height = 17
          Caption = 'Peq&uena'
          Checked = True
          TabOrder = 0
          TabStop = True
          OnEnter = RadPequenaEnter
        end
        object RadMedia: TRadioButton
          Left = 100
          Top = 14
          Width = 51
          Height = 17
          Caption = '&M'#233'dia'
          TabOrder = 1
          OnEnter = RadPequenaEnter
        end
        object RadGrande: TRadioButton
          Left = 188
          Top = 14
          Width = 57
          Height = 17
          Caption = 'Gran&de'
          TabOrder = 2
          OnEnter = RadPequenaEnter
        end
      end
      object Msk_cnpj: TMaskEdit
        Left = 77
        Top = 39
        Width = 142
        Height = 22
        MaxLength = 18
        TabOrder = 5
        Text = ''
        OnExit = Msk_cnpjExit
        OnKeyPress = Msk_cnpjKeyPress
      end
      object GroupBox6: TGroupBox
        Left = 285
        Top = 0
        Width = 150
        Height = 36
        Caption = 'Pessoa'
        TabOrder = 2
        object RadJuridica: TRadioButton
          Left = 3
          Top = 15
          Width = 59
          Height = 17
          Caption = '&Jur'#237'dica'
          TabOrder = 0
          OnClick = RadJuridicaClick
          OnEnter = RadJuridicaEnter
        end
        object RadFisica: TRadioButton
          Left = 83
          Top = 15
          Width = 50
          Height = 14
          Caption = '&F'#237'sica'
          TabOrder = 1
          OnClick = RadFisicaClick
          OnEnter = RadFisicaEnter
        end
      end
      object DBECLI_ATIVIDADE: TDBEdit
        Left = 78
        Top = 117
        Width = 29
        Height = 22
        CharCase = ecUpperCase
        DataField = 'CLI_ATIVIDADE'
        DataSource = DataCadastros.DsCliente
        TabOrder = 12
        OnClick = DBECLI_ATIVIDADEClick
        OnEnter = DBECLI_ATIVIDADEClick
        OnExit = DBECLI_ATIVIDADEExit
        OnKeyPress = EdtCli_codigoKeyPress
      end
      object DBEREG_CODIGO: TDBEdit
        Left = 546
        Top = 117
        Width = 29
        Height = 22
        CharCase = ecUpperCase
        DataField = 'REG_CODIGO'
        DataSource = DataCadastros.DsCliente
        TabOrder = 14
        OnClick = DBEREG_CODIGOClick
        OnEnter = DBEREG_CODIGOClick
        OnExit = DBEREG_CODIGOExit
        OnKeyPress = EdtCli_codigoKeyPress
      end
      object GroupBox10: TGroupBox
        Left = 123
        Top = 0
        Width = 156
        Height = 36
        Caption = 'Cliente'
        TabOrder = 1
        object Rad_Nacional: TRadioButton
          Left = 3
          Top = 15
          Width = 62
          Height = 17
          Caption = 'N&acional'
          TabOrder = 0
          OnClick = Rad_NacionalClick
        end
        object Rad_Internacional: TRadioButton
          Left = 70
          Top = 15
          Width = 81
          Height = 17
          Caption = 'In&ternacional'
          TabOrder = 1
          OnClick = Rad_InternacionalClick
        end
      end
      object DBECLI_Iscmunicipal: TDBEdit
        Left = 77
        Top = 65
        Width = 142
        Height = 22
        CharCase = ecUpperCase
        DataField = 'CLI_INSCMUNI'
        DataSource = DataCadastros.DsCliente
        TabOrder = 8
      end
      object GroupBox17: TGroupBox
        Left = 439
        Top = 0
        Width = 243
        Height = 35
        Caption = 'Classifica'#231#227'o'
        TabOrder = 3
        object RadClasCliente: TRadioButton
          Left = 4
          Top = 14
          Width = 65
          Height = 17
          Caption = 'Cliente'
          Checked = True
          TabOrder = 0
          TabStop = True
          OnEnter = RadPequenaEnter
        end
        object RadClasFornecedor: TRadioButton
          Left = 80
          Top = 14
          Width = 83
          Height = 17
          Caption = 'Fornecedor'
          TabOrder = 1
          OnEnter = RadPequenaEnter
        end
        object RadClasAmbos: TRadioButton
          Left = 177
          Top = 14
          Width = 57
          Height = 17
          Caption = 'Ambos'
          TabOrder = 2
          OnEnter = RadPequenaEnter
        end
      end
      object DBEREP_CODIGO: TDBEdit
        Left = 545
        Top = 143
        Width = 43
        Height = 22
        CharCase = ecUpperCase
        DataField = 'REP_CODIGO'
        DataSource = DataCadastros.DsCliente
        TabOrder = 19
        OnClick = DBEREP_CODIGOClick
        OnEnter = DBEREP_CODIGOClick
        OnKeyPress = EdtCli_codigoKeyPress
      end
      object cbConsFinal: TComboBox
        Left = 895
        Top = 37
        Width = 56
        Height = 22
        Hint = 
          'Marcar SIM somente quando for consumidor final e n'#227'o contribuint' +
          'e do ICMS,'#13#10'marcar N'#195'O quando for revenda, n'#227'o for consumidor fi' +
          'nal ou for contribuinte do ICMS'
        Style = csDropDownList
        ParentShowHint = False
        ShowHint = True
        TabOrder = 7
        OnChange = CbConsFinalChange
        OnClick = CbConsFinalClick
        OnKeyPress = CbConsFinalKeyPress
        Items.Strings = (
          'SIM'
          'N'#195'O')
      end
      object btnConsultarCNPJ_CPF: TButton
        Left = 225
        Top = 38
        Width = 88
        Height = 25
        Hint = 'Consultar CNPJ na Receita Federal'
        Caption = 'Consultar CNPJ'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 27
        OnClick = btnConsultarCNPJ_CPFClick
      end
      object edVendedor: TSgDbSearchCombo
        Left = 590
        Top = 143
        Width = 224
        Height = 22
        TabOrder = 20
        CharCase = ecUpperCase
        LookupSelect = 'rep_codigo, rep_nome'
        LookupOrderBy = 'rep_nome'
        LookupTable = 'rep0000'
        LookupDispl = 'REP_NOME'
        GridAutoSize = False
        LookupSource = qRep
        DataField = 'REP_CODIGO'
        DataSource = DataCadastros.DsCliente
        LookupKeyField = 'rep_codigo'
        FiltroTabela = 'REP_SITUACAO = '#39'A'#39
        ShowButton = True
        AutoF8WinTitulo = 'Vendedores'
        AutoF8ColumnsTitulo = 'C'#243'digo, Nome'
        GridLeft = 0
        GridWidth = 0
        GridHeight = 100
        GridShowWhenEnter = False
        SelectWithDoubleClick = False
      end
      object edVendInterno: TSgDbSearchCombo
        Left = 590
        Top = 170
        Width = 224
        Height = 22
        TabOrder = 23
        CharCase = ecUpperCase
        LookupSelect = 'rep_codigo, rep_nome'
        LookupOrderBy = 'rep_nome'
        LookupTable = 'rep0000'
        LookupDispl = 'REP_NOME'
        GridAutoSize = False
        LookupSource = qRep
        DataField = 'VEND_INTERNO_CODIGO'
        DataSource = DataCadastros.DsCliente
        LookupKeyField = 'rep_codigo'
        FiltroTabela = 'REP_FUNCAO = '#39'T'#39' AND REP_SITUACAO = '#39'A'#39
        ShowButton = True
        AutoF8WinTitulo = 'Vendedores'
        AutoF8ColumnsTitulo = 'C'#243'digo, Nome'
        GridLeft = 0
        GridWidth = 0
        GridHeight = 100
        GridShowWhenEnter = False
        SelectWithDoubleClick = False
      end
      object DBEdit2: TDBEdit
        Left = 545
        Top = 170
        Width = 43
        Height = 22
        CharCase = ecUpperCase
        DataField = 'VEND_INTERNO_CODIGO'
        DataSource = DataCadastros.DsCliente
        TabOrder = 22
        OnClick = DBEREP_CODIGOClick
        OnEnter = DBEREP_CODIGOClick
        OnKeyPress = EdtCli_codigoKeyPress
      end
      object cbOrigem: TSgDbSearchCombo
        Left = 77
        Top = 169
        Width = 380
        Height = 22
        TabOrder = 21
        CharCase = ecUpperCase
        LookupSelect = 'CORI_CODIGO,CORI_DESCRICAO'
        LookupOrderBy = 'CORI_DESCRICAO'
        LookupTable = 'CLIENTE_ORIGEM'
        LookupDispl = 'CORI_DESCRICAO'
        GridAutoSize = False
        LookupSource = qOrigem
        DataField = 'CORI_CODIGO'
        DataSource = DataCadastros.DsCliente
        LookupKeyField = 'CORI_CODIGO'
        ShowButton = True
        AutoF8WinTitulo = 'Origem'
        AutoF8ColumnsTitulo = 'C'#243'digo, Origem'
        GridLeft = 0
        GridWidth = 0
        GridHeight = 100
        GridShowWhenEnter = False
        SelectWithDoubleClick = False
      end
      object dbedCLI_DTNASCIMENTO: TDBDateEdit
        Left = 378
        Top = 67
        Width = 100
        Height = 22
        DataField = 'CLI_DTNASCIMENTO'
        DataSource = DataCadastros.DsCliente
        NumGlyphs = 2
        TabOrder = 29
        YearDigits = dyFour
        OnExit = DbeCli_dtinicioExit
      end
    end
    object TabSheet2: TTabSheet
      Caption = '&Faturas'
      ImageIndex = 1
      OnExit = TabSheet2Exit
      OnShow = TabSheet2Show
      object GroupBox5: TGroupBox
        Left = 0
        Top = 140
        Width = 1744
        Height = 146
        Align = alBottom
        Caption = 'Parcelas da Nota Fiscal'
        TabOrder = 1
        object DBGrid1: TDBGrid
          Left = 2
          Top = 16
          Width = 1740
          Height = 128
          Align = alClient
          Color = 16776176
          DataSource = DsDupFat
          Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
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
              FieldName = 'FPC_NUMER'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'N'#186
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 20
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FAT_CODIGO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'Fatura'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 84
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FPC_VLPARC'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'Valor'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 101
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FPC_VLPAGO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'Vl. Pago'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 88
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Pendente'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FPC_VENCTO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'Vencto'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FPC_PAGTO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'Pagto'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FPC_STATUS'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'Status'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 140
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BAN_CODIGO'
              Title.Alignment = taCenter
              Title.Caption = 'C'#243'd.'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 43
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BAN_APELIDO'
              Title.Alignment = taCenter
              Title.Caption = 'Banco'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Visible = True
            end>
        end
      end
      object GroupBox4: TGroupBox
        Left = 0
        Top = 395
        Width = 1744
        Height = 114
        Align = alBottom
        Caption = 'Produtos da Nota Fiscal'
        TabOrder = 2
        object DBGrid2: TDBGrid
          Left = 2
          Top = 16
          Width = 1740
          Height = 96
          Align = alClient
          Color = 16776176
          DataSource = DsProdNF
          Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
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
              FieldName = 'PRD_REFER'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'Refer'#234'ncia'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 93
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRD_DESCRI'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'Descri'#231#227'o'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 531
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NF_QTDE'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'Quant.'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 95
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NF_PRECO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'Pre'#231'o'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NF_TOTAL_CC'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'Total'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 90
              Visible = True
            end>
        end
      end
      object GroupBox8: TGroupBox
        Left = 0
        Top = 0
        Width = 1744
        Height = 140
        Align = alClient
        Caption = 'Notas Fiscais Faturadas'
        TabOrder = 0
        object DBGrid3: TDBGrid
          Left = 2
          Top = 16
          Width = 1740
          Height = 122
          Align = alClient
          Color = 16776176
          DataSource = DsNFS
          Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
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
              FieldName = 'FAT_CODIGO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'Fatura'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 66
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FAT_DTEMIS'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'Emiss'#227'o'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CLI_CODIGO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'C'#243'digo'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 58
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CLI_RAZAO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'Raz'#227'o Social'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 503
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PED_CODIGO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'Pedido'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 94
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'WVALOR'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'Valor'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 108
              Visible = True
            end>
        end
      end
      object GroupBox11: TGroupBox
        Left = 0
        Top = 286
        Width = 1744
        Height = 109
        Align = alBottom
        Caption = 'Recebimentos'
        TabOrder = 3
        object DBGrid6: TDBGrid
          Left = 2
          Top = 16
          Width = 1740
          Height = 91
          Align = alClient
          Color = 16776176
          DataSource = DsRecebimentos
          Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          ParentShowHint = False
          ReadOnly = True
          ShowHint = False
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Arial'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'FRE_DATA_RECEBIMENTO'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'Recebimento'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = []
              Width = 110
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FRE_VALOR'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'Valor'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = []
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FRE_DESCONTO'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'Desconto'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = []
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FRE_JUROS'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'Juros'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = []
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FRE_MULTA'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'Multa'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = []
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FRE_RECEBIDO'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'Vl.Pago'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = []
              Width = 85
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BAN_RAZAO'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'Conta Banco'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = []
              Width = 183
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FPG_DESCRICAO'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'Forma Pagamento'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = []
              Width = 122
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'USU_NOME'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'Usu'#225'rio'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = []
              Width = 170
              Visible = True
            end>
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Servi'#231'os'
      ImageIndex = 2
      object Panel5: TPanel
        Left = 0
        Top = 464
        Width = 1744
        Height = 45
        Align = alBottom
        BevelOuter = bvLowered
        TabOrder = 0
        object Label65: TLabel
          Left = 7
          Top = 3
          Width = 89
          Height = 14
          Alignment = taRightJustify
          Caption = 'Data da Altera'#231#227'o:'
        end
        object Label66: TLabel
          Left = 172
          Top = 3
          Width = 40
          Height = 14
          Alignment = taRightJustify
          Caption = 'Usu'#225'rio:'
        end
        object Label67: TLabel
          Left = 317
          Top = 3
          Width = 118
          Height = 14
          Alignment = taRightJustify
          Caption = 'Informa'#231#227'o da Altera'#231#227'o'
        end
        object DataAlteracao: TDateEdit
          Left = 6
          Top = 17
          Width = 90
          Height = 22
          TabStop = False
          Color = 14145495
          NumGlyphs = 2
          ReadOnly = True
          YearDigits = dyFour
          TabOrder = 0
        end
        object Edt_Usuario: TEdit
          Left = 172
          Top = 17
          Width = 113
          Height = 21
          TabStop = False
          CharCase = ecUpperCase
          Color = 14145495
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 15
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object Edt_Motivo_Alteracao: TEdit
          Left = 318
          Top = 17
          Width = 477
          Height = 22
          CharCase = ecUpperCase
          MaxLength = 60
          TabOrder = 2
          OnChange = CbLiberacaoChange
        end
      end
      object PageControl3: TPageControl
        Left = 0
        Top = 0
        Width = 1744
        Height = 464
        ActivePage = tsDadosBasicos
        Align = alClient
        TabOrder = 1
        object tsDadosBasicos: TTabSheet
          Caption = 'Dados b'#225'sicos'
          object GroupBox23: TGroupBox
            Left = 0
            Top = 0
            Width = 1736
            Height = 435
            Align = alClient
            Caption = 'Contrato de Servi'#231'os'
            TabOrder = 0
            object Label56: TLabel
              Left = 4
              Top = 19
              Width = 146
              Height = 14
              Alignment = taRightJustify
              Caption = 'N'#186' de Licen'#231'as Autorizada(s):'
            end
            object Label57: TLabel
              Left = 783
              Top = 19
              Width = 71
              Height = 14
              Alignment = taRightJustify
              Caption = 'Validade Atual:'
            end
            object Label68: TLabel
              Left = 351
              Top = 19
              Width = 97
              Height = 14
              Alignment = taRightJustify
              Caption = 'Prazo de Libera'#231#227'o:'
            end
            object Bevel1: TBevel
              Left = 1
              Top = 41
              Width = 949
              Height = 2
            end
            object Label110: TLabel
              Left = 72
              Top = 50
              Width = 77
              Height = 14
              Alignment = taRightJustify
              Caption = 'Servi'#231'o Mensal:'
            end
            object Label111: TLabel
              Left = 362
              Top = 50
              Width = 87
              Height = 14
              Alignment = taRightJustify
              Caption = 'Valor do Contrato:'
            end
            object Label112: TLabel
              Left = 54
              Top = 72
              Width = 97
              Height = 14
              Alignment = taRightJustify
              Caption = 'M'#234's de Vencimento:'
            end
            object Label113: TLabel
              Left = 768
              Top = 50
              Width = 86
              Height = 14
              Alignment = taRightJustify
              Caption = 'In'#237'cio do Contrato:'
            end
            object Label114: TLabel
              Left = 297
              Top = 72
              Width = 150
              Height = 14
              Alignment = taRightJustify
              Caption = 'Indice de Reajuste do Contrato:'
            end
            object Label115: TLabel
              Left = 705
              Top = 72
              Width = 149
              Height = 14
              Alignment = taRightJustify
              Caption = #218'ltima Atualiza'#231#227'o do Contrato:'
            end
            object Label116: TLabel
              Left = 67
              Top = 94
              Width = 82
              Height = 14
              Alignment = taRightJustify
              Caption = 'Tipo de Contrato:'
            end
            object SpbtnContrato: TSpeedButton
              Left = 368
              Top = 90
              Width = 23
              Height = 22
              Hint = 'Limpar os Campos do Contrato...'
              Glyph.Data = {
                EE000000424DEE000000000000007600000028000000100000000F0000000100
                04000000000078000000130B0000130B00001000000000000000000000000000
                8000008000000080800080000000800080008080000080808000C0C0C0000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
                888888800000000000888880FFFFFFFFF0888880FFFFFFFFF0888880FFFFFFFF
                F0888880FFFFFFFFF0888880FFFFFFFFF0888880FFFFFFFFF0888880FFFFFFFF
                F0888880FFFFFFFFF0888880FFFFFF0000888880FFFFFF0F08888880FFFFFF00
                888888800000000888888888888888888888}
              ParentShowHint = False
              ShowHint = True
              Visible = False
              OnClick = SpbtnContratoClick
            end
            object Label117: TLabel
              Left = 696
              Top = 94
              Width = 158
              Height = 14
              Alignment = taRightJustify
              Caption = 'Data do Vencimento do Contrato:'
            end
            object Label47: TLabel
              Left = 5
              Top = 352
              Width = 126
              Height = 14
              Alignment = taRightJustify
              Caption = 'Respons'#225'vel na Empresa:'
            end
            object Label48: TLabel
              Left = 17
              Top = 375
              Width = 114
              Height = 14
              Alignment = taRightJustify
              Caption = 'Conclus'#227'o Implanta'#231#227'o:'
            end
            object Label49: TLabel
              Left = 577
              Top = 353
              Width = 32
              Height = 14
              Alignment = taRightJustify
              Caption = 'Cargo:'
            end
            object Label50: TLabel
              Left = 608
              Top = 376
              Width = 147
              Height = 14
              Alignment = taRightJustify
              Caption = 'Qtde de horas na Implanta'#231#227'o:'
            end
            object SpbtnImplantacao: TSpeedButton
              Left = 185
              Top = 14
              Width = 23
              Height = 22
              Hint = 'Limpar os Campos da Implanta'#231#227'o...'
              Glyph.Data = {
                EE000000424DEE000000000000007600000028000000100000000F0000000100
                04000000000078000000130B0000130B00001000000000000000000000000000
                8000008000000080800080000000800080008080000080808000C0C0C0000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
                888888800000000000888880FFFFFFFFF0888880FFFFFFFFF0888880FFFFFFFF
                F0888880FFFFFFFFF0888880FFFFFFFFF0888880FFFFFFFFF0888880FFFFFFFF
                F0888880FFFFFFFFF0888880FFFFFF0000888880FFFFFF0F08888880FFFFFF00
                888888800000000888888888888888888888}
              ParentShowHint = False
              ShowHint = True
              Visible = False
              OnClick = SpbtnImplantacaoClick
            end
            object CNumLicencas: TCurrencyEdit
              Left = 151
              Top = 15
              Width = 32
              Height = 21
              Alignment = taCenter
              AutoSize = False
              DecimalPlaces = 0
              DisplayFormat = '000'
              MaxLength = 3
              TabOrder = 0
              ZeroEmpty = False
              OnExit = CNumLicencasExit
            end
            object DataAtual: TDateEdit
              Left = 855
              Top = 15
              Width = 90
              Height = 21
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              NumGlyphs = 2
              ParentFont = False
              YearDigits = dyFour
              TabOrder = 2
              OnChange = CbLiberacaoChange
              OnClick = CbLiberacaoExit
              OnEnter = DataAtualEnter
              OnExit = DataAtualExit
            end
            object CbLiberacao: TComboBox
              Left = 449
              Top = 15
              Width = 86
              Height = 22
              Style = csDropDownList
              CharCase = ecUpperCase
              ItemIndex = 0
              TabOrder = 1
              Text = '01-MES'
              OnChange = CbLiberacaoChange
              OnClick = CbLiberacaoClick
              OnExit = CbLiberacaoExit
              Items.Strings = (
                '01-MES'
                '02-MESES'
                '03-MESES'
                '04-MESES'
                '05-MESES'
                '06-MESES'
                '07-MESES'
                '08-MESES'
                '09-MESES'
                '10-MESES'
                '11-MESES'
                '12-MESES'
                '99-INFINITO')
            end
            object CbServico: TComboBox
              Left = 151
              Top = 47
              Width = 110
              Height = 22
              Style = csDropDownList
              CharCase = ecUpperCase
              ItemIndex = 0
              TabOrder = 3
              Text = 'CONTRATO'
              OnChange = CbLiberacaoChange
              OnClick = CbLiberacaoClick
              OnExit = CbLiberacaoExit
              Items.Strings = (
                'CONTRATO'
                'SEM CONTRATO'
                'BLOQUEADO')
            end
            object cValorContrato: TCurrencyEdit
              Left = 449
              Top = 47
              Width = 86
              Height = 21
              AutoSize = False
              DisplayFormat = '#,##0.00'
              TabOrder = 4
              OnChange = CbLiberacaoChange
              OnExit = CbLiberacaoExit
            end
            object DataInicio: TDateEdit
              Left = 855
              Top = 47
              Width = 90
              Height = 22
              NumGlyphs = 2
              YearDigits = dyFour
              TabOrder = 5
              OnChange = CbLiberacaoChange
              OnClick = CbLiberacaoExit
              OnExit = DataInicioExit
            end
            object CbIndice: TComboBox
              Left = 449
              Top = 68
              Width = 86
              Height = 22
              Style = csDropDownList
              CharCase = ecUpperCase
              TabOrder = 7
              OnChange = CbLiberacaoChange
              OnClick = CbLiberacaoClick
              OnExit = CbLiberacaoExit
              Items.Strings = (
                'IGPM/IPC'
                'SALARIO'
                'OUTRO')
            end
            object DataAtualizacao: TDateEdit
              Left = 855
              Top = 68
              Width = 90
              Height = 22
              NumGlyphs = 2
              YearDigits = dyFour
              TabOrder = 8
              OnChange = CbLiberacaoChange
              OnClick = CbLiberacaoExit
              OnExit = DataAtualizacaoExit
            end
            object CbTipoContrato: TComboBox
              Left = 151
              Top = 91
              Width = 218
              Height = 22
              Style = csDropDownList
              CharCase = ecUpperCase
              TabOrder = 9
              OnChange = CbLiberacaoChange
              OnClick = CbLiberacaoClick
              OnExit = CbLiberacaoExit
              Items.Strings = (
                'SUPORTE REMOTO'
                'LOCA'#199#195'O'
                'SUPORTE FULL'
                'POR DEMANDA'
                'INATIVO')
            end
            object GroupBox25: TGroupBox
              Left = 3
              Top = 118
              Width = 942
              Height = 224
              Caption = 'Observa'#231#227'o'
              TabOrder = 11
              object MemoObs: TMemo
                Left = 2
                Top = 16
                Width = 938
                Height = 206
                Align = alClient
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Lines.Strings = (
                  '')
                ParentFont = False
                ScrollBars = ssVertical
                TabOrder = 0
                OnChange = CbLiberacaoChange
                OnEnter = MemoObsEnter
                OnExit = CbLiberacaoExit
                OnKeyPress = MemoObsKeyPress
              end
            end
            object cMesVencto: TMaskEdit
              Left = 151
              Top = 68
              Width = 27
              Height = 22
              EditMask = '!99;0; '
              MaxLength = 2
              TabOrder = 6
              Text = ''
              OnChange = CbLiberacaoChange
              OnExit = cMesVenctoExit
            end
            object DataCancela: TDateEdit
              Left = 855
              Top = 91
              Width = 90
              Height = 22
              NumGlyphs = 2
              YearDigits = dyFour
              TabOrder = 10
              OnChange = CbLiberacaoChange
              OnClick = CbLiberacaoExit
              OnExit = DataCancelaExit
            end
            object Edt_Responsavel: TEdit
              Left = 133
              Top = 348
              Width = 217
              Height = 22
              CharCase = ecUpperCase
              MaxLength = 30
              TabOrder = 12
              OnChange = CbLiberacaoChange
              OnExit = CbLiberacaoExit
            end
            object DataConclusao: TDateEdit
              Left = 133
              Top = 372
              Width = 90
              Height = 22
              GlyphKind = gkEllipsis
              NumGlyphs = 1
              YearDigits = dyFour
              TabOrder = 13
              OnChange = CbLiberacaoChange
              OnClick = CbLiberacaoExit
              OnExit = DataConclusaoExit
            end
            object Edt_Cargo: TEdit
              Left = 611
              Top = 349
              Width = 180
              Height = 22
              CharCase = ecUpperCase
              MaxLength = 20
              TabOrder = 14
              OnChange = CbLiberacaoChange
              OnExit = CbLiberacaoExit
            end
            object CHoraImplantacao: TMaskEdit
              Left = 758
              Top = 373
              Width = 35
              Height = 22
              EditMask = '!99:99;0; '
              MaxLength = 5
              TabOrder = 15
              Text = ''
              OnChange = CbLiberacaoChange
              OnExit = CbLiberacaoExit
            end
          end
        end
        object tsHistorico: TTabSheet
          Caption = 'Hist'#243'rico de implanta'#231#227'o'
          ImageIndex = 1
          object GroupBox12: TGroupBox
            Left = 0
            Top = 0
            Width = 1736
            Height = 435
            Align = alClient
            Caption = 'Implanta'#231#227'o'
            TabOrder = 0
            object Label54: TLabel
              Left = 6
              Top = 21
              Width = 74
              Height = 14
              Alignment = taRightJustify
              Caption = 'Data da Venda:'
            end
            object Label58: TLabel
              Left = 211
              Top = 21
              Width = 87
              Height = 14
              Alignment = taRightJustify
              Caption = 'Inicio Implanta'#231#227'o:'
            end
            object Label59: TLabel
              Left = 480
              Top = 21
              Width = 23
              Height = 14
              Alignment = taRightJustify
              Caption = 'Tipo:'
            end
            object Label60: TLabel
              Left = 729
              Top = 21
              Width = 49
              Height = 14
              Alignment = taRightJustify
              Caption = 'Consultor:'
            end
            object DataVenda: TDateEdit
              Left = 81
              Top = 18
              Width = 90
              Height = 22
              NumGlyphs = 2
              YearDigits = dyFour
              TabOrder = 0
              OnChange = CbLiberacaoChange
              OnClick = CbLiberacaoExit
              OnExit = DataVendaExit
            end
            object DataImplantacao: TDateEdit
              Left = 299
              Top = 18
              Width = 90
              Height = 22
              NumGlyphs = 2
              YearDigits = dyFour
              TabOrder = 1
              OnChange = CbLiberacaoChange
              OnClick = CbLiberacaoExit
              OnExit = DataImplantacaoExit
            end
            object CbTipo: TComboBox
              Left = 505
              Top = 18
              Width = 187
              Height = 22
              Style = csDropDownList
              CharCase = ecUpperCase
              TabOrder = 2
              OnChange = CbLiberacaoChange
              OnClick = CbLiberacaoClick
              OnExit = CbLiberacaoExit
              Items.Strings = (
                'PLANO DE HORAS'
                'POR SERVI'#199'O'
                'POR DEMANDA')
            end
            object Edt_Consultor: TEdit
              Left = 780
              Top = 18
              Width = 165
              Height = 22
              CharCase = ecUpperCase
              MaxLength = 20
              TabOrder = 3
              OnChange = CbLiberacaoChange
              OnExit = CbLiberacaoExit
            end
            object GroupBox14: TGroupBox
              Left = 2
              Top = 43
              Width = 943
              Height = 389
              Align = alCustom
              Caption = 'Hist'#243'rico da Implanta'#231#227'o'
              TabOrder = 4
              object Memo_Historico: TMemo
                Left = 2
                Top = 16
                Width = 939
                Height = 371
                Align = alClient
                ScrollBars = ssVertical
                TabOrder = 0
                OnChange = CbLiberacaoChange
                OnEnter = Memo_HistoricoEnter
                OnExit = CbLiberacaoExit
                OnKeyPress = MemoObsKeyPress
              end
            end
          end
        end
      end
    end
    object tsVendas: TTabSheet
      Caption = 'Vendas'
      ImageIndex = 4
      object dbgrdVendas: TDBGrid
        Left = 0
        Top = 169
        Width = 1744
        Height = 340
        Align = alClient
        Color = 16776176
        DataSource = dsVendas
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Arial'
        TitleFont.Style = []
        OnDrawColumnCell = dbgrdVendasDrawColumnCell
        OnTitleClick = dbgrdVendasTitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'EMP_CODIGO'
            Title.Caption = 'Empresa'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRD_REFER'
            Title.Alignment = taCenter
            Title.Caption = 'Refer'#234'ncia'
            Width = 77
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRD_DESCRI'
            Title.Alignment = taCenter
            Title.Caption = 'Descri'#231#227'o'
            Width = 309
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PED_CODIGO'
            Title.Alignment = taCenter
            Title.Caption = 'Pedido'
            Width = 81
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NF_IT_NOTANUMER'
            Title.Alignment = taCenter
            Title.Caption = 'Fatura'
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NF_NUM_NFE'
            Title.Alignment = taCenter
            Title.Caption = 'NF-e'
            Width = 76
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NF_EMISSAO'
            Title.Alignment = taCenter
            Title.Caption = 'Emiss'#227'o'
            Width = 76
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NF_QTDE'
            Title.Alignment = taCenter
            Title.Caption = 'Quantidade'
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NF_PRECO'
            Title.Alignment = taCenter
            Title.Caption = 'Pre'#231'o Unit.'
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NF_IPIALIQ'
            Title.Alignment = taCenter
            Title.Caption = 'Aliq. IPI'
            Width = 55
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR_IPI'
            Title.Alignment = taCenter
            Title.Caption = 'Valor do IPI'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR_ICMS_ST'
            Title.Alignment = taCenter
            Title.Caption = 'Valor S.Trib.'
            Width = 78
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR_FINAL'
            Title.Alignment = taCenter
            Title.Caption = 'Valor Final'
            Width = 81
            Visible = True
          end>
      end
      object btnImprimirVendas: TBitBtn
        Left = 848
        Top = 507
        Width = 101
        Height = 25
        Cursor = crHandPoint
        Hint = 'Relat'#243'rios'
        Caption = 'Imprimir Vendas'
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
        TabOrder = 1
        TabStop = False
        OnClick = btnImprimirVendasClick
      end
      object GroupBox20: TGroupBox
        Left = 0
        Top = 0
        Width = 1744
        Height = 169
        Align = alTop
        Caption = #218'ltimos 12 meses de vendas'
        TabOrder = 2
        object chtGrafico: TChart
          Left = 2
          Top = 16
          Width = 1740
          Height = 151
          BackWall.Brush.Style = bsClear
          Legend.LegendStyle = lsValues
          Legend.Visible = False
          MarginTop = 15
          Title.Text.Strings = (
            'TChart')
          Title.Visible = False
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 0
          DefaultCanvas = 'TGDIPlusCanvas'
          ColorPaletteIndex = 13
          object brsrsSeries1: TBarSeries
            Marks.Style = smsValue
            SeriesColor = 12615680
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Bar'
            YValues.Order = loNone
          end
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = '&Hist'#243'rico de Contatos'
      ImageIndex = 3
      object DBMemo1: TDBMemo
        Left = 0
        Top = 0
        Width = 1744
        Height = 509
        Align = alClient
        DataField = 'CLI_HISTORICO'
        DataSource = DataCadastros.DsCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 0
        OnEnter = DBMemo2Enter
        OnExit = DBMemo2Exit
      end
    end
    object tsContato: TTabSheet
      Caption = 'Contatos no Cliente'
      ImageIndex = 5
      object Label86: TLabel
        Left = 8
        Top = 8
        Width = 27
        Height = 14
        Caption = 'Nome'
        FocusControl = DBEdit9
      end
      object Label87: TLabel
        Left = 688
        Top = 8
        Width = 29
        Height = 14
        Caption = 'Cargo'
        FocusControl = DBEdit10
      end
      object Label88: TLabel
        Left = 8
        Top = 48
        Width = 41
        Height = 14
        Caption = 'Telefone'
        FocusControl = DBEdit11
      end
      object Label89: TLabel
        Left = 184
        Top = 48
        Width = 33
        Height = 14
        Caption = 'Celular'
        FocusControl = DBEdit12
      end
      object Label90: TLabel
        Left = 360
        Top = 48
        Width = 29
        Height = 14
        Caption = 'Ramal'
        FocusControl = DBEdit13
      end
      object Label91: TLabel
        Left = 512
        Top = 48
        Width = 24
        Height = 14
        Caption = 'Email'
        FocusControl = DBEdit14
      end
      object DBEdit9: TDBEdit
        Left = 8
        Top = 24
        Width = 673
        Height = 22
        CharCase = ecUpperCase
        DataField = 'CC_NOME'
        DataSource = DsClienteContato
        TabOrder = 0
      end
      object DBEdit10: TDBEdit
        Left = 688
        Top = 24
        Width = 257
        Height = 22
        CharCase = ecUpperCase
        DataField = 'CC_CARGO'
        DataSource = DsClienteContato
        TabOrder = 1
      end
      object DBEdit11: TDBEdit
        Left = 8
        Top = 64
        Width = 172
        Height = 22
        DataField = 'CC_TELEFONE'
        DataSource = DsClienteContato
        TabOrder = 2
      end
      object DBEdit12: TDBEdit
        Left = 184
        Top = 64
        Width = 172
        Height = 22
        DataField = 'CC_CELULAR'
        DataSource = DsClienteContato
        TabOrder = 3
      end
      object DBEdit13: TDBEdit
        Left = 360
        Top = 64
        Width = 144
        Height = 22
        DataField = 'CC_RAMAL'
        DataSource = DsClienteContato
        TabOrder = 4
      end
      object DBEdit14: TDBEdit
        Left = 512
        Top = 64
        Width = 432
        Height = 22
        DataField = 'CC_EMAIL'
        DataSource = DsClienteContato
        TabOrder = 5
      end
      object DBNavigator2: TDBNavigator
        Left = 348
        Top = 101
        Width = 228
        Height = 25
        DataSource = DsClienteContato
        VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh]
        TabOrder = 6
        OnClick = DBNavigator2Click
      end
      object grpContatos: TGroupBox
        Left = 0
        Top = 146
        Width = 1744
        Height = 363
        Align = alBottom
        Caption = 'Contatos'
        TabOrder = 7
        object dbgrdContatos: TDBGrid
          Left = 2
          Top = 16
          Width = 1740
          Height = 345
          Align = alClient
          DataSource = DsClienteContato
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
              FieldName = 'CC_NOME'
              Title.Alignment = taCenter
              Title.Caption = 'Nome'
              Width = 212
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CC_CARGO'
              Title.Alignment = taCenter
              Title.Caption = 'Cargo'
              Width = 104
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CC_TIPO'
              Title.Alignment = taCenter
              Title.Caption = 'Tipo'
              Width = 123
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CC_TELEFONE'
              Title.Alignment = taCenter
              Title.Caption = 'Telefone'
              Width = 89
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CC_CELULAR'
              Title.Alignment = taCenter
              Title.Caption = 'Celular'
              Width = 90
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CC_RAMAL'
              Title.Alignment = taCenter
              Title.Caption = 'Ramal'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CC_EMAIL'
              Title.Alignment = taCenter
              Title.Caption = 'Email'
              Width = 298
              Visible = True
            end>
        end
      end
      object DBRadioGroup1: TDBRadioGroup
        Left = 8
        Top = 92
        Width = 305
        Height = 48
        Caption = 'Tipo'
        Color = clWhite
        Columns = 2
        DataField = 'CC_TIPO'
        DataSource = DsClienteContato
        Items.Strings = (
          'Colaborador'
          'Diretor ou Gestor'
          'Contador ou Consultor')
        ParentBackground = False
        ParentColor = False
        TabOrder = 8
      end
    end
    object tsAvisos: TTabSheet
      Caption = 'Avisos'
      ImageIndex = 6
      object Label21: TLabel
        Left = 8
        Top = 32
        Width = 52
        Height = 14
        Caption = 'Mensagem'
        FocusControl = DBEdit11
      end
      object Label85: TLabel
        Left = 112
        Top = 8
        Width = 66
        Height = 14
        Caption = 'Aparecer em:'
        FocusControl = DBEdit11
      end
      object GroupBox21: TGroupBox
        Left = 0
        Top = 146
        Width = 1744
        Height = 363
        Align = alBottom
        Caption = 'Avisos'
        TabOrder = 0
        object DBGrid4: TDBGrid
          Left = 2
          Top = 16
          Width = 1740
          Height = 345
          Align = alClient
          DataSource = dsAvisos
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Arial'
          TitleFont.Style = []
          OnDrawColumnCell = DBGrid4DrawColumnCell
          Columns = <
            item
              Expanded = False
              FieldName = 'CLIM_ATIVO'
              Title.Alignment = taCenter
              Title.Caption = 'Ativo'
              Width = 65
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CLIM_FATURAMENTO'
              Title.Alignment = taCenter
              Title.Caption = 'Faturamento'
              Width = 65
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CLIM_VENDA'
              Title.Alignment = taCenter
              Title.Caption = 'Venda'
              Width = 65
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CLIM_MENSAGEM'
              Title.Alignment = taCenter
              Title.Caption = 'Mensagem'
              Width = 715
              Visible = True
            end>
        end
      end
      object DBNavigator3: TDBNavigator
        Left = 8
        Top = 96
        Width = 228
        Height = 25
        DataSource = dsAvisos
        VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh]
        TabOrder = 1
      end
      object DBCheckBox1: TDBCheckBox
        Left = 8
        Top = 8
        Width = 97
        Height = 17
        Caption = 'Ativo'
        DataField = 'CLIM_ATIVO'
        DataSource = dsAvisos
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBCheckBox2: TDBCheckBox
        Left = 192
        Top = 8
        Width = 97
        Height = 17
        Caption = 'Faturamento'
        DataField = 'CLIM_FATURAMENTO'
        DataSource = dsAvisos
        TabOrder = 3
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBCheckBox3: TDBCheckBox
        Left = 288
        Top = 8
        Width = 97
        Height = 17
        Caption = 'Pedido'
        DataField = 'CLIM_VENDA'
        DataSource = dsAvisos
        TabOrder = 4
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBMemo3: TDBMemo
        Left = 3
        Top = 49
        Width = 937
        Height = 41
        DataField = 'CLIM_MENSAGEM'
        DataSource = dsAvisos
        TabOrder = 5
        OnEnter = DBMemo2Enter
        OnExit = DBMemo2Exit
      end
    end
    object tsArquivo: TTabSheet
      Caption = 'Arquivo'
      ImageIndex = 7
      object GroupBox22: TGroupBox
        Left = 0
        Top = 0
        Width = 1744
        Height = 49
        Align = alTop
        Caption = 'Incluir Arquivo'
        TabOrder = 0
        object Label93: TLabel
          Left = 21
          Top = 22
          Width = 41
          Height = 14
          Caption = 'Arquivo:'
        end
        object Label94: TLabel
          Left = 493
          Top = 22
          Width = 52
          Height = 14
          Caption = 'Descri'#231#227'o:'
        end
        object FilenameArquivo: TFilenameEdit
          Left = 64
          Top = 19
          Width = 425
          Height = 22
          DialogTitle = 'Selecione um arquivo'
          NumGlyphs = 1
          TabOrder = 0
          Text = ''
        end
        object EdDescricaoArquivo: TEdit
          Left = 552
          Top = 19
          Width = 289
          Height = 22
          TabOrder = 1
        end
        object btnSalvarArquivo: TBitBtn
          Left = 849
          Top = 16
          Width = 100
          Height = 25
          Cursor = crHandPoint
          Hint = 'Grava registro'
          Caption = '&Salvar'
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
          OnClick = btnSalvarArquivoClick
        end
      end
      object GroupBox24: TGroupBox
        Left = 0
        Top = 49
        Width = 1744
        Height = 460
        Align = alClient
        Caption = 
          'Arquivos - Para abrir o arquivo '#233' necess'#225'rio o software correspo' +
          'ndente'
        TabOrder = 1
        object DBGrid7: TDBGrid
          Left = 2
          Top = 16
          Width = 1740
          Height = 442
          Align = alClient
          DataSource = dsArquivo
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          PopupMenu = pmArquivo
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Arial'
          TitleFont.Style = []
          OnDblClick = DBGrid7DblClick
          OnKeyPress = DBGrid7KeyPress
          Columns = <
            item
              Expanded = False
              FieldName = 'ARQ_DESCRICAO'
              Title.Alignment = taCenter
              Title.Caption = 'Descri'#231#227'o'
              Width = 770
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ARQ_TIPO'
              Title.Alignment = taCenter
              Title.Caption = 'Tipo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ARQ_DATA'
              Title.Alignment = taCenter
              Title.Caption = 'Data'
              Width = 83
              Visible = True
            end>
        end
      end
    end
    object tsPrecos: TTabSheet
      Caption = 'Pre'#231'os Exclusivos '
      ImageIndex = 8
    end
  end
  object DbNavigator1: TDBNavigator [2]
    Left = 836
    Top = 9
    Width = 120
    Height = 25
    DataSource = DataCadastros.DsCliente
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    TabOrder = 1
    Visible = False
    OnClick = DbNavigator1Click
  end
  object Panel1: TPanel [3]
    Left = 0
    Top = 580
    Width = 1752
    Height = 30
    Align = alBottom
    TabOrder = 3
    object bitImportarXLS: TJvArrowButton
      Left = 361
      Top = 2
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
    object BtnConsulta: TBitBtn
      Left = 3
      Top = 0
      Width = 90
      Height = 25
      Cursor = crHandPoint
      Hint = 'Consulta'
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
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      TabStop = False
      OnClick = BtnConsultaClick
    end
    object Bit_Relatorio: TBitBtn
      Left = 99
      Top = 0
      Width = 90
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
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      TabStop = False
      OnClick = Bit_RelatorioClick
    end
    object Bit_novo: TBitBtn
      Left = 457
      Top = 2
      Width = 100
      Height = 25
      Cursor = crHandPoint
      Hint = 'Novo reg'#237'stro'
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
      TabOrder = 2
      TabStop = False
      OnClick = Bit_novoClick
    end
    object Bit_Excluir: TBitBtn
      Left = 557
      Top = 2
      Width = 100
      Height = 25
      Cursor = crHandPoint
      Hint = 'Exclui registro atual'
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
      TabOrder = 3
      TabStop = False
      OnClick = Bit_ExcluirClick
    end
    object Bit_Gravar: TBitBtn
      Left = 657
      Top = 2
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
      TabOrder = 4
      TabStop = False
      OnClick = Bit_GravarClick
    end
    object Bit_Cancelar: TBitBtn
      Left = 757
      Top = 2
      Width = 100
      Height = 25
      Cursor = crHandPoint
      Hint = 'Cancela registro'
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
      TabOrder = 5
      TabStop = False
      OnClick = Bit_CancelarClick
    end
    object Bit_Sair: TBitBtn
      Left = 857
      Top = 2
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
      TabOrder = 6
      TabStop = False
      OnClick = Bit_SairClick
    end
    object btCRM: TBitBtn
      Left = 195
      Top = 0
      Width = 100
      Height = 25
      BiDiMode = bdLeftToRight
      Caption = 'Incluir Tarefa'
      Glyph.Data = {
        96040000424D9604000000000000360000002800000012000000140000000100
        18000000000060040000C40E0000C40E00000000000000000000FFFFFFFBFCFC
        FEFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFF
        FFFDFFFFFEFFFFFCFFFFFDFDFDFFFFFF0000E3F0F047A5A554908F5082835389
        93508483508584508584508584508584508584508584508584508484538D8D51
        8D8D9A9F9FFEFCFC0000D0E7E7009595396265554D54383C075556634F515450
        515550515550515550515550515550515554545845484C0011115F6D6DFEFAFA
        0000D4E8E800A9AAA8CFCEFFFCFB9C9A24FFFFFFFFFDF7FFFDF8FFFDF8FFFDF8
        FFFDF8FFFDF8FFFDF8FFFFFFA19893000A0B697B7BFFFCFC0000D3E8E700AAB1
        83AC89B3A84C838400ADAD54A6A645A6A646A6A646A6A646A6A646A6A646A6A6
        46B0AF4A7A752F00101C697B7AFFFCFC0000D3E8E800A7AA9CC3B9E6DBB79090
        1CDCDCB8D5D5A9D5D5A9D5D5A9D5D5A9D5D5A9D5D5A9D5D5A9DDDCAE928D7900
        0C12697B7AFFFCFC0000D3E8E800A8AB94BCABDED4A98C8C14D7D7ACCFCF9DCF
        CF9DCFCF9DCFCF9DCFCF9DCFCF9DD0D09ED7D6A28A8562000C15697B7AFFFCFC
        0000D3E8E800A7AA9AC1B7EEE3C9909018F0F0DFE1E1C2E1E1C3E1E1C3E1E1C3
        E1E1C3E1E1C3E1E1C3EDEDCD8F8C74000C11697B7AFFFCFC0000D3E8E700A9AE
        8FB7A1CFC68989890CCDCD99C3C383C3C384C3C384C3C384C3C384C3C384C3C3
        84CDCD8B858053000D17697B7AFFFCFC0000D3E8E800A8AC97BFB1DED3A88D8E
        1AD4D4A7CDCD9ACDCD9ACDCD9ACDCD9ACDCD9ACDCD9ACDCD9AD4D49E8D8A6E00
        0D13697B7AFFFCFC0000D3E8E800A8AC97BFB1DED3A88D8E1AD4D4A7CDCD9ACD
        CD9ACDCD9ACDCD9ACDCD9ACDCD9ACDCD9AD4D49E8D8A6E000D13697B7AFFFCFC
        0000D3E8E700A9AE8FB7A1CFC689898A0CCDCD99C3C383C3C384C3C384C3C384
        C3C384C3C384C3C384CDCD8B858053000D17697B7AFFFCFC0000D3E8E800A7AA
        9AC1B7EEE3C9909018F0F0DFE1E1C2E1E1C3E1E1C3E1E1C3E1E1C3E1E1C3E1E1
        C3EDEDCD8F8C74000C11697B7AFFFCFC0000D3E8E800A8AB94BCACDFD4A98C8D
        14D7D7ACCFCF9DCFCF9DCFCF9DCFCF9DCFCF9DCFCF9DD0D09ED7D6A28B866300
        0C15697B7AFFFCFC0000D3E8E800A8AB94BBACDCD1A38A8B11D4D4A5CDCD97CD
        CD97CDCD97CDCD97CDCD97CECE97CDCD97D3D39B8A8663000C14697B7AFFFCFC
        0000D4E8E800A4A3A9D0D5FFFFFFA6A62FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF8F7FDFFFFFF9F9AA0000808697B7BFFFCFC0000D2E7E700A5A5
        A7CAC9FFFAFF564F0B000000040403000000000000000000000000000000C5BB
        BBFCF9F99E9090000505667777FEFBFB0000D6E7E700B0B023B8B8239A9B33B7
        C79EDBDAFFFFFFF7F6F6ECECECCECECE7A70701264641CA4A425A0A01E9F9F00
        4D4D6D7777FFFCFC0000F9FAFA80CDCD4EC6C655CBCB53CFCE3C9494D8D9D9F9
        F8F8D5D5D5ADACAC1E14142A76765EDFDF55CACA53CECE65C0C0CFD9D9FFFFFF
        0000FFFFFFFFFEFEFCF8F8FEF9F9FFFCFCB2ADAD9191919494948F8F8F959595
        737272BEBABAFFFFFFFDF9F9FDF8F8FFFEFEFFFFFFFFFFFF0000}
      ParentBiDiMode = False
      TabOrder = 7
      OnClick = btCRMClick
    end
  end
  inherited coCalcula: TACBrCalculadora
    Left = 200
    Top = 65528
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    AllowDefault = False
    Top = 0
  end
  inherited DBConn: TSQLConnection
    Left = 544
    Top = 9
  end
  inherited qAux: TSQLQuery
    SQLConnection = DBInicio.MainDB
    Top = 65525
  end
  object SqlCdsAtiv: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 'select RCL_CODIGO, RCL_ATIVIDADE, EMP_CODIGO from CLI_ATV1'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'select RCL_CODIGO, RCL_ATIVIDADE, EMP_CODIGO from CLI_ATV1'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 1261
    Top = 82
    object SqlCdsAtivRCL_CODIGO: TStringField
      DisplayWidth = 3
      FieldName = 'RCL_CODIGO'
      Required = True
      Size = 3
    end
    object SqlCdsAtivRCL_ATIVIDADE: TStringField
      FieldName = 'RCL_ATIVIDADE'
      Required = True
    end
    object SqlCdsAtivEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
  object SqlCdsTransp: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 'select TRP_CODIGO, TRP_RAZAO, EMP_CODIGO from TRP0000'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'select TRP_CODIGO, TRP_RAZAO, EMP_CODIGO from TRP0000'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 1558
    Top = 261
    object SqlCdsTranspTRP_CODIGO: TStringField
      FieldName = 'TRP_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object SqlCdsTranspTRP_RAZAO: TStringField
      FieldName = 'TRP_RAZAO'
      Size = 45
    end
    object SqlCdsTranspEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
  object SqlCdsRegiao: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 'select REG_CODIGO, REG_DESCRI, EMP_CODIGO from REG0000'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'select REG_CODIGO, REG_DESCRI, EMP_CODIGO from REG0000'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 1347
    Top = 130
    object SqlCdsRegiaoREG_CODIGO: TStringField
      FieldName = 'REG_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object SqlCdsRegiaoREG_DESCRI: TStringField
      FieldName = 'REG_DESCRI'
      Size = 30
    end
    object SqlCdsRegiaoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
  object SqlCdsDupFat: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 
      'select f1.FAT_REGISTRO, '#13#10'f1.fat_codigo,'#13#10'f1.fpc_numer,'#13#10'f1.fpc_' +
      'vlparc,'#13#10'f1.fpc_vencto,'#13#10'f1.fpc_vlPago,'#13#10'f1.fpc_pagto,'#13#10'f1.fpc_s' +
      'tatus '#13#10'from fat_pc01 f1'#13#10'left join ban0000 b1 on (b1.ban_codigo' +
      ' = f1.ban_codigo)'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'select f1.FAT_REGISTRO, '#13#10'f1.fat_codigo,'#13#10'f1.fpc_numer,'#13#10'f1.fpc_' +
      'vlparc,'#13#10'f1.fpc_vencto,'#13#10'f1.fpc_vlPago,'#13#10'f1.fpc_pagto,'#13#10'f1.fpc_s' +
      'tatus '#13#10'from fat_pc01 f1'#13#10'left join ban0000 b1 on (b1.ban_codigo' +
      ' = f1.ban_codigo)'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 592
    Top = 276
    object SqlCdsDupFatFAT_CODIGO: TStringField
      FieldName = 'FAT_CODIGO'
      Required = True
      Size = 6
    end
    object SqlCdsDupFatFPC_NUMER: TStringField
      FieldName = 'FPC_NUMER'
      Size = 2
    end
    object SqlCdsDupFatFPC_VLPARC: TFMTBCDField
      FieldName = 'FPC_VLPARC'
      DisplayFormat = '#,##0.00'
      Precision = 15
    end
    object SqlCdsDupFatFPC_VENCTO: TSQLTimeStampField
      FieldName = 'FPC_VENCTO'
    end
    object SqlCdsDupFatFPC_VLPAGO: TFMTBCDField
      FieldName = 'FPC_VLPAGO'
      DisplayFormat = '#,##0.00'
      Precision = 15
    end
    object SqlCdsDupFatFPC_PAGTO: TSQLTimeStampField
      FieldName = 'FPC_PAGTO'
    end
    object SqlCdsDupFatFPC_STATUS: TStringField
      FieldName = 'FPC_STATUS'
      Size = 12
    end
    object SqlCdsDupFatFAT_REGISTRO: TIntegerField
      FieldName = 'FAT_REGISTRO'
      Required = True
    end
    object SqlCdsDupFatPendente: TFMTBCDField
      FieldName = 'Pendente'
      DisplayFormat = '#,##0.00'
    end
    object SqlCdsDupFatBAN_APELIDO: TStringField
      FieldName = 'BAN_APELIDO'
      Size = 25
    end
    object SqlCdsDupFatBAN_CODIGO: TStringField
      FieldName = 'BAN_CODIGO'
      Size = 4
    end
  end
  object DsDupFat: TDataSource
    DataSet = SqlCdsDupFat
    OnDataChange = DsDupFatDataChange
    Left = 672
    Top = 276
  end
  object SqlCdsNFS: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 
      'SELECT'#13#10'F1.FAT_CODIGO,'#13#10'F1.FAT_DTEMIS,'#13#10'F1.PED_CODIGO,'#13#10'F1.CLI_C' +
      'ODIGO,'#13#10'F1.EMP_CODIGO,'#13#10'C1.CLI_RAZAO,'#13#10'SUM(F1.FAT_VLFAT) AS WVAL' +
      'OR'#13#10'FROM FAT0000 F1'#13#10'LEFT JOIN CLI0000 C1 ON (C1.CLI_CODIGO = F1' +
      '.CLI_CODIGO)'#13#10'GROUP BY'#13#10'F1.FAT_CODIGO,'#13#10'F1.FAT_DTEMIS,'#13#10'F1.PED_C' +
      'ODIGO,'#13#10'F1.CLI_CODIGO,'#13#10'F1.EMP_CODIGO,'#13#10'C1.CLI_RAZAO'#13#10'ORDER BY F' +
      '1.FAT_DTEMIS DESC'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    AfterScroll = SqlCdsNFSAfterScroll
    CommandText = 
      'SELECT'#13#10'F1.FAT_CODIGO,'#13#10'F1.FAT_DTEMIS,'#13#10'F1.PED_CODIGO,'#13#10'F1.CLI_C' +
      'ODIGO,'#13#10'F1.EMP_CODIGO,'#13#10'C1.CLI_RAZAO,'#13#10'SUM(F1.FAT_VLFAT) AS WVAL' +
      'OR'#13#10'FROM FAT0000 F1'#13#10'LEFT JOIN CLI0000 C1 ON (C1.CLI_CODIGO = F1' +
      '.CLI_CODIGO)'#13#10'GROUP BY'#13#10'F1.FAT_CODIGO,'#13#10'F1.FAT_DTEMIS,'#13#10'F1.PED_C' +
      'ODIGO,'#13#10'F1.CLI_CODIGO,'#13#10'F1.EMP_CODIGO,'#13#10'C1.CLI_RAZAO'#13#10'ORDER BY F' +
      '1.FAT_DTEMIS DESC'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 696
    Top = 140
    object SqlCdsNFSFAT_CODIGO: TStringField
      FieldName = 'FAT_CODIGO'
      Required = True
      Size = 6
    end
    object SqlCdsNFSFAT_DTEMIS: TSQLTimeStampField
      FieldName = 'FAT_DTEMIS'
    end
    object SqlCdsNFSPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Size = 6
    end
    object SqlCdsNFSCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Size = 5
    end
    object SqlCdsNFSEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlCdsNFSCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Size = 50
    end
    object SqlCdsNFSWVALOR: TFMTBCDField
      FieldName = 'WVALOR'
      DisplayFormat = '#,##0.00'
      Precision = 15
    end
  end
  object DsNFS: TDataSource
    DataSet = SqlCdsNFS
    Left = 760
    Top = 140
  end
  object SqlCdsProdNF: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 
      'SELECT'#13#10'N1.NF_IT_NOTANUMER,'#13#10'N1.PRD_REFER,'#13#10'P1.PRD_DESCRI,'#13#10'N1.N' +
      'F_QTDE,'#13#10'N1.NF_PRECO'#13#10'FROM'#13#10'NF_IT01 N1'#13#10'LEFT JOIN PRD0000 P1 ON ' +
      '(P1.PRD_REFER = N1.PRD_REFER)'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    OnCalcFields = SqlCdsProdNFCalcFields
    CommandText = 
      'SELECT'#13#10'N1.NF_IT_NOTANUMER,'#13#10'N1.PRD_REFER,'#13#10'P1.PRD_DESCRI,'#13#10'N1.N' +
      'F_QTDE,'#13#10'N1.NF_PRECO'#13#10'FROM'#13#10'NF_IT01 N1'#13#10'LEFT JOIN PRD0000 P1 ON ' +
      '(P1.PRD_REFER = N1.PRD_REFER)'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 1304
    Top = 204
    object SqlCdsProdNFNF_IT_NOTANUMER: TStringField
      FieldName = 'NF_IT_NOTANUMER'
      Required = True
      Size = 6
    end
    object SqlCdsProdNFPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object SqlCdsProdNFPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 50
    end
    object SqlCdsProdNFNF_QTDE: TFMTBCDField
      FieldName = 'NF_QTDE'
      Precision = 15
    end
    object SqlCdsProdNFNF_PRECO: TFMTBCDField
      FieldName = 'NF_PRECO'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
    end
    object SqlCdsProdNFNF_TOTAL_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'NF_TOTAL_CC'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      currency = False
      Calculated = True
    end
  end
  object DsProdNF: TDataSource
    DataSet = SqlCdsProdNF
    Left = 1184
    Top = 404
  end
  object SqlCdsBanco: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 'Select BAN_CODIGO, BAN_APELIDO  from BAN0000'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'Select BAN_CODIGO, BAN_APELIDO  from BAN0000'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 1323
    Top = 369
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
  object SqlCdsPrazo: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 'Select PCL_CODIGO, PCL_NOME  FROM PCL0000'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'Select PCL_CODIGO, PCL_NOME  FROM PCL0000'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 1411
    Top = 153
    object SqlCdsPrazoPCL_CODIGO: TStringField
      FieldName = 'PCL_CODIGO'
      Required = True
      Size = 3
    end
    object SqlCdsPrazoPCL_NOME: TStringField
      FieldName = 'PCL_NOME'
      Size = 35
    end
  end
  object DSPais: TDataSource
    DataSet = SqlCdsPais
    Left = 1238
    Top = 216
  end
  object SqlCdsPais: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 'Select * from pais0000 order by PAI_PAIS'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'Select * from pais0000 order by PAI_PAIS'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 1483
    Top = 145
    object SqlCdsPaisPAI_CODIGO: TStringField
      FieldName = 'PAI_CODIGO'
      Required = True
      Size = 5
    end
    object SqlCdsPaisPAI_PAIS: TStringField
      FieldName = 'PAI_PAIS'
      Size = 255
    end
  end
  object CdsCFOP: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 'Select OPE_CODIGO, OPE_NATUREZA||'#39'-'#39'||OPE_DESCRI  FROM OPE0000'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'Select OPE_CODIGO, OPE_NATUREZA||'#39'-'#39'||OPE_DESCRI  FROM OPE0000'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 995
    Top = 513
    object CdsCFOPOPE_CODIGO: TStringField
      FieldName = 'OPE_CODIGO'
      Required = True
      Size = 3
    end
    object CdsCFOPOPE_DESCRI: TStringField
      FieldName = 'OPE_DESCRI'
      Size = 55
    end
  end
  object DsCfop: TDataSource
    DataSet = CdsCFOP
    Left = 1262
    Top = 505
  end
  object dsVendas: TDataSource
    DataSet = CdsVendas
    Left = 1566
    Top = 328
  end
  object CdsVendas: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 
      'select'#13#10'  t1.prd_refer,'#13#10'  t1.prd_descri,'#13#10'  t1.ped_codigo,'#13#10'  T' +
      '1.nf_it_notanumer,'#13#10'  t2.nf_num_nfe,'#13#10'  t2.nf_emissao,'#13#10'  t1.nf_' +
      'qtde,'#13#10'  t1.nf_preco,'#13#10'  t1.nf_ipialiq,'#13#10'  CAST((coalesce(t1.nf_' +
      'ipivalor,0) / t1.nf_qtde) AS NUMERIC(18,4)) AS valor_ipi,'#13#10'  CAS' +
      'T((coalesce(t1.nf_vlsubst,0) / t1.nf_qtde) AS NUMERIC(18,4)) as ' +
      'valor_icms_st,'#13#10'  t1.nf_preco + CAST((coalesce(t1.nf_ipivalor,0)' +
      ' + coalesce(t1.nf_vlsubst,0))/t1.nf_qtde AS NUMERIC(18,4)) as VA' +
      'LOR_FINAL'#13#10'from nf_it01 t1'#13#10'join nf0001 t2 on (t2.nf_notanumber ' +
      '= t1.nf_it_notanumer and t2.cli_codigo = '#39'0001'#39')'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    PacketRecords = 50
    Params = <>
    CommandText = 
      'select'#13#10'  t1.prd_refer,'#13#10'  t1.prd_descri,'#13#10'  t1.ped_codigo,'#13#10'  T' +
      '1.nf_it_notanumer,'#13#10'  t2.nf_num_nfe,'#13#10'  t2.nf_emissao,'#13#10'  t1.nf_' +
      'qtde,'#13#10'  t1.nf_preco,'#13#10'  t1.nf_ipialiq,'#13#10'  CAST((coalesce(t1.nf_' +
      'ipivalor,0) / t1.nf_qtde) AS NUMERIC(18,4)) AS valor_ipi,'#13#10'  CAS' +
      'T((coalesce(t1.nf_vlsubst,0) / t1.nf_qtde) AS NUMERIC(18,4)) as ' +
      'valor_icms_st,'#13#10'  t1.nf_preco + CAST((coalesce(t1.nf_ipivalor,0)' +
      ' + coalesce(t1.nf_vlsubst,0))/t1.nf_qtde AS NUMERIC(18,4)) as VA' +
      'LOR_FINAL'#13#10'from nf_it01 t1'#13#10'join nf0001 t2 on (t2.nf_notanumber ' +
      '= t1.nf_it_notanumer and t2.cli_codigo = '#39'0001'#39')'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 1475
    Top = 264
    object CdsVendasPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object CdsVendasPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 500
    end
    object CdsVendasPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Size = 7
    end
    object CdsVendasNF_IT_NOTANUMER: TStringField
      FieldName = 'NF_IT_NOTANUMER'
      Size = 6
    end
    object CdsVendasNF_NUM_NFE: TIntegerField
      FieldName = 'NF_NUM_NFE'
    end
    object CdsVendasNF_EMISSAO: TDateField
      FieldName = 'NF_EMISSAO'
    end
    object CdsVendasNF_QTDE: TFMTBCDField
      FieldName = 'NF_QTDE'
      Precision = 20
      Size = 5
    end
    object CdsVendasNF_PRECO: TFMTBCDField
      FieldName = 'NF_PRECO'
      DisplayFormat = '###,###,##0.00'
      Precision = 20
      Size = 5
    end
    object CdsVendasNF_IPIALIQ: TFMTBCDField
      FieldName = 'NF_IPIALIQ'
      DisplayFormat = '##0.00%'
      Precision = 20
      Size = 5
    end
    object CdsVendasVALOR_IPI: TFMTBCDField
      FieldName = 'VALOR_IPI'
      DisplayFormat = '###,###,##0.00'
      Precision = 20
      Size = 4
    end
    object CdsVendasVALOR_ICMS_ST: TFMTBCDField
      FieldName = 'VALOR_ICMS_ST'
      DisplayFormat = '###,###,##0.00'
      Precision = 20
      Size = 4
    end
    object CdsVendasVALOR_FINAL: TFMTBCDField
      FieldName = 'VALOR_FINAL'
      DisplayFormat = '###,###,##0.00'
      Precision = 20
      Size = 5
    end
    object CdsVendasEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
  object SqlCdsCentroCusto: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 'Select t1.*  from PCX0000 t1 order by t1.PCX_NIVEL'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'Select t1.*  from PCX0000 t1 order by t1.PCX_NIVEL'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 1339
    Top = 489
    object SqlCdsCentroCustoPCX_CODIGO: TStringField
      FieldName = 'PCX_CODIGO'
      Size = 3
    end
    object SqlCdsCentroCustoPCX_DESCRI: TStringField
      FieldName = 'PCX_DESCRI'
      Size = 25
    end
    object SqlCdsCentroCustoPCX_NIVEL: TStringField
      FieldName = 'PCX_NIVEL'
      Size = 15
    end
    object SqlCdsCentroCustoPCX_INICIO: TSQLTimeStampField
      FieldName = 'PCX_INICIO'
    end
    object SqlCdsCentroCustoPCX_FIM: TSQLTimeStampField
      FieldName = 'PCX_FIM'
    end
    object SqlCdsCentroCustoPCX_TERMINADO: TStringField
      FieldName = 'PCX_TERMINADO'
      Size = 1
    end
    object SqlCdsCentroCustoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      FixedChar = True
      Size = 3
    end
  end
  object DsClienteContato: TDataSource
    DataSet = CdsClienteContato
    Left = 1176
    Top = 162
  end
  object CdsClienteContato: TClientDataSet
    Aggregates = <>
    PacketRecords = 10
    Params = <>
    ProviderName = 'DspClienteContato'
    BeforePost = CdsClienteContatoBeforePost
    AfterPost = CdsClienteContatoAfterPost
    Left = 1104
    Top = 98
    object CdsClienteContatoCC_REGISTRO: TIntegerField
      FieldName = 'CC_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CdsClienteContatoCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Size = 5
    end
    object CdsClienteContatoCC_NOME: TStringField
      FieldName = 'CC_NOME'
      Size = 100
    end
    object CdsClienteContatoCC_CARGO: TStringField
      FieldName = 'CC_CARGO'
      Size = 50
    end
    object CdsClienteContatoCC_TELEFONE: TStringField
      FieldName = 'CC_TELEFONE'
      EditMask = '(00) 000000009;0; '
      Size = 12
    end
    object CdsClienteContatoCC_CELULAR: TStringField
      FieldName = 'CC_CELULAR'
      EditMask = '(00) 000000009;0; '
      Size = 12
    end
    object CdsClienteContatoCC_RAMAL: TStringField
      FieldName = 'CC_RAMAL'
      Size = 10
    end
    object CdsClienteContatoCC_EMAIL: TStringField
      FieldName = 'CC_EMAIL'
      Size = 200
    end
    object CdsClienteContatoCC_TIPO: TStringField
      FieldName = 'CC_TIPO'
      OnGetText = CdsClienteContatoCC_TIPOGetText
      OnSetText = CdsClienteContatoCC_TIPOSetText
      Size = 1
    end
  end
  object DspClienteContato: TDataSetProvider
    DataSet = SqlCLienteContato
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 1056
    Top = 162
  end
  object SqlCLienteContato: TSQLDataSet
    GetMetadata = False
    CommandText = 'select * from CLI_CONTATO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DataCadastros.SQLConnection1
    Left = 960
    Top = 162
    object SqlCLienteContatoCC_REGISTRO: TIntegerField
      FieldName = 'CC_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object SqlCLienteContatoCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Size = 5
    end
    object SqlCLienteContatoCC_NOME: TStringField
      FieldName = 'CC_NOME'
      Size = 100
    end
    object SqlCLienteContatoCC_CARGO: TStringField
      FieldName = 'CC_CARGO'
      Size = 50
    end
    object SqlCLienteContatoCC_TELEFONE: TStringField
      FieldName = 'CC_TELEFONE'
      Size = 12
    end
    object SqlCLienteContatoCC_CELULAR: TStringField
      FieldName = 'CC_CELULAR'
      Size = 12
    end
    object SqlCLienteContatoCC_RAMAL: TStringField
      FieldName = 'CC_RAMAL'
      Size = 10
    end
    object SqlCLienteContatoCC_EMAIL: TStringField
      FieldName = 'CC_EMAIL'
      Size = 200
    end
    object SqlCLienteContatoCC_TIPO: TStringField
      FieldName = 'CC_TIPO'
      Size = 1
    end
  end
  object frxVendas: TfrxReport
    Version = '5.3.16'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42047.422334838000000000
    ReportOptions.LastChange = 42047.422334838000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnGetValue = frxVendasGetValue
    Left = 1174
    Top = 305
    Datasets = <
      item
        DataSet = frxdbVendas
        DataSetName = 'frxDBVendas'
      end
      item
        DataSet = frxdbCliente
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
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 79.370130000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo2: TfrxMemoView
          Top = 18.897650000000000000
          Width = 578.268090000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Relat'#243'rio de Produtos Vendidos')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Width = 578.268090000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Empresa]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Top = 37.795300000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'CLIENTE: ')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 56.692950000000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line2: TfrxLineView
          Top = 75.590600000000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo26: TfrxMemoView
          Left = 907.087200000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Date] '#224's [Time]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 907.087200000000000000
          Top = 18.897650000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#] de [TotalPages#]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 109.606370000000000000
          Top = 56.692950000000000000
          Width = 389.291590000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 502.677490000000000000
          Top = 56.692950000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Pedido')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 578.268090000000000000
          Top = 56.692950000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Fatura')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 653.858690000000000000
          Top = 56.692950000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'NF-e')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 729.449290000000000000
          Top = 56.692950000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Emiss'#227'o')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 880.630490000000000000
          Top = 56.692950000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Pre'#231'o')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 805.039890000000000000
          Top = 56.692950000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Quantidade')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 963.780150000000000000
          Top = 56.692950000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Valor Final')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Top = 56.692950000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Refer'#234'ncia')
          ParentFont = False
        end
        object frxDBDataset1CLI_CODIGO: TfrxMemoView
          Left = 56.692950000000000000
          Top = 37.795300000000000000
          Width = 990.236860000000000000
          Height = 18.897650000000000000
          DataSet = frxdbVendas
          DataSetName = 'frxDBVendas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."CLI_CODIGO"]-[frxDBDataset1."CLI_RAZAO"]'
            '')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 158.740260000000000000
        Width = 1046.929810000000000000
        DataSet = frxdbVendas
        DataSetName = 'frxDBVendas'
        RowCount = 0
        object frxDBVendasPRD_REFER: TfrxMemoView
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DataField = 'PRD_REFER'
          DataSet = frxdbVendas
          DataSetName = 'frxDBVendas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBVendas."PRD_REFER"]')
          ParentFont = False
          WordWrap = False
        end
        object frxDBVendasPRD_DESCRI: TfrxMemoView
          Left = 109.606370000000000000
          Width = 389.291590000000000000
          Height = 18.897650000000000000
          DataField = 'PRD_DESCRI'
          DataSet = frxdbVendas
          DataSetName = 'frxDBVendas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBVendas."PRD_DESCRI"]')
          ParentFont = False
          WordWrap = False
        end
        object frxDBVendasPED_CODIGO: TfrxMemoView
          Left = 502.677490000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataField = 'PED_CODIGO'
          DataSet = frxdbVendas
          DataSetName = 'frxDBVendas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBVendas."PED_CODIGO"]')
          ParentFont = False
        end
        object frxDBVendasNF_IT_NOTANUMER: TfrxMemoView
          Left = 578.268090000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataField = 'NF_IT_NOTANUMER'
          DataSet = frxdbVendas
          DataSetName = 'frxDBVendas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBVendas."NF_IT_NOTANUMER"]')
          ParentFont = False
        end
        object frxDBVendasNF_NUM_NFE: TfrxMemoView
          Left = 653.858690000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataField = 'NF_NUM_NFE'
          DataSet = frxdbVendas
          DataSetName = 'frxDBVendas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBVendas."NF_NUM_NFE"]')
          ParentFont = False
        end
        object frxDBVendasNF_EMISSAO: TfrxMemoView
          Left = 729.449290000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataField = 'NF_EMISSAO'
          DataSet = frxdbVendas
          DataSetName = 'frxDBVendas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBVendas."NF_EMISSAO"]')
          ParentFont = False
        end
        object frxDBVendasNF_QTDE: TfrxMemoView
          Left = 805.039890000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataField = 'NF_QTDE'
          DataSet = frxdbVendas
          DataSetName = 'frxDBVendas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBVendas."NF_QTDE"]')
          ParentFont = False
        end
        object frxDBVendasNF_PRECO: TfrxMemoView
          Left = 880.630490000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'NF_PRECO'
          DataSet = frxdbVendas
          DataSetName = 'frxDBVendas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBVendas."NF_PRECO"]')
          ParentFont = False
        end
        object frxDBVendasVALOR_FINAL: TfrxMemoView
          Left = 963.780150000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DataField = 'VALOR_FINAL'
          DataSet = frxdbVendas
          DataSetName = 'frxDBVendas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBVendas."VALOR_FINAL"]')
          ParentFont = False
        end
      end
    end
  end
  object frxdbCliente: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CLI_CODIGO=CLI_CODIGO'
      'CLI_DTINATIVO=CLI_DTINATIVO'
      'CLI_INATIVO=CLI_INATIVO'
      'CLI_MOTIVO=CLI_MOTIVO'
      'REG_CODIGO=REG_CODIGO'
      'CLI_ATIVIDADE=CLI_ATIVIDADE'
      'CLI_PORTE=CLI_PORTE'
      'CLI_BAIRRO=CLI_BAIRRO'
      'CLI_CIDADE=CLI_CIDADE'
      'CLI_CEP=CLI_CEP'
      'CLI_CXPOST=CLI_CXPOST'
      'CLI_FONE=CLI_FONE'
      'CLI_FAX=CLI_FAX'
      'TRP_CODIGO=TRP_CODIGO'
      'CLI_INSC=CLI_INSC'
      'CLI_CGC=CLI_CGC'
      'CLI_PESSOA=CLI_PESSOA'
      'CLI_CONTATO=CLI_CONTATO'
      'CLI_FUNCONT=CLI_FUNCONT'
      'REP_CODIGO=REP_CODIGO'
      'CLI_DTINICIO=CLI_DTINICIO'
      'CLI_DTULTCOM=CLI_DTULTCOM'
      'CLI_CIDENTR=CLI_CIDENTR'
      'CLI_CEPENTR=CLI_CEPENTR'
      'CLI_FONENTR=CLI_FONENTR'
      'CLI_CIDFAT=CLI_CIDFAT'
      'CLI_CEPFAT=CLI_CEPFAT'
      'CLI_UF=CLI_UF'
      'CLI_UFENTR=CLI_UFENTR'
      'CLI_UFFAT=CLI_UFFAT'
      'EMP_CODIGO=EMP_CODIGO'
      'CLI_CURVA=CLI_CURVA'
      'CLI_LIMITECRED=CLI_LIMITECRED'
      'CLI_LIMITEUTILIZ=CLI_LIMITEUTILIZ'
      'CLI_PEDABERTO=CLI_PEDABERTO'
      'CLI_VL_ULTCOMP=CLI_VL_ULTCOMP'
      'CLI_CELULAR=CLI_CELULAR'
      'CLI_ENDERE=CLI_ENDERE'
      'CLI_ENDENTR=CLI_ENDENTR'
      'CLI_ENDFAT=CLI_ENDFAT'
      'CLI_OBS=CLI_OBS'
      'CLI_PROTESTAR=CLI_PROTESTAR'
      'CLI_QTDE_DIAS_PROTESTO=CLI_QTDE_DIAS_PROTESTO'
      'CLI_CONSFINAL=CLI_CONSFINAL'
      'CLI_PAIS=CLI_PAIS'
      'CLI_FANTASIA=CLI_FANTASIA'
      'CLI_HISTORICO=CLI_HISTORICO'
      'CLI_CONSU_PROPRIO=CLI_CONSU_PROPRIO'
      'CID_CODIGO=CID_CODIGO'
      'CLI_INSCMUNI=CLI_INSCMUNI'
      'CLI_BAIENTR=CLI_BAIENTR'
      'CLI_BAIFAT=CLI_BAIFAT'
      'AMX_CODIGO=AMX_CODIGO'
      'PCL_CODIGO=PCL_CODIGO'
      'BAN_CODIGO=BAN_CODIGO'
      'CLI_DESC1=CLI_DESC1'
      'CLI_DESC2=CLI_DESC2'
      'CLI_TABPRECO=CLI_TABPRECO'
      'PAI_CODIGO=PAI_CODIGO'
      'CLI_CLASSE_CLI_FOR=CLI_CLASSE_CLI_FOR'
      'CLI_EMAIL=CLI_EMAIL'
      'CLI_HOME=CLI_HOME'
      'CLI_EMAIL_ALTERNATIVO=CLI_EMAIL_ALTERNATIVO'
      'CLI_RAZAO=CLI_RAZAO'
      'OPE_CODIGO=OPE_CODIGO'
      'CLI_SUFRAMA=CLI_SUFRAMA'
      'CLI_REGIME_TRIBUTARIO=CLI_REGIME_TRIBUTARIO'
      'PCX_CODIGO=PCX_CODIGO')
    DataSource = DataCadastros.DsCliente
    BCDToCurrency = False
    Left = 1062
    Top = 297
  end
  object frxdbVendas: TfrxDBDataset
    UserName = 'frxDBVendas'
    CloseDataSource = False
    FieldAliases.Strings = (
      'PRD_REFER=PRD_REFER'
      'PRD_DESCRI=PRD_DESCRI'
      'PED_CODIGO=PED_CODIGO'
      'NF_IT_NOTANUMER=NF_IT_NOTANUMER'
      'NF_NUM_NFE=NF_NUM_NFE'
      'NF_EMISSAO=NF_EMISSAO'
      'NF_QTDE=NF_QTDE'
      'NF_PRECO=NF_PRECO'
      'NF_IPIALIQ=NF_IPIALIQ'
      'VALOR_IPI=VALOR_IPI'
      'VALOR_ICMS_ST=VALOR_ICMS_ST'
      'VALOR_FINAL=VALOR_FINAL')
    DataSource = dsVendas
    BCDToCurrency = False
    Left = 1182
    Top = 353
  end
  object SqlCdsGraficoVendas: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 
      'select'#13#10'  first 12'#13#10'  (extract (year from t1.nf_emissao)) as ano' +
      ','#13#10'  (extract (month from t1.nf_emissao)) as mes,'#13#10'  (extract (m' +
      'onth from t1.nf_emissao))||'#39'/'#39'||(extract (year from t1.nf_emissa' +
      'o)) as mes_ano,'#13#10'  sum(t1.nf_tot_nota) as total'#13#10'from nf0001 t1'#13 +
      #10'where t1.cli_codigo = '#39'00005'#39' and T1.OPE_SEMVLCOM = '#39'N'#39' AND T1.' +
      'NF_CANCELADA = '#39'N'#39' and t1.emp_codigo = '#39'001'#39#13#10'group by 1,2,3'#13#10'or' +
      'der by 1 desc, 2 desc'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'select'#13#10'  first 12'#13#10'  (extract (year from t1.nf_emissao)) as ano' +
      ','#13#10'  (extract (month from t1.nf_emissao)) as mes,'#13#10'  (extract (m' +
      'onth from t1.nf_emissao))||'#39'/'#39'||(extract (year from t1.nf_emissa' +
      'o)) as mes_ano,'#13#10'  sum(t1.nf_tot_nota) as total'#13#10'from nf0001 t1'#13 +
      #10'where t1.cli_codigo = '#39'00005'#39' and T1.OPE_SEMVLCOM = '#39'N'#39' AND T1.' +
      'NF_CANCELADA = '#39'N'#39' and t1.emp_codigo = '#39'001'#39#13#10'group by 1,2,3'#13#10'or' +
      'der by 1 desc, 2 desc'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 1286
    Top = 153
    object SqlCdsGraficoVendasANO: TSmallintField
      FieldName = 'ANO'
    end
    object SqlCdsGraficoVendasMES: TSmallintField
      FieldName = 'MES'
    end
    object SqlCdsGraficoVendasMES_ANO: TStringField
      FieldName = 'MES_ANO'
      Size = 13
    end
    object SqlCdsGraficoVendasTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Precision = 20
      Size = 5
    end
  end
  object SqlAvisos: TSQLDataSet
    GetMetadata = False
    CommandText = 'select * from CLI_MENSAGENS'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DataCadastros.SQLConnection1
    Left = 1448
    Top = 82
    object SqlAvisosCLIM_REGISTRO: TIntegerField
      FieldName = 'CLIM_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object SqlAvisosCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Size = 5
    end
    object SqlAvisosCLIM_ATIVO: TStringField
      FieldName = 'CLIM_ATIVO'
      Size = 1
    end
    object SqlAvisosCLIM_VENDA: TStringField
      FieldName = 'CLIM_VENDA'
      Size = 1
    end
    object SqlAvisosCLIM_FATURAMENTO: TStringField
      FieldName = 'CLIM_FATURAMENTO'
      Size = 1
    end
    object SqlAvisosCLIM_MENSAGEM: TBlobField
      FieldName = 'CLIM_MENSAGEM'
    end
  end
  object DspAvisos: TDataSetProvider
    DataSet = SqlAvisos
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 1387
    Top = 83
  end
  object CdsAvisos: TClientDataSet
    Aggregates = <>
    PacketRecords = 10
    Params = <>
    ProviderName = 'DspAvisos'
    BeforePost = CdsAvisosBeforePost
    AfterPost = CdsAvisosAfterPost
    AfterDelete = CdsAvisosAfterDelete
    Left = 1552
    Top = 58
    object CdsAvisosCLIM_REGISTRO: TIntegerField
      FieldName = 'CLIM_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CdsAvisosCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Size = 5
    end
    object CdsAvisosCLIM_ATIVO: TStringField
      FieldName = 'CLIM_ATIVO'
      Size = 1
    end
    object CdsAvisosCLIM_VENDA: TStringField
      FieldName = 'CLIM_VENDA'
      Size = 1
    end
    object CdsAvisosCLIM_FATURAMENTO: TStringField
      FieldName = 'CLIM_FATURAMENTO'
      Size = 1
    end
    object CdsAvisosCLIM_MENSAGEM: TBlobField
      FieldName = 'CLIM_MENSAGEM'
      OnGetText = CdsAvisosCLIM_MENSAGEMGetText
    end
  end
  object dsAvisos: TDataSource
    DataSet = CdsAvisos
    Left = 1555
    Top = 115
  end
  object SqlCdsCNAE: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 
      'Select CNAE_REGISTRO, CNAE_CODIGO||'#39'-'#39'||CNAE_DESCRICAO||'#39'-'#39'||cas' +
      't(CNAE_CARGA_TRIB_MEDIA  as numeric(18,2))||'#39'%'#39' as CNAE  FROM CN' +
      'AE  order by 2'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'Select CNAE_REGISTRO, CNAE_CODIGO||'#39'-'#39'||CNAE_DESCRICAO||'#39'-'#39'||cas' +
      't(CNAE_CARGA_TRIB_MEDIA  as numeric(18,2))||'#39'%'#39' as CNAE  FROM CN' +
      'AE  order by 2'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 1035
    Top = 353
    object SqlCdsCNAECNAE_REGISTRO: TIntegerField
      FieldName = 'CNAE_REGISTRO'
    end
    object SqlCdsCNAECNAE: TStringField
      FieldName = 'CNAE'
      Size = 511
    end
  end
  object dsCNAE: TDataSource
    DataSet = SqlCdsCNAE
    Left = 1102
    Top = 353
  end
  object ACBrCEP1: TACBrCEP
    ProxyPort = '8080'
    ParseText = True
    TimeOut = 10000
    WebService = wsViaCep
    PesquisarIBGE = True
    OnBuscaEfetuada = ACBrCEP1BuscaEfetuada
    Left = 123
    Top = 293
  end
  object ACBrCEPEntrega: TACBrCEP
    ProxyPort = '8080'
    ParseText = True
    TimeOut = 10000
    WebService = wsViaCep
    PesquisarIBGE = True
    OnBuscaEfetuada = ACBrCEPEntregaBuscaEfetuada
    Left = 195
    Top = 277
  end
  object ACBrCEPCobranca: TACBrCEP
    ProxyPort = '8080'
    ParseText = True
    TimeOut = 10000
    WebService = wsViaCep
    PesquisarIBGE = True
    OnBuscaEfetuada = ACBrCEPCobrancaBuscaEfetuada
    Left = 1467
    Top = 317
  end
  object SqlArquivo: TSQLDataSet
    CommandText = 'SELECT * FROM ARQUIVO ORDER BY ARQ_DESCRICAO'
    MaxBlobSize = 1
    Params = <>
    SQLConnection = DataCadastros.SQLConnection1
    Left = 915
    Top = 301
    object SqlArquivoARQ_REGISTRO: TIntegerField
      FieldName = 'ARQ_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object SqlArquivoARQ_TIPO: TStringField
      FieldName = 'ARQ_TIPO'
      Size = 10
    end
    object SqlArquivoARQ_TIPO_TABELA: TStringField
      FieldName = 'ARQ_TIPO_TABELA'
      Size = 3
    end
    object SqlArquivoARQ_REGISTRO_TABELA: TStringField
      FieldName = 'ARQ_REGISTRO_TABELA'
      Size = 10
    end
    object SqlArquivoARQ_ARQUIVO: TBlobField
      FieldName = 'ARQ_ARQUIVO'
      Size = 1
    end
    object SqlArquivoARQ_DESCRICAO: TStringField
      FieldName = 'ARQ_DESCRICAO'
      Size = 200
    end
    object SqlArquivoARQ_DATA: TDateField
      FieldName = 'ARQ_DATA'
    end
    object SqlArquivoARQ_NOME_ARQUIVO: TStringField
      FieldName = 'ARQ_NOME_ARQUIVO'
      Size = 200
    end
  end
  object DspArquivo: TDataSetProvider
    DataSet = SqlArquivo
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 963
    Top = 301
  end
  object CdsArquivo: TClientDataSet
    Aggregates = <>
    PacketRecords = 10
    Params = <>
    ProviderName = 'DspArquivo'
    Left = 836
    Top = 309
    object CdsArquivoARQ_REGISTRO: TIntegerField
      FieldName = 'ARQ_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CdsArquivoARQ_TIPO: TStringField
      FieldName = 'ARQ_TIPO'
      Size = 10
    end
    object CdsArquivoARQ_TIPO_TABELA: TStringField
      FieldName = 'ARQ_TIPO_TABELA'
      Size = 3
    end
    object CdsArquivoARQ_REGISTRO_TABELA: TStringField
      FieldName = 'ARQ_REGISTRO_TABELA'
      Size = 10
    end
    object CdsArquivoARQ_ARQUIVO: TBlobField
      FieldName = 'ARQ_ARQUIVO'
      Size = 1
    end
    object CdsArquivoARQ_DESCRICAO: TStringField
      FieldName = 'ARQ_DESCRICAO'
      Size = 200
    end
    object CdsArquivoARQ_DATA: TDateField
      FieldName = 'ARQ_DATA'
    end
    object CdsArquivoARQ_NOME_ARQUIVO: TStringField
      FieldName = 'ARQ_NOME_ARQUIVO'
      Size = 200
    end
  end
  object dsArquivo: TDataSource
    DataSet = CdsArquivo
    Left = 780
    Top = 293
  end
  object pmArquivo: TPopupMenu
    Left = 1276
    Top = 8
    object AbrirArquivo1: TMenuItem
      Caption = 'Abrir Arquivo'
      OnClick = AbrirArquivo1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object ExcluirArquivo1: TMenuItem
      Caption = 'Excluir Arquivo'
      OnClick = ExcluirArquivo1Click
    end
  end
  object qTabelas: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'select PRE_ID, PRE_DESCRICAO from precos0000 where EMP_CODIGO='#39'0' +
        '01'#39' and PRE_TIPO_TABELA < 2')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 1288
    Top = 272
  end
  object qItensTabela: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select a.*, b.prd_descri, prd_refer, b.PRD_PCUSTO'
      'From precos0001 a'
      '     join prd0000 b on b.prd_codigo=a.prd_codigo'
      'where a.pre_id=-1')
    Left = 1396
    Top = 447
    object qItensTabelaID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qItensTabelaPRE_ID: TIntegerField
      FieldName = 'PRE_ID'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object qItensTabelaPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 5
    end
    object qItensTabelaPRE_MARGEM: TFMTBCDField
      FieldName = 'PRE_MARGEM'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object qItensTabelaPRE_PRECO: TFMTBCDField
      FieldName = 'PRE_PRECO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object qItensTabelaPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      ProviderFlags = []
      Size = 100
    end
    object qItensTabelaPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      ProviderFlags = []
    end
    object qItensTabelaPRD_PCUSTO: TFMTBCDField
      FieldName = 'PRD_PCUSTO'
      ProviderFlags = []
      DisplayFormat = '##0.00'
      Precision = 15
      Size = 5
    end
    object qItensTabelaCODIGO_PRODUTO_CLIENTE: TStringField
      FieldName = 'CODIGO_PRODUTO_CLIENTE'
      ProviderFlags = [pfInUpdate]
      Size = 25
    end
    object qItensTabelaDESCRICAO_PRODUTO_CLIENTE: TStringField
      FieldName = 'DESCRICAO_PRODUTO_CLIENTE'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
  end
  object DspItensTabela: TDataSetProvider
    DataSet = qItensTabela
    Left = 1488
    Top = 447
  end
  object cdsItensTabela: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <>
    PacketRecords = 200
    Params = <>
    ProviderName = 'DspItensTabela'
    StoreDefs = True
    Left = 1575
    Top = 391
    object cdsItensTabelaID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsItensTabelaPRE_ID: TIntegerField
      FieldName = 'PRE_ID'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsItensTabelaPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 5
    end
    object cdsItensTabelaPRE_MARGEM: TFMTBCDField
      FieldName = 'PRE_MARGEM'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#0.00'
      Precision = 15
      Size = 2
    end
    object cdsItensTabelaPRE_PRECO: TFMTBCDField
      FieldName = 'PRE_PRECO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#0.0000'
      Precision = 15
      Size = 2
    end
    object cdsItensTabelaPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      ProviderFlags = []
      Size = 100
    end
    object cdsItensTabelaPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      ProviderFlags = []
    end
    object cdsItensTabelaPRD_PCUSTO: TFMTBCDField
      FieldName = 'PRD_PCUSTO'
      ProviderFlags = []
      DisplayFormat = '#0.0000'
      Precision = 15
      Size = 5
    end
    object cdsItensTabelaCODIGO_PRODUTO_CLIENTE: TStringField
      FieldName = 'CODIGO_PRODUTO_CLIENTE'
      ProviderFlags = [pfInUpdate]
      Size = 25
    end
    object cdsItensTabelaDESCRICAO_PRODUTO_CLIENTE: TStringField
      FieldName = 'DESCRICAO_PRODUTO_CLIENTE'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
  end
  object dsItensTabela: TDataSource
    DataSet = cdsItensTabela
    Left = 1565
    Top = 447
  end
  object sqlClienteEnder: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'Cod_Cliente'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT CODIGO,'
      '    COD_CLIENTE,'
      '    COD_CIDADE,'
      '    COD_PAIS,'
      '    DESCRICAO,'
      '    NUMERO,'
      '    COMPLEMENTO,'
      '    BAIRRO,'
      '    CXPOSTAL,'
      '    CEP,'
      '    ESTADO,'
      '    TIPO,'
      '    PADRAO,'
      '    CIDADE,'
      '    pais0000.pai_pais,'
      '    case'
      '         when tipo = '#39'0'#39' then '#39'Cobran'#231'a'#39
      '         when tipo = '#39'1'#39' then '#39'Entrega'#39
      '        when tipo = '#39'2'#39' then '#39'Retirada'#39
      '         end as DescTipo,'
      '    Fator, CNPJ, INSC_ESTADUAL, nome'
      'FROM ENDERECO'
      'left join pais0000 on'
      'pais0000.pai_codigo = endereco.cod_pais'
      ''
      'WHERE COD_CLIENTE = :COD_CLIENTE')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 1253
    Top = 373
    object sqlClienteEnderCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqlClienteEnderCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
    end
    object sqlClienteEnderCOD_CIDADE: TIntegerField
      FieldName = 'COD_CIDADE'
    end
    object sqlClienteEnderCOD_PAIS: TIntegerField
      FieldName = 'COD_PAIS'
    end
    object sqlClienteEnderDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 150
    end
    object sqlClienteEnderCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 10
    end
    object sqlClienteEnderBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object sqlClienteEnderCXPOSTAL: TStringField
      FieldName = 'CXPOSTAL'
      Size = 6
    end
    object sqlClienteEnderCEP: TStringField
      FieldName = 'CEP'
      Size = 8
    end
    object sqlClienteEnderTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object sqlClienteEnderPADRAO: TStringField
      FieldName = 'PADRAO'
      Size = 1
    end
    object sqlClienteEnderESTADO: TStringField
      FieldName = 'ESTADO'
      Size = 2
    end
    object sqlClienteEnderDESCTIPO: TStringField
      FieldName = 'DESCTIPO'
      FixedChar = True
      Size = 8
    end
    object sqlClienteEnderPAI_PAIS: TStringField
      FieldName = 'PAI_PAIS'
      Size = 255
    end
    object sqlClienteEnderNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 12
    end
    object sqlClienteEnderCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object sqlClienteEnderFATOR: TSingleField
      FieldName = 'FATOR'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object sqlClienteEnderINSC_ESTADUAL: TStringField
      FieldName = 'INSC_ESTADUAL'
      ProviderFlags = [pfInUpdate]
      Size = 18
    end
    object sqlClienteEnderCNPJ: TStringField
      FieldName = 'CNPJ'
      ProviderFlags = [pfInUpdate]
      Size = 18
    end
    object sqlClienteEnderNOME: TStringField
      FieldName = 'NOME'
      Size = 70
    end
  end
  object dspClienteEnder: TDataSetProvider
    DataSet = sqlClienteEnder
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 1077
    Top = 485
  end
  object cdsClienteEnder: TClientDataSet
    Aggregates = <>
    PacketRecords = 5
    Params = <
      item
        DataType = ftString
        Name = 'Cod_Cliente'
        ParamType = ptInput
      end>
    ProviderName = 'dspClienteEnder'
    AfterClose = CdsAvisosAfterDelete
    BeforeInsert = cdsClienteEnderBeforeInsert
    BeforeEdit = cdsClienteEnderBeforeEdit
    BeforePost = cdsClienteEnderBeforePost
    AfterPost = cdsClienteEnderAfterPost
    AfterCancel = cdsClienteEnderAfterCancel
    AfterDelete = cdsClienteEnderAfterDelete
    OnNewRecord = cdsClienteEnderNewRecord
    OnPostError = cdsClienteEnderPostError
    Left = 1181
    Top = 493
    object cdsClienteEnderCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsClienteEnderCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
    end
    object cdsClienteEnderCOD_CIDADE: TIntegerField
      FieldName = 'COD_CIDADE'
    end
    object cdsClienteEnderCOD_PAIS: TIntegerField
      FieldName = 'COD_PAIS'
    end
    object cdsClienteEnderDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 150
    end
    object cdsClienteEnderCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 10
    end
    object cdsClienteEnderBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object cdsClienteEnderCXPOSTAL: TStringField
      FieldName = 'CXPOSTAL'
      Size = 6
    end
    object cdsClienteEnderCEP: TStringField
      FieldName = 'CEP'
      EditMask = '99999\-999;0;_'
      Size = 8
    end
    object cdsClienteEnderTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object cdsClienteEnderPADRAO: TStringField
      FieldName = 'PADRAO'
      Size = 1
    end
    object cdsClienteEnderESTADO: TStringField
      FieldName = 'ESTADO'
      Size = 2
    end
    object cdsClienteEnderDESCTIPO: TStringField
      FieldName = 'DESCTIPO'
      FixedChar = True
      Size = 8
    end
    object cdsClienteEnderPAI_PAIS: TStringField
      FieldName = 'PAI_PAIS'
      Size = 255
    end
    object cdsClienteEnderNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 12
    end
    object cdsClienteEnderCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object cdsClienteEnderFATOR: TSingleField
      FieldName = 'FATOR'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object cdsClienteEnderCNPJ: TStringField
      FieldName = 'CNPJ'
      ProviderFlags = [pfInUpdate]
      Size = 18
    end
    object cdsClienteEnderINSC_ESTADUAL: TStringField
      FieldName = 'INSC_ESTADUAL'
      ProviderFlags = [pfInUpdate]
      Size = 18
    end
    object cdsClienteEnderNOME: TStringField
      FieldName = 'NOME'
      Size = 70
    end
  end
  object dsClienteEnder: TDataSource
    AutoEdit = False
    DataSet = cdsClienteEnder
    Left = 1293
    Top = 445
  end
  object cdsEnderPadrao: TClientDataSet
    Aggregates = <>
    PacketRecords = 5
    Params = <
      item
        DataType = ftString
        Name = 'Cod_Cliente'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'tipo'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspEnderPadrao'
    AfterClose = CdsAvisosAfterDelete
    BeforeInsert = cdsClienteEnderBeforeInsert
    BeforeEdit = cdsClienteEnderBeforeEdit
    BeforePost = cdsClienteEnderBeforePost
    AfterPost = cdsClienteEnderAfterPost
    AfterCancel = cdsClienteEnderAfterCancel
    AfterDelete = cdsClienteEnderAfterDelete
    OnNewRecord = cdsClienteEnderNewRecord
    Left = 1213
    Top = 437
    object cdsEnderPadraoTOTAL: TIntegerField
      FieldName = 'TOTAL'
    end
  end
  object sqlEnderPadrao: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Cod_Cliente'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'tipo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT COUNT(CAST(codigo AS INTEGER)) AS TOTAL'
      'FROM endereco'
      'WHERE cod_cliente = :cod_cliente'
      'AND padrao = '#39'1'#39
      'and tipo = :tipo')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 1437
    Top = 509
  end
  object dspEnderPadrao: TDataSetProvider
    DataSet = sqlEnderPadrao
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 1381
    Top = 389
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = sqlEnderPadrao
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 1349
    Top = 333
  end
  object DataSetProvider2: TDataSetProvider
    DataSet = sqlEnderPadrao
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 1485
    Top = 381
  end
  object ACBrSuframa1: TACBrSuframa
    ProxyPort = '8080'
    ParseText = True
    Left = 344
    Top = 96
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
    Left = 1644
    Top = 196
  end
  object JvPopupMenu1: TJvPopupMenu
    ImageMargin.Left = 0
    ImageMargin.Top = 0
    ImageMargin.Right = 0
    ImageMargin.Bottom = 0
    ImageSize.Height = 0
    ImageSize.Width = 0
    Left = 388
    Top = 533
    object miImportarExcel: TMenuItem
      Caption = 'Importar Excel'
      OnClick = miImportarExcelClick
    end
    object miLeaiute: TMenuItem
      Caption = 'Leaiute Importa'#231#227'o'
      OnClick = miLeaiuteClick
    end
    object ExportarparaC91: TMenuItem
      Caption = 'Exportar para o C9'
      OnClick = ExportarparaC91Click
    end
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
    Left = 1644
    Top = 316
  end
  object qArquivoBlob: TSQLDataSet
    CommandText = 'SELECT * FROM ARQUIVO ORDER BY ARQ_DESCRICAO'
    MaxBlobSize = 1
    Params = <>
    SQLConnection = DataCadastros.SQLConnection1
    Left = 907
    Top = 245
    object qArquivoBlobARQ_REGISTRO: TIntegerField
      FieldName = 'ARQ_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qArquivoBlobARQ_TIPO: TStringField
      FieldName = 'ARQ_TIPO'
      Size = 10
    end
    object qArquivoBlobARQ_TIPO_TABELA: TStringField
      FieldName = 'ARQ_TIPO_TABELA'
      Size = 3
    end
    object qArquivoBlobARQ_REGISTRO_TABELA: TStringField
      FieldName = 'ARQ_REGISTRO_TABELA'
      Size = 10
    end
    object qArquivoBlobARQ_ARQUIVO: TBlobField
      FieldName = 'ARQ_ARQUIVO'
      Size = 1
    end
    object qArquivoBlobARQ_DESCRICAO: TStringField
      FieldName = 'ARQ_DESCRICAO'
      Size = 200
    end
    object qArquivoBlobARQ_DATA: TDateField
      FieldName = 'ARQ_DATA'
    end
    object qArquivoBlobARQ_NOME_ARQUIVO: TStringField
      FieldName = 'ARQ_NOME_ARQUIVO'
      Size = 200
    end
  end
  object qOrigem: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      '')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 490
    Top = 65533
  end
  object qOperFisc: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from ope0000 where ope_codigo='#39'-99'#39)
    SQLConnection = DBConn
    Left = 537
    Top = 261
    object qOperFiscEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object qOperFiscOPE_CODIGO: TStringField
      FieldName = 'OPE_CODIGO'
      Required = True
      Size = 3
    end
    object qOperFiscOPE_NATUREZA: TStringField
      FieldName = 'OPE_NATUREZA'
      Size = 4
    end
    object qOperFiscOPE_NATUREZA_ENTRADA: TStringField
      FieldName = 'OPE_NATUREZA_ENTRADA'
      Size = 4
    end
    object qOperFiscOPE_TIPO: TStringField
      FieldName = 'OPE_TIPO'
      Size = 1
    end
    object qOperFiscOPE_ESCRITA: TStringField
      FieldName = 'OPE_ESCRITA'
      Size = 1
    end
    object qOperFiscOPE_DENTRO: TStringField
      FieldName = 'OPE_DENTRO'
      Size = 1
    end
    object qOperFiscOPE_DESCRI: TStringField
      FieldName = 'OPE_DESCRI'
      Size = 55
    end
    object qOperFiscOPE_TRIBICMS: TStringField
      FieldName = 'OPE_TRIBICMS'
      Size = 1
    end
    object qOperFiscOPE_TRIBIPI: TStringField
      FieldName = 'OPE_TRIBIPI'
      Size = 1
    end
    object qOperFiscOPE_REDU_ICM: TFMTBCDField
      FieldName = 'OPE_REDU_ICM'
      Precision = 18
      Size = 5
    end
    object qOperFiscOPE_REDU_IPI: TFMTBCDField
      FieldName = 'OPE_REDU_IPI'
      Precision = 18
      Size = 5
    end
    object qOperFiscOPE_IPINABASEICMS: TStringField
      FieldName = 'OPE_IPINABASEICMS'
      Size = 1
    end
    object qOperFiscOPE_FRETENABASE: TStringField
      FieldName = 'OPE_FRETENABASE'
      Size = 1
    end
    object qOperFiscOPE_SEMVLCOM: TStringField
      FieldName = 'OPE_SEMVLCOM'
      Size = 1
    end
    object qOperFiscOPE_IMP_AVISO: TStringField
      FieldName = 'OPE_IMP_AVISO'
      Size = 1
    end
    object qOperFiscOPE_AVISOLEGAL: TStringField
      FieldName = 'OPE_AVISOLEGAL'
      Size = 1000
    end
    object qOperFiscOPE_AVISOLEGAL2: TStringField
      FieldName = 'OPE_AVISOLEGAL2'
      Size = 1000
    end
    object qOperFiscOPE_AGRUPADO: TStringField
      FieldName = 'OPE_AGRUPADO'
      Size = 4
    end
    object qOperFiscOPE_SUBTRIBUTARIA: TStringField
      FieldName = 'OPE_SUBTRIBUTARIA'
      Size = 1
    end
    object qOperFiscOPE_ESTOQUE: TStringField
      FieldName = 'OPE_ESTOQUE'
      Size = 1
    end
    object qOperFiscCCT_CODIGO: TStringField
      FieldName = 'CCT_CODIGO'
      Size = 3
    end
    object qOperFiscOPV_CODIGO: TIntegerField
      FieldName = 'OPV_CODIGO'
    end
    object qOperFiscOPE_SERVICO: TStringField
      FieldName = 'OPE_SERVICO'
      Size = 1
    end
    object qOperFiscOPE_PIS: TFMTBCDField
      FieldName = 'OPE_PIS'
      Precision = 18
      Size = 5
    end
    object qOperFiscOPE_COFINS: TFMTBCDField
      FieldName = 'OPE_COFINS'
      Precision = 18
      Size = 5
    end
    object qOperFiscOPE_CONTRISOCIAL: TFMTBCDField
      FieldName = 'OPE_CONTRISOCIAL'
      Precision = 18
      Size = 5
    end
    object qOperFiscOPE_DESCRINATUREZA: TStringField
      FieldName = 'OPE_DESCRINATUREZA'
      Size = 25
    end
    object qOperFiscOPE_INDICE_IMP: TFMTBCDField
      FieldName = 'OPE_INDICE_IMP'
      Precision = 18
      Size = 5
    end
    object qOperFiscOPE_NOTA_COMPLEMENTAR: TStringField
      FieldName = 'OPE_NOTA_COMPLEMENTAR'
      Size = 1
    end
    object qOperFiscOPE_FRETEBASEIPI: TStringField
      FieldName = 'OPE_FRETEBASEIPI'
      Size = 1
    end
    object qOperFiscOPE_DESPIMPORIPI: TStringField
      FieldName = 'OPE_DESPIMPORIPI'
      Size = 1
    end
    object qOperFiscOPE_AUMEN_ICMS: TFMTBCDField
      FieldName = 'OPE_AUMEN_ICMS'
      Precision = 18
      Size = 5
    end
    object qOperFiscOPE_ICMS_TOTALNOTA: TStringField
      FieldName = 'OPE_ICMS_TOTALNOTA'
      Size = 1
    end
    object qOperFiscOPE_SEMVLCOM_MOSTRAF: TStringField
      FieldName = 'OPE_SEMVLCOM_MOSTRAF'
      Size = 1
    end
    object qOperFiscOPE_TRIBPISCOFINS: TStringField
      FieldName = 'OPE_TRIBPISCOFINS'
      Size = 1
    end
    object qOperFiscOPE_TEMCREDITO: TStringField
      FieldName = 'OPE_TEMCREDITO'
      Size = 1
    end
    object qOperFiscOPE_ATIVA: TStringField
      FieldName = 'OPE_ATIVA'
      Size = 1
    end
    object qOperFiscOPE_IPI_TOTALNOTA: TStringField
      FieldName = 'OPE_IPI_TOTALNOTA'
      Size = 1
    end
    object qOperFiscOPE_TIPO_OPERACAO: TStringField
      FieldName = 'OPE_TIPO_OPERACAO'
      Size = 1
    end
    object qOperFiscOPE_ATUALIZA_CUSTO: TStringField
      FieldName = 'OPE_ATUALIZA_CUSTO'
      Size = 1
    end
    object qOperFiscOPE_INDUSTRIALIZACAO: TStringField
      FieldName = 'OPE_INDUSTRIALIZACAO'
      Size = 1
    end
    object qOperFiscEMP_CSOSN: TIntegerField
      FieldName = 'EMP_CSOSN'
    end
    object qOperFiscEMP_CSOSN_ST: TIntegerField
      FieldName = 'EMP_CSOSN_ST'
    end
    object qOperFiscope_temretencao: TStringField
      FieldName = 'ope_temretencao'
      Size = 1
    end
    object qOperFiscOPE_CST_IPI: TStringField
      FieldName = 'OPE_CST_IPI'
      Size = 2
    end
    object qOperFiscOPE_CST_PISCOFINS: TStringField
      FieldName = 'OPE_CST_PISCOFINS'
      Size = 2
    end
  end
  object DsRecebimentos: TDataSource
    DataSet = CDSRecebimentos
    Left = 352
    Top = 413
  end
  object CDSRecebimentos: TClientDataSet
    Aggregates = <>
    PacketRecords = 10
    Params = <>
    ProviderName = 'dspRecebimentos'
    Left = 257
    Top = 413
    object CDSRecebimentosFRE_DATA_RECEBIMENTO: TDateField
      FieldName = 'FRE_DATA_RECEBIMENTO'
    end
    object CDSRecebimentosFRE_VALOR: TFMTBCDField
      FieldName = 'FRE_VALOR'
      DisplayFormat = '###,###,##0.00'
      Precision = 15
      Size = 4
    end
    object CDSRecebimentosFRE_DESCONTO: TFMTBCDField
      FieldName = 'FRE_DESCONTO'
      DisplayFormat = '###,###,##0.00'
      Precision = 15
      Size = 4
    end
    object CDSRecebimentosFRE_JUROS: TFMTBCDField
      FieldName = 'FRE_JUROS'
      DisplayFormat = '###,###,##0.00'
      Precision = 15
      Size = 4
    end
    object CDSRecebimentosFRE_MULTA: TFMTBCDField
      FieldName = 'FRE_MULTA'
      DisplayFormat = '###,###,##0.00'
      Precision = 15
      Size = 4
    end
    object CDSRecebimentosFRE_RECEBIDO: TFMTBCDField
      FieldName = 'FRE_RECEBIDO'
      DisplayFormat = '###,###,##0.00'
      Precision = 15
      Size = 4
    end
    object CDSRecebimentosBAN_CODIGO: TStringField
      FieldName = 'BAN_CODIGO'
      Size = 4
    end
    object CDSRecebimentosBAN_RAZAO: TStringField
      FieldName = 'BAN_RAZAO'
      Size = 45
    end
    object CDSRecebimentosFPG_REGISTRO: TIntegerField
      FieldName = 'FPG_REGISTRO'
    end
    object CDSRecebimentosFPG_DESCRICAO: TStringField
      FieldName = 'FPG_DESCRICAO'
      Size = 100
    end
    object CDSRecebimentosUSU_CODIGO: TIntegerField
      FieldName = 'USU_CODIGO'
    end
    object CDSRecebimentosUSU_NOME: TStringField
      FieldName = 'USU_NOME'
      Size = 40
    end
    object CDSRecebimentosFRE_REGISTRO: TIntegerField
      FieldName = 'FRE_REGISTRO'
      Required = True
    end
  end
  object dspRecebimentos: TDataSetProvider
    DataSet = qRecebimentos
    Left = 164
    Top = 410
  end
  object qRecebimentos: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT'
      '    t1.FRE_REGISTRO,'
      '    T1.FRE_DATA_RECEBIMENTO,'
      '    T1.FRE_VALOR,'
      '    T1.FRE_DESCONTO,'
      '    T1.FRE_JUROS,'
      '    T1.FRE_MULTA,'
      '    T1.FRE_RECEBIDO,'
      '    T1.BAN_CODIGO,'
      '    T2.BAN_RAZAO,'
      '    T1.FPG_REGISTRO,'
      '    T3.FPG_DESCRICAO,'
      '    T1.USU_CODIGO,'
      '   t4.USU_NOME'
      'FROM'
      'FAT_RECEBIMENTO T1'
      'JOIN BAN0000 T2 ON (T2.BAN_CODIGO = T1.BAN_CODIGO)'
      'JOIN FORMA_PAGAMENTO T3 ON (T3.FPG_REGISTRO = T1.FPG_REGISTRO)'
      'JOIN USUARIO T4 ON (T4.USU_CODIGO = T1.USU_CODIGO)'
      'WHERE T1.FAT_REGISTRO = 0')
    SQLConnection = DBInicio.MainDB
    Left = 60
    Top = 434
    object qRecebimentosFRE_DATA_RECEBIMENTO: TDateField
      FieldName = 'FRE_DATA_RECEBIMENTO'
    end
    object qRecebimentosFRE_VALOR: TFMTBCDField
      FieldName = 'FRE_VALOR'
      DisplayFormat = '###,###,##0.00'
      Precision = 15
      Size = 4
    end
    object qRecebimentosFRE_DESCONTO: TFMTBCDField
      FieldName = 'FRE_DESCONTO'
      DisplayFormat = '###,###,##0.00'
      Precision = 15
      Size = 4
    end
    object qRecebimentosFRE_JUROS: TFMTBCDField
      FieldName = 'FRE_JUROS'
      DisplayFormat = '###,###,##0.00'
      Precision = 15
      Size = 4
    end
    object qRecebimentosFRE_MULTA: TFMTBCDField
      FieldName = 'FRE_MULTA'
      DisplayFormat = '###,###,##0.00'
      Precision = 15
      Size = 4
    end
    object qRecebimentosFRE_RECEBIDO: TFMTBCDField
      FieldName = 'FRE_RECEBIDO'
      DisplayFormat = '###,###,##0.00'
      Precision = 15
      Size = 4
    end
    object qRecebimentosBAN_CODIGO: TStringField
      FieldName = 'BAN_CODIGO'
      Size = 4
    end
    object qRecebimentosBAN_RAZAO: TStringField
      FieldName = 'BAN_RAZAO'
      Size = 45
    end
    object qRecebimentosFPG_REGISTRO: TIntegerField
      FieldName = 'FPG_REGISTRO'
    end
    object qRecebimentosFPG_DESCRICAO: TStringField
      FieldName = 'FPG_DESCRICAO'
      Size = 100
    end
    object qRecebimentosUSU_CODIGO: TIntegerField
      FieldName = 'USU_CODIGO'
    end
    object qRecebimentosUSU_NOME: TStringField
      FieldName = 'USU_NOME'
      Size = 40
    end
    object qRecebimentosFRE_REGISTRO: TIntegerField
      FieldName = 'FRE_REGISTRO'
      Required = True
    end
  end
  object dsExportaExcel: TDataSource
    DataSet = cdsClientes
    Left = 456
    Top = 524
  end
  object qClientes: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      ' SELECT'
      #9'CLI_CODIGO,'
      #9'CLI_CGC,'
      #9'CLI_RAZAO,'
      #9#39'C'#39' AS CLI_TIPO,'
      #9'CASE'
      #9#9'WHEN CLI_FANTASIA = '#39#39' THEN CLI_RAZAO'
      #9#9'WHEN CLI_FANTASIA IS NULL THEN CLI_RAZAO'
      #9#9'ELSE CLI_FANTASIA'
      #9'END AS CLI_FANTASIA,'
      #9'REPLACE(REPLACE (CLI_INSC, '#39'-'#39', '#39#39'), '#39'.'#39', '#39#39') AS CLI_INSC,'
      #9'CLI_CONTATO,'
      
        #9#39'('#39'||SUBSTRING (CLI_FONE FROM 1 FOR 2)||'#39')'#39'||SUBSTRING (CLI_FON' +
        'E FROM 3 FOR 255) AS CLI_FONE,'
      
        #9#39'('#39'||SUBSTRING (CLI_CELULAR FROM 1 FOR 2)||'#39')'#39'||SUBSTRING (CLI_' +
        'CELULAR FROM 3 FOR 255)  CLI_CELULAR,'
      #9'CASE'
      
        #9#9'WHEN position ('#39';'#39' in CLI_EMAIL_ALTERNATIVO) = 0 THEN CLI_EMAI' +
        'L_ALTERNATIVO '
      #9#9'ELSE '
      #9#9'CASE'
      
        #9#9#9'WHEN position ('#39';'#39' in CLI_EMAIL_ALTERNATIVO) > 0 THEN SUBSTRI' +
        'NG (CLI_EMAIL_ALTERNATIVO FROM 1 FOR POSITION('#39';'#39' in CLI_EMAIL_A' +
        'LTERNATIVO) -1)'
      #9#9'END'
      #9'END AS CLI_EMAIL_ALTERNATIVO,'
      #9'CASE'
      #9#9'WHEN position ('#39';'#39' in CLI_EMAIL) = 0 THEN CLI_EMAIL '
      #9#9'ELSE '
      #9#9'CASE'
      
        #9#9#9'WHEN position ('#39';'#39' in CLI_EMAIl) > 0 THEN SUBSTRING (CLI_EMAI' +
        'L FROM 1 FOR POSITION('#39';'#39' in CLI_EMAIL) -1)'
      #9#9'END'
      #9'END AS CLI_EMAIL, '#9
      #9'CLI_CEP,'
      #9'CASE'
      #9#9'WHEN CLI_CIDADE = '#39#39' THEN '#39'n'#227'o informado'#39
      #9#9'WHEN CLI_CIDADE IS NULL THEN '#39'n'#227'o informado'#39
      #9#9'ELSE CLI_CIDADE'
      #9'END AS CLI_CIDADE,'
      #9'CASE'
      #9#9'WHEN CLI_UF = '#39#39' THEN '#39'n'#227'o informado'#39
      #9#9'WHEN CLI_UF IS NULL THEN '#39'n'#227'o informado'#39
      #9#9'ELSE CLI_UF'
      #9'END AS CLI_UF,'
      #9'CASE'
      #9#9'WHEN CLI_ENDERE = '#39#39' THEN '#39'n'#227'o informado'#39
      #9#9'WHEN CLI_ENDERE IS NULL THEN '#39'n'#227'o informado'#39
      #9#9'WHEN position ('#39','#39' in CLI_ENDERE) = 0 THEN CLI_ENDERE '
      #9#9'ELSE '
      #9#9'CASE'
      
        #9#9#9'WHEN position ('#39','#39' in CLI_ENDERE) > 0 THEN SUBSTRING (CLI_END' +
        'ERE FROM 1 FOR POSITION('#39','#39' in CLI_ENDERE) -1)'
      #9#9'END'
      #9'END AS CLI_ENDERE,'
      #9'CASE'
      
        #9#9'WHEN POSITION('#39','#39' IN CLI_ENDERE) > 0 THEN SUBSTRING (CLI_ENDER' +
        'E FROM POSITION('#39','#39' IN CLI_ENDERE) + 1 FOR 255)'
      #9#9'ELSE '#39'S/N'#39
      #9'END AS CLI_NUMERO,'#9
      #9'CASE'
      #9#9'WHEN CLI_BAIRRO = '#39#39' THEN '#39'n'#227'o informado'#39
      #9#9'WHEN CLI_BAIRRO IS NULL THEN '#39'n'#227'o informado'#39
      #9#9'ELSE CLI_BAIRRO'
      #9'END AS CLI_BAIRRO,'
      #9'REP_RAZAO,'
      #9'PCX_DESCRI,'
      #9'BAN_APELIDO, BAN_CONTA, BAN_DIGCONTA, C.EMP_CODIGO,'
      #9'CLI_UND_CONSUMIDORA'
      'FROM'
      #9'CLI0000 c'
      'LEFT JOIN REP0000 r ON'
      #9'(r.REP_CODIGO = c.REP_CODIGO)'
      'LEFT JOIN PCX0000 p ON'
      #9'(p.PCX_CODIGO = c.PCX_CODIGO)'
      'LEFT JOIN BAN0000 b ON'
      #9'(b.BAN_CODIGO = C.BAN_CODIGO)'
      'ORDER BY'
      #9'CLI_RAZAO')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 458
    Top = 380
    object qClientesCLI_CODIGO: TStringField
      DisplayLabel = 'Codnome'
      FieldName = 'CLI_CODIGO'
      Required = True
      Size = 5
    end
    object qClientesCLI_CGC: TStringField
      DisplayLabel = 'CNPJ/CPF'
      FieldName = 'CLI_CGC'
      Size = 14
    end
    object qClientesCLI_RAZAO: TStringField
      DisplayLabel = 'RAZAO/NOME'
      FieldName = 'CLI_RAZAO'
      Size = 70
    end
    object qClientesCLI_TIPO: TStringField
      DisplayLabel = 'TIPO (C, F, T)'
      DisplayWidth = 3
      FieldName = 'CLI_TIPO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qClientesCLI_FANTASIA: TStringField
      DisplayLabel = 'FANTASIA'
      FieldName = 'CLI_FANTASIA'
      Size = 70
    end
    object qClientesCLI_INSC: TStringField
      DisplayLabel = 'INSC. ESTAD.'
      FieldName = 'CLI_INSC'
      Size = 18
    end
    object qClientesCLI_CONTATO: TStringField
      DisplayLabel = 'CONTATO'
      FieldName = 'CLI_CONTATO'
      Size = 25
    end
    object qClientesCLI_FONE: TStringField
      DisplayLabel = 'FONE'
      FieldName = 'CLI_FONE'
      Size = 11
    end
    object qClientesCLI_CELULAR: TStringField
      DisplayLabel = 'CELULAR'
      FieldName = 'CLI_CELULAR'
      Size = 11
    end
    object qClientesCLI_EMAIL_ALTERNATIVO: TStringField
      DisplayLabel = 'EMAIL'
      FieldName = 'CLI_EMAIL_ALTERNATIVO'
      Size = 150
    end
    object qClientesCLI_EMAIL: TStringField
      DisplayLabel = 'EMAIL NFE'
      FieldName = 'CLI_EMAIL'
      Size = 150
    end
    object qClientesCLI_CEP: TStringField
      DisplayLabel = 'CEP'
      FieldName = 'CLI_CEP'
      Size = 8
    end
    object qClientesCLI_CIDADE: TStringField
      DisplayLabel = 'CIDADE'
      FieldName = 'CLI_CIDADE'
      Size = 30
    end
    object qClientesCLI_UF: TStringField
      DisplayLabel = 'UF'
      FieldName = 'CLI_UF'
      Size = 13
    end
    object qClientesCLI_ENDERE: TStringField
      DisplayLabel = 'ENDERE'#199'O'
      FieldName = 'CLI_ENDERE'
      Size = 60
    end
    object qClientesCLI_NUMERO: TStringField
      DisplayLabel = 'N'#218'MERO'
      FieldName = 'CLI_NUMERO'
      Required = True
      FixedChar = True
      Size = 21
    end
    object qClientesCLI_BAIRRO: TStringField
      DisplayLabel = 'BAIRRO'
      FieldName = 'CLI_BAIRRO'
      Size = 25
    end
    object qClientesREP_RAZAO: TStringField
      DisplayLabel = 'VENDEDOR'
      FieldName = 'REP_RAZAO'
      Size = 40
    end
    object qClientesPCX_DESCRI: TStringField
      DisplayLabel = 'CENTRO DE CUSTO'
      FieldName = 'PCX_DESCRI'
      Size = 25
    end
    object qClientesBAN_APELIDO: TStringField
      DisplayLabel = 'BANCO'
      FieldName = 'BAN_APELIDO'
      Size = 25
    end
    object qClientesCLI_UND_CONSUMIDORA: TIntegerField
      DisplayLabel = 'UNIDADE CONSUMIDORA'
      FieldName = 'CLI_UND_CONSUMIDORA'
    end
    object qClientesEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object qClientesBAN_CONTA: TStringField
      FieldName = 'BAN_CONTA'
      Size = 10
    end
    object qClientesBAN_DIGCONTA: TStringField
      FieldName = 'BAN_DIGCONTA'
      Size = 1
    end
  end
  object dspClientes: TDataSetProvider
    DataSet = qClientes
    Left = 456
    Top = 428
  end
  object cdsClientes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspClientes'
    Left = 456
    Top = 476
    object cdsClientesCLI_CODIGO: TStringField
      DisplayLabel = 'Codnome'
      FieldName = 'CLI_CODIGO'
      Required = True
      Size = 5
    end
    object cdsClientesCLI_CGC: TStringField
      DisplayLabel = 'CNPJ/CPF'
      FieldName = 'CLI_CGC'
      Size = 14
    end
    object cdsClientesCLI_RAZAO: TStringField
      DisplayLabel = 'RAZAO/NOME'
      FieldName = 'CLI_RAZAO'
      Size = 70
    end
    object cdsClientesCLI_TIPO: TStringField
      DisplayLabel = 'TIPO (C, F, T)'
      DisplayWidth = 3
      FieldName = 'CLI_TIPO'
      Required = True
      FixedChar = True
      Size = 3
    end
    object cdsClientesCLI_FANTASIA: TStringField
      DisplayLabel = 'FANTASIA'
      FieldName = 'CLI_FANTASIA'
      Size = 70
    end
    object cdsClientesCLI_INSC: TStringField
      DisplayLabel = 'INSC. ESTAD.'
      FieldName = 'CLI_INSC'
      Size = 18
    end
    object cdsClientesCLI_CONTATO: TStringField
      DisplayLabel = 'CONTATO'
      FieldName = 'CLI_CONTATO'
      Size = 25
    end
    object cdsClientesCLI_FONE: TStringField
      DisplayLabel = 'FONE'
      FieldName = 'CLI_FONE'
      Size = 11
    end
    object cdsClientesCLI_CELULAR: TStringField
      DisplayLabel = 'CELULAR'
      FieldName = 'CLI_CELULAR'
      Size = 11
    end
    object cdsClientesCLI_EMAIL_ALTERNATIVO: TStringField
      DisplayLabel = 'EMAIL'
      FieldName = 'CLI_EMAIL_ALTERNATIVO'
      Size = 150
    end
    object cdsClientesCLI_EMAIL: TStringField
      DisplayLabel = 'EMAIL NFE'
      FieldName = 'CLI_EMAIL'
      Size = 150
    end
    object cdsClientesCLI_CEP: TStringField
      DisplayLabel = 'CEP'
      FieldName = 'CLI_CEP'
      Size = 8
    end
    object cdsClientesCLI_CIDADE: TStringField
      DisplayLabel = 'CIDADE'
      FieldName = 'CLI_CIDADE'
      Size = 30
    end
    object cdsClientesCLI_UF: TStringField
      DisplayLabel = 'UF'
      FieldName = 'CLI_UF'
      Size = 13
    end
    object cdsClientesCLI_ENDERE: TStringField
      DisplayLabel = 'ENDERE'#199'O'
      FieldName = 'CLI_ENDERE'
      Size = 60
    end
    object cdsClientesCLI_NUMERO: TStringField
      DisplayLabel = 'N'#218'MERO'
      FieldName = 'CLI_NUMERO'
      Required = True
      FixedChar = True
      Size = 21
    end
    object cdsClientesCLI_BAIRRO: TStringField
      DisplayLabel = 'BAIRRO'
      FieldName = 'CLI_BAIRRO'
      Size = 25
    end
    object cdsClientesREP_RAZAO: TStringField
      DisplayLabel = 'VENDEDOR'
      FieldName = 'REP_RAZAO'
      Size = 40
    end
    object cdsClientesPCX_DESCRI: TStringField
      DisplayLabel = 'CENTRO DE CUSTO'
      FieldName = 'PCX_DESCRI'
      Size = 25
    end
    object cdsClientesBAN_APELIDO: TStringField
      DisplayLabel = 'BANCO'
      FieldName = 'BAN_APELIDO'
      Size = 25
    end
    object cdsClientesCLI_UND_CONSUMIDORA: TIntegerField
      DisplayLabel = 'UNIDADE CONSUMIDORA'
      FieldName = 'CLI_UND_CONSUMIDORA'
    end
    object cdsClientesEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object cdsClientesBAN_CONTA: TStringField
      DisplayLabel = 'CONTA BANCARIA'
      FieldName = 'BAN_CONTA'
      Size = 10
    end
    object cdsClientesBAN_DIGCONTA: TStringField
      FieldName = 'BAN_DIGCONTA'
      Size = 1
    end
  end
  object qContafinanceira: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DBConn
    Left = 944
    Top = 436
  end
end
