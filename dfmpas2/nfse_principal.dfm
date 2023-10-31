inherited frmNfse: TfrmNfse
  Caption = 'Nota Fiscal Servi'#231'o Curitiba'
  ClientHeight = 597
  ClientWidth = 1302
  ExplicitWidth = 1318
  ExplicitHeight = 636
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter [0]
    Left = 143
    Top = 0
    Width = 6
    Height = 597
    ExplicitLeft = 161
  end
  object catgroup: TCategoryPanelGroup [1]
    Left = 0
    Top = 0
    Width = 143
    Height = 597
    VertScrollBar.Tracking = True
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -11
    HeaderFont.Name = 'Tahoma'
    HeaderFont.Style = []
    TabOrder = 0
    object CategoryPanel2: TCategoryPanel
      Top = 217
      Height = 373
      Caption = 'Outras op'#231#245'es'
      TabOrder = 0
      object btnImprimir: TButton
        Left = 3
        Top = 3
        Width = 132
        Height = 25
        Caption = 'Imprimir DANFSe'
        TabOrder = 0
        OnClick = btnImprimirClick
      end
      object Button4: TButton
        Left = 3
        Top = 258
        Width = 132
        Height = 25
        Caption = 'Consultar NFSe Per'#237'odo'
        TabOrder = 1
        Visible = False
      end
      object btnCancelar: TButton
        Left = 3
        Top = 31
        Width = 132
        Height = 25
        Caption = 'Cancelar NFSe'
        TabOrder = 2
        OnClick = btnCancelarClick
      end
      object btnEnviaremail: TButton
        Left = 4
        Top = 59
        Width = 131
        Height = 25
        Caption = 'Enviar e-mail'
        TabOrder = 3
        OnClick = btnEnviaremailClick
      end
      object btnDetalhes: TBitBtn
        Left = 4
        Top = 116
        Width = 131
        Height = 25
        Caption = 'Ver detalhes'
        TabOrder = 4
        OnClick = btnDetalhesClick
      end
      object btnEstorno: TBitBtn
        Left = 4
        Top = 88
        Width = 131
        Height = 25
        Caption = 'Estorno'
        TabOrder = 5
        OnClick = btnEstornoClick
      end
      object btnConsultarTodos: TButton
        Left = 5
        Top = 320
        Width = 130
        Height = 27
        Caption = 'Consultar pend'#234'ncias'
        TabOrder = 6
        Visible = False
        WordWrap = True
        OnClick = btnConsultarTodosClick
      end
      object btnDescarrCertificado: TBitBtn
        Left = 4
        Top = 144
        Width = 131
        Height = 25
        Caption = 'Descarregar certificado'
        TabOrder = 7
        OnClick = btnDescarrCertificadoClick
      end
      object btnSair: TBitBtn
        Left = 4
        Top = 171
        Width = 131
        Height = 25
        Caption = 'Sair'
        TabOrder = 8
        OnClick = btnSairClick
      end
      object btnCancelaSistema: TButton
        Left = 3
        Top = 197
        Width = 132
        Height = 25
        Caption = 'Cancelar s'#243' no sistema'
        TabOrder = 9
        OnClick = btnCancelaSistemaClick
      end
    end
    object CategoryPanel1: TCategoryPanel
      Top = 0
      Height = 217
      Caption = 'Lote'
      TabOrder = 1
      object btnConsultarSitLote: TButton
        Left = 5
        Top = 33
        Width = 130
        Height = 27
        Caption = 'Consultar na prefeitura'
        TabOrder = 0
        WordWrap = True
        OnClick = btnConsultarSitLoteClick
      end
      object btnEnviarLote: TBitBtn
        Left = 5
        Top = 2
        Width = 130
        Height = 25
        Caption = 'Enviar'
        TabOrder = 1
        OnClick = btnEnviarLoteClick
      end
      object btnsErrosLotes: TBitBtn
        Left = 4
        Top = 130
        Width = 131
        Height = 25
        Caption = 'Ver erros'
        TabOrder = 2
        Visible = False
        OnClick = btnsErrosLotesClick
      end
      object BtnImpRPS: TButton
        Left = 3
        Top = 161
        Width = 132
        Height = 25
        Caption = 'Imprimir RPS'
        TabOrder = 3
        Visible = False
        OnClick = BtnImpRPSClick
      end
      object btnXML_RPS: TButton
        Left = 3
        Top = 66
        Width = 132
        Height = 25
        Caption = 'Gerar XML'
        TabOrder = 4
        Visible = False
        OnClick = btnXML_RPSClick
      end
      object btnXML_LOTE: TButton
        Left = 3
        Top = 97
        Width = 132
        Height = 25
        Caption = 'Gerar XML Lote'
        TabOrder = 5
        Visible = False
        OnClick = btnXML_LOTEClick
      end
    end
  end
  object Panel1: TPanel [2]
    Left = 149
    Top = 0
    Width = 1153
    Height = 597
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 1
    object Splitter2: TSplitter
      Left = 1
      Top = 105
      Width = 1151
      Height = 6
      Cursor = crVSplit
      Align = alTop
      ExplicitLeft = -6
      ExplicitTop = 440
      ExplicitWidth = 1214
    end
    object Splitter3: TSplitter
      Left = 1
      Top = 590
      Width = 1151
      Height = 6
      Cursor = crVSplit
      Align = alBottom
      ExplicitTop = 103
      ExplicitWidth = 1214
    end
    object PFiltros: TPanel
      Left = 1
      Top = 1
      Width = 1151
      Height = 104
      Align = alTop
      TabOrder = 0
      object lambiente: TLabel
        Left = 831
        Top = 75
        Width = 44
        Height = 20
        Caption = 'Inicial:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 382
        Top = 78
        Width = 35
        Height = 14
        Alignment = taRightJustify
        Caption = 'Cliente:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object JvArrowButton1: TJvArrowButton
        Left = 920
        Top = 9
        Width = 100
        Height = 25
        GroupIndex = 1
        Caption = '&Imprimir'
        FillFont.Charset = DEFAULT_CHARSET
        FillFont.Color = clWindowText
        FillFont.Height = -11
        FillFont.Name = 'Tahoma'
        FillFont.Style = []
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
        OnClick = JvArrowButton1Click
      end
      object Gentrega: TGroupBox
        Left = 5
        Top = 3
        Width = 156
        Height = 87
        Caption = 'Data emiss'#227'o'
        TabOrder = 0
        object ldataInicial: TLabel
          Left = 13
          Top = 18
          Width = 30
          Height = 13
          Caption = 'Inicial:'
          FocusControl = RxDataInicial
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object lDataFinal: TLabel
          Left = 13
          Top = 41
          Width = 25
          Height = 13
          Caption = 'Final:'
          FocusControl = RxDataFinal
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object btnLimpar: TBitBtn
          Left = 4
          Top = 60
          Width = 75
          Height = 24
          Caption = 'Limpar'
          TabOrder = 2
          OnClick = btnLimparClick
        end
        object btnHoje: TBitBtn
          Left = 78
          Top = 60
          Width = 75
          Height = 24
          Caption = 'Hoje'
          TabOrder = 3
          OnClick = btnHojeClick
        end
        object RxDataInicial: TJvDateEdit
          Left = 49
          Top = 15
          Width = 90
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Glyph.Data = {
            4E000000424D4E000000000000003E000000280000000A000000040000000100
            010000000000100000000000000000000000020000000200000000000000FFFF
            FF00FFC000003300000033000000FFC00000}
          ImageKind = ikCustom
          ButtonWidth = 16
          ParentFont = False
          PopupColor = clBtnFace
          ShowNullDate = False
          YearDigits = dyFour
          TabOrder = 0
          OnChange = RxDataInicialChange
        end
        object RxDataFinal: TJvDateEdit
          Left = 49
          Top = 37
          Width = 89
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Glyph.Data = {
            4E000000424D4E000000000000003E000000280000000A000000040000000100
            010000000000100000000000000000000000020000000200000000000000FFFF
            FF00FFC000003300000033000000FFC00000}
          ImageKind = ikCustom
          ButtonWidth = 16
          ParentFont = False
          PopupColor = clBtnFace
          ShowNullDate = False
          YearDigits = dyFour
          TabOrder = 1
          OnChange = RxDataFinalChange
        end
      end
      object btnPesquisar: TBitBtn
        Left = 814
        Top = 8
        Width = 100
        Height = 25
        Hint = 'Pesquisar'
        Caption = '&Pesquisar'
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          33033333333333333F7F3333333333333000333333333333F777333333333333
          000333333333333F777333333333333000333333333333F77733333333333300
          033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
          33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
          3333373337F3373F3333078F8F8F870333337F33F7FFF37F333307F9F8F9F703
          33337F377777337F3333078F8F8F8703333373F337F33373333377F8F9F8F773
          333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
          333333773FF77333333333370007333333333333777333333333}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        TabOrder = 12
        OnClick = btnPesquisarClick
      end
      object btnLimparTudo: TBitBtn
        Left = 814
        Top = 35
        Width = 100
        Height = 25
        Hint = 'Volta a pesquisa padr'#227'o'
        Caption = 'Limpar filtros'
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          0400000000000001000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500005000555
          555558888F888555F55500000000555055558888888855F85555005500055055
          555588F5888F58555555005550055555555588FF588F5FF55555500550050055
          5555588FF88588FF555555005050110555555588F858888FF555555505099910
          555555FF85888888FF555005550999910555588F5F88888885F5500505509990
          3055588F85F88888585F55005055090B030555885855888585855555555550B0
          B03055555F555858585855550555550B0B335555855555858555555555555550
          BBB35555F55555585F555550555555550BBB55585555555585F5555555555555
          50BB555555555555585F555555555555550B5555555555555585}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        TabOrder = 13
        OnClick = btnLimparTudoClick
      end
      object chkSemLote: TCheckBox
        Left = 167
        Top = 14
        Width = 130
        Height = 17
        Caption = 'Somente n'#227'o enviados'
        TabOrder = 1
        OnClick = FiltrarClick
      end
      object chkRPS: TCheckBox
        Left = 167
        Top = 37
        Width = 90
        Height = 17
        Caption = 'RPS enviados'
        TabOrder = 2
        OnClick = FiltrarClick
      end
      object chkNFSE: TCheckBox
        Left = 167
        Top = 59
        Width = 114
        Height = 17
        Caption = 'NFSe autorizadas'
        TabOrder = 3
        OnClick = FiltrarClick
      end
      object chkRPS_REJEITADOS: TCheckBox
        Left = 303
        Top = 35
        Width = 98
        Height = 17
        Caption = 'RPS com erros'
        TabOrder = 6
        OnClick = FiltrarClick
      end
      object chkNFSE_Cancelados: TCheckBox
        Left = 303
        Top = 12
        Width = 106
        Height = 17
        Caption = 'NFSE Cancelados'
        TabOrder = 5
        OnClick = FiltrarClick
      end
      object gbLote: TGroupBox
        Left = 418
        Top = -1
        Width = 126
        Height = 62
        Caption = 'Lote'
        TabOrder = 7
        object edLote: TEdit
          Left = 8
          Top = 25
          Width = 106
          Height = 21
          TabOrder = 0
          OnEnter = edRPSEnter
          OnExit = edRPSExit
          OnKeyPress = edLoteKeyPress
        end
      end
      object GroupBox1: TGroupBox
        Left = 550
        Top = 1
        Width = 126
        Height = 60
        Caption = 'NFSE'
        TabOrder = 8
        object edNfse: TEdit
          Left = 3
          Top = 17
          Width = 106
          Height = 21
          TabOrder = 0
          OnEnter = edRPSEnter
          OnExit = edRPSExit
          OnKeyPress = edNfseKeyPress
        end
      end
      object GroupBox2: TGroupBox
        Left = 682
        Top = 0
        Width = 126
        Height = 61
        Caption = 'RPS'
        TabOrder = 9
        object edRPS: TEdit
          Left = 8
          Top = 25
          Width = 106
          Height = 21
          TabOrder = 0
          OnEnter = edRPSEnter
          OnExit = edRPSExit
          OnKeyPress = edRPSKeyPress
        end
      end
      object chkAguardando: TCheckBox
        Left = 167
        Top = 81
        Width = 114
        Height = 17
        Caption = 'Aguardando..'
        TabOrder = 4
        OnClick = FiltrarClick
      end
      object EdClienteCodigo: TEdit
        Left = 420
        Top = 75
        Width = 43
        Height = 21
        CharCase = ecUpperCase
        Color = clWhite
        MaxLength = 5
        TabOrder = 10
        OnExit = EdClienteCodigoExit
        OnKeyDown = EdClienteCodigoKeyDown
        OnKeyPress = EdClienteCodigoKeyPress
      end
      object PesqCliente: TSgDbSearchCombo
        Left = 464
        Top = 75
        Width = 323
        Height = 21
        EmptyText = 'TODOS OS CLIENTES'
        TabOrder = 11
        CharCase = ecUpperCase
        LookupSelect = 'CLI_CODIGO,CLI_RAZAO,CLI_FANTASIA'
        LookupOrderBy = 'CLI_RAZAO'
        LookupTable = 'cli0000'
        LookupDispl = 'CLI_RAZAO'
        OnButtonClick = PesqClienteButtonClick
        OnSelect = PesqClienteSelect
        GridAutoSize = False
        LookupSource = qAux
        LookupKeyField = 'CLI_CODIGO'
        ShowButton = True
        LookupTableShare = 'clientes'
        AutoF8WinTitulo = 'Clientes'
        AutoF8ColumnsTitulo = 'C'#243'digo, Nome, Fantasia'
        GridLeft = 0
        GridWidth = 0
        GridHeight = 100
        GridTop = 0
        GridShowWhenEnter = False
        SelectWithDoubleClick = False
        LimparCampoAoSair = True
      end
      object chkNaoRevisado: TCheckBox
        Left = 303
        Top = 59
        Width = 98
        Height = 17
        Caption = 'N'#227'o Revisado'
        TabOrder = 14
        OnClick = FiltrarClick
      end
      object chkrevisado: TCheckBox
        Left = 303
        Top = 81
        Width = 73
        Height = 17
        Caption = 'Revisado'
        TabOrder = 15
        OnClick = FiltrarClick
      end
    end
    object pNotas: TPanel
      Left = 1
      Top = 111
      Width = 1151
      Height = 315
      Align = alClient
      TabOrder = 1
      object dbnfse: TDBGrid
        Left = 1
        Top = 1
        Width = 1149
        Height = 272
        Hint = 'Dois cliques para ver o detalhe'
        Align = alClient
        DataSource = dsPesq
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        PopupMenu = JvPopupMenu1
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        StyleElements = [seFont, seBorder]
        OnCellClick = dbnfseCellClick
        OnDrawColumnCell = dbnfseDrawColumnCell
        OnDblClick = dbnfseDblClick
        Columns = <
          item
            ButtonStyle = cbsNone
            Expanded = False
            FieldName = 'selecionado'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = 0
            Font.Name = 'Tahoma'
            Font.Style = []
            Width = 23
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'status'
            Title.Alignment = taCenter
            Title.Caption = 'Situa'#231#227'o'
            Width = 98
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NFS_REVISADO'
            Title.Caption = 'Revisado'
            Width = 54
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cli_codigo'
            Title.Caption = 'C'#243'd. Cliente'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NFSE_razaosocial'
            Title.Caption = 'Cliente'
            Width = 272
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NFSE_dataemissao'
            Title.Caption = 'Emiss'#227'o'
            Width = 78
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RPS_CODIGO'
            Title.Caption = 'RPS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NFSE_serie'
            Title.Caption = 'S'#233'rie'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NFSE_NUM_DANFSE'
            Title.Caption = 'N'#250'm Danfse'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NFSE_CODVERIFICACAO'
            Title.Caption = 'C'#243'd. Verifica'#231#227'o'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NFSI_valorservicos'
            Title.Caption = 'Valor servi'#231'o'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'num_lote'
            Title.Caption = 'Num. Lote'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NFSE_email'
            Title.Caption = 'e-mail prestador'
            Width = 860
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NFSE_cnpj_cpf'
            Title.Caption = 'CNPJ'
            Width = 147
            Visible = True
          end>
      end
      object GroupBox3: TGroupBox
        Left = 1
        Top = 273
        Width = 1149
        Height = 41
        Align = alBottom
        Caption = 'Status'
        TabOrder = 1
        DesignSize = (
          1149
          41)
        object Label1: TLabel
          Left = -38
          Top = 37
          Width = 46
          Height = 13
          Caption = 'Pendente'
        end
        object lbl1: TLabel
          Left = 736
          Top = 16
          Width = 85
          Height = 13
          Caption = 'Total de servi'#231'os:'
        end
        object btnRejeitada: TBitBtn
          Left = 110
          Top = 13
          Width = 96
          Height = 25
          Caption = 'Rejeitadas'
          Glyph.Data = {
            AA040000424DAA04000000000000360000002800000014000000130000000100
            18000000000074040000C40E0000C40E00000000000000000000FFFFFFD8F2F8
            9ADDEE72D0E772D0E872D0E872D0E872D0E872D0E872D0E872D0E872D0E872D0
            E872D0E872D0E872D0E872D0E79ADDEED8F2F8FFFFFFD8F2F80AADD600AAD400
            AAD400AAD400AAD400AAD400AAD400AAD400AAD400AAD400AAD400AAD400AAD4
            00AAD400AAD400AAD400AAD40AADD6D8F2F896DCED00AAD400AAD400AAD400AA
            D400AAD400AAD400AAD400AAD400AAD400AAD400AAD400AAD400AAD400AAD400
            AAD400AAD400AAD400AAD492DAEC77D2E804ABD507ACD508ADD509ADD60AADD6
            0BAED60BAED60BAED60BAED60BAED60BAED60AADD60AADD609ADD508ADD506AC
            D504ABD502ABD472D0E87CD4E916B1D818B2D819B2D81AB3D81BB3D91BB3D91C
            B3D91CB3D91CB3D91CB3D91CB3D91BB3D91AB3D819B2D819B2D817B2D815B1D8
            14B1D775D1E986D7EB26B7DA28B7DB29B8DB2AB8DB2CB9DB2CB9DB2DB9DC2DB9
            DC2EB9DC2DB9DC2DB9DC2CB9DB2BB8DB2AB8DB29B8DB27B7DB25B6DA23B6DA7B
            D3E98BD8EB34BBDD37BCDD39BDDE3ABDDE3CBEDE3DBEDE3EBFDE3EBFDE3EBFDE
            3EBFDE3EBFDE3DBEDE3CBEDE3ABDDE38BDDE36BCDD34BBDD32BBDC80D5EB90DA
            EC42C0DF45C1E048C2E04AC3E04CC3E14DC4E14EC4E14FC4E14FC4E14FC4E14E
            C4E14DC4E14CC3E14AC3E048C2E046C1E043C0DF40BFDF83D6EB95DCED4EC4E1
            51C5E255C6E258C7E35BC8E35DC9E45FCAE460CAE461CAE460CAE45FCAE45EC9
            E45CC9E359C8E356C7E253C6E24FC4E14BC3E185D6EB98DDEE55C6E25AC8E35E
            C9E462CBE566CCE56ACDE66DCEE670CFE771D0E771D0E76FCFE76CCEE668CDE6
            64CBE561CAE45CC9E458C7E353C6E288D7EC98DDEE56C7E25BC8E35FCAE464CB
            E568CDE66CCEE671D0E775D1E877D2E877D2E874D1E870CFE76CCEE667CCE563
            CBE55EC9E45AC8E355C6E289D8EC96DCED50C5E154C6E258C7E35BC8E35FCAE4
            61CAE464CBE565CCE566CCE566CCE565CCE564CBE562CBE45FCAE45BC8E358C7
            E354C6E250C5E187D7EB91DBEC45C1E048C2E04BC3E14EC4E150C5E252C5E254
            C6E255C6E255C6E255C6E255C6E254C6E253C6E251C5E24EC4E14CC3E149C2E0
            46C1E085D7EB8CD9EB38BDDD3ABDDE3DBEDE3FBFDF41C0DF42C0DF43C0DF44C1
            DF45C1E045C1E044C1DF44C1DF43C0DF41C0DF40BFDF3EBFDE3BBEDE39BDDE81
            D5EA86D7EA29B8DB2BB8DB2DB9DC2FBADC30BADC32BBDC32BBDD33BBDD33BBDD
            33BBDD33BBDD33BBDD32BBDC31BADC30BADC2EB9DC2DB9DC2BB8DB7DD4EA7FD4
            E919B2D81BB3D91DB4D91EB4D920B5D921B5DA21B5DA22B5DA22B5DA22B5DA22
            B5DA22B5DA21B5DA21B5DA1FB4D91EB4D91DB4D91BB3D977D2E999DEEE09ADD6
            0BAED60DAED60EAFD60FAFD710AFD711B0D711B0D711B0D712B0D711B0D711B0
            D711B0D710AFD70FAFD70EAFD60DAED60AADD694DBEDDBF3F90DAED600AAD400
            AAD400AAD400AAD400AAD400AAD400AAD400AAD400AAD400AAD400AAD400AAD4
            00AAD400AAD400AAD400AAD40DAED6DBF3F9FFFFFFDBF3F99BDEEF72D0E772D0
            E872D0E872D0E872D0E872D0E872D0E872D0E872D0E872D0E872D0E872D0E872
            D0E872D0E79BDEEFDBF3F9FFFFFF}
          TabOrder = 0
          OnClick = RejeitadasClick
        end
        object btnTransmitida: TBitBtn
          Left = 4
          Top = 13
          Width = 105
          Height = 25
          Hint = 'Notas transmitidas ainda n'#227'o autorizadas'
          Caption = 'Em processo'
          Glyph.Data = {
            AA040000424DAA04000000000000360000002800000014000000130000000100
            18000000000074040000C40E0000C40E00000000000000000000FFFFFFD8EBD8
            9ACD9A72B97272B97272B97272B97272B97272B97272B97272B97272B97272B9
            7272B97272B97272B97272B9729ACD9AD8EBD8FFFFFFD8ECD80A850A00800000
            8000008000008000008000008000008000008000008000008000008000008000
            0080000080000080000080000A850AD8ECD896CB960080000080000080000080
            0000800000800000800000800000800000800000800000800000800000800000
            800000800000800000800092C99277BB770482040784070884080985090A850A
            0B850B0B860B0B860B0B860B0B860B0B850B0A850A0A850A0984090884080683
            0604820402810272B9727CBE7C168B16188C18198C191A8D1A1B8D1B1B8E1B1C
            8E1C1C8E1C1C8E1C1C8E1C1C8E1C1B8E1B1A8D1A198D19198C19178B17158A15
            148A1475BA7586C2862693262894282995292A952A2C962C2C962C2D962D2D96
            2D2E972E2D962D2D962D2C962C2B952B2A952A2994292794272593252392237B
            BD7B8BC58B349A34379B37399C393A9D3A3C9E3C3D9E3D3E9F3E3E9F3E3E9F3E
            3E9F3E3E9F3E3D9E3D3C9E3C3A9D3A389C38369B36349A3432993280C08090C7
            9042A14245A24548A4484AA54A4CA64C4DA74D4EA74E4FA84F4FA84F4FA84F4E
            A74E4DA74D4CA64C4AA54A48A44846A34643A14340A04083C18395CA954EA74E
            51A95155AA5558AC585BAD5B5DAE5D5FAF5F60B06061B06160B0605FAF5F5EAF
            5E5CAE5C59AC5956AB5653A9534FA84F4BA64B85C28598CC9855AA555AAD5A5E
            AF5E62B16266B3666AB56A6DB66D70B87071B87171B8716FB76F6CB66C68B468
            64B26461B0615CAE5C58AC5853AA5388C48898CC9856AB565BAD5B5FAF5F64B2
            6468B4686CB66C71B87175BA7577BB7777BB7774BA7470B8706CB66C67B46763
            B1635EAF5E5AAD5A55AA5589C48996CA9650A85054AA5458AC585BAD5B5FAF5F
            61B06164B26465B36566B36666B36665B36564B26462B1625FAF5F5BAD5B58AC
            5854AA5450A85087C38791C89145A24548A4484BA54B4EA74E50A85052A95254
            AA5455AA5555AA5555AA5555AA5554AA5453A95351A8514EA74E4CA64C49A449
            46A34685C3858CC58C389C383A9D3A3D9E3D3F9F3F41A04142A14243A14344A2
            4445A24545A24544A24444A24443A14341A04140A0403E9F3E3B9E3B399C3981
            C08186C2862995292B952B2D962D2F972F309830329932329932339933339A33
            339A33339A333399333299323198313098302E972E2D962D2B952B7DBF7D7FBF
            7F198D191B8E1B1D8E1D1E8F1E20902021902121912122912222912222912222
            91222291222191212190211F901F1E8F1E1D8E1D1B8E1B77BC7799CD99098509
            0B860B0D860D0E870E0F880F1088101188111189111189111289121189111189
            111188111088100F880F0E870E0D860D0A850A94C994DBEDDB0D860D00800000
            8000008000008000008000008000008000008000008000008000008000008000
            0080000080000080000080000D860DDBEDDBFFFFFFDBEDDB9BCD9B72B97272B9
            7272B97272B97272B97272B97272B97272B97272B97272B97272B97272B97272
            B97272B9729BCD9BDBEDDBFFFFFF}
          ParentShowHint = False
          ShowHint = False
          TabOrder = 1
          OnClick = ProcessosClick
        end
        object btnAutorizadas: TBitBtn
          Left = 208
          Top = 13
          Width = 92
          Height = 25
          Caption = 'Autorizadas'
          Glyph.Data = {
            AA040000424DAA04000000000000360000002800000014000000130000000100
            18000000000074040000C40E0000C40E00000000000000000000FFFFFFF2E2D8
            DDB59AD09772D09872D09872D09872D09872D09872D09872D09872D09872D098
            72D09872D09872D09872D09772DDB59AF2E2D8FFFFFFF2E3D8AD4B0AAA4400AA
            4400AA4400AA4400AA4400AA4400AA4400AA4400AA4400AA4400AA4400AA4400
            AA4400AA4400AA4400AA4400AD4B0AF2E2D8DCB296AA4400AA4400AA4400AA44
            00AA4400AA4400AA4400AA4400AA4400AA4400AA4400AA4400AA4400AA4400AA
            4400AA4400AA4400AA4400DAAF92D29B77AB4704AC4907AD4A08AD4B09AD4C0A
            AE4C0BAE4C0BAE4C0BAE4C0BAE4C0BAE4C0BAD4C0AAD4B0AAD4A09AD4A08AC49
            06AB4704AB4502D09872D49F7CB15416B25518B25619B3571AB3581BB3581BB3
            581CB3591CB3591CB3591CB3581CB3581BB3571AB25719B25619B25517B15315
            B15214D19A75D7A686B76026B76128B86229B8632AB9642CB9642CB9652DB965
            2DB9652EB9652DB9652DB9642CB8642BB8632AB86229B76127B65F25B65E23D3
            9E7BD8A98BBB6A34BC6C37BD6E39BD6F3ABE703CBE713DBF713EBF723EBF723E
            BF723EBF713EBE713DBE703CBD6F3ABD6D38BC6C36BB6A34BB6932D5A280DAAD
            90C07542C17745C27848C37A4AC37C4CC47D4DC47E4EC47E4FC47E4FC47E4FC4
            7E4EC47D4DC37C4CC37A4AC27948C17746C07543BF7340D6A483DCB195C47D4E
            C58051C68255C78458C8875BC9885DCA895FCA8A60CA8B61CA8A60CA8A5FC989
            5EC9875CC88559C78356C68153C47E4FC37B4BD6A685DDB398C68355C8865AC9
            895ECB8C62CC8F66CD926ACE946DCF9670D09771D09771CF966FCE936CCD9168
            CB8E64CA8B61C9885CC78458C68153D7A888DDB398C78356C8875BCA8A5FCB8D
            64CD9068CE936CD09771D19A75D29B77D29B77D19974CF9670CE936CCC9067CB
            8D63C9895EC8865AC68355D8A989DCB196C57F50C68154C78458C8875BCA895F
            CA8B61CB8D64CC8E65CC8F66CC8F66CC8E65CB8D64CB8C62CA895FC8875BC784
            58C68154C57F50D7A787DBAE91C17745C27948C37B4BC47D4EC57F50C58052C6
            8154C68255C68355C68355C68255C68154C68153C57F51C47E4EC37C4CC27A49
            C17746D7A685D9AA8CBD6D38BD6F3ABE713DBF723FC07341C07542C07543C176
            44C17645C17645C17644C17644C07543C07441BF7340BF713EBE6F3BBD6E39D5
            A381D7A686B86229B8642BB9652DBA662FBA6730BB6832BB6932BB6933BB6A33
            BB6A33BB6A33BB6933BB6932BA6831BA6730B9662EB9652DB8632BD4A07DD4A1
            7FB25719B3581BB4591DB45A1EB55B20B55C21B55C21B55D22B55D22B55D22B5
            5D22B55D22B55C21B55C21B45B1FB45A1EB4591DB3581BD29C77DEB599AD4B09
            AE4C0BAE4D0DAF4E0EAF4F0FAF5010B05011B05111B05111B05112B05111B051
            11B05011AF5010AF4F0FAF4E0EAE4D0DAD4B0ADBB194F3E5DBAE4E0DAA4400AA
            4400AA4400AA4400AA4400AA4400AA4400AA4400AA4400AA4400AA4400AA4400
            AA4400AA4400AA4400AA4400AE4E0DF3E4DBFFFFFFF3E5DBDEB69BD09772D098
            72D09872D09872D09872D09872D09872D09872D09872D09872D09872D09872D0
            9872D09772DEB69BF3E5DBFFFFFF}
          TabOrder = 2
          OnClick = NFSEClick
        end
        object BtnCanceladas: TBitBtn
          Left = 302
          Top = 13
          Width = 93
          Height = 25
          Caption = 'Canceladas'
          Glyph.Data = {
            AA040000424DAA04000000000000360000002800000014000000130000000100
            18000000000074040000C40E0000C40E00000000000000000000FFFFFFD8D8F2
            9A9ADD7272D07272D07272D07272D07272D07272D07272D07272D07272D07272
            D07272D07272D07272D07272D09A9ADDD8D8F2FFFFFFD8D8F20A0AAD0000AA00
            00AA0000AA0000AA0000AA0000AA0000AA0000AA0000AA0000AA0000AA0000AA
            0000AA0000AA0000AA0000AA0A0AADD8D8F29696DC0000AA0000AA0000AA0000
            AA0000AA0000AA0000AA0000AA0000AA0000AA0000AA0000AA0000AA0000AA00
            00AA0000AA0000AA0000AA9292DA7777D20404AB0707AC0808AD0909AD0A0AAD
            0B0BAE0B0BAE0B0BAE0B0BAE0B0BAE0B0BAE0A0AAD0A0AAD0909AD0808AD0606
            AC0404AB0202AB7272D07C7CD41616B11818B21919B21A1AB31B1BB31B1BB31C
            1CB31C1CB31C1CB31C1CB31C1CB31B1BB31A1AB31919B21919B21717B21515B1
            1414B17575D18686D72626B72828B72929B82A2AB82C2CB92C2CB92D2DB92D2D
            B92E2EB92D2DB92D2DB92C2CB92B2BB82A2AB82929B82727B72525B62323B67B
            7BD38B8BD83434BB3737BC3939BD3A3ABD3C3CBE3D3DBE3E3EBF3E3EBF3E3EBF
            3E3EBF3E3EBF3D3DBE3C3CBE3A3ABD3838BD3636BC3434BB3232BB8080D59090
            DA4242C04545C14848C24A4AC34C4CC34D4DC44E4EC44F4FC44F4FC44F4FC44E
            4EC44D4DC44C4CC34A4AC34848C24646C14343C04040BF8383D69595DC4E4EC4
            5151C55555C65858C75B5BC85D5DC95F5FCA6060CA6161CA6060CA5F5FCA5E5E
            C95C5CC95959C85656C75353C64F4FC44B4BC38585D69898DD5555C65A5AC85E
            5EC96262CB6666CC6A6ACD6D6DCE7070CF7171D07171D06F6FCF6C6CCE6868CD
            6464CB6161CA5C5CC95858C75353C68888D79898DD5656C75B5BC85F5FCA6464
            CB6868CD6C6CCE7171D07575D17777D27777D27474D17070CF6C6CCE6767CC63
            63CB5E5EC95A5AC85555C68989D89696DC5050C55454C65858C75B5BC85F5FCA
            6161CA6464CB6565CC6666CC6666CC6565CC6464CB6262CB5F5FCA5B5BC85858
            C75454C65050C58787D79191DB4545C14848C24B4BC34E4EC45050C55252C554
            54C65555C65555C65555C65555C65454C65353C65151C54E4EC44C4CC34949C2
            4646C18585D78C8CD93838BD3A3ABD3D3DBE3F3FBF4141C04242C04343C04444
            C14545C14545C14444C14444C14343C04141C04040BF3E3EBF3B3BBE3939BD81
            81D58686D72929B82B2BB82D2DB92F2FBA3030BA3232BB3232BB3333BB3333BB
            3333BB3333BB3333BB3232BB3131BA3030BA2E2EB92D2DB92B2BB87D7DD47F7F
            D41919B21B1BB31D1DB41E1EB42020B52121B52121B52222B52222B52222B522
            22B52222B52121B52121B51F1FB41E1EB41D1DB41B1BB37777D29999DE0909AD
            0B0BAE0D0DAE0E0EAF0F0FAF1010AF1111B01111B01111B01212B01111B01111
            B01111B01010AF0F0FAF0E0EAF0D0DAE0A0AAD9494DBDBDBF30D0DAE0000AA00
            00AA0000AA0000AA0000AA0000AA0000AA0000AA0000AA0000AA0000AA0000AA
            0000AA0000AA0000AA0000AA0D0DAEDBDBF3FFFFFFDBDBF39B9BDE7272D07272
            D07272D07272D07272D07272D07272D07272D07272D07272D07272D07272D072
            72D07272D09B9BDEDBDBF3FFFFFF}
          TabOrder = 3
          OnClick = CanceladasClick
        end
        object btnNaoEnviadas: TBitBtn
          Left = 397
          Top = 13
          Width = 102
          Height = 25
          Caption = 'N'#227'o enviadas'
          Glyph.Data = {
            AA040000424DAA04000000000000360000002800000014000000130000000100
            18000000000074040000C40E0000C40E00000000000000000000FFFFFFD8D8D8
            9A9A9A7272727272727272727272727272727272727272727272727272727272
            727272727272727272727272729A9A9AD8D8D8FFFFFFD8D8D80A0A0A00000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000A0A0AD8D8D89696960000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000009292927777770404040707070808080909090A0A0A
            0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0A0A0A0A0A0A0909090808080606
            060404040202027272727C7C7C1616161818181919191A1A1A1B1B1B1B1B1B1C
            1C1C1C1C1C1C1C1C1C1C1C1C1C1C1B1B1B1A1A1A191919191919171717151515
            1414147575758686862626262828282929292A2A2A2C2C2C2C2C2C2D2D2D2D2D
            2D2E2E2E2D2D2D2D2D2D2C2C2C2B2B2B2A2A2A2929292727272525252323237B
            7B7B8B8B8B3434343737373939393A3A3A3C3C3C3D3D3D3E3E3E3E3E3E3E3E3E
            3E3E3E3E3E3E3D3D3D3C3C3C3A3A3A3838383636363434343232328080809090
            904242424545454848484A4A4A4C4C4C4D4D4D4E4E4E4F4F4F4F4F4F4F4F4F4E
            4E4E4D4D4D4C4C4C4A4A4A4848484646464343434040408383839595954E4E4E
            5151515555555858585B5B5B5D5D5D5F5F5F6060606161616060605F5F5F5E5E
            5E5C5C5C5959595656565353534F4F4F4B4B4B8585859898985555555A5A5A5E
            5E5E6262626666666A6A6A6D6D6D7070707171717171716F6F6F6C6C6C686868
            6464646161615C5C5C5858585353538888889898985656565B5B5B5F5F5F6464
            646868686C6C6C7171717575757777777777777474747070706C6C6C67676763
            63635E5E5E5A5A5A5555558989899696965050505454545858585B5B5B5F5F5F
            6161616464646565656666666666666565656464646262625F5F5F5B5B5B5858
            585454545050508787879191914545454848484B4B4B4E4E4E50505052525254
            54545555555555555555555555555454545353535151514E4E4E4C4C4C494949
            4646468585858C8C8C3838383A3A3A3D3D3D3F3F3F4141414242424343434444
            444545454545454444444444444343434141414040403E3E3E3B3B3B39393981
            81818686862929292B2B2B2D2D2D2F2F2F303030323232323232333333333333
            3333333333333333333232323131313030302E2E2E2D2D2D2B2B2B7D7D7D7F7F
            7F1919191B1B1B1D1D1D1E1E1E20202021212121212122222222222222222222
            22222222222121212121211F1F1F1E1E1E1D1D1D1B1B1B777777999999090909
            0B0B0B0D0D0D0E0E0E0F0F0F1010101111111111111111111212121111111111
            111111111010100F0F0F0E0E0E0D0D0D0A0A0A949494DBDBDB0D0D0D00000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000D0D0DDBDBDBFFFFFFDBDBDB9B9B9B7272727272
            7272727272727272727272727272727272727272727272727272727272727272
            72727272729B9B9BDBDBDBFFFFFF}
          TabOrder = 4
          OnClick = NaoGeradaClick
        end
        object BtnTodas: TBitBtn
          Left = 501
          Top = 13
          Width = 89
          Height = 25
          Caption = 'Todas'
          TabOrder = 5
          OnClick = BtnTodasClick
        end
        object dbedtTotalServicos: TDBEdit
          Left = 764
          Top = 13
          Width = 121
          Height = 21
          Anchors = [akTop, akRight]
          BiDiMode = bdRightToLeft
          DataField = 'TotalServicos'
          DataSource = dsPesq
          ParentBiDiMode = False
          TabOrder = 6
        end
      end
    end
    object pErro: TPanel
      Left = 1
      Top = 426
      Width = 1151
      Height = 164
      Align = alBottom
      TabOrder = 2
      object dbErro: TDBGrid
        Left = 1
        Top = 1
        Width = 1149
        Height = 162
        Align = alClient
        DataSource = dsErro
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = dbErroDblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'NFH_MSGERRO'
            Title.Caption = 'Hist'#243'rico'
            Width = 985
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nfh_dataCon'
            Title.Caption = 'Ocorrido'
            Visible = True
          end>
      end
    end
  end
  object PanelAguarde: TPanel [3]
    Left = 165
    Top = 157
    Width = 293
    Height = 66
    AutoSize = True
    Caption = 'PanelAguarde'
    Color = clWhite
    TabOrder = 2
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
    Left = 176
    Top = 152
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 568
    Top = 152
  end
  inherited DBConn: TSQLConnection
    Left = 232
    Top = 177
  end
  inherited qAux: TSQLQuery
    Top = 165
  end
  inherited qAux2: TSQLQuery
    Left = 346
    Top = 180
  end
  inherited qAux3: TSQLQuery
    Left = 186
    Top = 204
  end
  object qSqlPesq: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DBConn
    Left = 360
    Top = 232
  end
  object dspSqlCdsPesq: TDataSetProvider
    DataSet = qSqlPesq
    Left = 363
    Top = 142
  end
  object CdsPesq: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    FieldDefs = <>
    IndexDefs = <
      item
        Name = 'CdsPesqIndex1'
      end>
    PacketRecords = 100
    Params = <>
    ProviderName = 'dspSqlCdsPesq'
    StoreDefs = True
    AfterScroll = CdsPesqAfterScroll
    OnCalcFields = CdsPesqCalcFields
    Left = 240
    Top = 240
    object CdsPesqselecionado: TBooleanField
      DisplayLabel = ' '
      FieldKind = fkInternalCalc
      FieldName = 'selecionado'
      ProviderFlags = []
      OnGetText = CdsPesqselecionadoGetText
    end
    object CdsPesqNFSE_CODIGO: TIntegerField
      FieldName = 'NFSE_CODIGO'
    end
    object CdsPesqcli_codigo: TStringField
      FieldName = 'cli_codigo'
      Size = 5
    end
    object CdsPesqnum_lote: TIntegerField
      FieldName = 'num_lote'
    end
    object CdsPesqNFSE_serie: TStringField
      FieldName = 'NFSE_serie'
      Size = 5
    end
    object CdsPesqLSE_STATUS: TStringField
      FieldName = 'LSE_STATUS'
      Size = 1
    end
    object CdsPesqNFSI_valorservicos: TFMTBCDField
      FieldName = 'NFSI_valorservicos'
      DisplayFormat = '#,###0.00'
      Precision = 5
      Size = 18
    end
    object CdsPesqNFSI_valordeducoes: TFMTBCDField
      FieldName = 'NFSI_valordeducoes'
      Precision = 5
      Size = 18
    end
    object CdsPesqNFSI_valorpis: TFMTBCDField
      FieldName = 'NFSI_valorpis'
      Precision = 5
      Size = 18
    end
    object CdsPesqNFSI_valorcofins: TFMTBCDField
      FieldName = 'NFSI_valorcofins'
      Precision = 5
      Size = 18
    end
    object CdsPesqNFSI_valorinss: TFMTBCDField
      FieldName = 'NFSI_valorinss'
      Precision = 5
      Size = 18
    end
    object CdsPesqNFSI_valorir: TFMTBCDField
      FieldName = 'NFSI_valorir'
      Precision = 5
      Size = 18
    end
    object CdsPesqNFSI_valorcsll: TFMTBCDField
      FieldName = 'NFSI_valorcsll'
      Precision = 5
      Size = 18
    end
    object CdsPesqNFSI_issretido: TIntegerField
      FieldName = 'NFSI_issretido'
    end
    object CdsPesqNFSI_valoriss: TFMTBCDField
      FieldName = 'NFSI_valoriss'
      Precision = 5
      Size = 18
    end
    object CdsPesqNFSI_valorissretido: TFMTBCDField
      FieldName = 'NFSI_valorissretido'
      Precision = 5
      Size = 18
    end
    object CdsPesqNFSI_outrasretencoes: TFMTBCDField
      FieldName = 'NFSI_outrasretencoes'
      Precision = 5
      Size = 18
    end
    object CdsPesqNFSI_basecalculo: TFMTBCDField
      FieldName = 'NFSI_basecalculo'
      Precision = 5
      Size = 18
    end
    object CdsPesqNFSI_aliquotaiss: TFMTBCDField
      FieldName = 'NFSI_aliquotaiss'
      Precision = 5
      Size = 18
    end
    object CdsPesqNFSI_valorliquidonfse: TFMTBCDField
      FieldName = 'NFSI_valorliquidonfse'
      Precision = 5
      Size = 18
    end
    object CdsPesqNFSI_descontoincondicionado: TFMTBCDField
      FieldName = 'NFSI_descontoincondicionado'
      Precision = 5
      Size = 18
    end
    object CdsPesqNFSI_descontocondicionado: TFMTBCDField
      FieldName = 'NFSI_descontocondicionado'
      Precision = 5
      Size = 18
    end
    object CdsPesqNFSE_cnpj_cpf: TStringField
      FieldName = 'NFSE_cnpj_cpf'
      OnGetText = CdsPesqNFSE_cnpj_cpfGetText
      Size = 14
    end
    object CdsPesqNFSE_razaosocial: TStringField
      FieldName = 'NFSE_razaosocial'
      Size = 115
    end
    object CdsPesqNFSE_endereco: TStringField
      FieldName = 'NFSE_endereco'
      Size = 125
    end
    object CdsPesqNFSE_numero_end: TStringField
      FieldName = 'NFSE_numero_end'
      Size = 10
    end
    object CdsPesqNFSE_cep: TStringField
      FieldName = 'NFSE_cep'
      Size = 8
    end
    object CdsPesqNFSE_complemento: TStringField
      FieldName = 'NFSE_complemento'
      Size = 60
    end
    object CdsPesqNFSE_bairro: TStringField
      FieldName = 'NFSE_bairro'
      Size = 60
    end
    object CdsPesqNFSE_codigomunicipio: TIntegerField
      FieldName = 'NFSE_codigomunicipio'
    end
    object CdsPesqNFSE_uf: TStringField
      FieldName = 'NFSE_uf'
      Size = 2
    end
    object CdsPesqNFSE_telefone: TStringField
      FieldName = 'NFSE_telefone'
      Size = 11
    end
    object CdsPesqNFSE_email: TStringField
      FieldName = 'NFSE_email'
      Size = 150
    end
    object CdsPesqCNAE_Codigo: TStringField
      FieldName = 'CNAE_Codigo'
      Size = 10
    end
    object CdsPesqNFSI_discriminacao: TBlobField
      FieldName = 'NFSI_discriminacao'
      Size = 4000
    end
    object CdsPesqNFSe_naturezaoperacao: TIntegerField
      FieldName = 'NFSe_naturezaoperacao'
    end
    object CdsPesqNFSE_optantesimplesnacional: TIntegerField
      FieldName = 'NFSE_optantesimplesnacional'
    end
    object CdsPesqNFSE_incentivadorcultural: TIntegerField
      FieldName = 'NFSE_incentivadorcultural'
    end
    object CdsPesqNFSE_DTCANCELADO: TSQLTimeStampField
      FieldName = 'NFSE_DTCANCELADO'
    end
    object CdsPesqNFSE_NUM_DANFSE: TIntegerField
      FieldName = 'NFSE_NUM_DANFSE'
    end
    object CdsPesqSRV_CODIGO: TStringField
      FieldName = 'SRV_CODIGO'
      Size = 5
    end
    object CdsPesqnfse_insc_municipal: TStringField
      FieldName = 'nfse_insc_municipal'
      Size = 15
    end
    object CdsPesqnfse_insc: TStringField
      FieldName = 'nfse_insc'
      Size = 14
    end
    object CdsPesqNFSE_CODVERIFICACAO: TStringField
      FieldName = 'NFSE_CODVERIFICACAO'
      Size = 8
    end
    object CdsPesqcid_cod_ibge: TIntegerField
      FieldName = 'cid_cod_ibge'
    end
    object CdsPesqstatus: TStringField
      FieldKind = fkCalculated
      FieldName = 'status'
      Size = 50
      Calculated = True
    end
    object CdsPesqinderroenvio: TIntegerField
      FieldName = 'inderroenvio'
    end
    object CdsPesqSRV_DESCRICAO: TStringField
      FieldName = 'SRV_DESCRICAO'
      Size = 500
    end
    object CdsPesqRPS_CODIGO: TIntegerField
      FieldName = 'RPS_CODIGO'
    end
    object CdsPesqNFS_REVISADO: TStringField
      FieldName = 'NFS_REVISADO'
      OnGetText = CdsPesqNFS_REVISADOGetText
      Size = 1
    end
    object CdsPesqCID_PRESTACAO: TIntegerField
      FieldName = 'CID_PRESTACAO'
    end
    object CdsPesqNFSI_RETENCOESFEDERAIS: TFMTBCDField
      FieldName = 'NFSI_RETENCOESFEDERAIS'
      Precision = 15
    end
    object CdsPesqNFSE_dataemissao: TSQLTimeStampField
      FieldName = 'NFSE_dataemissao'
      OnGetText = CdsPesqNFSE_dataemissaoGetText
    end
    object CdsPesqNFSI_JUSTIFICATIVA_DEDUCAO: TStringField
      FieldName = 'NFSI_JUSTIFICATIVA_DEDUCAO'
      Size = 255
    end
    object CdsPesqTotalServicos: TAggregateField
      DefaultExpression = 'sum(NFSI_valorservicos)'
      FieldName = 'TotalServicos'
      ReadOnly = True
      Active = True
      currency = True
      DisplayName = ''
      DisplayFormat = '#,###0.00'
      Expression = 'sum(NFSI_valorservicos)'
    end
  end
  object dsPesq: TDataSource
    DataSet = CdsPesq
    Left = 296
    Top = 224
  end
  object ACBrMail1: TACBrMail
    Host = '127.0.0.1'
    Port = '25'
    SetSSL = False
    SetTLS = False
    TimeOut = 30000
    Attempts = 3
    DefaultCharset = UTF_8
    IDECharset = CP1252
    Left = 774
    Top = 249
  end
  object IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL
    MaxLineAction = maException
    Port = 0
    DefaultPort = 0
    SSLOptions.Mode = sslmUnassigned
    SSLOptions.VerifyMode = []
    SSLOptions.VerifyDepth = 0
    Left = 240
    Top = 448
  end
  object IdMessage1: TIdMessage
    AttachmentEncoding = 'UUE'
    BccList = <>
    CCList = <>
    Encoding = meDefault
    FromList = <
      item
      end>
    Recipients = <>
    ReplyTo = <>
    ConvertPreamble = True
    Left = 184
    Top = 432
  end
  object SMTP: TIdSMTP
    SASLMechanisms = <>
    Left = 256
    Top = 320
  end
  object sslsocket: TIdSSLIOHandlerSocketOpenSSL
    MaxLineAction = maException
    Port = 0
    DefaultPort = 0
    SSLOptions.Mode = sslmUnassigned
    SSLOptions.VerifyMode = []
    SSLOptions.VerifyDepth = 0
    Left = 220
    Top = 312
  end
  object dsErro: TDataSource
    DataSet = cdsErro
    Left = 574
    Top = 472
  end
  object dspErro: TDataSetProvider
    DataSet = qErro
    Left = 454
    Top = 472
  end
  object cdsErro: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspErro'
    Left = 518
    Top = 472
    object cdsErronfh_codigo: TIntegerField
      FieldName = 'nfh_codigo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsErroNFH_MSGERRO: TBlobField
      FieldName = 'NFH_MSGERRO'
      OnGetText = cdsErroNFH_MSGERROGetText
      Size = 2000
    end
    object cdsErroNFH_RESOLVIDO: TIntegerField
      FieldName = 'NFH_RESOLVIDO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsErronfh_dataCon: TSQLTimeStampField
      FieldName = 'nfh_dataCon'
    end
  end
  object qErro: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT NFH_MSGERRO FROM NFS_historico'
      'WHERE nfse_codigo = 8'
      'ORDER BY NFH_CODIGO desc')
    SQLConnection = DBConn
    Left = 390
    Top = 472
  end
  object SaveDialog1: TSaveDialog
    Left = 729
    Top = 184
  end
  object JvPopupMenu1: TJvPopupMenu
    ImageMargin.Left = 0
    ImageMargin.Top = 0
    ImageMargin.Right = 0
    ImageMargin.Bottom = 0
    ImageSize.Height = 0
    ImageSize.Width = 0
    Left = 846
    Top = 327
    object miMarcarTodos: TMenuItem
      Caption = 'Marcar todos'
      OnClick = miMarcarTodosClick
    end
    object miDesmarcarTodos: TMenuItem
      Caption = 'Desmarcar todos'
      OnClick = miDesmarcarTodosClick
    end
  end
  object frxReport1: TfrxReport
    Tag = 1
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41401.601407893500000000
    ReportOptions.LastChange = 43837.703465972200000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnReportPrint = 'frxReportOnReportPrint'
    Left = 830
    Top = 167
    Datasets = <
      item
      end
      item
      end
      item
      end
      item
      end
      item
      end
      item
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      EndlessHeight = True
      EndlessWidth = True
      LargeDesignHeight = True
      MirrorMode = []
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Height = 136.063080000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'PageHeader1OnBeforePrint'
        Child = frxReport1.TomadorPrestador
        object Shape2: TfrxShapeView
          Align = baClient
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 136.063080000000000000
          Frame.Typ = []
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 117.165354330000000000
          Top = 3.779527559999998000
          Width = 438.425480000000000000
          Height = 64.252010000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'PREFEITURA MUNICIPAL DE '
            '[Parametros."Nome_Prefeitura"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 559.370440000000000000
          Width = 158.740260000000000000
          Height = 34.015740710000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'N'#250'mero da Nota')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 559.370440000000000000
          Top = 34.015770000000010000
          Width = 158.740260000000000000
          Height = 34.015755350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Data e Hora da Emiss'#227'o')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 559.370440000000000000
          Top = 68.031540000000010000
          Width = 158.740260000000000000
          Height = 34.015755350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'C'#243'digo de Verifica'#231#227'o')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 563.149970000000000000
          Top = 15.118120000000000000
          Width = 151.181200000000000000
          Height = 15.118110240000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Identificacao."NumeroNFSe"]')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          AllowVectorExport = True
          Left = 563.149970000000000000
          Top = 49.133889999999990000
          Width = 151.181200000000000000
          Height = 15.118110240000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Identificacao."DataEmissao"]')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          AllowVectorExport = True
          Left = 563.149970000000000000
          Top = 83.149660000000000000
          Width = 151.181200000000000000
          Height = 15.118110240000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Identificacao."CodigoVerificacao"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 3.000000000000000000
          Width = 109.606370000000000000
          Height = 98.267780000000000000
          DataField = 'LogoPrefCarregado'
          Frame.Typ = []
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 117.165430000000000000
          Top = 79.370130000000000000
          Width = 438.425480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Nota Fiscal de Servi'#231'os Eletr'#244'nica - NFS-e')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Top = 102.047310000000000000
          Width = 158.740260000000000000
          Height = 34.015755350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Compet'#234'ncia')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 117.165430000000000000
          Width = 151.181200000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[Identificacao."Competencia"]')
          ParentFont = False
        end
        object Memo69: TfrxMemoView
          AllowVectorExport = True
          Left = 158.740260000000000000
          Top = 102.047310000000000000
          Width = 219.212740000000000000
          Height = 34.015755350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'N'#250'mero do RPS')
          ParentFont = False
        end
        object Memo70: TfrxMemoView
          AllowVectorExport = True
          Left = 166.299320000000000000
          Top = 117.165430000000000000
          Width = 207.874150000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[Identificacao."Numero"]')
          ParentFont = False
        end
        object Memo71: TfrxMemoView
          AllowVectorExport = True
          Left = 377.953000000000000000
          Top = 102.047310000000000000
          Width = 181.417440000000000000
          Height = 34.015755350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'N'#250'mero da NFSe substituida')
          ParentFont = False
        end
        object Memo78: TfrxMemoView
          AllowVectorExport = True
          Left = 381.732530000000000000
          Top = 117.165430000000000000
          Width = 173.858380000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[Identificacao."NFSeSubstituida"]')
          ParentFont = False
        end
        object Memo95: TfrxMemoView
          AllowVectorExport = True
          Left = 559.370440000000000000
          Top = 102.047310000000000000
          Width = 158.740260000000000000
          Height = 34.015755350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'P'#225'gina')
          ParentFont = False
        end
        object Page: TfrxMemoView
          AllowVectorExport = True
          Left = 559.370440000000000000
          Top = 117.165430000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Page] / [TotalPages#]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Height = 464.882190000000000000
        ParentFont = False
        Top = 778.583180000000000000
        Width = 718.110700000000000000
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Top = 404.409710000000000000
          Width = 718.110700000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Recebi(emos) de [Prestador."RazaoSocial"]'
            
              'os servi'#231'os constantes da Nota Fiscal Eletr'#244'nica de Servi'#231'o (NFS' +
              'E) ao lado.')
          ParentFont = False
        end
        object Memo127: TfrxMemoView
          AllowVectorExport = True
          Left = 287.244280000000000000
          Top = 101.291338580000000000
          Width = 185.196877240000000000
          Height = 136.063062910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Outras Informa'#231#245'es')
          ParentFont = False
        end
        object Shape5: TfrxShapeView
          AllowVectorExport = True
          Left = 0.220470000000000000
          Top = 288.724489999999900000
          Width = 718.110700000000000000
          Height = 109.606370000000000000
          Frame.Typ = []
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 3.000000000000000000
          Top = 310.181200000000100000
          Width = 710.551640000000000000
          Height = 75.590600000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[Parametros."OutrasInformacoes"]'
            '[Servicos."NumeroProcesso"]'
            '[Parametros."CodigoObra"] [Parametros."Art"]')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 1.110233780000000000
          Top = 290.283550000000000000
          Width = 714.330708660000000000
          Height = 15.118110240000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            'OUTRAS INFORMA'#199#213'ES')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = -0.220470000000000000
          Top = 267.944959999999900000
          Width = 718.110700000000000000
          Height = 20.787401570000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            'VALOR TOTAL DA NOTA = R$ [Servicos."BaseCalculo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo50: TfrxMemoView
          AllowVectorExport = True
          Left = 287.244094490000000000
          Top = 67.464559610000040000
          Width = 143.622047240000000000
          Height = 34.015752910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'IMPOSTO DE RENDA (R$)')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          AllowVectorExport = True
          Top = 67.464559610000040000
          Width = 143.622047240000000000
          Height = 34.015752910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'PIS (R$)')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          AllowVectorExport = True
          Left = 143.622047240000000000
          Top = 67.464559610000040000
          Width = 143.622047240000000000
          Height = 34.015752910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'COFINS (R$)')
          ParentFont = False
        end
        object Memo72: TfrxMemoView
          AllowVectorExport = True
          Left = 574.488188980000000000
          Top = 67.464559610000040000
          Width = 143.622047240000000000
          Height = 34.015752910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'CSLL (R$)')
          ParentFont = False
        end
        object Memo87: TfrxMemoView
          AllowVectorExport = True
          Left = 430.866141730000000000
          Top = 67.464559610000040000
          Width = 143.622047240000000000
          Height = 34.015752910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'INSS (R$)')
          ParentFont = False
        end
        object Memo89: TfrxMemoView
          AllowVectorExport = True
          Left = 283.464564490000000000
          Top = 84.913378500000030000
          Width = 143.622047240000000000
          Height = 17.007874020000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[Servicos."ValorIr"]')
          ParentFont = False
        end
        object Memo90: TfrxMemoView
          AllowVectorExport = True
          Left = -3.779530000000000000
          Top = 84.913378500000030000
          Width = 143.622047240000000000
          Height = 17.007874020000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[Servicos."ValorPis"]')
          ParentFont = False
        end
        object Memo106: TfrxMemoView
          AllowVectorExport = True
          Left = 139.842517240000000000
          Top = 84.913378500000030000
          Width = 143.622047240000000000
          Height = 17.007874020000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[Servicos."ValorCofins"]')
          ParentFont = False
        end
        object Memo107: TfrxMemoView
          AllowVectorExport = True
          Left = 570.708658980000000000
          Top = 84.913378500000030000
          Width = 143.622047240000000000
          Height = 17.007874020000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[Servicos."ValorCsll"]')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Left = 427.086611730000000000
          Top = 84.913378500000030000
          Width = 143.622047240000000000
          Height = 17.007874020000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[Servicos."ValorInss"]')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Top = 384.842509920000000000
          Width = 222.992270000000000000
          Height = 11.338590000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              '[Parametros."Usuario"] - Data e Hora da Impress'#227'o: [Date #ddd/mm' +
              '/yyyy]  [Time #dhh:mm:ss]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end
            item
            end>
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = -1.110236220000000000
          Top = 13.173160000000050000
          Width = 718.110238660000000000
          Height = 30.236230240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[Servicos."ItemListaServico"] - [Servicos."xItemListaServico"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Top = 46.677180000000020000
          Width = 718.110700000000000000
          Height = 20.787401570000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            'TRIBUTOS FEDERAIS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo55: TfrxMemoView
          AllowVectorExport = True
          Top = 101.370130000000000000
          Width = 287.244187240000000000
          Height = 136.063062910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Detalhamento de Valores - Prestador dos Servi'#231'os')
          ParentFont = False
        end
        object Memo56: TfrxMemoView
          AllowVectorExport = True
          Top = 122.267780000000000000
          Width = 188.976451180000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Valor dos Servi'#231'os')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo58: TfrxMemoView
          AllowVectorExport = True
          Left = 188.976500000000000000
          Top = 122.267780000000000000
          Width = 98.267731180000000000
          Height = 15.118110240000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[Servicos."ValorServicos"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo59: TfrxMemoView
          AllowVectorExport = True
          Top = 141.165430000000000000
          Width = 188.976451180000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '(-) Desconto Incondicionado')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo96: TfrxMemoView
          AllowVectorExport = True
          Left = 188.976500000000000000
          Top = 141.165430000000000000
          Width = 98.267731180000000000
          Height = 15.118110240000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[Servicos."DescontoIncondicionado"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo99: TfrxMemoView
          AllowVectorExport = True
          Top = 160.063080000000000000
          Width = 188.976451180000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '(-) Desconto Condicionado')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo100: TfrxMemoView
          AllowVectorExport = True
          Left = 188.976500000000000000
          Top = 160.063080000000000000
          Width = 98.267731180000000000
          Height = 15.118110240000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[Servicos."DescontoCondicionado"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo101: TfrxMemoView
          AllowVectorExport = True
          Top = 178.960730000000000000
          Width = 188.976451180000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '(-) Reten'#231#245'es Federais')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo102: TfrxMemoView
          AllowVectorExport = True
          Left = 188.976500000000000000
          Top = 178.960730000000000000
          Width = 98.267731180000000000
          Height = 15.118110240000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            
              '[<Servicos."ValorPis">+<Servicos."ValorCofins">+<Servicos."Valor' +
              'Inss">+<Servicos."ValorIr">+<Servicos."ValorCsll">]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo104: TfrxMemoView
          AllowVectorExport = True
          Top = 197.858380000000000000
          Width = 188.976451180000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '(-) Outras Reten'#231#245'es')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo105: TfrxMemoView
          AllowVectorExport = True
          Left = 188.976500000000000000
          Top = 197.858380000000000000
          Width = 98.267731180000000000
          Height = 15.118110240000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[Servicos."OutrasRetencoes"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo108: TfrxMemoView
          AllowVectorExport = True
          Top = 216.756030000000000000
          Width = 188.976451180000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '(-) ISS Retido')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo114: TfrxMemoView
          AllowVectorExport = True
          Left = 188.976500000000000000
          Top = 216.756030000000000000
          Width = 98.267731180000000000
          Height = 15.118110240000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[Servicos."ValorIssRetido"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo115: TfrxMemoView
          AllowVectorExport = True
          Left = 472.441250000000000000
          Top = 101.370130000000000000
          Width = 245.669357240000000000
          Height = 136.063062910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'C'#225'lculo do ISSQN devido no Munic'#237'pio')
          ParentFont = False
        end
        object Memo116: TfrxMemoView
          AllowVectorExport = True
          Left = 472.441250000000000000
          Top = 122.267780000000000000
          Width = 147.401621180000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Valor dos Servi'#231'os')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo117: TfrxMemoView
          AllowVectorExport = True
          Left = 619.842920000000000000
          Top = 122.267780000000000000
          Width = 98.267731180000000000
          Height = 15.118110240000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[Servicos."ValorServicos"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo118: TfrxMemoView
          AllowVectorExport = True
          Left = 472.441250000000000000
          Top = 141.165430000000000000
          Width = 147.401621180000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '(-) Dedu'#231#245'es permitidas em Lei')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo119: TfrxMemoView
          AllowVectorExport = True
          Left = 472.441250000000000000
          Top = 160.063080000000000000
          Width = 147.401621180000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '(-) Desconto Incondicionado')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo120: TfrxMemoView
          AllowVectorExport = True
          Left = 472.441250000000000000
          Top = 178.960730000000000000
          Width = 147.401621180000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '(=) Base de C'#225'lculo')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo121: TfrxMemoView
          AllowVectorExport = True
          Left = 472.441250000000000000
          Top = 197.858380000000000000
          Width = 147.401621180000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '(x) Al'#237'quota (%)')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo122: TfrxMemoView
          AllowVectorExport = True
          Left = 472.441250000000000000
          Top = 216.756030000000000000
          Width = 147.401621180000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'ISS a reter:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo123: TfrxMemoView
          AllowVectorExport = True
          Left = 619.842920000000000000
          Top = 216.756030000000000000
          Width = 98.267731180000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[IIF(<Servicos."ValorIssRetido"> > 0,'#39'Sim'#39','#39'N'#227'o'#39')]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object ServicosAliquota: TfrxMemoView
          AllowVectorExport = True
          Left = 619.842871180000000000
          Top = 197.858380000000000000
          Width = 98.267731180000000000
          Height = 15.118120000000000000
          DataField = 'Aliquota'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[Servicos."Aliquota"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo124: TfrxMemoView
          AllowVectorExport = True
          Left = 619.842871180000000000
          Top = 178.960730000000000000
          Width = 98.267731180000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[Servicos."BaseCalculo"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo125: TfrxMemoView
          AllowVectorExport = True
          Left = 619.842871180000000000
          Top = 141.165430000000000000
          Width = 98.267731180000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[Servicos."ValorDeducoes"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo126: TfrxMemoView
          AllowVectorExport = True
          Left = 619.842920000000000000
          Top = 160.063080000000000000
          Width = 98.267731180000000000
          Height = 15.118110240000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[Servicos."DescontoIncondicionado"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo128: TfrxMemoView
          AllowVectorExport = True
          Left = 287.244280000000000000
          Top = 122.267780000000000000
          Width = 185.196921180000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Natureza da Opera'#231#227'o')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo129: TfrxMemoView
          AllowVectorExport = True
          Left = 287.244280000000000000
          Top = 178.960730000000000000
          Width = 185.196921180000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Regime Especial de Tributa'#231#227'o')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo130: TfrxMemoView
          AllowVectorExport = True
          Top = 237.433210000000000000
          Width = 287.244187240000000000
          Height = 30.236222910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
        end
        object Memo131: TfrxMemoView
          AllowVectorExport = True
          Top = 244.212740000000100000
          Width = 188.976451180000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '(=) Valor L'#237'quido')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo132: TfrxMemoView
          AllowVectorExport = True
          Left = 188.976500000000000000
          Top = 244.212740000000100000
          Width = 98.267731180000000000
          Height = 15.118110240000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[Servicos."ValorLiquidoNfse"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo133: TfrxMemoView
          AllowVectorExport = True
          Left = 287.244280000000000000
          Top = 237.354330710000000000
          Width = 185.196877240000000000
          Height = 30.236222910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
        end
        object Memo134: TfrxMemoView
          AllowVectorExport = True
          Left = 472.441250000000000000
          Top = 237.354330708661000000
          Width = 245.669357240000000000
          Height = 30.236222910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
        end
        object Memo135: TfrxMemoView
          AllowVectorExport = True
          Left = 472.441250000000000000
          Top = 244.212740000000100000
          Width = 147.401621180000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '(=) Valor ISS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo136: TfrxMemoView
          AllowVectorExport = True
          Left = 619.842920000000000000
          Top = 244.212740000000100000
          Width = 98.267731180000000000
          Height = 15.118110240000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[Servicos."ValorIss"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo137: TfrxMemoView
          AllowVectorExport = True
          Left = 287.244280000000000000
          Top = 237.433210000000000000
          Width = 132.283501180000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Op'#231#227'o Simples Nacional')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo138: TfrxMemoView
          AllowVectorExport = True
          Left = 288.023810000000000000
          Top = 251.771800000000100000
          Width = 132.283501180000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Incentivador Cultural')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Top = 0.614100000000007700
          Width = 718.110700000000000000
          Height = 46.488188980000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'C'#243'digo de Classifica'#231#227'o do Servi'#231'o')
          ParentFont = False
        end
        object Memo68: TfrxMemoView
          AllowVectorExport = True
          Left = 563.149970000000000000
          Top = 404.409710000000000000
          Width = 154.960730000000000000
          Height = 60.472465350000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'N'#218'MERO NOTA')
          ParentFont = False
        end
        object Memo73: TfrxMemoView
          AllowVectorExport = True
          Left = 566.929500000000000000
          Top = 438.425480000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Identificacao."NumeroNFSe"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo75: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 443.866419999999900000
          Width = 151.181200000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'DATA  _______/_______/________')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo77: TfrxMemoView
          AllowVectorExport = True
          Left = 156.960730000000000000
          Top = 443.866419999999900000
          Width = 400.630180000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              'Identifica'#231#227'o e Assinatura do Recebedor ________________________' +
              '___________________________')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 287.244280000000000000
          Top = 141.165430000000000000
          Width = 185.196921180000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Parametros."NaturezaOperacao"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 287.244280000000000000
          Top = 197.858380000000000000
          Width = 185.196921180000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Parametros."RegimeEspecialTributacao"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 430.866420000000000000
          Top = 237.433210000000000000
          Width = 41.574781180000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[Parametros."OptanteSimplesNacional"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Left = 430.866420000000000000
          Top = 251.771800000000100000
          Width = 41.574781180000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[Parametros."IncentivadorCultural"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo48: TfrxMemoView
          AllowVectorExport = True
          Left = 224.212740000000000000
          Top = 385.512059999999900000
          Width = 491.338900000000000000
          Height = 11.338590000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Parametros."Sistema"] - [Parametros."Site"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Height = 222.992270000000000000
        ParentFont = False
        Top = 495.118430000000000000
        Width = 718.110700000000000000
        RowCount = 0
        Stretched = True
        object Memo13: TfrxMemoView
          Align = baClient
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 222.992270000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Lucida Console'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[Servicos."Discriminacao"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 200.315090000000100000
          Width = 710.551640000000000000
          Height = 22.677180000000000000
          DataField = 'Mensagem0'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Parametros."Mensagem0"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Subreport1: TfrxSubreport
          AllowVectorExport = True
          Top = 18.897650000000000000
          Width = 672.756340000000000000
          Height = 136.063080000000000000
          Visible = False
          Page = frxReport1.Page2
          PrintOnParent = True
        end
      end
      object TomadorPrestador: TfrxChild
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Height = 212.409473230000000000
        ParentFont = False
        Top = 177.637910000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'TomadorPrestadorOnBeforePrint'
        ToNRows = 0
        ToNRowsMode = rmCount
        object Shape1: TfrxShapeView
          AllowVectorExport = True
          Top = 0.755871339999998700
          Width = 718.110700000000000000
          Height = 105.826840000000000000
          Frame.Typ = []
        end
        object Memo64: TfrxMemoView
          AllowVectorExport = True
          Left = 192.755900630000000000
          Top = 71.810969919999990000
          Width = 283.464418030000000000
          Height = 15.118110240000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[Prestador."Complemento"]')
          ParentFont = False
        end
        object Shape3: TfrxShapeView
          AllowVectorExport = True
          Top = 106.582633230000000000
          Width = 718.110700000000000000
          Height = 105.826840000000000000
          Frame.Typ = []
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 120.188976380000000000
          Top = 86.929102130000080000
          Width = 68.031491180000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Munic'#237'pio:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 120.188976380000000000
          Top = 26.456646540000010000
          Width = 68.031491180000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Nome / Raz'#227'o:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 120.188976380000000000
          Top = 56.692874329999990000
          Width = 68.031491180000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Endere'#231'o:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 120.188976380000000000
          Top = 41.574778740000000000
          Width = 68.031491180000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'CPF / CNPJ:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo60: TfrxMemoView
          AllowVectorExport = True
          Top = 163.118044330000000000
          Width = 75.590551180000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Endere'#231'o:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo61: TfrxMemoView
          AllowVectorExport = True
          Top = 193.354274570000000000
          Width = 75.590551180000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Munic'#237'pio:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo63: TfrxMemoView
          AllowVectorExport = True
          Left = 481.315007010000000000
          Top = 147.999943860000000000
          Width = 86.929141180000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Inscri'#231#227'o Municipal:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo62: TfrxMemoView
          AllowVectorExport = True
          Top = 147.999943860000000000
          Width = 75.590551180000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'CPF / CNPJ:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 481.889763780000000000
          Top = 41.574778740000000000
          Width = 90.708646770000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Inscri'#231#227'o Municipal:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo98: TfrxMemoView
          AllowVectorExport = True
          Left = 1.889763780000000000
          Top = 1.779529999999994000
          Width = 714.330708660000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            'PRESTADOR DE SERVI'#199'OS')
          ParentFont = False
        end
        object imgPrestador: TfrxPictureView
          AllowVectorExport = True
          Left = 4.559060000000000000
          Top = 26.456709999999990000
          Width = 109.606370000000000000
          Height = 75.590600000000000000
          DataField = 'LogoCarregado'
          Frame.Typ = []
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 192.755900630000000000
          Top = 26.456646540000010000
          Width = 521.574808030000000000
          Height = 15.118110240000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[Prestador."RazaoSocial"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 192.755900630000000000
          Top = 56.692874329999990000
          Width = 521.574808030000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            
              '[Prestador."Endereco"], [Prestador."Numero"] [Prestador."Bairro"' +
              '] - CEP: [Prestador."CEP"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end
            item
            end
            item
            end>
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 192.755900630000000000
          Top = 86.929102130000080000
          Width = 238.110155670000000000
          Height = 15.118110240000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[Prestador."xMunicipio"]')
          ParentFont = False
        end
        object Memo74: TfrxMemoView
          AllowVectorExport = True
          Left = 192.755900630000000000
          Top = 41.574778740000000000
          Width = 204.094620000000000000
          Height = 15.118110240000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[Prestador."Cnpj"]')
          ParentFont = False
        end
        object Memo76: TfrxMemoView
          AllowVectorExport = True
          Left = 574.488188980000000000
          Top = 41.574778740000000000
          Width = 139.842610000000000000
          Height = 15.118110240000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[Prestador."InscricaoMunicipal"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 79.370130000000000000
          Top = 163.118039450000000000
          Width = 634.961040000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            
              '[Tomador."Endereco"], [Tomador."Numero"] [Tomador."Bairro"] - CE' +
              'P: [Tomador."CEP"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end
            item
            end>
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 79.370130000000000000
          Top = 193.354267240000000000
          Width = 351.496290000000000000
          Height = 15.118110240000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[Tomador."xMunicipio"]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 79.370130000000000000
          Top = 147.999943860000000000
          Width = 328.819110000000000000
          Height = 15.118110240000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[Tomador."CpfCnpj"]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 571.268090000000000000
          Top = 147.999943860000000000
          Width = 143.622140000000000000
          Height = 15.118110240000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[Tomador."InscricaoMunicipal"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 481.889763780000000000
          Top = 178.236147240000000000
          Width = 37.795260940000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Telefone:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 521.354670000000000000
          Top = 178.236147240000000000
          Width = 192.756030000000000000
          Height = 15.118110240000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[Tomador."Telefone"]')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 120.188976380000000000
          Top = 71.810969919999990000
          Width = 68.031491180000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Complemento:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Top = 132.881814090000000000
          Width = 75.590600000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Nome / Raz'#227'o:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 79.370130000000000000
          Top = 132.881823860000000000
          Width = 634.961040000000000000
          Height = 15.118110240000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[Tomador."RazaoSocial"]')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 481.889763780000000000
          Top = 71.810982130000010000
          Width = 45.354311180000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Telefone:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo66: TfrxMemoView
          AllowVectorExport = True
          Left = 529.133828980000000000
          Top = 71.810982130000010000
          Width = 170.078850000000000000
          Height = 15.118110240000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[Prestador."Telefone"]')
          ParentFont = False
        end
        object Memo80: TfrxMemoView
          AllowVectorExport = True
          Left = 481.889763780000000000
          Top = 193.354291650000000000
          Width = 30.236200940000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'E-mail:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo91: TfrxMemoView
          AllowVectorExport = True
          Left = 514.260442990000000000
          Top = 193.354291650000000000
          Width = 200.315090000000000000
          Height = 15.118110240000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[Tomador."Email"]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Top = 178.125923230000000000
          Width = 75.590551180000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Complemento:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 80.125984250000000000
          Top = 178.125923230000000000
          Width = 396.850242360000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[Tomador."Complemento"]')
          ParentFont = False
        end
        object Memo113: TfrxMemoView
          AllowVectorExport = True
          Left = 1.889763780000000000
          Top = 108.165430000000000000
          Width = 714.330708660000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            'TOMADOR DE SERVI'#199'OS')
          ParentFont = False
        end
        object Memo79: TfrxMemoView
          AllowVectorExport = True
          Left = 481.779840000000000000
          Top = 86.929189999999970000
          Width = 30.236191180000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'E-mail:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo84: TfrxMemoView
          AllowVectorExport = True
          Left = 514.016080000000000000
          Top = 86.929189999999970000
          Width = 170.078850000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[Prestador."Email"]')
          ParentFont = False
        end
        object Memo92: TfrxMemoView
          AllowVectorExport = True
          Left = 434.645950000000000000
          Top = 86.929189999999970000
          Width = 18.897601180000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'UF:')
          ParentFont = False
          VAlign = vaCenter
        end
        object PrestadorUF: TfrxMemoView
          AllowVectorExport = True
          Left = 456.323130000000000000
          Top = 86.929189999999970000
          Width = 22.677180000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[Prestador."UF"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo93: TfrxMemoView
          AllowVectorExport = True
          Left = 434.645950000000000000
          Top = 192.756030000000000000
          Width = 18.897601180000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'UF:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo94: TfrxMemoView
          AllowVectorExport = True
          Left = 456.323130000000000000
          Top = 192.756030000000000000
          Width = 22.677180000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[Tomador."UF"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Header2: TfrxHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 449.764070000000000000
        Width = 718.110700000000000000
        object Memo10: TfrxMemoView
          Align = baClient
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            'DISCRIMINA'#199#195'O DOS SERVI'#199'OS')
          ParentFont = False
        end
      end
    end
    object Page2: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 350.000000000000000000
      PaperSize = 256
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      EndlessHeight = True
      EndlessWidth = True
      LargeDesignHeight = True
      MirrorMode = []
      object Header1: TfrxHeader
        FillType = ftBrush
        Fill.BackColor = cl3DLight
        Frame.Typ = []
        Height = 18.897640240000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Width = 419.527830000000000000
          Height = 18.897640240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.Width = 0.500000000000000000
          GapX = 4.000000000000000000
          Memo.UTF8W = (
            'Item')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 419.527830000000000000
          Width = 79.370130000000000000
          Height = 18.897640240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.Width = 0.500000000000000000
          GapX = 4.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Quantidade')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 498.897960000000000000
          Width = 105.826840000000000000
          Height = 18.897640240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.Width = 0.500000000000000000
          GapX = 4.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Valor Unit'#225'rio')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 604.724800000000000000
          Width = 113.385900000000000000
          Height = 18.897640240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.Width = 0.500000000000000000
          GapX = 4.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Valor Total')
          ParentFont = False
        end
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 15.118120000000000000
        Top = 60.472480000000000000
        Width = 718.110700000000000000
        RowCount = 0
        object ItensServicoDiscriminacaoServico: TfrxMemoView
          AllowVectorExport = True
          Width = 419.527830000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          GapX = 3.000000000000000000
          Memo.UTF8W = (
            '[ItensServico."DiscriminacaoServico"]')
          ParentFont = False
        end
        object ItensServicoQuantidade: TfrxMemoView
          AllowVectorExport = True
          Left = 419.527830000000000000
          Width = 79.370130000000000000
          Height = 15.118110240000000000
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          GapX = 4.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[ItensServico."Quantidade"]')
          ParentFont = False
          WordWrap = False
        end
        object ItensServicoValorUnitario: TfrxMemoView
          AllowVectorExport = True
          Left = 498.897960000000000000
          Width = 105.826840000000000000
          Height = 15.118110240000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          GapX = 4.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[ItensServico."ValorUnitario"]')
          ParentFont = False
          WordWrap = False
        end
        object ItensServicoValorTotal: TfrxMemoView
          AllowVectorExport = True
          Left = 604.724800000000000000
          Width = 113.385900000000000000
          Height = 15.118110240000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          GapX = 4.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[ItensServico."ValorTotal"]')
          ParentFont = False
          WordWrap = False
        end
      end
    end
  end
  object frxNfse: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43853.681789803240000000
    ReportOptions.LastChange = 43853.681789803240000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnGetValue = frxNfseGetValue
    Left = 1030
    Top = 247
    Datasets = <
      item
        DataSet = frxDBDatasetPesq
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 85.047310000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Top = 18.897650000000000000
          Width = 563.149969999999900000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Relat'#243'rio de Nota Servi'#231'os')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Width = 555.590910000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Empresa]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Top = 37.795300000000000000
          Width = 608.504330000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Filtro]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Top = 59.692950000000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo4: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Top = 63.472479999999990000
          Width = 37.795275590000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'NFSe')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 574.488560000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Date] '#224's [Time]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 574.488560000000000000
          Top = 18.897650000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#] de [TotalPages#]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 51.472480000000000000
          Top = 63.472479999999990000
          Width = 52.913395590000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'RPS')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 116.858380000000000000
          Top = 63.472479999999990000
          Width = 49.133890000000000000
          Height = 11.338582680000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Situa'#231#227'o')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 184.330860000000000000
          Top = 63.472479999999990000
          Width = 60.472480000000000000
          Height = 11.338582680000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Emiss'#227'o')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 355.748300000000000000
          Top = 63.472479999999990000
          Width = 230.551330000000000000
          Height = 11.338582680000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Cliente')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 591.590910000000000000
          Top = 63.472479999999990000
          Width = 49.133848500000000000
          Height = 11.338582680000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 663.063390000000000000
          Top = 63.472479999999990000
          Width = 41.574788500000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'ISS')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 249.126160000000000000
          Top = 63.472479999999990000
          Width = 102.047273390000000000
          Height = 11.338582680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'CNPJ/CPF')
          ParentFont = False
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Top = 81.590600000000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Height = 15.118120000000000000
        ParentFont = False
        Top = 166.299320000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDatasetPesq
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1status: TfrxMemoView
          AllowVectorExport = True
          Left = 121.063080000000000000
          Width = 64.252010000000010000
          Height = 15.118120000000000000
          DataField = 'status'
          DataSet = frxDBDatasetPesq
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."status"]')
          ParentFont = False
        end
        object frxDBDataset1RPS_CODIGO: TfrxMemoView
          AllowVectorExport = True
          Left = 52.913420000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DataField = 'RPS_CODIGO'
          DataSet = frxDBDatasetPesq
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."RPS_CODIGO"]')
          ParentFont = False
        end
        object frxDBDataset1NFSE_NUM_DANFSE: TfrxMemoView
          AllowVectorExport = True
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          DataField = 'NFSE_NUM_DANFSE'
          DataSet = frxDBDatasetPesq
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."NFSE_NUM_DANFSE"]')
          ParentFont = False
        end
        object frxDBDataset1NFSE_cnpj_cpf: TfrxMemoView
          AllowVectorExport = True
          Left = 249.448980000000000000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          DataField = 'NFSE_cnpj_cpf'
          DataSet = frxDBDatasetPesq
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."NFSE_cnpj_cpf"]')
          ParentFont = False
        end
        object frxDBDataset1NFSE_dataemissao: TfrxMemoView
          AllowVectorExport = True
          Left = 189.315090000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          DataField = 'NFSE_dataemissao'
          DataSet = frxDBDatasetPesq
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."NFSE_dataemissao"]')
          ParentFont = False
        end
        object frxDBDataset1NFSE_razaosocial: TfrxMemoView
          AllowVectorExport = True
          Left = 366.614410000000000000
          Width = 215.433210000000000000
          Height = 15.118120000000000000
          DataField = 'NFSE_razaosocial'
          DataSet = frxDBDatasetPesq
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."NFSE_razaosocial"]')
          ParentFont = False
        end
        object frxDBDataset1NFSI_valorservicos: TfrxMemoView
          AllowVectorExport = True
          Left = 589.606680000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          DataField = 'NFSI_valorservicos'
          DataSet = frxDBDatasetPesq
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."NFSI_valorservicos"]')
          ParentFont = False
        end
        object frxDBDataset1NFSI_valoriss: TfrxMemoView
          AllowVectorExport = True
          Left = 658.520100000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          DataField = 'NFSI_valoriss'
          DataSet = frxDBDatasetPesq
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."NFSI_valoriss"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 204.094620000000000000
        Width = 718.110700000000000000
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 546.924243330000000000
          Top = 2.572046670000000000
          Width = 103.154916670000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."NFSI_valorservicos">,MasterData1)]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 475.441250000000000000
          Top = 2.572046670000000000
          Width = 42.771696670000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Total :')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 658.520100000000000000
          Top = 2.572046670000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."NFSI_valoriss">,MasterData1)]')
          ParentFont = False
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
      end
      object Line3: TfrxLineView
        AllowVectorExport = True
        Left = -90.708720000000010000
        Top = -29.795300000000000000
        Width = 1046.929810000000000000
        Color = clBlack
        Frame.Typ = []
        Diagonal = True
      end
    end
  end
  object frxDBDatasetPesq: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = CdsPesq
    BCDToCurrency = False
    Left = 942
    Top = 255
  end
  object ACBrNFSe1: TACBrNFSeX
    MAIL = ACBrMail1
    Configuracoes.Geral.SSLLib = libNone
    Configuracoes.Geral.SSLCryptLib = cryNone
    Configuracoes.Geral.SSLHttpLib = httpNone
    Configuracoes.Geral.SSLXmlSignLib = xsNone
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Geral.CodigoMunicipio = 0
    Configuracoes.Geral.Provedor = proNenhum
    Configuracoes.Geral.Versao = ve100
    Configuracoes.Arquivos.OrdenacaoPath = <>
    Configuracoes.WebServices.UF = 'SP'
    Configuracoes.WebServices.AguardarConsultaRet = 0
    Configuracoes.WebServices.QuebradeLinha = '|'
    DANFSE = ACBrNFSeDANFSeFR1
    Left = 366
    Top = 319
  end
  object ACBrNFSeDANFSeFR1: TACBrNFSeXDANFSeRL
    Sistema = 'Projeto ACBr - www.projetoacbr.com.br'
    MargemInferior = 8.000000000000000000
    MargemSuperior = 8.000000000000000000
    MargemEsquerda = 6.000000000000000000
    MargemDireita = 5.100000000000000000
    ExpandeLogoMarcaConfig.Altura = 0
    ExpandeLogoMarcaConfig.Esquerda = 0
    ExpandeLogoMarcaConfig.Topo = 0
    ExpandeLogoMarcaConfig.Largura = 0
    ExpandeLogoMarcaConfig.Dimensionar = False
    ExpandeLogoMarcaConfig.Esticar = True
    CasasDecimais.Formato = tdetInteger
    CasasDecimais.qCom = 2
    CasasDecimais.vUnCom = 2
    CasasDecimais.MaskqCom = ',0.00'
    CasasDecimais.MaskvUnCom = ',0.00'
    ACBrNFSe = ACBrNFSe1
    Cancelada = False
    Provedor = proNenhum
    TamanhoFonte = 6
    FormatarNumeroDocumentoNFSe = True
    Producao = snSim
    Left = 462
    Top = 319
  end
end
